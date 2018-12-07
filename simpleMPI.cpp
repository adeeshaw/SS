
/*
 * Copyright 1993-2013 NVIDIA Corporation.  All rights reserved.
 *
 * Please refer to the NVIDIA end user license agreement (EULA) associated
 * with this source code for terms and conditions that govern your use of
 * this software. Any use, reproduction, disclosure, or distribution of
 * this software and related documentation outside the terms of the EULA
 * is strictly prohibited.
 *
 */

/* Simple example demonstrating how to use MPI with CUDA
 *
 *  Generate some random numbers on one node.
 *  Dispatch them to all nodes.
 *  Compute their square root on each node's GPU.
 *  Compute the average of the results using MPI.
 *
 *  simpleMPI.cpp: main program, compiled with mpicxx on linux/Mac platforms
 *                 on Windows, please download the Microsoft HPC Pack SDK 2008
 */

// System includes
#include <iostream>

using std::cout;
using std::cerr;
using std::endl;

// MPI include

#include <omp.h>


// User include
#include "simpleMPI.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <float.h>
#include <string.h>
#include <stdbool.h>
//#include <cuComplex.h>
#include <complex.h>
//#include <cuda_runtime.h>
//#include <cufft.h>
#include <time.h>

#include <complex.h>


void readPostDCPHPaux(float **paux);
void readPostDCPH(float **pdcph_I, float **pdcph_Q);

bool load_input_frame_header();
//void signalIFFT(cufftComplex *d_signal, int signal_size);
void averageAzimuthAngleStepSize(int size);

//sar_data variables

int sar_data_Np;
int sar_data_Wx;
int sar_data_Wy;
int sar_data_Nfft;
int sar_data_Nx;
int sar_data_Ny;
int sar_data_x0;
int sar_data_y0;
int sar_data_K;

float sar_data_deltaF;

float sar_data_minF;
/*float* sar_data_AntX;
  float* sar_data_AntY;
  float* sar_data_AntZ;
  float* sar_data_R0;*/
float* sar_data_XYZR;

//struct data sar_data;
char const* fnamePHXheader;
char const* fnamePAUX;
char const* fnamePHdata_pdcph_I;
char const* fnamePHdata_pdcph_Q;

float prep2;
float prep3;
float prepi;

float *im_final_host_R;
float *im_final_host_Q;

float max_array(float* a, int size) {
	int length = size;
	int i;
	float max = -DBL_MAX;
	for (i = 0; i < length; i++) {
		if (a[i] > max) {
			max = a[i];
		}
	}
	return (max);
}

float min_array(float* a, int size) {
	int length = size;
	int i;
	float min = DBL_MAX;
	for (i = 0; i < length; i++) {
		if (a[i] < min) {
			min = a[i];
		}
	}
	return (min);
}

float mean(float* a, int size) {
	int length = size;
	float mean = 0;
	float sum = 0;
	int i;
	for (i = 0; i < length; i++) {
		sum = sum + a[i];
	}
	mean = sum / length;
	return (mean);
}

void initialize(int pulseSize, int tileSizex, int tileSizey) {
	sar_data_Np = pulseSize;               //Number of pulses to image

	//Define image parameters here
	sar_data_Wx = 100;                // Scene extent x (m)
	sar_data_Wy = 100;                // Scene extent y (m)
	sar_data_Nfft = 4096;             // Number of samples in FFT
	sar_data_Nx = tileSizex;                // Number of samples in x direction
	sar_data_Ny = tileSizey;                // Number of samples in y direction
	sar_data_x0 = 0;                 // Center of image scene in x direction (m)
	sar_data_y0 = 0;



	sar_data_K = 424;

	//	sar_data_minF = (float *) malloc(sizeof(float) * sar_data_Np);
	/*sar_data_AntX = (float *) malloc(sizeof(float) * sar_data_Np);
	  sar_data_AntY = (float *) malloc(sizeof(float) * sar_data_Np);
	  sar_data_AntZ = (float *) malloc(sizeof(float) * sar_data_Np);
	  sar_data_R0 = (float *) malloc(sizeof(float) * sar_data_Np); */
	sar_data_XYZR = (float *) malloc(sizeof(float) * sar_data_Np*4);
}

void makeSarImage(float* sar_data_finalIfft_RQ) {

	fnamePHXheader = "../C1SAP1C0100517.spot1.phxhdr.txt";
	fnamePAUX = "../C1SAP1C0100517.spot1.paux.txt";
	fnamePHdata_pdcph_I = "../spot1_pdcph_I.txt";
	fnamePHdata_pdcph_Q = "../spot1_pdcph_Q.txt";

	load_input_frame_header();

	float **paux = (float **) malloc(sizeof(float *) * sar_data_Np);
	for (int i = 0; i < sar_data_Np; i++) {
		paux[i] = (float *) malloc(sizeof(float) * COLS);
	}

	/*for (int i = 0; i < sar_data_Np; i++) {
	  for (int j = 0; j < COLS; j++) {
	  paux[i][j] = 0;
	  }
	  }*/

	readPostDCPHPaux(paux);

	//for (int i = 0; i < sar_data_Np; i++) {
	//  sar_data_minF[i] = 0;
	//}

	//	for (int i = 0; i < sar_data_Np; i++) {
	sar_data_minF = paux[0][29];
	//	}
	//for (int i = 0; i < sar_data_Np; i++) {
	//	sar_data_minF = paux[0][29];
	//	}
	/*for (int i = 0; i < sar_data_Np; i++) {
	  sar_data_AntX[i] = paux[i][16];
	  }
	  for (int i = 0; i < sar_data_Np; i++) {
	  sar_data_AntY[i] = paux[i][17];
	  }
	  for (int i = 0; i < sar_data_Np; i++) {
	  sar_data_AntZ[i] = paux[i][18];
	  }

	  for (int i = 0; i < sar_data_Np; i++) {
	  sar_data_R0[i] = paux[i][19];
	  }*/


	for (int i = 0; i < sar_data_Np;i++) {
		sar_data_XYZR[4*i+0] = paux[i][16];
		sar_data_XYZR[4*i+1] = paux[i][17];
		sar_data_XYZR[4*i+2] = paux[i][18];
		sar_data_XYZR[4*i+3]= paux[i][19];

	} 

	// Read in Phase History Data
	float** sar_data_pdcph_I = (float **) malloc(sizeof(float *) * sar_data_Np);
	for (int i = 0; i < sar_data_Np; i++) {
		sar_data_pdcph_I[i] = (float *) malloc(sizeof(float) * sar_data_K);
	}
	float** sar_data_pdcph_Q = (float **) malloc(sizeof(float *) * sar_data_Np);
	for (int i = 0; i < sar_data_Np; i++) {
		sar_data_pdcph_Q[i] = (float *) malloc(sizeof(float) * sar_data_K);
	}
	readPostDCPH(sar_data_pdcph_I, sar_data_pdcph_Q);

	//sar_data_deviceCount = getDeviceCount();

	getIfftresults(sar_data_Np, sar_data_Nfft, sar_data_K, sar_data_pdcph_I,
			sar_data_pdcph_Q, sar_data_finalIfft_RQ);





	//printf("works here \n");
	// Define speed of light (m/s)

	int c = 299792458;

	float sar_data_maxWr = c / (float) (2 * sar_data_deltaF);

	prep2 = sar_data_maxWr / sar_data_Nfft;
	prep3 = sar_data_Nfft / sar_data_maxWr;
	prepi = 4 * PI / c;

	free(sar_data_pdcph_I);
	free(sar_data_pdcph_Q);

}

