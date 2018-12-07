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



#include <iostream>
using std::cerr;
using std::endl;

#include <stdio.h>
#include <cuComplex.h>
#include <complex.h>
#include <cuda_runtime.h>
#include <cufft.h>

#include <math.h>

#include "simpleMPI.h"



// Error handling macro
/*#define CUDA_CHECK(call) \
  if((call) != cudaSuccess) { \
  cudaError_t err = cudaGetLastError(); \
  cerr << "CUDA error calling \""#call"\", code is " << err << endl; \
  my_abort(err); }
 */


// Device code
// Very simple GPU Kernel that computes square roots of input numbers

__global__ void BPKernel(int gpu_id,int num_gpus, float2 *rc, float *im_final_R, float *im_final_Q,
		int Nx,int Ny, int Nfft,  float4 *AntXYZR, float minF, int Np, int Wx, int Wy, int x0,
		int y0, float prepi, float prep2, float prep3,int multiresarray_size,int sar_data_multiresarray_offset_size, int *multiresarray,int gridwidth, int totalmpistreamtimes,int mpistreamtimes) {
	//Np=1;
	int x=0, index=0;
	float2 y_lo_first, y_hi_first;


	if( blockIdx.y* gridwidth + (blockIdx.x) < multiresarray_size ) {


		//	clock_t startset, endset;

		//	startset = clock();

		if (multiresarray[(blockIdx.y*gridwidth +blockIdx.x)*5+4] == 2) {
#pragma unroll
			for (int threadloop = 0; threadloop < BOX_SIZEX * BOX_SIZEY;
					threadloop++) {
				float2 y_lo_first, y_hi_first;

				float dR =0, tmpRA=0, final_imvalueR=0, final_imvalueQ=0, 
				      phCorrR=0, phCorrQ=0, getinterpR=0, getinterpQ=0, x_lo=0,
				      y_lo=0, y_hi=0, imag_y_lo=0, imag_y_hi=0,x_mat=0, y_mat=0,
				      tempdx=0;

				x_mat = (x0 - Wx / 2)
					+ ( multiresarray[ (blockIdx.y*gridwidth +blockIdx.x)*5+0] + (threadIdx.x)* BOX_SIZEX+ threadloop%BOX_SIZEX)
					* Wx / (float) (Nx - 1);


				y_mat = (y0 - Wy / 2)
					+ (multiresarray[(blockIdx.y*gridwidth +blockIdx.x)*5+1]+ (threadIdx.y)* BOX_SIZEY +threadloop/BOX_SIZEY ) 
					* Wy / (float) (Ny - 1);

				//if(blockIdx.y==1&& blockIdx.x==1&& threadIdx.x==0&& threadIdx.y==0 ){

				//	printf("%d %.40f %.40f \n", threadloop, x_mat, y_mat);

				//	}


				for (x = (Np/totalmpistreamtimes)*mpistreamtimes; x < (Np/totalmpistreamtimes)*mpistreamtimes+ Np/totalmpistreamtimes; x++) {

					tmpRA = AntXYZR[x].x  - x_mat;
					dR = tmpRA * tmpRA;
					tmpRA = AntXYZR[x].y - y_mat;
					dR += tmpRA * tmpRA;
					tmpRA = AntXYZR[x].z;
					dR += tmpRA * tmpRA;



					dR = sqrt(dR) - AntXYZR[x].w;

					tmpRA = prepi * minF * dR;

					__sincosf(tmpRA, &phCorrQ, &phCorrR  );


					index = dR * prep3 + Nfft/2;



					x_lo = (-Nfft / 2 + index) * prep2;



					y_lo_first = rc[x*Nfft+index];
					y_hi_first = rc[x*Nfft+index+ 1];


					y_lo = y_lo_first.x;
					y_hi = y_hi_first.x;

					imag_y_lo = y_lo_first.y;
					imag_y_hi = y_hi_first.y;

					tempdx =((dR - x_lo) / prep2);


					getinterpR = y_lo + tempdx * (y_hi - y_lo);

					//	y_lo = 11.3;
					//	y_hi = 11.5;


					getinterpQ = imag_y_lo
						+ tempdx * (imag_y_hi - imag_y_lo);


					final_imvalueR += ((getinterpR * phCorrR) - (getinterpQ * phCorrQ));
					final_imvalueQ += ((getinterpR * phCorrQ) + (getinterpQ * phCorrR));

				}


				im_final_R[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEY*RES_SIZEX+ (threadIdx.y*BLOCK_SIZEX+threadIdx.x)*BOX_SIZEY*BOX_SIZEX +threadloop] += final_imvalueR;

				im_final_Q[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEY*RES_SIZEX+ (threadIdx.y*BLOCK_SIZEX+threadIdx.x)*BOX_SIZEY*BOX_SIZEX +threadloop] += final_imvalueQ;

				//printf("inside value %.40f \n", final_imvalueR);

				/*im_final_R[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ threadIdx.y+threadIdx.x] +=final_imvalueR;
				  im_final_Q[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ threadIdx.y+threadIdx.x]  += final_imvalueQ;*/



				//im_final_R[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*RES_SIZEX+threadIdx.x*BOX_SIZEX*BOX_SIZEY)+threadloop] +=final_imvalueR;
				//im_final_Q[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*RES_SIZEX+threadIdx.x*BOX_SIZEX*BOX_SIZEY)+threadloop]  += final_imvalueQ;


			}



		}


		else if (multiresarray[(blockIdx.y*gridwidth +blockIdx.x)*5+4] == 1) {


			//printf("this cannot print tadaaaaaaaaaaaaaaa\n");
			for (int threadloop = 0; threadloop < BOX_SIZEX * BOX_SIZEY/4;
					threadloop++) {

				float dR =0, tmpRA=0, final_imvalueR=0, final_imvalueQ=0, 
				      phCorrR=0, phCorrQ=0, getinterpR=0, getinterpQ=0, x_lo=0,
				      y_lo=0, y_hi=0, imag_y_lo=0, imag_y_hi=0,x_mat=0, y_mat=0,
				      tempdx=0;

				x_mat = (x0 - Wx / 2)
					+ ( multiresarray[ (blockIdx.y*gridwidth +blockIdx.x)*5+0] + (threadIdx.x)* BOX_SIZEX+ 2*(threadloop%(BOX_SIZEX/2)))
					* Wx / (float) (Nx - 1);


				y_mat = (y0 - Wy / 2)
					+ (multiresarray[(blockIdx.y*gridwidth +blockIdx.x)*5+1]+ (threadIdx.y)* BOX_SIZEY +2*(threadloop/(BOX_SIZEY/2)) ) 
					* Wy / (float) (Ny - 1);



				//if(currentvalue==0){
				//		printf("%s %d  \n", "change happens : ", currentvalue);

				//		printf("%d %.40f %.40f \n", currentvalue, x_mat, y_mat);

				//	}


				for (x = (Np/totalmpistreamtimes)*mpistreamtimes; x < (Np/totalmpistreamtimes)*mpistreamtimes+ Np/totalmpistreamtimes; x++) {

					tmpRA = AntXYZR[x].x  - x_mat;
					dR = tmpRA * tmpRA;
					tmpRA = AntXYZR[x].y - y_mat;
					dR += tmpRA * tmpRA;
					tmpRA = AntXYZR[x].z;
					dR += tmpRA * tmpRA;



					dR = sqrt(dR) - AntXYZR[x].w;

					tmpRA = prepi * minF * dR;

					__sincosf(tmpRA, &phCorrQ, &phCorrR  );


					index = dR * prep3 + Nfft/2;



					x_lo = (-Nfft / 2 + index) * prep2;



					y_lo_first = rc[x*Nfft+index];
					y_hi_first = rc[x*Nfft+index+ 1];


					y_lo = y_lo_first.x;
					y_hi = y_hi_first.x;

					imag_y_lo = y_lo_first.y;
					imag_y_hi = y_hi_first.y;

					tempdx =((dR - x_lo) / prep2);


					getinterpR = y_lo + tempdx * (y_hi - y_lo);

					//	y_lo = 11.3;
					//	y_hi = 11.5;


					getinterpQ = imag_y_lo
						+ tempdx * (imag_y_hi - imag_y_lo);


					final_imvalueR += ((getinterpR * phCorrR) - (getinterpQ * phCorrQ));
					final_imvalueQ += ((getinterpR * phCorrQ) + (getinterpQ * phCorrR));



				}


				for(int fillx = 0; fillx < BOX_SIZEX; fillx++) {

					im_final_R[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEY*RES_SIZEX+ (threadIdx.y*BLOCK_SIZEX+threadIdx.x)*BOX_SIZEX*BOX_SIZEY +threadloop*BOX_SIZEX+ fillx] += final_imvalueR;
					im_final_Q[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEY*RES_SIZEX+ (threadIdx.y*BLOCK_SIZEX+threadIdx.x)*BOX_SIZEX*BOX_SIZEY +threadloop*BOX_SIZEX+ fillx] += final_imvalueQ;



				}


				//im_final_R[ (bl ckIdx.y*gridwidth +blockIdx.x)*RES_SIZE*RES_SIZE+ (threadIdx.y*BLOCK_SIZE+threadIdx.x)*BOX_SIZE*BOX_SIZE +threadloop] = final_imvalueR;
				//	im_final_Q[(currentvalue + ((threadloop / BOX_SIZE) * Nx)
				//		+ (threadloop % BOX_SIZE)) - (sar_data_multiresarray_offset_size*RES_SIZE*RES_SIZE)] = final_imvalueQ;



				//im_final_R[currentvalue+threadloop] = final_imvalueR;
				//im_final_Q[currentvalue+threadloop] = final_imvalueQ;

				//if(gpu_id==1 &&(currentvalue>8388350|| currentvalue< 4194310)){

				//	printf("%d %.40f %.40f \n", currentvalue, final_imvalueR, final_imvalueQ);

				//}

			}



		}
		else if(multiresarray[(blockIdx.y*gridwidth +blockIdx.x)*5+4] == 0) {
			//	printf("this cannot print tadaaaaaaaaaaaaaaa\n");
			//if(currentvalue<512){

			//printf("%d dddddddddddddddddddddddddd  \n", currentvalue);

			//}

			float dR =0, tmpRA=0, final_imvalueR=0, final_imvalueQ=0, 
			      phCorrR=0, phCorrQ=0, getinterpR=0, getinterpQ=0, x_lo=0,
			      y_lo=0, y_hi=0, imag_y_lo=0, imag_y_hi=0,x_mat=0, y_mat=0,
			      tempdx=0;

			x_mat = (x0 - Wx / 2)
				+ ( multiresarray[ (blockIdx.y*gridwidth +blockIdx.x)*5+0] + (threadIdx.x)* BOX_SIZEX)
				* Wx / (float) (Nx - 1);


			y_mat = (y0 - Wy / 2)
				+ ((threadIdx.y)* BOX_SIZEY + multiresarray[(blockIdx.y*gridwidth +blockIdx.x)*5+1]) 
				* Wy / (float) (Ny - 1);




			for (x = (Np/totalmpistreamtimes)*mpistreamtimes; x < (Np/totalmpistreamtimes)*mpistreamtimes+ Np/totalmpistreamtimes; x++) {

				tmpRA = AntXYZR[x].x  - x_mat;
				dR = tmpRA * tmpRA;
				tmpRA = AntXYZR[x].y - y_mat;
				dR += tmpRA * tmpRA;
				tmpRA = AntXYZR[x].z;
				dR += tmpRA * tmpRA;



				dR = sqrt(dR) - AntXYZR[x].w;

				tmpRA = prepi * minF * dR;

				__sincosf(tmpRA, &phCorrQ, &phCorrR  );


				index = dR * prep3 + Nfft/2;



				x_lo = (-Nfft / 2 + index) * prep2;



				y_lo_first = rc[x*Nfft+index];
				y_hi_first = rc[x*Nfft+index+ 1];


				y_lo = y_lo_first.x;
				y_hi = y_hi_first.x;

				imag_y_lo = y_lo_first.y;
				imag_y_hi = y_hi_first.y;

				tempdx =((dR - x_lo) / prep2);


				getinterpR = y_lo + tempdx * (y_hi - y_lo);

				//	y_lo = 11.3;
				//	y_hi = 11.5;


				getinterpQ = imag_y_lo
					+ tempdx * (imag_y_hi - imag_y_lo);


				final_imvalueR += ((getinterpR * phCorrR) - (getinterpQ * phCorrQ));
				final_imvalueQ += ((getinterpR * phCorrQ) + (getinterpQ * phCorrR));


			}



			for (int fillx = 0; fillx < BOX_SIZEX*BOX_SIZEX; fillx++) {

				im_final_R[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*BLOCK_SIZEX+threadIdx.x)*BOX_SIZEY*BOX_SIZEX + fillx] +=final_imvalueR;
				im_final_Q[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*BLOCK_SIZEX+threadIdx.x)*BOX_SIZEY*BOX_SIZEX + fillx] +=final_imvalueQ;
			}




		} 







		/*for(int k=0;k<16;k++){

		  im_final_R[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*BLOCK_SIZEX*1+threadIdx.x*16) +k] = final_imvalueR[k];
		  im_final_Q[ (blockIdx.y*gridwidth +blockIdx.x)*RES_SIZEX*RES_SIZEY+ (threadIdx.y*BLOCK_SIZEX*1+threadIdx.x*16) +k] = final_imvalueQ[k];

		  } */


		//	endset = clock();

		//	printf("Number of seconds:  %.10f threadid %d\n", (endset - startset) / (double) CLOCKS_PER_SEC, threadIdx.x);


	}


}

