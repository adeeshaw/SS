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
*  simpleMPI.h: common header file
*/

// Forward declarations



#define COLS  34
#define TWO_PI (6.2831853071795864769252867665590057683943L)
# define PI 3.14159265358979323846264338327950288
#define BLOCK_SIZEX 16
#define BLOCK_SIZEY 16
#define BOX_SIZEX 4
#define BOX_SIZEY 4
#define RES_SIZEX 64 // RES_SIZEX = block_sizex * box_size
#define RES_SIZEY 64  // RES_SIZE = block_sizey * box_size

extern "C" {
    void initData(float *data, int dataSize);

	void GPU_Init(int gpu_id);
    
  void bpbasic(int gpu_id,int num_gpus, int sar_data_Np, int sar_data_Nfft, int sar_data_Nx,int sar_data_Ny,float sar_data_minF,float* sar_data_XYZR, float* sar_data_finalIfft_RQ, int sar_data_multiresarray_size,int sar_data_multiresarray_offset_size, int* sar_data_multiresarray,int sar_data_K, int sar_data_Wx, int sar_data_Wy, int sar_data_x0, int sar_data_y0,   float prep2, float prep3, float prepi,float *im_final_host_R,float *im_final_host_Q,int totalmpistreamtimes,int mpistreamtimes);

	void bpbasiccpu(int gpu_id,int num_gpus,int cpu_thread_id,int taotalcpus, int sar_data_Np, int sar_data_Nfft, int sar_data_Nx,int sar_data_Ny,float sar_data_minF,float* sar_data_XYZR, float* sar_data_finalIfft_RQ, int sar_data_multiresarray_size,int sar_data_multiresarray_offset_size, int* sar_data_multiresarray,int sar_data_K, int sar_data_Wx, int sar_data_Wy, int sar_data_x0, int sar_data_y0,   float prep2, float prep3, float prepi,float *im_final_host_R,float *im_final_host_Q,int totalmpistreamtimes,int mpistreamtimes);

    float sum(float *data, int size);
    void my_abort(int err);
    int getDeviceCount();
	void getIfftresults(int sar_data_Np, int sar_data_Nfft,  int sar_data_K,float** sar_data_pdcph_I, float** sar_data_pdcph_Q, float* sar_data_finalIfft_RQ );
	void getbcastarrays(float* sar_data_XYZR, float* sar_data_finalIfft_RQ, int mpistreamtimes,int totalmpistreamtimes,int commRank);
}