void readPostDCPHPaux(float **paux) {

	FILE *fp = fopen(fnamePAUX, "r"); // open the file for reading in binary mode

	if ( NULL == fp) {
		printf("error \n");
		system("pause");
		exit(1);
	}
	int x;
	for (x = 0; x < sar_data_Np; x++) {

		int y;

		for (y = 0; y < COLS; y++) {

			fscanf(fp, "%f ", &paux[x][y]);

		}

	}

	fclose(fp);

	return;

}
void readPostDCPH(float **pdcph_I, float **pdcph_Q) {

	FILE *fpi = fopen(fnamePHdata_pdcph_I, "r"); // open the file for reading in binary mode

	if ( NULL == fpi) {
		printf("error \n");
		system("pause");
		exit(1);
	}
	int x;
	for (x = 0; x < sar_data_Np; x++) {

		int y;

		for (y = 0; y < sar_data_K; y++) {

			fscanf(fpi, "%f ", &pdcph_I[x][y]);
			//if(y==100)
			//printf("data: %d %d %.40f \n", x, y,pdcph_I[x][y]);

		}

	}

	fclose(fpi);

	FILE *fpq = fopen(fnamePHdata_pdcph_Q, "r"); // open the file for reading in binary mode

	if ( NULL == fpq) {
		printf("error \n");
		system("pause");
		exit(1);
	}

	for (x = 0; x < sar_data_Np; x++) {

		int y;

		for (y = 0; y < sar_data_K; y++) {

			fscanf(fpq, "%f ", &pdcph_Q[x][y]);

		}

	}

	fclose(fpq);

	return;

}

bool load_input_frame_header() {

	char word[256];
	char c;

	FILE *fp = fopen(fnamePHXheader, "r");
	do {

		c = fscanf(fp, "%s", word); /* got one word from the file */

		if (strcmp(word, "NumberOfSamples=")) {

		} else if (strcmp(word, "FirstPulseinFile")) {

		} else if (strcmp(word, "ChirpRate=")) {

		} else if (strcmp(word, "ComplexSamplingFrequency=")) {

		} else if (strcmp(word, "TransmitPulseWidthSamples=")) {

		}

	} while (c != EOF); /* repeat until EOF           */

	if (fp != NULL)
		fclose(fp);

	// Calculate frequency step size
	float gamma = 2.909059524500000e+13;
	float fsamp = 180000000;
	int tpws = 3860;

	sar_data_deltaF = gamma / fsamp * tpws / sar_data_K;

	return true;
}

// Error handling macros
#define MPI_CHECK(call) \
	if((call) != MPI_SUCCESS) { \
		cerr << "MPI error calling \""#call"\"\n"; \
		my_abort(-1); }