void GPU_Init(int gpu_id){

	cudaError_t ierr_cuda;



		ierr_cuda= cudaSetDevice(7);
		// modified to run on 100 cpu machine
		//ierr_cuda= cudaSetDevice(0);


		if (cudaGetLastError() != cudaSuccess) {
			printf("CUDA error set device: %s\n", cudaGetErrorString(ierr_cuda));
			exit(0);
		}

}

	clock_t startset, endset;
	float2* rc;
float4* sar_data_Antxyzr;
float* d_im_final_R;
float* d_im_final_Q;
float4* Antxyzr_d;
int* multiresarray_d;
float2* d_rc;


void bpbasic(int gpu_id,int num_gpus, int sar_data_Np, int sar_data_Nfft, int sar_data_Nx,int sar_data_Ny,float sar_data_minF,float* sar_data_xyzr, float* sar_data_finalIfft_RQ, int sar_data_multiresarray_size, int sar_data_multiresarray_offset_size, int* sar_data_multiresarray,int sar_data_K, int sar_data_Wx, int sar_data_Wy, int sar_data_x0, int sar_data_y0,   float prep2, float prep3, float prepi,float *im_final_host_R,float *im_final_host_Q,int totalmpistreamtimes,int mpistreamtimes1) {

	//printf("GPU ID _ %d \n", gpu_id);

	cudaEvent_t start9, stop9;
	cudaEventCreate(&start9);
	cudaEventCreate(&stop9);
	cudaEventRecord(start9);



	//if(mpistreamtimes==0){
		

		
		//cudaError_t ierr_cuda;



		// Do something

		//ierr_cuda= cudaSetDevice(gpu_id);
		// modified to run on 100 cpu machine
		//ierr_cuda= cudaSetDevice(0);


		//endset = clock();

		//printf("Number of seconds:  %.10f GPU %d\n", (endset - startset) / (double) CLOCKS_PER_SEC, gpu_id);



		//if (cudaGetLastError() != cudaSuccess) {
		//	printf("CUDA error set device: %s\n", cudaGetErrorString(ierr_cuda));
		//	exit(0);
		//}
		cudaEvent_t start8, stop8;
	cudaEventCreate(&start8);
	cudaEventCreate(&stop8);
	cudaEventRecord(start8);

		rc = (float2*) sar_data_finalIfft_RQ ; 

		sar_data_Antxyzr = (float4*) sar_data_xyzr;



		cudaMalloc(&d_im_final_R, sizeof(float) * (sar_data_multiresarray_size*RES_SIZEX*RES_SIZEY));
		//printf("point3Cuda Done\n");
		if (cudaGetLastError() != cudaSuccess) {
			printf("point3Cuda error: Failed to allocate\n");
			//exit(0);
		}



		cudaMalloc(&d_im_final_Q, sizeof(float) * (sar_data_multiresarray_size*RES_SIZEX*RES_SIZEY));

		cudaMemset(d_im_final_R, 0.0, sizeof(float) * (sar_data_multiresarray_size*RES_SIZEX*RES_SIZEY));
		cudaMemset(d_im_final_Q, 0.0, sizeof(float) * (sar_data_multiresarray_size*RES_SIZEX*RES_SIZEY));


		cudaMalloc(&Antxyzr_d, sizeof(float) * sar_data_Np*4);
		//printf("point4Cuda Done\n");
		if (cudaGetLastError() != cudaSuccess) {
			printf("point4Cuda error: Failed to allocate\n");
			//exit(0);
		}


		cudaMalloc(&multiresarray_d, sizeof(int) * sar_data_multiresarray_size*5);

		//printf("point11Cuda Done\n");
		if (cudaGetLastError() != cudaSuccess) {
			printf("point11Cuda error: Failed to allocate\n");
			//exit(0);
		}

		cudaMemcpy(multiresarray_d, sar_data_multiresarray,
				sizeof(int) * sar_data_multiresarray_size*5,
				cudaMemcpyHostToDevice);
		//printf("point93Cuda Done\n");
		if (cudaGetLastError() != cudaSuccess) {
			printf("point93Cuda error: Failed to allocate\n");
			//exit(0);
		}


		cudaMalloc(&d_rc, sar_data_Np * sizeof(float) * sar_data_Nfft*2);
		//printf("point53Cuda Done\n");
		if (cudaGetLastError() != cudaSuccess) {
			printf("point5233Cuda error: Failed to allocate\n");
			//exit(0);
		}
		/*printf("sardaa_NY111 %d \n", sar_data_Ny);
		dimgridwidth =ceil( sar_data_multiresarray_size/float(sar_data_Ny/RES_SIZEY));
		gridheight = sar_data_Ny /RES_SIZEY;
		
		printf("sardaa_NY1111 %d \n", sar_data_Ny);
		dim3	dimBlock(BLOCK_SIZEX, BLOCK_SIZEY);
		dim3
			dimGrid(dimgridwidth,gridheight );

		printf("sardaa_NY111`11 %d \n", sar_data_Ny);

		//cudaFuncSetCacheConfig(BPKernel, cudaFuncCachePreferL1);
		printf("0 runs %d\n",gpu_id );		
		printf("values %d  %d \n",dimgridwidth, sar_data_Ny );
		printf("sardaa_NY12222 %d \n", sar_data_Ny); */

		cudaStream_t stream[totalmpistreamtimes];
		for(int i = 0; i < totalmpistreamtimes; ++i){
		 	cudaStreamCreate(&stream[i]);
		}


		

	//}

	//printf("before  alloc 1st point %d   %d \n",gpu_id, mpistreamtimes );		


	

	int dimgridwidth =ceil( sar_data_multiresarray_size/float(sar_data_Ny/RES_SIZEY));
		int gridheight = sar_data_Ny /RES_SIZEY;
		
	
		dim3	dimBlock(BLOCK_SIZEX, BLOCK_SIZEY);
		dim3
			dimGrid(dimgridwidth,gridheight );
		cudaFuncSetCacheConfig(BPKernel, cudaFuncCachePreferL1);

		cudaEventRecord(stop8);
		
		cudaEventSynchronize(stop8);
		float milliseconds8 = 0;
		cudaEventElapsedTime(&milliseconds8, start8, stop8);
		printf("cuda one time  %d gpu  %f  \n",gpu_id, milliseconds8);
	

	
	float totaltimeforcuda=0;
//float totaltimeformpibroadcasting=0;
float totaltimeforpulsearray=0;

	cudaEvent_t start4, stop4;
	cudaEventCreate(&start4);
	cudaEventCreate(&stop4);
	cudaEventRecord(start4);

	for(int mpistreamtimes = 0; mpistreamtimes < totalmpistreamtimes; mpistreamtimes++) {

		
/*cudaEvent_t start7, stop7;
	cudaEventCreate(&start7);
	cudaEventCreate(&stop7);
	cudaEventRecord(start7); */

	

	/*for ( int i=0; i< sar_data_Np/totalmpistreamtimes; i++){
			

		for ( int j=0; j< sar_data_Nfft; j++){

			
			rc[(sar_data_Np/totalmpistreamtimes) * sar_data_Nfft*mpistreamtimes  +i * sar_data_Nfft + j].x=sar_data_finalIfft_R[(sar_data_Np/totalmpistreamtimes) * sar_data_Nfft*mpistreamtimes  +i * sar_data_Nfft + j];

			
			rc[(sar_data_Np/totalmpistreamtimes) * sar_data_Nfft*mpistreamtimes  +i * sar_data_Nfft + j].y= sar_data_finalIfft_Q[(sar_data_Np/totalmpistreamtimes) * sar_data_Nfft*mpistreamtimes  +i * sar_data_Nfft + j];

		}
	}
     */
				

	/*for (int i = 0; i < sar_data_Np/totalmpistreamtimes; i++) {
		sar_data_Antxyzr[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i].x = sar_data_AntX[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i];
		sar_data_Antxyzr[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i].y = sar_data_AntY[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i];
		sar_data_Antxyzr[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i].z = sar_data_AntZ[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i];
		sar_data_Antxyzr[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i].w = sar_data_R0[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes +i];

	} */

	

		

	//	printf("Inside GPu %d Total Number of seconds:  %.10f GPU %d\n",gpu_id, (endset - startset) / (double) CLOCKS_PER_SEC, gpu_id);

		cudaMemcpyAsync(&Antxyzr_d[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes], &sar_data_Antxyzr[(sar_data_Np/totalmpistreamtimes)*mpistreamtimes], sizeof(float4) * sar_data_Np/totalmpistreamtimes, cudaMemcpyHostToDevice, stream[mpistreamtimes]);

		
	cudaMemcpyAsync(&d_rc[(sar_data_Np/totalmpistreamtimes) * sar_data_Nfft*mpistreamtimes], &rc[(sar_data_Np/totalmpistreamtimes) * sar_data_Nfft*mpistreamtimes],
			(sar_data_Np/totalmpistreamtimes) * sizeof(float2) * sar_data_Nfft,
			cudaMemcpyHostToDevice,stream[mpistreamtimes]);
	//printf("point54Cuda Done\n");
	if (cudaGetLastError() != cudaSuccess) {
		printf("point5234Cuda error: Failed to allocate\n");
		//exit(0);
	}
		
		
	
	/*cudaEventRecord(stop7);
		
		cudaEventSynchronize(stop7);
		float milliseconds7 = 0;
		cudaEventElapsedTime(&milliseconds7, start7, stop7);
		totaltimeforpulsearray += milliseconds7; */


		

		//printf(" start working %d \n", gpu_id);

		// kernel<<<streamSize/blockSize, blockSize, 0, stream[i]>>>(d_a, offset);
		


	BPKernel<<<dimGrid, dimBlock,0,stream[mpistreamtimes]>>>(gpu_id, num_gpus, d_rc, d_im_final_R,d_im_final_Q, sar_data_Nx,sar_data_Ny,sar_data_Nfft,Antxyzr_d,sar_data_minF, sar_data_Np,sar_data_Wx,sar_data_Wy,sar_data_x0,sar_data_y0,prepi,prep2,prep3,sar_data_multiresarray_size,sar_data_multiresarray_offset_size, multiresarray_d,dimgridwidth,totalmpistreamtimes,mpistreamtimes); 

		//cudaDeviceSynchronize();

		/*cudaEventRecord(stop4);
		cudaEventSynchronize(stop4);
		float milliseconds4 = 0;
		cudaEventElapsedTime(&milliseconds4, start4, stop4);
		totaltimeforcuda += milliseconds4;*/

		/*cudaEvent_t start5, stop5;
		cudaEventCreate(&start5);
		cudaEventCreate(&stop5);
		cudaEventRecord(start5);
*/
		//if(mpistreamtimes<totalmpistreamtimes-1){

		//getbcastarrays(sar_data_xyzr,sar_data_finalIfft_RQ,mpistreamtimes+1,totalmpistreamtimes,gpu_id);

		//}
		

		/*cudaEventRecord(stop5);
		cudaEventSynchronize(stop5);
		float milliseconds5 = 0;
		cudaEventElapsedTime(&milliseconds5, start5, stop5);*/
		//totaltimeformpibroadcasting += milliseconds5;
		
		cudaDeviceSynchronize();

		

		//printf(" start working after %d \n", gpu_id);


			//cudaDeviceSynchronize();
			//cudaStreamSynchronize(stream[mpistreamtimes]);

		//	cudaEventRecord(stop1);
		//int  copysize;
		//if(sar_data.Nx >511){
		//	copysize=511;
		//}
		//else{
		//	copysize=sar_data.Nx;
		//}

		
	}
	cudaEventRecord(stop4);
		cudaEventSynchronize(stop4);
		float milliseconds4 = 0;
		cudaEventElapsedTime(&milliseconds4, start4, stop4);
		//totaltimeforcuda += milliseconds4; 
		

	printf("cuda kernel and mpi and memcpy total time: %d gpu  %f  \n",gpu_id, milliseconds4);
	//printf("cuda mpi inside broadcast total time: %d gpu  %f  \n",gpu_id, totaltimeformpibroadcasting);
	//printf("cuda pulse array time %d gpu  %f  \n",gpu_id, totaltimeforpulsearray);

	// measuring time taken




	//cudaEvent_t start2, stop2;
	//cudaEventCreate(&start2);
	//cudaEventCreate(&stop2);
	//cudaEventRecord(start2); 






	//int sizeresarray = (sar_data_Nx / RES_SIZE);





	//cudaEventRecord(stop2);



	//float min_array_min_value = min_array(sar_data.r_vec, sar_data.Nfft);
	//float max_array_max_value = max_array(sar_data.r_vec, sar_data.Nfft);







	cudaEvent_t start1, stop1;
	cudaEventCreate(&start1);
	cudaEventCreate(&stop1);
	cudaEventRecord(start1); 
	//startset2 = clock(); 

	

	

	

	

	//printf(" start working after %d \n", gpu_id);
	//cudaDeviceSynchronize();

	

	//if(mpistreamtimes==totalmpistreamtimes-1){


		cudaEventRecord(stop1);
		//endset2 = clock();

		//int  copysize;
		//if(sar_data.Nx >511){
		//	copysize=511;
		//}
		//else{
		//	copysize=sar_data.Nx;
		//}

		cudaEvent_t start, stop;
		cudaEventCreate(&start);
		cudaEventCreate(&stop);
		cudaEventRecord(start);



		cudaError_t error;
		error = cudaMemcpy(im_final_host_R, d_im_final_R,
				sizeof(float) * (sar_data_multiresarray_size*RES_SIZEX*RES_SIZEY), cudaMemcpyDeviceToHost);
		//printf("point55Cuda Done\n");
		if (cudaGetLastError() != cudaSuccess) {
			printf("CUDA error55: %s in cpu %d %d\n", cudaGetErrorString(error),gpu_id, sar_data_multiresarray_size*RES_SIZEX*RES_SIZEY);
			//exit(0);
		}


		error = cudaMemcpy(im_final_host_Q, d_im_final_Q,
				sizeof(float) * (sar_data_multiresarray_size*RES_SIZEX*RES_SIZEY), cudaMemcpyDeviceToHost);
		//printf("point56Cuda Done\n");
		if (cudaGetLastError() != cudaSuccess) {
			printf("CUDA error56: %s in cpu %d\n", cudaGetErrorString(error),gpu_id);
			//exit(0);
		} 

		



		

		//float milliseconds2 = 0;
		//cudaEventElapsedTime(&milliseconds2, start2, stop2);


		//cudaEventSynchronize(stop1);
		float milliseconds1 = 0;
		cudaEventElapsedTime(&milliseconds1, start1, stop1);


		//printf("Number of total seconds:  %.10f \n", (endset2 - startset2) / (double) CLOCKS_PER_SEC); 





		//printf("CPUID: %d  grid x size %d grid y size %d   \n", gpu_id,dimGrid.x, dimGrid.y  ); 

		//printloop(im_final_host_R,250500,251001);

		/*for (int x = 0; x < 1; x++) {
		  int y;
		  for (y = 0; y < sar_data.Nx; y++) {
		  printf("%lf \n", im_final_host_R[y]);

		  }

		  } */





		cudaFree(d_im_final_R);
		cudaFree(d_im_final_Q);
		cudaFree(Antxyzr_d);
		//cudaFree(Anty_d);
		//cudaFree(Antz_d);
		//cudaFree(r_vec_d);
		//cudaFree(R0_d);
		//cudaFree(minF_d);
		//cudaFree(x_mat_d);
		//cudaFree(y_mat_d);
		//cudaFree(z_mat_d);
		cudaFree(d_rc);

		cudaEventRecord(stop);
		cudaEventSynchronize(stop);
		float milliseconds = 0;
		cudaEventElapsedTime(&milliseconds, start, stop);


		cudaEventRecord(stop9);
		cudaEventSynchronize(stop9);
		float milliseconds9 = 0;
		cudaEventElapsedTime(&milliseconds9, start9, stop9);
		//endset = clock();

		//printf("GPU: %d input time: %f \n \n", gpu_id,milliseconds2);

		printf("GPU: %d output image sending time: %f \n ",gpu_id, milliseconds);
		printf("GPU: %d Total  time start to end : %f \n", gpu_id,milliseconds9);

		//printf("Inside GPu %d Total Number of seconds:  %.10f GPU %d\n",gpu_id, (endset - startset) / (double) CLOCKS_PER_SEC, gpu_id);

	//}

	//free(final_im_final);

}


__device__ cufftComplex complexexp(cufftComplex z)

{

	float factor = exp(z.x);
	return make_cuFloatComplex(factor * cosf(z.y), factor * sinf(z.y));

}

void signalIFFT(cufftComplex *d_signal, int signal_size) {

	cufftHandle plan;
	if (cufftPlan1d(&plan, signal_size, CUFFT_C2C, 1) != CUFFT_SUCCESS) {
		printf("Failed to plan IFFT\n");
		exit(0);
	}

	// Execute the plan.
	if (cufftExecC2C(plan, (cufftComplex *) d_signal, (cufftComplex *) d_signal,
				CUFFT_INVERSE) != CUFFT_SUCCESS) {
		printf("Failed Executing IFFT\n");
		exit(0);
	}

	cufftDestroy(plan);	

}

void getIfftresults(int sar_data_Np, int sar_data_Nfft, int sar_data_K, float** sar_data_pdcph_I, float** sar_data_pdcph_Q, float* sar_data_finalIfft_RQ ){
	int i;






	for (int li = 0; li < sar_data_Np; li++) {
		cufftComplex *d_signal1;
		cudaMalloc(&d_signal1, sizeof(cufftComplex) * sar_data_Nfft);

		if (cudaGetLastError() != cudaSuccess) {
			printf("pointnewnew1Cuda error: Failed to allocate\n");
			exit(0);
		}
		cufftComplex rc[4096];

		for (i = 0; i < sar_data_Nfft; i++) {

			if (i < sar_data_K) {
				rc[i].x = sar_data_pdcph_I[li][i];

				rc[i].y = sar_data_pdcph_Q[li][i];
			} else {
				rc[i].x = 0;

				rc[i].y = 0;

			}

		}

		cudaMemcpy(d_signal1, rc, sizeof(cufftComplex) * sar_data_Nfft,
				cudaMemcpyHostToDevice);

		if (cudaGetLastError() != cudaSuccess) {
			printf("point51Cuda error: Failed to allocate\n");
			exit(0);
		}

		signalIFFT(d_signal1, sar_data_Nfft);
		cudaDeviceSynchronize();
		cudaMemcpy(rc, d_signal1, sizeof(cufftComplex) * sar_data_Nfft,
				cudaMemcpyDeviceToHost);

		if (cudaGetLastError() != cudaSuccess) {
			printf("point52Cuda error: Failed to allocate\n");
			exit(0);
		}
		for (i = 0; i < sar_data_Nfft; i++) {

			rc[i].x = (rc[i].x) / sar_data_Nfft;
			rc[i].y = (rc[i].y) / sar_data_Nfft;

		}

		int cswap = (int) sar_data_Nfft / 2;

		cufftComplex tmp;

		for (int k = 0; k < cswap; k++) {
			tmp = rc[k];
			rc[k] = rc[k + cswap];
			rc[k + cswap] = tmp;

		}

		for (i = 0; i < sar_data_Nfft; i++) {

			sar_data_finalIfft_RQ[(li * sar_data_Nfft + i)*2+0] = rc[i].x;
			sar_data_finalIfft_RQ[(li * sar_data_Nfft + i)*2+1] = rc[i].y;

		}

		cudaFree(d_signal1);
		//printf("working here %d \n",li);
		//li++;

	}  


}

int getDeviceCount(){
	int deviceCount;
	cudaGetDeviceCount(&deviceCount);
	return deviceCount;

}