// Host code
// No CUDA here, only MPI
int main(int argc, char *argv[]) {
	double t_start, t_end;
	double t_start1, t_end1;
	double t_start2, t_end2;
	double t_start3, t_end3;
	double t_start4, t_end4;
	double t_start5, t_end5;

	double t_start6, t_end6;
	double t_start7, t_end7;

	double t_start10, t_end10;
	double t_start11, t_end11;
	double t_start12, t_end12;
	double t_start13, t_end13;
	double t_start14, t_end14;
	double t_start15, t_end15;
	// Initialize MPI state
	//	cvalue = atoi( optarg )

	/*	string random1;

		if (argc < 2) {
		cout << "Not enough args passed" << endl;

		return 0;
		} else if (argc < 3) {
		random1 =  argv[1];
		printf("%s \n", random1);
		}*/

	//MPI_CHECK(MPI_Init(&argc, &argv));

	// Get our MPI node number and node count

	//MPI_CHECK(MPI_Comm_size(MPI_COMM_WORLD, &commSize));
	//MPI_CHECK(MPI_Comm_rank(MPI_COMM_WORLD, &commRank));

	// Generate some random numbers on the root node (node 0)
	// int dataSizeTotal = dataSizePerNode * commSize;
	// float *dataRoot = NULL;

	//  if (commRank == 0)  // Are we the root node?
	//{
	//    cout << "Running on " << commSize << " nodes" << endl;
	//    dataRoot = new float[dataSizeTotal];
	//    initData(dataRoot, dataSizeTotal);
	//}

	// Allocate a buffer on each node
	// float *dataNode = new float[dataSizePerNode];

	// Dispatch a portion of the input data to each node
	/* MPI_CHECK(MPI_Scatter(dataRoot,
	   dataSizePerNode,
	   MPI_FLOAT,
	   dataNode,
	   dataSizePerNode,
	   MPI_FLOAT,
	   0,
	   MPI_COMM_WORLD));
	   */
	if(argc<13|| argc>13){
		printf("wrong arguments");
		exit(0);
	}
	int randomnumber1 = atoi(argv[1]);
	int randomnumber2= atoi(argv[2]);
	int randomnumber3= atoi(argv[3]);
	int chunkbit = atoi(argv[4]);
	int pulseSize = atoi(argv[6]);
	int tileSizex = atoi(argv[7]);
	int tileSizey = atoi(argv[8]);
	int totalmpistreamtimes =  atoi(argv[9]);

	float totalforcpu = atof(argv[10])/100.0;
	float totalforgpu=  atof(argv[11])/100.0;
	//int numberofcpus=  atoi(argv[12]);
	//int numberofgpus= atoi(argv[13]);

	//printf("total for gpu%f %f",totalforcpu,totalforgpu);

	//int cpu2gpuratio= atoi(argv[14]);
	int number_of_cpus_inonenode = atoi(argv[12]);

	int commSize= 1, commRank=0 ;

	int totalrandomnumbers = randomnumber1+randomnumber2+randomnumber3;

	initialize(pulseSize, tileSizex, tileSizey);


	//MPI_Status mpi_status;
	//MPI_Request rec_request;

	//MPI_Request reqs[5];   // required variable for non-blocking calls
	//MPI_Status stats[5];

	GPU_Init(0);	

	// int *displs,i,*rcounts;

	//if (commRank == 0) {

	//t_start = MPI_Wtime();


	//printf("This program is running on %d GPU nodes \n", commSize);
	printf("Image size %d x %d \n",sar_data_Nx,sar_data_Ny );
	printf("Number of pulses %d \n",sar_data_Np );

	for (int i=1; i<argc; i++){
		printf("%s\n", argv[i]);
	}
	printf("chunk bit %d \n",chunkbit); 


	float* sar_data_finalIfft_RQ = (float *) malloc(
			sizeof(float) * sar_data_Np * sar_data_Nfft*2);
	//float* sar_data_finalIfft_Q = (float *) malloc(
	//sizeof(float) * sar_data_Np * sar_data_Nfft);

	makeSarImage(sar_data_finalIfft_RQ);

	im_final_host_R = (float *) malloc(
			sar_data_Nx * sizeof(float) * sar_data_Ny);

	for (int x = 0; x < sar_data_Nx * sar_data_Ny; x++) {
		im_final_host_R[x] = 0;

	}
	im_final_host_Q = (float *) malloc(
			sar_data_Nx * sizeof(float) * sar_data_Ny);

	for (int x = 0; x < sar_data_Nx * sar_data_Ny; x++) {
		im_final_host_Q[x] = 0;

	}

	int sizeresarrayx = (sar_data_Nx / RES_SIZEX);
	int sizeresarrayy = (sar_data_Ny / RES_SIZEY);


	int highestilecount =  randomnumber3* sizeresarrayx*sizeresarrayy/totalrandomnumbers;
	int secondhighesttilescount = randomnumber2* sizeresarrayx*sizeresarrayy/totalrandomnumbers;
	int lowesttilescount =  sizeresarrayx*sizeresarrayy - ( highestilecount+secondhighesttilescount);
	//printf("size  array %d \n", sizeresarray);

	printf("high tiles %d \n",highestilecount); 
	printf("second tiles %d \n",secondhighesttilescount); 
	printf("low tiles %d \n", lowesttilescount);  

	int* sar_data_multiresarray = (int *) malloc(sizeof(int) * sizeresarrayx * sizeresarrayy * 5);
	memset(sar_data_multiresarray, 0,
			sizeof(int) * sizeresarrayx * sizeresarrayy * 5);

	int r1pixelblockcount= 0; // 0 for the lower level
	int  r2pixelblockcount = 0; // 1 for the second level
	int  r3pixelblockcount = 0; // 2 for the highest level
	int totaltilecount=0;
	int pseudorandomnumber=0;




	for (int y = 0; y < sizeresarrayy; y++) {

		for (int x = 0; x < sizeresarrayx; x++) {

			sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 0] = x
				* RES_SIZEX + 0;
			sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 1] = y
				* RES_SIZEY + 0;
			sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 2] = x
				* RES_SIZEX + (RES_SIZEX - 1);
			sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 3] = y
				* RES_SIZEY + (RES_SIZEY - 1);
			//	printf("array x : %d array y : %d\n", 	sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 0],sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 1]);  

			if(chunkbit==1){

				if(totaltilecount<highestilecount){
					sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]= 2; 
					r3pixelblockcount++;
				}
				else if(totaltilecount>=highestilecount&& totaltilecount<( highestilecount+secondhighesttilescount )){
					sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]= 1; 
					r2pixelblockcount++;
				}
				else{
					sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]= 0; 
					r1pixelblockcount++;
				}
				totaltilecount++;

			}

			else if(chunkbit==0){
				pseudorandomnumber= (totaltilecount+(totalrandomnumbers*totaltilecount)%3)%3;

				if(pseudorandomnumber ==0&& r1pixelblockcount<lowesttilescount){
					r1pixelblockcount++;
					sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]=  pseudorandomnumber;


				}
				if(pseudorandomnumber ==0&& r1pixelblockcount>=lowesttilescount){
					pseudorandomnumber=1;

				}

				if(pseudorandomnumber ==1&& r2pixelblockcount<secondhighesttilescount){
					r2pixelblockcount++;
					sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]=  pseudorandomnumber;

				}
				if(pseudorandomnumber ==1&& r2pixelblockcount>=secondhighesttilescount){
					pseudorandomnumber=2;
				}

				if(pseudorandomnumber ==2&& r3pixelblockcount<highestilecount  ){
					r3pixelblockcount++;
					sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]=  pseudorandomnumber;

				}
				if(pseudorandomnumber ==2&& r3pixelblockcount>=highestilecount  ){
					if(r1pixelblockcount<lowesttilescount){
						r1pixelblockcount++;
						sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]=0  ;


					}
					else if( r2pixelblockcount<secondhighesttilescount ){
						r2pixelblockcount++;
						sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x + 4]=1;

					}


				}

				totaltilecount++;

			}





			//printf("random number %d \n",randomnumber);

		}

	}



	printf("highest %d \n", r3pixelblockcount);
	printf("2nd  %d \n", r2pixelblockcount);
	printf("lowest %d \n", r1pixelblockcount);              
	//lowpixelBlockcount = sizeresarray * sizeresarray - highpixelBlockCount;

	int* sar_data_multiresarray_sizes = (int *) malloc(
			sizeof(int) * commSize);
	memset(sar_data_multiresarray_sizes, 0, sizeof(int) * commSize);

	/*for (int x = 0; x < commSize; x++) {
	  if(x==0){

	  sar_data_multiresarray_sizes[x] = (sar_data_Nx / RES_SIZE) * (sar_data_Nx / RES_SIZE)  *3  /32;
	  }
	  if(x==1){

	  sar_data_multiresarray_sizes[x] = (sar_data_Nx / RES_SIZE) * (sar_data_Nx / RES_SIZE)  *3 /32;
	  }
	  if(x==2){

	  sar_data_multiresarray_sizes[x] =  (sar_data_Nx / RES_SIZE) * (sar_data_Nx / RES_SIZE)  *13 /32;
	  }
	  if(x==3){

	  sar_data_multiresarray_sizes[x] =  (sar_data_Nx / RES_SIZE) * (sar_data_Nx / RES_SIZE) *13 /32;
	  }




	  }*/

	//Automated allocation
	int toal_computationalneeded_inBlocks = 1 * r1pixelblockcount
		+ 4 * r2pixelblockcount+ 16*r3pixelblockcount;
	//printf("total blocks = %d \n", toal_computationalneeded_inBlocks);

	int* fitcalculationarray = (int *) malloc(sizeof(int) * commSize);
	memset(fitcalculationarray, 0, sizeof(int) * commSize);

	int* limitfitcalculationarray = (int *) malloc(sizeof(int) * commSize);
	memset(limitfitcalculationarray, 0, sizeof(int) * commSize);

	for(int i=0;i<commSize; i++){

		limitfitcalculationarray[i]= toal_computationalneeded_inBlocks/commSize;

		printf("limit cal array %d %d \n", i,limitfitcalculationarray[i]); 
	}

	int allocationversion = atoi(argv[5]);
	//LPT allocation
	if (allocationversion == 0) {
		printf("Running with LPT  \n");


		int testswap=0;


		for(int j=1;j<sizeresarrayy*sizeresarrayy; j++)
		{
			for(int i=0; i<sizeresarrayx*sizeresarrayx-1; i++)
			{
				if(sar_data_multiresarray[ 5*i+4  ]<sar_data_multiresarray[5*(i+1)+4 ])
				{
					testswap=1;
					for(int k=0;k<5;k++){
						int temp=sar_data_multiresarray[ 5*i+k ];
						sar_data_multiresarray[5*i+k]=sar_data_multiresarray[ 5*(i+1)+k];
						sar_data_multiresarray[5*(i+1)+k]=temp;
					}
				}
			}
			if(testswap==0){
				break;
			}
		}



		int* sar_data_multiresarraytemp = (int *) malloc(sizeof(int) * sizeresarrayx * sizeresarrayy * 5);
		memset(sar_data_multiresarraytemp, 0,
				sizeof(int) * sizeresarrayx * sizeresarrayy * 5);
		int onegpusize =  sizeresarrayx * sizeresarrayy/commSize; 

		int currentCPUnumber = 0;

		for (int y = 0; y < sizeresarrayy; y++) {

			for (int x = 0; x < sizeresarrayx; x++) {

				if(currentCPUnumber==commSize){
					currentCPUnumber=0;
				}
				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 2) {

					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+0 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 0] ;
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+1 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 1] ;
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+4 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 4] ; // did not include x2 and y2 coordinates as they were not used.

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 16;
					sar_data_multiresarray_sizes[currentCPUnumber]++;


					currentCPUnumber++;
				}


				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 1) {
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+0 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 0] ;
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+1 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 1] ;
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+4 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 4] ; // did not include x2 and y2 coordinates as they were not used.

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 4;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
					currentCPUnumber++;
				}
				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 0) {
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+0 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 0] ;
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+1 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 1] ;
					sar_data_multiresarraytemp[ 5*onegpusize*currentCPUnumber+ 5*sar_data_multiresarray_sizes[currentCPUnumber]+4 ]= sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x+ 4] ; // did not include x2 and y2 coordinates as they were not used.


					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 1;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
					currentCPUnumber++;
				}



				//printf("gpu %d array %d \n", gpu_id, sar_data.multiresarray[x * (sizeresarray*5) + 5*y+0]);

			}

		}


		for (int x = 0; x < sizeresarrayx*sizeresarrayy; x++) {
			sar_data_multiresarray[ 5 * x+ 0]= sar_data_multiresarraytemp[ 5*x+0 ];
			sar_data_multiresarray[ 5 * x+ 1]= sar_data_multiresarraytemp[ 5*x+1 ];
			sar_data_multiresarray[ 5 * x+ 4]= sar_data_multiresarraytemp[ 5*x+4 ];




		}

		for(int j=0;j<4;j++){    
			int ttcout2 =0;
			int ttcout1=0;
			int ttcout0=0;


			for(int i=0;i<sizeresarrayx*sizeresarrayy/commSize; i++)
			{

				if( sar_data_multiresarray[j*onegpusize*5+5*i+4]==2 ){
					ttcout2++;  

				}

				if( sar_data_multiresarray[j*onegpusize*5+ 5*i+4]==1 ){
					ttcout1++;  

				}

				if( sar_data_multiresarray[j*onegpusize*5+5*i+4]==0 ){
					ttcout0++;  

				}

			}
			printf("hightilessss = %d \n", ttcout2);
			printf("2ndtilessss = %d \n", ttcout1);
			printf("lowtilessss = %d \n", ttcout0);

		}   




		printf ("LPT time: %f \n", t_end2 - t_start2);

	} else if (allocationversion == 2) {
		// modified next fit variation
		printf("Running with Modified Fit \n");

		int currentCPUnumber = 0;

		for (int y = 0; y < sizeresarrayy; y++) {

			for (int x = 0; x < sizeresarrayx; x++) {

				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 2) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] +16;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}

				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 1) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 4;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}
				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 0) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 1;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}

				if (fitcalculationarray[currentCPUnumber]
						>= toal_computationalneeded_inBlocks / commSize
						&& sar_data_multiresarray_sizes[currentCPUnumber]
						% ((sar_data_Nx / RES_SIZEX)) == 0
						&& currentCPUnumber != commSize - 1) {
					currentCPUnumber++;
				}

				//printf("gpu %d array %d \n", gpu_id, sar_data.multiresarray[x * (sizeresarray*5) + 5*y+0]);

			}

		}

	}

	else if (allocationversion == 1) {
		// modified next fit variation without row complete
		printf("Running with Modified Fit w/o row complete \n");

		int currentCPUnumber = 0;
		printf("sizeresarrayx %d sizeresarrayy %d \n", sizeresarrayx, sizeresarrayy);



		for (int y = 0; y < sizeresarrayy; y++) {

			for (int x = 0; x < sizeresarrayx; x++) {
				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 2) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 16;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}

				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 1) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 4;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}
				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 0) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 1;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}

				if (fitcalculationarray[currentCPUnumber]
						>= limitfitcalculationarray[currentCPUnumber]
						&& currentCPUnumber != commSize - 1) {
					currentCPUnumber++;
				}

				//printf("gpu %d array %d \n", gpu_id, sar_data.multiresarray[x * (sizeresarray*5) + 5*y+0]);

			}

		}






		printf(" array size : %d \n",sar_data_multiresarray_sizes[0]);

	}

	else if (allocationversion == 3) {
		// Naive method
		printf("Running with Naive method \n");

		int currentCPUnumber = 0;

		for (int y = 0; y < sizeresarrayy; y++) {

			for (int x = 0; x < sizeresarrayx; x++) {
				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 2) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 16;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}

				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 1) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 4;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}
				if (sar_data_multiresarray[y * (sizeresarrayx * 5) + 5 * x
						+ 4] == 0) {

					fitcalculationarray[currentCPUnumber] =
						fitcalculationarray[currentCPUnumber] + 1;
					sar_data_multiresarray_sizes[currentCPUnumber]++;
				}

				if (sar_data_multiresarray_sizes[currentCPUnumber] >=sizeresarrayx*sizeresarrayy / commSize
						&& currentCPUnumber != commSize - 1) {
					currentCPUnumber++;
				}

				//printf("gpu %d array %d \n", gpu_id, sar_data.multiresarray[x * (sizeresarray*5) + 5*y+0]);

			}

		}

	}





	for (int x = 0; x < commSize; x++) {
		printf(" CPU ID %d has %d tiles \n", x,
				sar_data_multiresarray_sizes[x]);
		printf(" CPU ID %d has %d computation \n", x,
				fitcalculationarray[x]);

	}

	int* sar_data_multiresarray_offset_sizes = (int *) malloc(
			sizeof(int) * commSize);

	int tempoffsetsizes = 0;
	sar_data_multiresarray_offset_sizes[0] = 0;

	for (int x = 1; x < commSize; x++) {

		tempoffsetsizes = tempoffsetsizes
			+ sar_data_multiresarray_sizes[x - 1];
		sar_data_multiresarray_offset_sizes[x] = tempoffsetsizes;

	}


	/* displs = (int *)malloc(commSize*sizeof(int)); 
	   rcounts = (int *)malloc(commSize*sizeof(int)); 
	   for (int i=0; i<commSize; ++i) { 
	   displs[i] = sar_data_multiresarray_offset_sizes[i] * RES_SIZEX
	 * RES_SIZEY; 
	 rcounts[i] =sar_data_multiresarray_sizes[i]* RES_SIZEX
	 * RES_SIZEY ; 
	 } */

	float *im_final_host_R_back =
		(float *) malloc(
				sizeof(float)
				* (sar_data_multiresarray_sizes[0] * RES_SIZEX
					* RES_SIZEY));

	float *im_final_host_Q_back =
		(float *) malloc(
				sizeof(float)
				* (sar_data_multiresarray_sizes[0] * RES_SIZEX
					* RES_SIZEY));


	int* sar_data_multiresarray_forhostprocess = (int *) malloc(
			sizeof(int) * sar_data_multiresarray_sizes[0] * 5);

	memcpy(sar_data_multiresarray_forhostprocess,
			&sar_data_multiresarray[0],
			sizeof(int) * sar_data_multiresarray_sizes[0] * 5);

	//send submatrix to other processes







	int* omp_sar_data_multiresarray_sizes = (int *) malloc(
			sizeof(int) * number_of_cpus_inonenode);
	memset(omp_sar_data_multiresarray_sizes, 0, sizeof(int) * number_of_cpus_inonenode);

	int* omp_fitcalculationarray = (int *) malloc(sizeof(int) * number_of_cpus_inonenode);
	memset(omp_fitcalculationarray, 0, sizeof(int) * number_of_cpus_inonenode);

	int* omp_limitfitcalculationarray = (int *) malloc(sizeof(int) * number_of_cpus_inonenode);
	memset(omp_limitfitcalculationarray, 0, sizeof(int) * number_of_cpus_inonenode);

	for(int i=0;i< number_of_cpus_inonenode; i++){
		if(i==0){
			omp_limitfitcalculationarray[i]= fitcalculationarray[0]* totalforgpu;
		}
		else{
			omp_limitfitcalculationarray[i]= fitcalculationarray[0]* totalforcpu/(number_of_cpus_inonenode-1);
		}
		printf("omp_limit cal array %d %d \n", i,omp_limitfitcalculationarray[i]); 
	}

	int currentCPUnumber = 0;
	for (int x = 0; x < sar_data_multiresarray_sizes[0]; x++) {
		if (omp_fitcalculationarray[currentCPUnumber]
				>= omp_limitfitcalculationarray[currentCPUnumber]
				&& currentCPUnumber != number_of_cpus_inonenode - 1) {
			currentCPUnumber++;
		}
		if (sar_data_multiresarray[5 * x
				+ 4] == 2) {

			omp_fitcalculationarray[currentCPUnumber] =
				omp_fitcalculationarray[currentCPUnumber] + 16;
			omp_sar_data_multiresarray_sizes[currentCPUnumber]++;
		}

		if (sar_data_multiresarray[5 * x
				+ 4] == 1) {

			omp_fitcalculationarray[currentCPUnumber] =
				omp_fitcalculationarray[currentCPUnumber] + 4;
			omp_sar_data_multiresarray_sizes[currentCPUnumber]++;
		}
		if (sar_data_multiresarray[ 5 * x
				+ 4] == 0) {

			omp_fitcalculationarray[currentCPUnumber] =
				omp_fitcalculationarray[currentCPUnumber] + 1;
			omp_sar_data_multiresarray_sizes[currentCPUnumber]++;
		}

		
	}

	for (int x = 0; x < number_of_cpus_inonenode; x++) {
		printf(" OMP CPU ID %d has %d tiles \n", x,
				omp_sar_data_multiresarray_sizes[x]);
		printf(" OMP CPU ID %d has %d computation \n", x,
				omp_fitcalculationarray[x]);

	}

	int* omp_sar_data_multiresarray_offset_sizes = (int *) malloc(
			sizeof(int) * number_of_cpus_inonenode);

	int omp_tempoffsetsizes = 0;
	omp_sar_data_multiresarray_offset_sizes[0] = 0;

	for (int x = 1; x < number_of_cpus_inonenode; x++) {

		omp_tempoffsetsizes = omp_tempoffsetsizes
			+ omp_sar_data_multiresarray_sizes[x - 1];
		omp_sar_data_multiresarray_offset_sizes[x] = omp_tempoffsetsizes;

	}

			t_start5 = clock();

			t_start6 = omp_get_wtime();;
	omp_set_num_threads(number_of_cpus_inonenode); 

#pragma omp parallel
	{
		unsigned int cpu_thread_id = omp_get_thread_num();
		unsigned int num_cpu_threads = omp_get_num_threads();
		

		if(cpu_thread_id== 0){	

			t_start3 = omp_get_wtime();;

			bpbasic(commRank, commSize, sar_data_Np, sar_data_Nfft, sar_data_Nx,sar_data_Ny,sar_data_minF,sar_data_XYZR,sar_data_finalIfft_RQ,
					omp_sar_data_multiresarray_sizes[cpu_thread_id], omp_sar_data_multiresarray_offset_sizes[cpu_thread_id],
					sar_data_multiresarray, sar_data_K, sar_data_Wx, sar_data_Wy,
					sar_data_x0, sar_data_y0, prep2, prep3, prepi,
					im_final_host_R_back, im_final_host_Q_back,totalmpistreamtimes,0);


			t_end3 =omp_get_wtime();;


			printf("inside total time  for bpbasic gpuid %d %.4f\n",commRank, (t_end3 - t_start3));

		}
		else{
			//printf("Hello from thread %d \n", cpu_thread_id);

			t_start4 =omp_get_wtime();;

			bpbasiccpu(commRank, commSize,cpu_thread_id, num_cpu_threads, sar_data_Np, sar_data_Nfft, sar_data_Nx,sar_data_Ny,sar_data_minF,sar_data_XYZR,sar_data_finalIfft_RQ,
					omp_sar_data_multiresarray_sizes[cpu_thread_id], omp_sar_data_multiresarray_offset_sizes[cpu_thread_id],
					sar_data_multiresarray, sar_data_K, sar_data_Wx, sar_data_Wy,
					sar_data_x0, sar_data_y0, prep2, prep3, prepi,
					im_final_host_R_back, im_final_host_Q_back,totalmpistreamtimes,0);

			t_end4 =omp_get_wtime();;


			//printf("inside total time  for bpbasic cpuid %d %.4f\n",cpu_thread_id,( t_end4 - t_start4));



		}
		
#pragma omp barrier

	}
	//printf("before end 0f end of openmp \n");


			t_end6 = omp_get_wtime();;
			t_end5 = clock();
		
		//	printf("Final total time using openmp %.4f\n",( t_end5 - t_start5)/ (double) CLOCKS_PER_SEC);

			printf("Final tital time using openmmo %.4f\n",( t_end6 - t_start6));
	//printf("end of openmp \n");

	memcpy(&im_final_host_R[0], im_final_host_R_back,
			sizeof(float)
			* (sar_data_multiresarray_sizes[0] * RES_SIZEX * RES_SIZEY));
	memcpy(&im_final_host_Q[0], im_final_host_Q_back,
			sizeof(float)
			* (sar_data_multiresarray_sizes[0] * RES_SIZEX * RES_SIZEY));



	//MPI_Wait(&rec_request, &mpi_status);


	//endset = clock();

	//printf("tttt second:  %.10f \n",
	//		(endset - startset) / (double) CLOCKS_PER_SEC);

	//free(im_final_host_R_back);
	//free(im_final_host_Q_back);
	//free(sar_data_finalIfft_R);
	//free(sar_data_finalIfft_Q);






	if (commRank == 0) {


		/*printf("came here nottt 1st point but not good %d \n", commRank);

		float** im_final_to_convert;

		im_final_to_convert = (float**) malloc(sizeof(float *) * sar_data_Nx);
		for (int i = 0; i < sar_data_Nx; i++) {
			im_final_to_convert[i] = (float*) malloc(
					sizeof(float) * sar_data_Nx);
		}

		clock_t startcheck1, endcheck1;
		clock_t startcheck2, endcheck2;


		startcheck1 = clock();
		startcheck2 = clock();


		for (int y = 0; y < sar_data_Ny/RES_SIZEY; y++) {
			int x;

			for (x = 0; x < sar_data_Nx/RES_SIZEX; x++) {
				for (int j=0; j<RES_SIZEY/BOX_SIZEY;  j++){
					for (int k=0; k < RES_SIZEX/BOX_SIZEX; k++){ 
						for (int a=0; a < BOX_SIZEY; a++){ 
							for (int b=0; b <BOX_SIZEX; b++){ 

								im_final_to_convert[x*RES_SIZEX+k*BOX_SIZEX+b][y*RES_SIZEY+j*BOX_SIZEY+a] = sqrt(
										pow(im_final_host_R[y * sar_data_Nx*RES_SIZEY +x*RES_SIZEX*RES_SIZEY+ j*RES_SIZEX*BOX_SIZEY+k*BOX_SIZEX*BOX_SIZEY+a*BOX_SIZEX+b], 2)
										+ pow(im_final_host_Q[y * sar_data_Nx*RES_SIZEY +x*RES_SIZEX*RES_SIZEY+ j*RES_SIZEX*BOX_SIZEY+k*BOX_SIZEX*BOX_SIZEY+a*BOX_SIZEX+b], 2));
							}
						}

					}
				}

			}

		}




		float max_imfinal = -DBL_MAX;

		for (int x = 0; x < sar_data_Nx; x++) {
			int y;

			for (int y = 0; y < sar_data_Nx; y++) {

				if (im_final_to_convert[x][y] > max_imfinal) {
					max_imfinal = im_final_to_convert[x][y];

				}

			}

		}

		float** final_im_final = (float **) malloc(
				sizeof(float *) * sar_data_Nx);
		for (int i = 0; i < sar_data_Nx; i++) {
			final_im_final[i] = (float *) malloc(sizeof(float) * sar_data_Nx);
		}

		for (int x = 0; x < sar_data_Nx; x++) {

			for (int y = 0; y < sar_data_Nx; y++) {
				final_im_final[x][y] = 20
					* log10(im_final_to_convert[x][y] / max_imfinal);

			}

		}



		for (int x = 0; x < sar_data_Nx; x++) {

			for (int y = 0; y < sar_data_Nx; y++) {

				// max decibal  to show is 70.
				if (final_im_final[x][y] < -70) {
					final_im_final[x][y] = 0;
				} else if (final_im_final[x][y] > 0) {
					final_im_final[x][y] = 1;
				} else {
					final_im_final[x][y] = 1 - final_im_final[x][y] / -70;
				}

			}

		}

		endcheck1 = clock();


		printf("output image construction time:  %.10f \n", (endcheck1 - startcheck1) / (double) CLOCKS_PER_SEC); 


		FILE *f = fopen("outputimage.txt", "w");
		if (f == NULL) {
			printf("Error opening file!\n");
			exit(1);
		}

		for (int x = 0; x < sar_data_Nx; x++) {

			for (int y = 0; y < sar_data_Nx; y++) {
				fprintf(f, "%lf\t", final_im_final[x][y]);

			}
			fprintf(f, "\n");
		}

		fclose(f); 

		endcheck2 = clock();


		printf("total outputtime:  %.10f \n", (endcheck2 - startcheck2) / (double) CLOCKS_PER_SEC); */ 





		//free(sar_data_AntAz);

		//free(sar_data_minF);
		/*free(sar_data_AntX);
		  free(sar_data_AntY);
		  free(sar_data_AntZ);
		  free(sar_data_R0)*/;
		free(sar_data_XYZR);

		cout << "PASSED\n";
	}




	//printf("came here nott

	return 0;
}

// Shut down MPI cleanly if something goes wrong



void bpbasiccpu(int gpu_id,int num_gpus,int cpu_thread_id,int taotalcpus, int Np, int Nfft, int Nx,int Ny,float minF,float* sar_data_xyzr, float* sar_data_finalIfft_RQ, int multiresarray_size, int multiresarray_offset_size, int* multiresarray,int sar_data_K, int Wx, int Wy, int x0, int y0,   float prep2, float prep3, float prepi,float *im_final_host_R,float *im_final_host_Q,int totalmpistreamtimes,int mpistreamtimes1) {

	int x=0, index=0;
	printf(" cpu %d multiresarraysize offest %d and mul size %d \n",cpu_thread_id,multiresarray_offset_size,multiresarray_size);

	//int gridwidth =ceil( multiresarray_size/float(Ny/RES_SIZEY));
	//int gridheight = Ny /RES_SIZEY;


#define NAR1 BLOCK_SIZEX*BLOCK_SIZEY*16
#define NAR2 BLOCK_SIZEX*BLOCK_SIZEY*4
#define NAR3 BLOCK_SIZEX*BLOCK_SIZEY

	/*for(int blockIdxy=0; blockIdxy<gridheight ; blockIdxy++){
	//printf("still running %d \n", blockIdxy);
	for (int blockIdxx=0; blockIdxx<gridwidth ; blockIdxx++){
	if( blockIdxy* gridwidth + (blockIdxx) < multiresarray_size ) {	
	for(int threadIdxy =0; threadIdxy< BLOCK_SIZEY ; threadIdxy++){
	for(int threadIdxx=0; threadIdxx< BLOCK_SIZEX ; threadIdxx++){*/

	float dR, tmpRA,  phcorrcomplexQ, phCorrR,
	      phCorrQ, getinterpR, getinterpQ, x_lo, x_hi, y_lo, y_hi, imag_y_lo,
	      imag_y_hi, dx, x_mat, y_mat, z_mat=0, tempdx;
	double t_start4, t_end4;
	t_start4 =omp_get_wtime();

	double  startclock,endclock;
		
	startclock =clock();
	for (int blockIdxy = 0; blockIdxy <  multiresarray_size ; blockIdxy++) {

		//for (int blockIdxx = 0; blockIdxx <gridwidth; blockIdxx++) {
	//printf("multires array size %d %d \n", multiresarray_size,blockIdxy);

			dR =0, tmpRA=0,  
				   phCorrR=0, phCorrQ=0, getinterpR=0, getinterpQ=0, x_lo=0,
				   y_lo=0, y_hi=0, imag_y_lo=0, imag_y_hi=0,x_mat=0, y_mat=0,
				   tempdx=0;

				float a,b,c,d;
				int currentvalue =   (multiresarray_offset_size +(blockIdxy))*RES_SIZEY*RES_SIZEX;

			if (multiresarray[(multiresarray_offset_size+blockIdxy)*5+4] == 2) {
				//#pragma unroll
				//for (int threadloop = 0; threadloop < BOX_SIZEX * BOX_SIZEY; threadloop++) {


				

				x_mat = (x0 - Wx / 2)
					+ ( multiresarray[ (multiresarray_offset_size + blockIdxy)*5+0] )
					* Wx / (float) (Nx - 1);


				y_mat = (y0 - Wy / 2)
					+ (multiresarray[(multiresarray_offset_size + blockIdxy)*5+1]) 
					* Wy / (float) (Ny - 1);
				//x_mat = (sar_data_x0 - sar_data_Wx / 2)
				//	+ ((blockIdxy)) * sar_data_Wx / (float) (sar_data_Nx - 1);
				//y_mat = (sar_data_y0 - sar_data_Wy / 2)
				//	+ ((blockIdxy)) * sar_data_Wy / (float) (sar_data_Nx - 1);

				float final_imvalueR[NAR1]={0}, final_imvalueQ[NAR1]={0};

				for (x =0; x < Np; x++) {

					a =sar_data_XYZR[4*x+0] ;
					b= sar_data_XYZR[4*x+1] ;
					c= sar_data_XYZR[4*x+2];
					d= sar_data_XYZR[4*x+3];

					for(int i=0;i<NAR1;i++){


						tmpRA =a - x_mat- (i/RES_SIZEX)* sar_data_Wy / (float) (sar_data_Nx - 1);			
						
						dR = tmpRA * tmpRA;
						tmpRA = b- y_mat- (i%RES_SIZEY)* sar_data_Wy / (float) (Nx - 1);;		
						
						dR += tmpRA * tmpRA;
						tmpRA = c;
						dR += tmpRA * tmpRA;
						dR = sqrtf(dR) -d;


						tmpRA = prepi * minF * dR;

						sincosf(tmpRA, &phCorrQ, &phCorrR  );


						index = dR * prep3 + Nfft/2;



						x_lo = (-Nfft / 2 + index) * prep2;



						//y_lo_first = sar_data_finalIfft_RQ[x*Nfft+index];
						//y_hi_first = sar_data_finalIfft_RQ[x*Nfft+index+ 1];


						y_lo =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+0];
						y_hi =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+2];

						imag_y_lo = sar_data_finalIfft_RQ[2*(x*Nfft+index)+1];
						imag_y_hi =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+3];

						tempdx =((dR - x_lo) / prep2);


						getinterpR = y_lo + tempdx * (y_hi - y_lo);

						//	y_lo = 11.3;
						//	y_hi = 11.5;


						getinterpQ = imag_y_lo
							+ tempdx * (imag_y_hi - imag_y_lo);


						final_imvalueR[i] += ((getinterpR * phCorrR) - (getinterpQ * phCorrQ));
						final_imvalueQ[i] += ((getinterpR * phCorrQ) + (getinterpQ * phCorrR));

					}
				}
				for(int k=0;k<NAR1;k++){
				
					im_final_host_Q[currentvalue + k] += final_imvalueR[k];

					im_final_host_Q[currentvalue+ k] += final_imvalueQ[k];
				}


			}

			else if (multiresarray[(multiresarray_offset_size+blockIdxy)*5+4] == 1) {
				//#pragma unroll
				//for (int threadloop = 0; threadloop < BOX_SIZEX * BOX_SIZEY; threadloop++) {


				

				x_mat = (x0 - Wx / 2)
					+ ( multiresarray[ (multiresarray_offset_size + blockIdxy)*5+0] )
					* Wx / (float) (Nx - 1);


				y_mat = (y0 - Wy / 2)
					+ (multiresarray[(multiresarray_offset_size + blockIdxy)*5+1]) 
					* Wy / (float) (Ny - 1);
				//x_mat = (sar_data_x0 - sar_data_Wx / 2)
				//	+ ((blockIdxy)) * sar_data_Wx / (float) (sar_data_Nx - 1);
				//y_mat = (sar_data_y0 - sar_data_Wy / 2)
				//	+ ((blockIdxy)) * sar_data_Wy / (float) (sar_data_Nx - 1);

				float final_imvalueR[NAR2]={0}, final_imvalueQ[NAR2]={0};

				for (x =0; x < Np; x++) {

					a =sar_data_XYZR[4*x+0] ;
					b= sar_data_XYZR[4*x+1] ;
					c= sar_data_XYZR[4*x+2];
					d= sar_data_XYZR[4*x+3];

					for(int i=0;i<NAR2;i++){


						tmpRA =a - x_mat- (i/RES_SIZEX)* sar_data_Wy / (float) (sar_data_Nx - 1);			
						
						dR = tmpRA * tmpRA;
						tmpRA = b- y_mat- (i%RES_SIZEY)* sar_data_Wy / (float) (Nx - 1);;		
						
						dR += tmpRA * tmpRA;
						tmpRA = c;
						dR += tmpRA * tmpRA;
						dR = sqrtf(dR) -d;


						tmpRA = prepi * minF * dR;

						sincosf(tmpRA, &phCorrQ, &phCorrR  );


						index = dR * prep3 + Nfft/2;



						x_lo = (-Nfft / 2 + index) * prep2;



						//y_lo_first = sar_data_finalIfft_RQ[x*Nfft+index];
						//y_hi_first = sar_data_finalIfft_RQ[x*Nfft+index+ 1];


						y_lo =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+0];
						y_hi =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+2];

						imag_y_lo = sar_data_finalIfft_RQ[2*(x*Nfft+index)+1];
						imag_y_hi =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+3];

						tempdx =((dR - x_lo) / prep2);


						getinterpR = y_lo + tempdx * (y_hi - y_lo);

						//	y_lo = 11.3;
						//	y_hi = 11.5;


						getinterpQ = imag_y_lo
							+ tempdx * (imag_y_hi - imag_y_lo);


						final_imvalueR[i] += ((getinterpR * phCorrR) - (getinterpQ * phCorrQ));
						final_imvalueQ[i] += ((getinterpR * phCorrQ) + (getinterpQ * phCorrR));

					}
				}
				for(int k=0;k<NAR2;k++){
					im_final_host_Q[currentvalue + 16*k] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+1] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+1] += final_imvalueQ[k];

					im_final_host_Q[currentvalue +16* k+2] += final_imvalueR[k];
					im_final_host_Q[currentvalue+16* k+2] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16* k+3] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16* k+3] += final_imvalueQ[k];
				}


			}

			else if (multiresarray[(multiresarray_offset_size+blockIdxy)*5+4] == 0) {
				//#pragma unroll
				//for (int threadloop = 0; threadloop < BOX_SIZEX * BOX_SIZEY; threadloop++) {


				

				x_mat = (x0 - Wx / 2)
					+ ( multiresarray[ (multiresarray_offset_size + blockIdxy)*5+0] )
					* Wx / (float) (Nx - 1);


				y_mat = (y0 - Wy / 2)
					+ (multiresarray[(multiresarray_offset_size + blockIdxy)*5+1]) 
					* Wy / (float) (Ny - 1);
				//x_mat = (sar_data_x0 - sar_data_Wx / 2)
				//	+ ((blockIdxy)) * sar_data_Wx / (float) (sar_data_Nx - 1);
				//y_mat = (sar_data_y0 - sar_data_Wy / 2)
				//	+ ((blockIdxy)) * sar_data_Wy / (float) (sar_data_Nx - 1);

				float final_imvalueR[NAR3]={0}, final_imvalueQ[NAR3]={0};

				for (x =0; x <Np; x++) {

					a =sar_data_XYZR[4*x+0] ;
					b= sar_data_XYZR[4*x+1] ;
					c= sar_data_XYZR[4*x+2];
					d= sar_data_XYZR[4*x+3];

					for(int i=0;i<NAR3;i++){


						tmpRA =a - x_mat- (i/RES_SIZEX)* sar_data_Wy / (float) (sar_data_Nx - 1);			
						
						dR = tmpRA * tmpRA;
						tmpRA = b- y_mat- (i%RES_SIZEY)* sar_data_Wy / (float) (Nx - 1);;		
						
						dR += tmpRA * tmpRA;
						tmpRA = c;
						dR += tmpRA * tmpRA;
						dR = sqrtf(dR) -d;


						tmpRA = prepi * minF * dR;

						sincosf(tmpRA, &phCorrQ, &phCorrR  );


						index = dR * prep3 + Nfft/2;



						x_lo = (-Nfft / 2 + index) * prep2;



						//y_lo_first = sar_data_finalIfft_RQ[x*Nfft+index];
						//y_hi_first = sar_data_finalIfft_RQ[x*Nfft+index+ 1];


						y_lo =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+0];
						y_hi =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+2];

						imag_y_lo = sar_data_finalIfft_RQ[2*(x*Nfft+index)+1];
						imag_y_hi =  sar_data_finalIfft_RQ[2*(x*Nfft+index)+3];

						tempdx =((dR - x_lo) / prep2);


						getinterpR = y_lo + tempdx * (y_hi - y_lo);

						//	y_lo = 11.3;
						//	y_hi = 11.5;


						getinterpQ = imag_y_lo
							+ tempdx * (imag_y_hi - imag_y_lo);


						final_imvalueR[i] += ((getinterpR * phCorrR) - (getinterpQ * phCorrQ));
						final_imvalueQ[i] += ((getinterpR * phCorrQ) + (getinterpQ * phCorrR));

					}
				}
				for(int k=0;k<NAR3;k++){

					im_final_host_Q[currentvalue + 16*k] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+1] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+1] += final_imvalueQ[k];

					im_final_host_Q[currentvalue +16* k+2] += final_imvalueR[k];
					im_final_host_Q[currentvalue+16* k+2] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16* k+3] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16* k+3] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+4] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+4] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+5] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+5] += final_imvalueQ[k];

					im_final_host_Q[currentvalue +16* k+6] += final_imvalueR[k];
					im_final_host_Q[currentvalue+16* k+6] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16* k+7] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16* k+7] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+8] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+8] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+9] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+9] += final_imvalueQ[k];

					im_final_host_Q[currentvalue +16* k+10] += final_imvalueR[k];
					im_final_host_Q[currentvalue+16* k+10] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16* k+11] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16* k+11] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+12] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+12] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16*k+13] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16*k+13] += final_imvalueQ[k];

					im_final_host_Q[currentvalue +16* k+14] += final_imvalueR[k];
					im_final_host_Q[currentvalue+16* k+14] += final_imvalueQ[k];

					im_final_host_Q[currentvalue + 16* k+15] += final_imvalueR[k];
					im_final_host_Q[currentvalue+ 16* k+15] += final_imvalueQ[k];

					
				}


			}






			






			/*for(int k=0;k<16;k++){

			  im_final_R[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*BLOCK_SIZEX*1+threadIdx.x*16) +k] = final_imvalueR[k];
			  im_final_Q[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*BLOCK_SIZEX*1+threadIdx.x*16) +k] = final_imvalueQ[k];

			  } */


			//	endset = clock();

			//	printf("Number of seconds:  %.10f threadid %d\n", (endset - startset) / (double) CLOCKS_PER_SEC, threadIdx.x);



			
		}
	endclock=clock();
	//printf("Number of seconds: %f\n", (endclock - startclock) / (double) CLOCKS_PER_SEC);
	t_end4 =omp_get_wtime();;


			printf("inside total time  for bpbasic cpuid %d %.4f\n",cpu_thread_id,( t_end4 - t_start4));

	}
	//printf("for loop ends in cpu %d \n",gpu_id); 








