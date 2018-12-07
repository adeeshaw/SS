# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.3.210 Build 20160415";
# mark_description "-O3 -march=core-i7-avx -S";
	.file "simpleMPI.cpp"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value_main.1:
..L2:
                                                          #370.34
        pushq     %rbp                                          #370.34
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #370.34
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #370.34
        pushq     %r12                                          #370.34
        pushq     %r13                                          #370.34
        pushq     %r14                                          #370.34
        pushq     %r15                                          #370.34
        pushq     %rbx                                          #370.34
        subq      $2904, %rsp                                   #370.34
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movq      %rsi, %r13                                    #370.34
        movl      %edi, %r12d                                   #370.34
        xorl      %esi, %esi                                    #370.34
        movl      $3, %edi                                      #370.34
        call      __intel_new_feature_proc_init                 #370.34
                                # LOE r13 r12d
..B1.574:                       # Preds ..B1.1
        stmxcsr   (%rsp)                                        #370.34
        orl       $32832, (%rsp)                                #370.34
        ldmxcsr   (%rsp)                                        #370.34
        cmpl      $13, %r12d                                    #432.10
        je        ..B1.4        # Prob 16%                      #432.10
                                # LOE r13 r12d
..B1.2:                         # Preds ..B1.574
        movl      $.L_2__STRING.14, %edi                        #433.3
        xorl      %eax, %eax                                    #433.3
..___tag_value_main.11:
#       printf(const char *, ...)
        call      printf                                        #433.3
..___tag_value_main.12:
                                # LOE
..B1.3:                         # Preds ..B1.2
        xorl      %edi, %edi                                    #434.3
#       exit(int)
        call      exit                                          #434.3
                                # LOE
..B1.4:                         # Preds ..B1.574                # Infreq
        movq      8(%r13), %rdi                                 #436.22
        call      atol                                          #436.22
                                # LOE rax r13 r12d
..B1.575:                       # Preds ..B1.4                  # Infreq
        movq      %rax, 16(%rsp)                                #436.22
                                # LOE r13 r12d
..B1.5:                         # Preds ..B1.575                # Infreq
        movq      16(%r13), %rdi                                #437.21
        call      atol                                          #437.21
                                # LOE rax r13 r12d
..B1.6:                         # Preds ..B1.5                  # Infreq
        movq      24(%r13), %rdi                                #438.21
        movl      %eax, %r15d                                   #437.21
        call      atol                                          #438.21
                                # LOE rax r13 r12d r15d
..B1.7:                         # Preds ..B1.6                  # Infreq
        movq      32(%r13), %rdi                                #439.17
        movl      %eax, %ebx                                    #438.21
        call      atol                                          #439.17
                                # LOE rax r13 ebx r12d r15d
..B1.8:                         # Preds ..B1.7                  # Infreq
        movq      48(%r13), %rdi                                #440.18
        movl      %eax, 368(%rsp)                               #439.17
        call      atol                                          #440.18
                                # LOE rax r13 ebx r12d r15d
..B1.579:                       # Preds ..B1.8                  # Infreq
        movq      %rax, %r14                                    #440.18
                                # LOE r13 r14 ebx r12d r15d
..B1.9:                         # Preds ..B1.579                # Infreq
        movq      56(%r13), %rdi                                #441.18
        call      atol                                          #441.18
                                # LOE rax r13 r14 ebx r12d r15d
..B1.580:                       # Preds ..B1.9                  # Infreq
        movq      %rax, (%rsp)                                  #441.18
                                # LOE r13 r14 ebx r12d r15d
..B1.10:                        # Preds ..B1.580                # Infreq
        movq      64(%r13), %rdi                                #442.18
        call      atol                                          #442.18
                                # LOE rax r13 r14 ebx r12d r15d
..B1.581:                       # Preds ..B1.10                 # Infreq
        movq      %rax, 8(%rsp)                                 #442.18
                                # LOE r13 r14 ebx r12d r15d
..B1.11:                        # Preds ..B1.581                # Infreq
        movq      72(%r13), %rdi                                #443.29
        call      atol                                          #443.29
                                # LOE rax r13 r14 ebx r12d r15d
..B1.582:                       # Preds ..B1.11                 # Infreq
        movq      %rax, 296(%rsp)                               #443.29
                                # LOE r13 r14 ebx r12d r15d
..B1.12:                        # Preds ..B1.582                # Infreq
        movq      80(%r13), %rdi                                #445.22
        call      atol                                          #445.22
                                # LOE rax r13 r14 ebx r12d r15d
..B1.13:                        # Preds ..B1.12                 # Infreq
        pxor      %xmm0, %xmm0                                  #445.22
        cvtsi2ss  %eax, %xmm0                                   #445.22
        divss     .L_2il0floatpacket.0(%rip), %xmm0             #445.37
        movq      88(%r13), %rdi                                #446.22
        movss     %xmm0, 400(%rsp)                              #445.37
        call      atol                                          #446.22
                                # LOE rax r13 r14 ebx r12d r15d
..B1.584:                       # Preds ..B1.13                 # Infreq
        movq      %rax, 312(%rsp)                               #446.22
                                # LOE r13 r14 ebx r12d r15d
..B1.14:                        # Preds ..B1.584                # Infreq
        movq      96(%r13), %rdi                                #453.33
        call      atol                                          #453.33
                                # LOE rax r13 r14 ebx r12d r15d
..B1.585:                       # Preds ..B1.14                 # Infreq
        movq      %rax, 320(%rsp)                               #453.33
                                # LOE rax r13 r14 eax ebx r12d r15d al ah
..B1.15:                        # Preds ..B1.585                # Infreq
        movslq    %r14d, %rdi                                   #459.2
        movl      $100, %r8d                                    #459.2
        movq      16(%rsp), %rsi                                #436.22
        xorl      %r9d, %r9d                                    #459.2
        movq      (%rsp), %rdx                                  #459.2
        addl      %r15d, %esi                                   #457.41
        movq      8(%rsp), %rcx                                 #459.2
        addl      %ebx, %esi                                    #457.55
        shlq      $4, %rdi                                      #459.2
        movl      %r14d, sar_data_Np(%rip)                      #459.2
        movq      %rax, %r14                                    #453.33
        movl      %edx, sar_data_Nx(%rip)                       #459.2
        movl      %ecx, sar_data_Ny(%rip)                       #459.2
        movl      %esi, 416(%rsp)                               #457.55
        movl      $4096, sar_data_Nfft(%rip)                    #459.2
        movl      $424, sar_data_K(%rip)                        #459.2
        movl      %r8d, sar_data_Wx(%rip)                       #459.2
        movl      %r8d, sar_data_Wy(%rip)                       #459.2
        movl      %r9d, sar_data_x0(%rip)                       #459.2
        movl      %r9d, sar_data_y0(%rip)                       #459.2
#       malloc(size_t)
        call      malloc                                        #459.2
                                # LOE rax r13 ebx r12d r14d r15d
..B1.16:                        # Preds ..B1.15                 # Infreq
        xorl      %edi, %edi                                    #468.2
        movq      %rax, sar_data_XYZR(%rip)                     #459.2
..___tag_value_main.13:
#       GPU_Init(int)
        call      GPU_Init                                      #468.2
..___tag_value_main.14:
                                # LOE r13 ebx r12d r14d r15d
..B1.17:                        # Preds ..B1.16                 # Infreq
        movl      $.L_2__STRING.15, %edi                        #478.2
        xorl      %eax, %eax                                    #478.2
        movl      sar_data_Nx(%rip), %esi                       #478.2
        movl      sar_data_Ny(%rip), %edx                       #478.2
..___tag_value_main.15:
#       printf(const char *, ...)
        call      printf                                        #478.2
..___tag_value_main.16:
                                # LOE r13 ebx r12d r14d r15d
..B1.18:                        # Preds ..B1.17                 # Infreq
        movl      $.L_2__STRING.16, %edi                        #479.2
        xorl      %eax, %eax                                    #479.2
        movl      sar_data_Np(%rip), %esi                       #479.2
..___tag_value_main.17:
#       printf(const char *, ...)
        call      printf                                        #479.2
..___tag_value_main.18:
                                # LOE r13 ebx r12d r14d r15d
..B1.19:                        # Preds ..B1.18                 # Infreq
        movslq    %r12d, %rdi                                   #481.2
        movl      $1, %r12d                                     #481.12
        movl      %r15d, 264(%rsp)                              #481.12
        movq      %rdi, %r15                                    #481.12
                                # LOE r12 r13 r15 ebx r14d
..B1.20:                        # Preds ..B1.19 ..B1.21         # Infreq
        movq      (%r13,%r12,8), %rdi                           #482.3
        call      puts                                          #482.3
                                # LOE r12 r13 r15 ebx r14d
..B1.21:                        # Preds ..B1.20                 # Infreq
        incq      %r12                                          #481.24
        cmpq      %r15, %r12                                    #481.18
        jl        ..B1.20       # Prob 82%                      #481.18
                                # LOE r12 r13 r15 ebx r14d
..B1.22:                        # Preds ..B1.21                 # Infreq
        movl      $.L_2__STRING.18, %edi                        #484.2
        xorl      %eax, %eax                                    #484.2
        movl      368(%rsp), %esi                               #484.2
        movl      264(%rsp), %r15d                              #
        movslq    sar_data_Np(%rip), %r12                       #488.20
..___tag_value_main.19:
#       printf(const char *, ...)
        call      printf                                        #484.2
..___tag_value_main.20:
                                # LOE r12 r13 r15 ebx r14d r15d r15b
..B1.23:                        # Preds ..B1.22                 # Infreq
        movslq    sar_data_Nfft(%rip), %rdi                     #487.43
        shlq      $3, %rdi                                      #487.43
        imulq     %r12, %rdi                                    #487.43
#       malloc(size_t)
        call      malloc                                        #487.43
                                # LOE rax r13 r15 ebx r14d r15d r15b
..B1.587:                       # Preds ..B1.23                 # Infreq
        movq      %rax, 432(%rsp)                               #487.43
                                # LOE r13 r15 ebx r14d r15d r15b
..B1.24:                        # Preds ..B1.587                # Infreq
        movl      $.L_2__STRING.0, %edi                         #492.2
        movl      $.L_2__STRING.4, %esi                         #492.2
        movq      $.L_2__STRING.1, fnamePAUX(%rip)              #492.2
        movq      $.L_2__STRING.2, fnamePHdata_pdcph_I(%rip)    #492.2
        movq      $.L_2__STRING.3, fnamePHdata_pdcph_Q(%rip)    #492.2
        movq      %rdi, fnamePHXheader(%rip)                    #492.2
#       fopen(const char *, const char *)
        call      fopen                                         #492.2
                                # LOE rax r13 r15 ebx r14d r15d r15b
..B1.588:                       # Preds ..B1.24                 # Infreq
        movq      %rax, %r12                                    #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.25:                        # Preds ..B1.588 ..B1.26        # Infreq
        movq      %r12, %rdi                                    #492.2
        movl      $.L_2__STRING.8, %esi                         #492.2
        xorl      %eax, %eax                                    #492.2
        lea       (%rsp), %rdx                                  #492.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #492.2
                                # LOE r12 r13 eax ebx r14d r15d
..B1.26:                        # Preds ..B1.25                 # Infreq
        cmpb      $-1, %al                                      #492.2
        jne       ..B1.25       # Prob 82%                      #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.27:                        # Preds ..B1.26                 # Infreq
        testq     %r12, %r12                                    #492.2
        je        ..B1.29       # Prob 32%                      #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.28:                        # Preds ..B1.27                 # Infreq
        movq      %r12, %rdi                                    #492.2
#       fclose(FILE *)
        call      fclose                                        #492.2
                                # LOE r13 ebx r14d r15d
..B1.29:                        # Preds ..B1.28 ..B1.27         # Infreq
        pxor      %xmm0, %xmm0                                  #492.2
        cvtsi2ss  sar_data_K(%rip), %xmm0                       #492.2
        movss     .L_2il0floatpacket.1(%rip), %xmm1             #492.2
        divss     %xmm0, %xmm1                                  #492.2
        movslq    sar_data_Np(%rip), %r12                       #492.2
        movss     %xmm1, sar_data_deltaF(%rip)                  #492.2
        lea       (,%r12,8), %rdi                               #492.2
#       malloc(size_t)
        call      malloc                                        #492.2
                                # LOE rax r12 r13 ebx r14d r15d
..B1.590:                       # Preds ..B1.29                 # Infreq
        movq      %rax, 280(%rsp)                               #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.30:                        # Preds ..B1.590                # Infreq
        xorl      %eax, %eax                                    #492.2
        testq     %r12, %r12                                    #492.2
        jle       ..B1.35       # Prob 10%                      #492.2
                                # LOE rax r12 r13 ebx r14d r15d
..B1.31:                        # Preds ..B1.30                 # Infreq
        movl      %r15d, 264(%rsp)                              #
        movq      %rax, %r15                                    #
        movq      %r13, 256(%rsp)                               #
        movq      %r12, %r13                                    #
        movq      280(%rsp), %r12                               #
                                # LOE r12 r13 r15 ebx r14d
..B1.32:                        # Preds ..B1.33 ..B1.31         # Infreq
        movl      $136, %edi                                    #492.2
#       malloc(size_t)
        call      malloc                                        #492.2
                                # LOE rax r12 r13 r15 ebx r14d
..B1.33:                        # Preds ..B1.32                 # Infreq
        movq      %rax, (%r12,%r15,8)                           #492.2
        incq      %r15                                          #492.2
        cmpq      %r13, %r15                                    #492.2
        jl        ..B1.32       # Prob 82%                      #492.2
                                # LOE r12 r13 r15 ebx r14d
..B1.34:                        # Preds ..B1.33                 # Infreq
        movl      264(%rsp), %r15d                              #
        movq      256(%rsp), %r13                               #
                                # LOE r13 ebx r14d r15d
..B1.35:                        # Preds ..B1.30 ..B1.34         # Infreq
        movl      $.L_2__STRING.4, %esi                         #492.2
        movq      fnamePAUX(%rip), %rdi                         #492.2
#       fopen(const char *, const char *)
        call      fopen                                         #492.2
                                # LOE rax r13 ebx r14d r15d
..B1.592:                       # Preds ..B1.35                 # Infreq
        movq      %rax, %r12                                    #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.36:                        # Preds ..B1.592                # Infreq
        testq     %r12, %r12                                    #492.2
        je        ..B1.569      # Prob 0%                       #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.37:                        # Preds ..B1.36                 # Infreq
        xorl      %eax, %eax                                    #492.2
        cmpl      $0, sar_data_Np(%rip)                         #492.2
        jle       ..B1.44       # Prob 10%                      #492.2
                                # LOE rax r12 r13 ebx r14d r15d
..B1.38:                        # Preds ..B1.37                 # Infreq
        movl      %r15d, 264(%rsp)                              #
        xorl      %ecx, %ecx                                    #
        movl      %r14d, 288(%rsp)                              #
        movl      %ebx, 272(%rsp)                               #
        movq      %rax, %rbx                                    #
        movq      %r13, 256(%rsp)                               #
        movq      280(%rsp), %r15                               #
                                # LOE rcx rbx r12 r15
..B1.39:                        # Preds ..B1.42 ..B1.38         # Infreq
        xorb      %r14b, %r14b                                  #492.2
        movq      %rcx, %r13                                    #492.2
                                # LOE rbx r12 r13 r15 r14b
..B1.40:                        # Preds ..B1.41 ..B1.39         # Infreq
        movq      %r13, %rdx                                    #492.2
        movq      %r12, %rdi                                    #492.2
        addq      (%r15,%rbx,8), %rdx                           #492.2
        movl      $.L_2__STRING.7, %esi                         #492.2
        xorl      %eax, %eax                                    #492.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #492.2
                                # LOE rbx r12 r13 r15 r14b
..B1.41:                        # Preds ..B1.40                 # Infreq
        incb      %r14b                                         #492.2
        addq      $4, %r13                                      #492.2
        cmpb      $34, %r14b                                    #492.2
        jl        ..B1.40       # Prob 97%                      #492.2
                                # LOE rbx r12 r13 r15 r14b
..B1.42:                        # Preds ..B1.41                 # Infreq
        incq      %rbx                                          #492.2
        xorl      %ecx, %ecx                                    #
        movslq    sar_data_Np(%rip), %rdx                       #492.2
        cmpq      %rdx, %rbx                                    #492.2
        jl        ..B1.39       # Prob 82%                      #492.2
                                # LOE rcx rbx r12 r15
..B1.43:                        # Preds ..B1.42                 # Infreq
        movl      288(%rsp), %r14d                              #
        movl      272(%rsp), %ebx                               #
        movl      264(%rsp), %r15d                              #
        movq      256(%rsp), %r13                               #
                                # LOE r12 r13 ebx r14d r15d
..B1.44:                        # Preds ..B1.37 ..B1.43         # Infreq
        movq      %r12, %rdi                                    #492.2
#       fclose(FILE *)
        call      fclose                                        #492.2
                                # LOE r13 ebx r14d r15d
..B1.45:                        # Preds ..B1.44                 # Infreq
        movq      280(%rsp), %rdx                               #492.2
        movslq    sar_data_Np(%rip), %r12                       #492.2
        testq     %r12, %r12                                    #492.2
        movq      (%rdx), %rcx                                  #492.2
        movl      116(%rcx), %esi                               #492.2
        movl      %esi, sar_data_minF(%rip)                     #492.2
        jle       ..B1.50       # Prob 10%                      #492.2
                                # LOE rdx r12 r13 edx ebx r14d r15d dl dh
..B1.46:                        # Preds ..B1.45                 # Infreq
        xorl      %r9d, %r9d                                    #492.2
        movq      sar_data_XYZR(%rip), %r10                     #492.2
        movq      %rdx, %r8                                     #492.2
                                # LOE r8 r10 r13 ebx r9d r14d r15d
..B1.47:                        # Preds ..B1.48 ..B1.46         # Infreq
        incl      %r9d                                          #492.2
        lea       (%r9,%r9), %esi                               #492.2
        movslq    %esi, %rsi                                    #492.2
        lea       (,%r9,8), %ecx                                #492.2
        movslq    %ecx, %rcx                                    #492.2
        movslq    %r9d, %r9                                     #492.2
        movq      -16(%r8,%rsi,8), %rax                         #492.2
        movl      64(%rax), %edx                                #492.2
        movl      %edx, -32(%r10,%rcx,4)                        #492.2
        movl      68(%rax), %r12d                               #492.2
        movl      72(%rax), %r11d                               #492.2
        movl      76(%rax), %edx                                #492.2
        movl      %r12d, -28(%r10,%rcx,4)                       #492.2
        movl      %r11d, -24(%r10,%rcx,4)                       #492.2
        lea       -1(,%r9,2), %r11                              #492.2
        movl      %edx, -20(%r10,%rcx,4)                        #492.2
        lea       (%r9,%r9), %rdx                               #492.2
        movslq    sar_data_Np(%rip), %r12                       #492.2
        cmpq      %r11, %r12                                    #492.2
        jle       ..B1.50       # Prob 18%                      #492.2
                                # LOE rdx rcx rsi r8 r10 r12 r13 ebx r9d r14d r15d
..B1.48:                        # Preds ..B1.47                 # Infreq
        movq      -8(%r8,%rsi,8), %rax                          #492.2
        movl      64(%rax), %esi                                #492.2
        lea       -16(%r10,%rcx,4), %rdi                        #492.2
        movl      %esi, (%rdi)                                  #492.2
        movl      68(%rax), %r11d                               #492.2
        movl      72(%rax), %r12d                               #492.2
        movl      76(%rax), %esi                                #492.2
        movl      %r11d, 4(%rdi)                                #492.2
        movl      %r12d, 8(%rdi)                                #492.2
        movl      %esi, 12(%rdi)                                #492.2
        movslq    sar_data_Np(%rip), %r12                       #492.2
        cmpq      %rdx, %r12                                    #492.2
        jg        ..B1.47       # Prob 82%                      #492.2
                                # LOE r8 r10 r12 r13 ebx r9d r14d r15d
..B1.50:                        # Preds ..B1.47 ..B1.48 ..B1.45 # Infreq
        lea       (,%r12,8), %rdi                               #492.2
        movq      %rdi, 304(%rsp)                               #492.2
#       malloc(size_t)
        call      malloc                                        #492.2
                                # LOE rax r12 r13 ebx r14d r15d
..B1.593:                       # Preds ..B1.50                 # Infreq
        movq      %rax, 280(%rsp)                               #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.51:                        # Preds ..B1.593                # Infreq
        xorl      %eax, %eax                                    #492.2
        testq     %r12, %r12                                    #492.2
        jle       ..B1.56       # Prob 10%                      #492.2
                                # LOE rax r12 r13 ebx r14d r15d
..B1.52:                        # Preds ..B1.51                 # Infreq
        movslq    sar_data_K(%rip), %rdi                        #492.2
        shlq      $2, %rdi                                      #492.2
        movl      %ebx, 272(%rsp)                               #492.2
        movl      %r15d, 264(%rsp)                              #492.2
        movq      %rdi, %r15                                    #492.2
        movq      %r13, 256(%rsp)                               #492.2
        movq      %rax, %r13                                    #492.2
        movq      280(%rsp), %rbx                               #492.2
                                # LOE rbx r12 r13 r15 r14d
..B1.53:                        # Preds ..B1.54 ..B1.52         # Infreq
        movq      %r15, %rdi                                    #492.2
#       malloc(size_t)
        call      malloc                                        #492.2
                                # LOE rax rbx r12 r13 r15 r14d
..B1.54:                        # Preds ..B1.53                 # Infreq
        movq      %rax, (%rbx,%r13,8)                           #492.2
        incq      %r13                                          #492.2
        cmpq      %r12, %r13                                    #492.2
        jl        ..B1.53       # Prob 82%                      #492.2
                                # LOE rbx r12 r13 r15 r14d
..B1.55:                        # Preds ..B1.54                 # Infreq
        movl      272(%rsp), %ebx                               #
        movl      264(%rsp), %r15d                              #
        movq      256(%rsp), %r13                               #
                                # LOE r12 r13 ebx r14d r15d
..B1.56:                        # Preds ..B1.51 ..B1.55         # Infreq
        movq      304(%rsp), %rdi                               #492.2
#       malloc(size_t)
        call      malloc                                        #492.2
                                # LOE rax r12 r13 ebx r14d r15d
..B1.595:                       # Preds ..B1.56                 # Infreq
        movq      %rax, 304(%rsp)                               #492.2
                                # LOE r12 r13 ebx r14d r15d
..B1.57:                        # Preds ..B1.595                # Infreq
        xorl      %eax, %eax                                    #492.2
        testq     %r12, %r12                                    #492.2
        jle       ..B1.62       # Prob 10%                      #492.2
                                # LOE rax r12 r13 ebx r14d r15d
..B1.58:                        # Preds ..B1.57                 # Infreq
        movslq    sar_data_K(%rip), %rdi                        #492.2
        shlq      $2, %rdi                                      #492.2
        movl      %ebx, 272(%rsp)                               #492.2
        movl      %r15d, 264(%rsp)                              #492.2
        movq      %rdi, %r15                                    #492.2
        movq      %r13, 256(%rsp)                               #492.2
        movq      %r12, %r13                                    #492.2
        movq      304(%rsp), %rbx                               #492.2
        movq      %rax, %r12                                    #492.2
                                # LOE rbx r12 r13 r15 r14d
..B1.59:                        # Preds ..B1.60 ..B1.58         # Infreq
        movq      %r15, %rdi                                    #492.2
#       malloc(size_t)
        call      malloc                                        #492.2
                                # LOE rax rbx r12 r13 r15 r14d
..B1.60:                        # Preds ..B1.59                 # Infreq
        movq      %rax, (%rbx,%r12,8)                           #492.2
        incq      %r12                                          #492.2
        cmpq      %r13, %r12                                    #492.2
        jl        ..B1.59       # Prob 82%                      #492.2
                                # LOE rbx r12 r13 r15 r14d
..B1.61:                        # Preds ..B1.60                 # Infreq
        movl      272(%rsp), %ebx                               #
        movl      264(%rsp), %r15d                              #
        movq      256(%rsp), %r13                               #
                                # LOE r13 ebx r14d r15d
..B1.62:                        # Preds ..B1.57 ..B1.61         # Infreq
        movl      $.L_2__STRING.4, %esi                         #492.2
        movq      fnamePHdata_pdcph_I(%rip), %rdi               #492.2
#       fopen(const char *, const char *)
        call      fopen                                         #492.2
                                # LOE rax r13 ebx r14d r15d
..B1.63:                        # Preds ..B1.62                 # Infreq
        testq     %rax, %rax                                    #492.2
        je        ..B1.565      # Prob 0%                       #492.2
                                # LOE rax r13 ebx r14d r15d
..B1.64:                        # Preds ..B1.63                 # Infreq
        movslq    sar_data_Np(%rip), %rcx                       #492.2
        xorl      %r12d, %r12d                                  #492.2
        testq     %rcx, %rcx                                    #492.2
        jle       ..B1.72       # Prob 10%                      #492.2
                                # LOE rax rcx r12 r13 ebx r14d r15d
..B1.65:                        # Preds ..B1.64                 # Infreq
        movl      %r14d, 288(%rsp)                              #492.2
        xorl      %esi, %esi                                    #492.2
        movslq    sar_data_K(%rip), %rdx                        #492.2
        movl      %ebx, 272(%rsp)                               #492.2
        movq      %rax, %rbx                                    #492.2
        movl      %r15d, 264(%rsp)                              #492.2
        movq      %r13, 256(%rsp)                               #492.2
        movq      280(%rsp), %r14                               #492.2
                                # LOE rdx rcx rbx rsi r12 r14
..B1.66:                        # Preds ..B1.563 ..B1.70 ..B1.65 # Infreq
        movq      %rsi, %r15                                    #492.2
        testq     %rdx, %rdx                                    #492.2
        movq      %r15, %r13                                    #492.2
        jle       ..B1.563      # Prob 10%                      #492.2
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15
..B1.68:                        # Preds ..B1.66 ..B1.69         # Infreq
        movq      %r13, %rdx                                    #492.2
        movq      %rbx, %rdi                                    #492.2
        addq      (%r14,%r12,8), %rdx                           #492.2
        movl      $.L_2__STRING.7, %esi                         #492.2
        xorl      %eax, %eax                                    #492.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #492.2
                                # LOE rbx r12 r13 r14 r15
..B1.69:                        # Preds ..B1.68                 # Infreq
        incq      %r15                                          #492.2
        addq      $4, %r13                                      #492.2
        movslq    sar_data_K(%rip), %rdx                        #492.2
        cmpq      %rdx, %r15                                    #492.2
        jl        ..B1.68       # Prob 82%                      #492.2
                                # LOE rdx rbx r12 r13 r14 r15
..B1.70:                        # Preds ..B1.69                 # Infreq
        incq      %r12                                          #492.2
        xorl      %esi, %esi                                    #
        movslq    sar_data_Np(%rip), %rcx                       #492.2
        cmpq      %rcx, %r12                                    #492.2
        jl        ..B1.66       # Prob 82%                      #492.2
                                # LOE rdx rcx rbx rsi r12 r14
..B1.71:                        # Preds ..B1.563 ..B1.70        # Infreq
        movl      288(%rsp), %r14d                              #
        movq      %rbx, %rax                                    #
        movl      272(%rsp), %ebx                               #
        movl      264(%rsp), %r15d                              #
        movq      256(%rsp), %r13                               #
                                # LOE rax r13 ebx r14d r15d
..B1.72:                        # Preds ..B1.71 ..B1.64         # Infreq
        movq      %rax, %rdi                                    #492.2
#       fclose(FILE *)
        call      fclose                                        #492.2
                                # LOE r13 ebx r14d r15d
..B1.73:                        # Preds ..B1.72                 # Infreq
        movl      $.L_2__STRING.4, %esi                         #492.2
        movq      fnamePHdata_pdcph_Q(%rip), %rdi               #492.2
#       fopen(const char *, const char *)
        call      fopen                                         #492.2
                                # LOE rax r13 ebx r14d r15d
..B1.74:                        # Preds ..B1.73                 # Infreq
        testq     %rax, %rax                                    #492.2
        je        ..B1.560      # Prob 0%                       #492.2
                                # LOE rax r13 ebx r14d r15d
..B1.75:                        # Preds ..B1.74                 # Infreq
        movslq    sar_data_Np(%rip), %rcx                       #492.2
        xorl      %r12d, %r12d                                  #492.2
        testq     %rcx, %rcx                                    #492.2
        jle       ..B1.83       # Prob 10%                      #492.2
                                # LOE rax rcx r12 r13 ebx r14d r15d
..B1.76:                        # Preds ..B1.75                 # Infreq
        movq      %r13, 256(%rsp)                               #492.2
        xorl      %esi, %esi                                    #492.2
        movslq    sar_data_K(%rip), %rdx                        #492.2
        movl      %r14d, 288(%rsp)                              #492.2
        movl      %ebx, 272(%rsp)                               #492.2
        movq      %rax, %rbx                                    #492.2
        movl      %r15d, 264(%rsp)                              #492.2
        movq      304(%rsp), %r13                               #492.2
                                # LOE rdx rcx rbx rsi r12 r13
..B1.77:                        # Preds ..B1.558 ..B1.81 ..B1.76 # Infreq
        movq      %rsi, %r14                                    #492.2
        testq     %rdx, %rdx                                    #492.2
        movq      %r14, %r15                                    #492.2
        jle       ..B1.558      # Prob 10%                      #492.2
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15
..B1.79:                        # Preds ..B1.77 ..B1.80         # Infreq
        movq      %r15, %rdx                                    #492.2
        movq      %rbx, %rdi                                    #492.2
        addq      (%r13,%r12,8), %rdx                           #492.2
        movl      $.L_2__STRING.7, %esi                         #492.2
        xorl      %eax, %eax                                    #492.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #492.2
                                # LOE rbx r12 r13 r14 r15
..B1.80:                        # Preds ..B1.79                 # Infreq
        incq      %r14                                          #492.2
        addq      $4, %r15                                      #492.2
        movslq    sar_data_K(%rip), %rdx                        #492.2
        cmpq      %rdx, %r14                                    #492.2
        jl        ..B1.79       # Prob 82%                      #492.2
                                # LOE rdx rbx r12 r13 r14 r15
..B1.81:                        # Preds ..B1.80                 # Infreq
        incq      %r12                                          #492.2
        xorl      %esi, %esi                                    #
        movslq    sar_data_Np(%rip), %rcx                       #492.2
        cmpq      %rcx, %r12                                    #492.2
        jl        ..B1.77       # Prob 82%                      #492.2
                                # LOE rdx rcx rbx rsi r12 r13
..B1.82:                        # Preds ..B1.558 ..B1.81        # Infreq
        movl      288(%rsp), %r14d                              #
        movq      %rbx, %rax                                    #
        movl      272(%rsp), %ebx                               #
        movl      264(%rsp), %r15d                              #
        movq      256(%rsp), %r13                               #
                                # LOE rax r13 ebx r14d r15d
..B1.83:                        # Preds ..B1.75 ..B1.82         # Infreq
        movq      %rax, %rdi                                    #492.2
#       fclose(FILE *)
        call      fclose                                        #492.2
                                # LOE r13 ebx r14d r15d
..B1.84:                        # Preds ..B1.83                 # Infreq
        movl      sar_data_Np(%rip), %edi                       #492.2
        movl      sar_data_Nfft(%rip), %esi                     #492.2
        movl      sar_data_K(%rip), %edx                        #492.2
        movq      280(%rsp), %rcx                               #492.2
        movq      304(%rsp), %r8                                #492.2
        movq      432(%rsp), %r9                                #492.2
..___tag_value_main.21:
#       getIfftresults(int, int, int, float **, float **, float *)
        call      getIfftresults                                #492.2
..___tag_value_main.22:
                                # LOE r13 ebx r14d r15d
..B1.85:                        # Preds ..B1.84                 # Infreq
        movss     sar_data_deltaF(%rip), %xmm0                  #492.2
        pxor      %xmm3, %xmm3                                  #492.2
        movss     .L_2il0floatpacket.2(%rip), %xmm2             #492.2
        addss     %xmm0, %xmm0                                  #492.2
        cvtsi2ss  sar_data_Nfft(%rip), %xmm3                    #492.2
        divss     %xmm0, %xmm2                                  #492.2
        movaps    %xmm2, %xmm1                                  #492.2
        divss     %xmm3, %xmm1                                  #492.2
        divss     %xmm2, %xmm3                                  #492.2
        movq      280(%rsp), %rdi                               #492.2
        movss     %xmm1, prep2(%rip)                            #492.2
        movss     %xmm3, prep3(%rip)                            #492.2
        movl      $859047967, prepi(%rip)                       #492.2
#       free(void *)
        call      free                                          #492.2
                                # LOE r13 ebx r14d r15d
..B1.86:                        # Preds ..B1.85                 # Infreq
        movq      304(%rsp), %rdi                               #492.2
#       free(void *)
        call      free                                          #492.2
                                # LOE r13 ebx r14d r15d
..B1.87:                        # Preds ..B1.86                 # Infreq
        movl      sar_data_Nx(%rip), %edx                       #495.4
        movl      %edx, 264(%rsp)                               #495.4
        movslq    %edx, %rdx                                    #495.34
        lea       (,%rdx,4), %rdi                               #495.18
        imulq     %rdx, %rdi                                    #495.34
        movq      %rdi, 272(%rsp)                               #495.34
#       malloc(size_t)
        call      malloc                                        #494.30
                                # LOE rax r13 ebx r14d r15d
..B1.88:                        # Preds ..B1.87                 # Infreq
        movl      264(%rsp), %r12d                              #497.36
        movq      %rax, im_final_host_R(%rip)                   #494.2
        imull     %r12d, %r12d                                  #497.36
        testl     %r12d, %r12d                                  #497.36
        jle       ..B1.99       # Prob 10%                      #497.36
                                # LOE rax r13 ebx r12d r14d r15d
..B1.89:                        # Preds ..B1.88                 # Infreq
        xorl      %ecx, %ecx                                    #497.2
        xorl      %edx, %edx                                    #497.2
                                # LOE rax r13 edx ecx ebx r12d r14d r15d
..B1.90:                        # Preds ..B1.97 ..B1.89         # Infreq
        addl      $8, %ecx                                      #497.2
        movslq    %ecx, %rsi                                    #498.3
        lea       -7(%rcx), %r8d                                #497.13
        movl      %edx, -32(%rax,%rsi,4)                        #498.3
        cmpl      %r8d, %r12d                                   #497.36
        jle       ..B1.99       # Prob 18%                      #497.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.91:                        # Preds ..B1.90                 # Infreq
        movl      %edx, -28(%rax,%rsi,4)                        #498.3
        lea       -6(%rcx), %r8d                                #497.13
        cmpl      %r8d, %r12d                                   #497.36
        jle       ..B1.99       # Prob 18%                      #497.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.92:                        # Preds ..B1.91                 # Infreq
        movl      %edx, -24(%rax,%rsi,4)                        #498.3
        lea       -5(%rcx), %r8d                                #497.13
        cmpl      %r8d, %r12d                                   #497.36
        jle       ..B1.99       # Prob 18%                      #497.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.93:                        # Preds ..B1.92                 # Infreq
        movl      %edx, -20(%rax,%rsi,4)                        #498.3
        lea       -4(%rcx), %r8d                                #497.13
        cmpl      %r8d, %r12d                                   #497.36
        jle       ..B1.99       # Prob 18%                      #497.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.94:                        # Preds ..B1.93                 # Infreq
        movl      %edx, -16(%rax,%rsi,4)                        #498.3
        lea       -3(%rcx), %r8d                                #497.13
        cmpl      %r8d, %r12d                                   #497.36
        jle       ..B1.99       # Prob 18%                      #497.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.95:                        # Preds ..B1.94                 # Infreq
        movl      %edx, -12(%rax,%rsi,4)                        #498.3
        lea       -2(%rcx), %r8d                                #497.13
        cmpl      %r8d, %r12d                                   #497.36
        jle       ..B1.99       # Prob 18%                      #497.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.96:                        # Preds ..B1.95                 # Infreq
        movl      %edx, -8(%rax,%rsi,4)                         #498.3
        lea       -1(%rcx), %r8d                                #497.13
        cmpl      %r8d, %r12d                                   #497.36
        jle       ..B1.99       # Prob 18%                      #497.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.97:                        # Preds ..B1.96                 # Infreq
        movl      %edx, -4(%rax,%rsi,4)                         #498.3
        cmpl      %r12d, %ecx                                   #497.36
        jl        ..B1.90       # Prob 82%                      #497.36
                                # LOE rax r13 edx ecx ebx r12d r14d r15d
..B1.99:                        # Preds ..B1.91 ..B1.93 ..B1.96 ..B1.95 ..B1.90
                                #       ..B1.92 ..B1.94 ..B1.97 ..B1.88 # Infreq
        movq      272(%rsp), %rdi                               #501.30
#       malloc(size_t)
        call      malloc                                        #501.30
                                # LOE rax r13 ebx r12d r14d r15d
..B1.100:                       # Preds ..B1.99                 # Infreq
        movq      %rax, im_final_host_Q(%rip)                   #501.2
        testl     %r12d, %r12d                                  #504.36
        jle       ..B1.111      # Prob 10%                      #504.36
                                # LOE rax r13 ebx r12d r14d r15d
..B1.101:                       # Preds ..B1.100                # Infreq
        xorl      %ecx, %ecx                                    #504.2
        xorl      %edx, %edx                                    #504.2
                                # LOE rax r13 edx ecx ebx r12d r14d r15d
..B1.102:                       # Preds ..B1.109 ..B1.101       # Infreq
        addl      $8, %ecx                                      #504.2
        movslq    %ecx, %rsi                                    #505.3
        lea       -7(%rcx), %r8d                                #504.13
        movl      %edx, -32(%rax,%rsi,4)                        #505.3
        cmpl      %r8d, %r12d                                   #504.36
        jle       ..B1.111      # Prob 18%                      #504.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.103:                       # Preds ..B1.102                # Infreq
        movl      %edx, -28(%rax,%rsi,4)                        #505.3
        lea       -6(%rcx), %r8d                                #504.13
        cmpl      %r8d, %r12d                                   #504.36
        jle       ..B1.111      # Prob 18%                      #504.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.104:                       # Preds ..B1.103                # Infreq
        movl      %edx, -24(%rax,%rsi,4)                        #505.3
        lea       -5(%rcx), %r8d                                #504.13
        cmpl      %r8d, %r12d                                   #504.36
        jle       ..B1.111      # Prob 18%                      #504.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.105:                       # Preds ..B1.104                # Infreq
        movl      %edx, -20(%rax,%rsi,4)                        #505.3
        lea       -4(%rcx), %r8d                                #504.13
        cmpl      %r8d, %r12d                                   #504.36
        jle       ..B1.111      # Prob 18%                      #504.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.106:                       # Preds ..B1.105                # Infreq
        movl      %edx, -16(%rax,%rsi,4)                        #505.3
        lea       -3(%rcx), %r8d                                #504.13
        cmpl      %r8d, %r12d                                   #504.36
        jle       ..B1.111      # Prob 18%                      #504.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.107:                       # Preds ..B1.106                # Infreq
        movl      %edx, -12(%rax,%rsi,4)                        #505.3
        lea       -2(%rcx), %r8d                                #504.13
        cmpl      %r8d, %r12d                                   #504.36
        jle       ..B1.111      # Prob 18%                      #504.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.108:                       # Preds ..B1.107                # Infreq
        movl      %edx, -8(%rax,%rsi,4)                         #505.3
        lea       -1(%rcx), %r8d                                #504.13
        cmpl      %r8d, %r12d                                   #504.36
        jle       ..B1.111      # Prob 18%                      #504.36
                                # LOE rax rsi r13 edx ecx ebx r12d r14d r15d
..B1.109:                       # Preds ..B1.108                # Infreq
        movl      %edx, -4(%rax,%rsi,4)                         #505.3
        cmpl      %r12d, %ecx                                   #504.36
        jl        ..B1.102      # Prob 82%                      #504.36
                                # LOE rax r13 edx ecx ebx r12d r14d r15d
..B1.111:                       # Preds ..B1.103 ..B1.105 ..B1.107 ..B1.108 ..B1.102
                                #       ..B1.104 ..B1.106 ..B1.109 ..B1.100 # Infreq
        movl      264(%rsp), %ecx                               #509.37
        movl      %ecx, %r12d                                   #509.37
        sarl      $3, %r12d                                     #509.37
        movl      $.L_2__STRING.19, %edi                        #518.2
        shrl      $28, %r12d                                    #509.37
        addl      %ecx, %r12d                                   #509.37
        sarl      $4, %r12d                                     #509.37
        movl      sar_data_Ny(%rip), %r8d                       #510.23
        movl      %r8d, %r10d                                   #510.37
        imull     %r12d, %ebx                                   #513.40
        movl      %r12d, %r11d                                  #515.40
        imull     %r12d, %r15d                                  #514.47
        sarl      $3, %r10d                                     #510.37
        shrl      $28, %r10d                                    #510.37
        addl      %r8d, %r10d                                   #510.37
        sarl      $4, %r10d                                     #510.37
        imull     %r10d, %ebx                                   #513.54
        imull     %r10d, %r15d                                  #514.61
        imull     %r10d, %r11d                                  #515.40
        movl      %ebx, %eax                                    #513.68
        cltd                                                    #513.68
        movl      416(%rsp), %r9d                               #513.68
        idivl     %r9d                                          #513.68
        movl      %eax, %ebx                                    #513.68
        movl      %r15d, %eax                                   #514.75
        cltd                                                    #514.75
        idivl     %r9d                                          #514.75
        movl      %r11d, 336(%rsp)                              #515.40
        movl      %eax, %r15d                                   #514.75
        subl      %ebx, %r11d                                   #515.40
        movl      %ebx, %esi                                    #518.2
        xorl      %eax, %eax                                    #518.2
        subl      %r15d, %r11d                                  #515.40
        movl      %r10d, 376(%rsp)                              #510.37
        movl      %r11d, 352(%rsp)                              #515.40
..___tag_value_main.23:
#       printf(const char *, ...)
        call      printf                                        #518.2
..___tag_value_main.24:
                                # LOE r13 ebx r12d r14d r15d
..B1.112:                       # Preds ..B1.111                # Infreq
        movl      $.L_2__STRING.20, %edi                        #519.2
        movl      %r15d, %esi                                   #519.2
        xorl      %eax, %eax                                    #519.2
..___tag_value_main.25:
#       printf(const char *, ...)
        call      printf                                        #519.2
..___tag_value_main.26:
                                # LOE r13 ebx r12d r14d r15d
..B1.113:                       # Preds ..B1.112                # Infreq
        movl      $.L_2__STRING.21, %edi                        #520.2
        xorl      %eax, %eax                                    #520.2
        movl      352(%rsp), %esi                               #520.2
..___tag_value_main.27:
#       printf(const char *, ...)
        call      printf                                        #520.2
..___tag_value_main.28:
                                # LOE r13 ebx r12d r14d r15d
..B1.114:                       # Preds ..B1.113                # Infreq
        movslq    %r12d, %r12                                   #522.61
        movslq    376(%rsp), %rax                               #522.77
        lea       (%r12,%r12,4), %rdi                           #522.77
        shlq      $2, %rdi                                      #522.77
        imulq     %rax, %rdi                                    #522.93
        movq      %rdi, 264(%rsp)                               #522.93
#       malloc(size_t)
        call      malloc                                        #522.40
                                # LOE rax r13 ebx r12d r14d r15d
..B1.601:                       # Preds ..B1.114                # Infreq
        movq      %rax, 328(%rsp)                               #522.40
                                # LOE rax r13 eax ebx r12d r14d r15d al ah
..B1.115:                       # Preds ..B1.601                # Infreq
        xorl      %esi, %esi                                    #523.2
        movq      %rax, %rdi                                    #523.2
        movq      264(%rsp), %rdx                               #523.2
        call      _intel_fast_memset                            #523.2
                                # LOE r13 ebx r12d r14d r15d
..B1.116:                       # Preds ..B1.115                # Infreq
        xorl      %r8d, %r8d                                    #526.23
        movl      %r8d, 360(%rsp)                               #526.23
        movl      %r8d, 272(%rsp)                               #527.25
        movl      %r8d, 344(%rsp)                               #528.25
        xorl      %eax, %eax                                    #535.13
        xorl      %r10d, %r10d                                  #529.20
        xorl      %r9d, %r9d                                    #535.13
        cmpl      $0, 376(%rsp)                                 #535.22
        jle       ..B1.148      # Prob 10%                      #535.22
                                # LOE rax r8 r9 r10 r13 eax ebx r8d r9d r10d r12d r14d r15d al ah r8b r9b r10b
..B1.117:                       # Preds ..B1.116                # Infreq
        xorl      %ecx, %ecx                                    #535.13
        lea       (%rbx,%r15), %r11d                            #555.80
        movl      %r15d, 280(%rsp)                              #535.13
        lea       (%r12,%r12,4), %edx                           #539.48
        movl      %r14d, 288(%rsp)                              #535.13
        xorl      %esi, %esi                                    #535.13
        movl      %r11d, 304(%rsp)                              #535.13
        movl      %ebx, 408(%rsp)                               #535.13
        movq      %r13, 256(%rsp)                               #535.13
        movl      376(%rsp), %r15d                              #535.13
        movq      328(%rsp), %r14                               #535.13
                                # LOE r14 eax edx ecx esi r8d r9d r10d r12d r15d
..B1.118:                       # Preds ..B1.542 ..B1.146 ..B1.117 # Infreq
        movl      %esi, %r11d                                   #537.14
        testl     %r12d, %r12d                                  #537.23
        movl      %r11d, %edi                                   #537.14
        movl      %edi, %ebx                                    #537.14
        jle       ..B1.542      # Prob 10%                      #537.23
                                # LOE r14 eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r15d
..B1.119:                       # Preds ..B1.118                # Infreq
        movl      %r15d, 376(%rsp)                              #546.19
        lea       15(%r9), %r13d                                #546.19
        movl      %edx, 392(%rsp)                               #546.19
        movl      %eax, 384(%rsp)                               #546.19
        movl      %r12d, 424(%rsp)                              #546.19
        movl      368(%rsp), %r15d                              #546.19
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.120:                       # Preds ..B1.126 ..B1.143 ..B1.144 ..B1.119 # Infreq
        cmpl      $1, %r15d                                     #549.7
        lea       (%rcx,%rdi), %r12d                            #539.57
        movslq    %r12d, %r12                                   #539.4
        lea       15(%rbx), %eax                                #544.19
        movl      %ebx, (%r14,%r12,4)                           #539.4
        movl      %r9d, 4(%r14,%r12,4)                          #541.4
        movl      %r13d, 12(%r14,%r12,4)                        #545.4
        movl      %eax, 8(%r14,%r12,4)                          #543.4
        jne       ..B1.127      # Prob 66%                      #549.7
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.121:                       # Preds ..B1.120                # Infreq
        cmpl      408(%rsp), %r8d                               #551.23
        jge       ..B1.123      # Prob 50%                      #551.23
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.122:                       # Preds ..B1.121                # Infreq
        movl      $2, 16(%r14,%r12,4)                           #552.6
        incl      344(%rsp)                                     #553.6
        jmp       ..B1.126      # Prob 100%                     #553.6
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.123:                       # Preds ..B1.121                # Infreq
        cmpl      304(%rsp), %r8d                               #555.80
        jge       ..B1.125      # Prob 50%                      #555.80
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.124:                       # Preds ..B1.123                # Infreq
        movl      $1, 16(%r14,%r12,4)                           #556.6
        incl      272(%rsp)                                     #557.6
        jmp       ..B1.126      # Prob 100%                     #557.6
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.125:                       # Preds ..B1.123                # Infreq
        movl      $0, 16(%r14,%r12,4)                           #560.6
        incl      360(%rsp)                                     #561.6
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.126:                       # Preds ..B1.122 ..B1.125 ..B1.124 # Infreq
        incl      %r11d                                         #537.38
        incl      %r8d                                          #563.5
        addl      416(%rsp), %r10d                              #563.5
        addl      $5, %edi                                      #537.38
        addl      $16, %ebx                                     #537.38
        cmpl      424(%rsp), %r11d                              #537.23
        jl        ..B1.120      # Prob 82%                      #537.23
        jmp       ..B1.145      # Prob 100%                     #537.23
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.127:                       # Preds ..B1.120                # Infreq
        testl     %r15d, %r15d                                  #549.7
        jne       ..B1.144      # Prob 50%                      #549.7
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.128:                       # Preds ..B1.127                # Infreq
        movl      $1431655766, %eax                             #568.77
        movl      %r10d, %esi                                   #568.77
        imull     %r10d                                         #568.77
        sarl      $31, %esi                                     #568.77
        movl      $1431655766, %eax                             #568.80
        subl      %esi, %edx                                    #568.77
        lea       (%rdx,%rdx,2), %esi                           #568.77
        negl      %esi                                          #568.77
        addl      %r10d, %esi                                   #568.77
        addl      %r8d, %esi                                    #539.4
        imull     %esi                                          #568.80
        movl      %esi, %eax                                    #568.80
        sarl      $31, %eax                                     #568.80
        subl      %eax, %edx                                    #568.80
        lea       (%rdx,%rdx,2), %eax                           #568.80
        subl      %eax, %esi                                    #568.80
        jne       ..B1.141      # Prob 50%                      #570.29
                                # LOE r12 r14 ecx ebx esi edi r8d r9d r10d r11d r13d r15d
..B1.129:                       # Preds ..B1.128                # Infreq
        movl      360(%rsp), %eax                               #570.51
        cmpl      352(%rsp), %eax                               #570.51
        jge       ..B1.131      # Prob 38%                      #570.51
                                # LOE rax r12 r14 eax ecx ebx esi edi r8d r9d r10d r11d r13d r15d al ah
..B1.130:                       # Preds ..B1.129                # Infreq
        incl      %eax                                          #571.6
        movl      %esi, 16(%r14,%r12,4)                         #572.6
        movl      %eax, 360(%rsp)                               #571.6
        cmpl      352(%rsp), %eax                               #576.52
        jl        ..B1.143      # Prob 50%                      #576.52
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.131:                       # Preds ..B1.129 ..B1.130       # Infreq
        movl      $1, %esi                                      #577.6
                                # LOE r12 r14 ecx ebx esi edi r8d r9d r10d r11d r13d r15d
..B1.132:                       # Preds ..B1.141 ..B1.131       # Infreq
        movl      272(%rsp), %eax                               #581.51
        cmpl      280(%rsp), %eax                               #581.51
        jge       ..B1.134      # Prob 38%                      #581.51
                                # LOE rax r12 r14 eax ecx ebx esi edi r8d r9d r10d r11d r13d r15d al ah
..B1.133:                       # Preds ..B1.132                # Infreq
        incl      %eax                                          #582.6
        movl      %esi, 16(%r14,%r12,4)                         #583.6
        movl      %eax, 272(%rsp)                               #582.6
        cmpl      280(%rsp), %eax                               #586.52
        jl        ..B1.143      # Prob 50%                      #586.52
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.134:                       # Preds ..B1.132 ..B1.133       # Infreq
        movl      $2, %esi                                      #587.6
                                # LOE r12 r14 ecx ebx esi edi r8d r9d r10d r11d r13d r15d
..B1.135:                       # Preds ..B1.142 ..B1.134       # Infreq
        movl      344(%rsp), %eax                               #590.51
        cmpl      408(%rsp), %eax                               #590.51
        jge       ..B1.137      # Prob 38%                      #590.51
                                # LOE rax r12 r14 eax ecx ebx esi edi r8d r9d r10d r11d r13d r15d al ah
..B1.136:                       # Preds ..B1.135                # Infreq
        incl      %eax                                          #591.6
        movl      %esi, 16(%r14,%r12,4)                         #592.6
        movl      %eax, 344(%rsp)                               #591.6
        cmpl      408(%rsp), %eax                               #595.52
        jl        ..B1.143      # Prob 50%                      #595.52
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.137:                       # Preds ..B1.135 ..B1.136       # Infreq
        movl      360(%rsp), %eax                               #596.27
        cmpl      352(%rsp), %eax                               #596.27
        jge       ..B1.139      # Prob 38%                      #596.27
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.138:                       # Preds ..B1.137                # Infreq
        movl      $0, 16(%r14,%r12,4)                           #598.7
        incl      360(%rsp)                                     #597.7
        jmp       ..B1.143      # Prob 100%                     #597.7
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.139:                       # Preds ..B1.137                # Infreq
        movl      272(%rsp), %eax                               #602.33
        cmpl      280(%rsp), %eax                               #602.33
        jge       ..B1.143      # Prob 38%                      #602.33
                                # LOE r12 r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.140:                       # Preds ..B1.139                # Infreq
        movl      $1, 16(%r14,%r12,4)                           #604.7
        incl      272(%rsp)                                     #603.7
        jmp       ..B1.143      # Prob 100%                     #603.7
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.141:                       # Preds ..B1.128                # Infreq
        cmpl      $1, %esi                                      #581.29
        je        ..B1.132      # Prob 16%                      #581.29
                                # LOE r12 r14 ecx ebx esi edi r8d r9d r10d r11d r13d r15d
..B1.142:                       # Preds ..B1.141                # Infreq
        cmpl      $2, %esi                                      #590.29
        je        ..B1.135      # Prob 16%                      #590.29
                                # LOE r12 r14 ecx ebx esi edi r8d r9d r10d r11d r13d r15d
..B1.143:                       # Preds ..B1.130 ..B1.133 ..B1.142 ..B1.138 ..B1.140
                                #       ..B1.139 ..B1.136       # Infreq
        incl      %r11d                                         #537.38
        incl      %r8d                                          #611.5
        addl      416(%rsp), %r10d                              #611.5
        addl      $5, %edi                                      #537.38
        addl      $16, %ebx                                     #537.38
        cmpl      424(%rsp), %r11d                              #537.23
        jl        ..B1.120      # Prob 82%                      #537.23
        jmp       ..B1.145      # Prob 100%                     #537.23
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.144:                       # Preds ..B1.127                # Infreq
        incl      %r11d                                         #537.38
        addl      $5, %edi                                      #537.38
        addl      $16, %ebx                                     #537.38
        cmpl      424(%rsp), %r11d                              #537.23
        jl        ..B1.120      # Prob 82%                      #537.23
                                # LOE r14 ecx ebx edi r8d r9d r10d r11d r13d r15d
..B1.145:                       # Preds ..B1.126 ..B1.143 ..B1.144 # Infreq
        movl      376(%rsp), %r15d                              #
        xorl      %esi, %esi                                    #
        movl      392(%rsp), %edx                               #
        movl      384(%rsp), %eax                               #
        movl      424(%rsp), %r12d                              #
                                # LOE rax rdx r12 r14 r15 eax edx ecx esi r8d r9d r10d r12d r15d al dl ah dh r12b r15b
..B1.146:                       # Preds ..B1.145                # Infreq
        incl      %eax                                          #535.37
        addl      %edx, %ecx                                    #535.37
        addl      $16, %r9d                                     #535.37
        cmpl      %r15d, %eax                                   #535.22
        jl        ..B1.118      # Prob 82%                      #535.22
                                # LOE r12 r14 r15 eax edx ecx esi r8d r9d r10d r12d r15d r12b r15b
..B1.147:                       # Preds ..B1.542 ..B1.146       # Infreq
        movl      %r15d, 376(%rsp)                              #
        movl      288(%rsp), %r14d                              #
        movq      256(%rsp), %r13                               #
                                # LOE r13 r12d r14d
..B1.148:                       # Preds ..B1.147 ..B1.116       # Infreq
        movl      $.L_2__STRING.22, %edi                        #627.2
        xorl      %eax, %eax                                    #627.2
        movl      344(%rsp), %esi                               #627.2
..___tag_value_main.29:
#       printf(const char *, ...)
        call      printf                                        #627.2
..___tag_value_main.30:
                                # LOE r13 r12d r14d
..B1.149:                       # Preds ..B1.148                # Infreq
        movl      $.L_2__STRING.23, %edi                        #628.2
        xorl      %eax, %eax                                    #628.2
        movl      272(%rsp), %esi                               #628.2
..___tag_value_main.31:
#       printf(const char *, ...)
        call      printf                                        #628.2
..___tag_value_main.32:
                                # LOE r13 r12d r14d
..B1.150:                       # Preds ..B1.149                # Infreq
        movl      $.L_2__STRING.24, %edi                        #629.2
        xorl      %eax, %eax                                    #629.2
        movl      360(%rsp), %esi                               #629.2
..___tag_value_main.33:
#       printf(const char *, ...)
        call      printf                                        #629.2
..___tag_value_main.34:
                                # LOE r13 r12d r14d
..B1.151:                       # Preds ..B1.150                # Infreq
        movl      $4, %edi                                      #632.46
#       malloc(size_t)
        call      malloc                                        #632.46
                                # LOE rax r13 r12d r14d
..B1.602:                       # Preds ..B1.151                # Infreq
        movq      %rax, %rbx                                    #632.46
                                # LOE rbx r13 r12d r14d
..B1.152:                       # Preds ..B1.602                # Infreq
        movl      $0, (%rbx)                                    #634.2
                                # LOE rbx r13 r12d r14d
..B1.153:                       # Preds ..B1.152                # Infreq
        movl      $4, %edi                                      #664.37
#       malloc(size_t)
        call      malloc                                        #664.37
                                # LOE rax rbx r13 r12d r14d
..B1.603:                       # Preds ..B1.153                # Infreq
        movq      %rax, %r15                                    #664.37
                                # LOE rbx r13 r15 r12d r14d
..B1.154:                       # Preds ..B1.603                # Infreq
        movl      $0, (%r15)                                    #665.2
                                # LOE rbx r13 r15 r12d r14d
..B1.155:                       # Preds ..B1.154                # Infreq
        movl      $4, %edi                                      #667.42
#       malloc(size_t)
        call      malloc                                        #667.42
                                # LOE rax rbx r13 r15 r12d r14d
..B1.156:                       # Preds ..B1.155                # Infreq
        movl      $0, (%rax)                                    #668.2
                                # LOE rax rbx r13 r15 r12d r14d
..B1.157:                       # Preds ..B1.156                # Infreq
        movl      272(%rsp), %r8d                               #661.9
        movl      $.L_2__STRING.25, %edi                        #674.3
        movl      360(%rsp), %ecx                               #661.9
        xorl      %esi, %esi                                    #674.3
        movl      344(%rsp), %r9d                               #661.31
        shll      $4, %r9d                                      #661.31
        lea       (%rcx,%r8,4), %edx                            #661.9
        addl      %r9d, %edx                                    #661.31
        movl      %edx, (%rax)                                  #672.3
        xorl      %eax, %eax                                    #674.3
..___tag_value_main.35:
#       printf(const char *, ...)
        call      printf                                        #674.3
..___tag_value_main.36:
                                # LOE rbx r13 r15 r12d r14d
..B1.158:                       # Preds ..B1.157                # Infreq
        movq      40(%r13), %rdi                                #677.26
        call      atol                                          #677.26
                                # LOE rax rbx r15 r12d r14d
..B1.159:                       # Preds ..B1.158                # Infreq
        testl     %eax, %eax                                    #679.6
        je        ..B1.466      # Prob 20%                      #679.6
                                # LOE rbx r15 eax r12d r14d
..B1.160:                       # Preds ..B1.159                # Infreq
        cmpl      $2, %eax                                      #679.6
        je        ..B1.211      # Prob 25%                      #679.6
                                # LOE rbx r15 eax r12d r14d
..B1.161:                       # Preds ..B1.160                # Infreq
        cmpl      $1, %eax                                      #679.6
        jne       ..B1.187      # Prob 66%                      #679.6
                                # LOE rbx r15 eax r12d r14d
..B1.162:                       # Preds ..B1.161                # Infreq
        movl      $il0_peep_printf_format_1, %edi               #867.3
        call      puts                                          #867.3
                                # LOE rbx r15 r12d r14d
..B1.163:                       # Preds ..B1.162                # Infreq
        movl      $.L_2__STRING.33, %edi                        #870.3
        movl      %r12d, %esi                                   #870.3
        xorl      %eax, %eax                                    #870.3
        movl      376(%rsp), %edx                               #870.3
..___tag_value_main.37:
#       printf(const char *, ...)
        call      printf                                        #870.3
..___tag_value_main.38:
                                # LOE rbx r15 r12d r14d
..B1.164:                       # Preds ..B1.163                # Infreq
        xorl      %r8d, %r8d                                    #874.3
        movl      (%rbx), %esi                                  #882.6
        cmpl      $0, 376(%rsp)                                 #874.23
        jle       ..B1.166      # Prob 10%                      #874.23
                                # LOE rbx r15 esi r8d r12d r14d
..B1.165:                       # Preds ..B1.164                # Infreq
        testl     %r12d, %r12d                                  #876.24
        jg        ..B1.168      # Prob 50%                      #876.24
                                # LOE rbx r15 esi r8d r12d r14d
..B1.166:                       # Preds ..B1.164 ..B1.165 ..B1.429 # Infreq
        movl      $.L_2__STRING.34, %edi                        #917.3
        xorl      %eax, %eax                                    #917.3
..___tag_value_main.39:
#       printf(const char *, ...)
        call      printf                                        #917.3
..___tag_value_main.40:
                                # LOE rbx r15 r14d
..B1.167:                       # Preds ..B1.187 ..B1.166       # Infreq
        movl      (%rbx), %edx                                  #972.5
        jmp       ..B1.214      # Prob 100%                     #972.5
                                # LOE rbx r15 edx r14d
..B1.168:                       # Preds ..B1.165                # Infreq
        movl      %r12d, %eax                                   #509.20
        xorl      %edx, %edx                                    #876.15
        shrl      $31, %eax                                     #509.20
        lea       (%r12,%r12,4), %ecx                           #539.48
        addl      %r12d, %eax                                   #509.20
        xorl      %edi, %edi                                    #876.15
        movl      %r14d, 288(%rsp)                              #876.15
        sarl      $1, %eax                                      #509.20
        movl      376(%rsp), %r14d                              #876.15
        movq      328(%rsp), %r11                               #876.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r12d r14d
..B1.169:                       # Preds ..B1.186 ..B1.428 ..B1.168 # Infreq
        movl      %edi, %r10d                                   #876.4
        movl      $1, %r9d                                      #876.4
        movl      %r10d, %r13d                                  #877.5
        testl     %eax, %eax                                    #876.4
        jbe       ..B1.181      # Prob 9%                       #876.4
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r10d r12d r13d r14d
..B1.171:                       # Preds ..B1.169 ..B1.179       # Infreq
        lea       (%rdx,%r13), %edi                             #877.9
        movslq    %edi, %rdi                                    #877.9
        movl      16(%r11,%rdi,4), %r9d                         #877.9
        cmpl      $2, %r9d                                      #878.15
        je        ..B1.433      # Prob 16%                      #878.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r10d r12d r13d r14d
..B1.172:                       # Preds ..B1.171                # Infreq
        cmpl      $1, %r9d                                      #886.15
        je        ..B1.432      # Prob 16%                      #886.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r10d r12d r13d r14d
..B1.173:                       # Preds ..B1.172                # Infreq
        testl     %r9d, %r9d                                    #893.15
        jne       ..B1.175      # Prob 50%                      #893.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.174:                       # Preds ..B1.173                # Infreq
        incl      %esi                                          #897.6
        incl      (%r15)                                        #896.47
        movl      %esi, (%rbx)                                  #897.6
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.175:                       # Preds ..B1.432 ..B1.433 ..B1.174 ..B1.173 # Infreq
        movl      36(%r11,%rdi,4), %edi                         #877.9
        cmpl      $2, %edi                                      #878.15
        je        ..B1.430      # Prob 16%                      #878.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r10d r12d r13d r14d
..B1.176:                       # Preds ..B1.175                # Infreq
        cmpl      $1, %edi                                      #886.15
        je        ..B1.431      # Prob 16%                      #886.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r10d r12d r13d r14d
..B1.177:                       # Preds ..B1.176                # Infreq
        testl     %edi, %edi                                    #893.15
        jne       ..B1.179      # Prob 50%                      #893.15
                                # LOE rbx r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.178:                       # Preds ..B1.177                # Infreq
        incl      %esi                                          #897.6
        incl      (%r15)                                        #896.47
        movl      %esi, (%rbx)                                  #897.6
                                # LOE rbx r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.179:                       # Preds ..B1.431 ..B1.430 ..B1.178 ..B1.177 # Infreq
        incl      %r10d                                         #876.4
        addl      $10, %r13d                                    #876.4
        cmpl      %eax, %r10d                                   #876.4
        jb        ..B1.171      # Prob 63%                      #876.4
                                # LOE rbx r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.180:                       # Preds ..B1.179                # Infreq
        xorl      %edi, %edi                                    #
        lea       1(%r10,%r10), %r9d                            #877.5
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r12d r14d
..B1.181:                       # Preds ..B1.180 ..B1.169       # Infreq
        lea       -1(%r9), %r10d                                #876.4
        cmpl      %r10d, %r12d                                  #876.4
        jbe       ..B1.428      # Prob 9%                       #876.4
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r12d r14d
..B1.182:                       # Preds ..B1.181                # Infreq
        lea       (%r9,%r9,4), %r9d                             #877.9
        addl      %edx, %r9d                                    #877.9
        movslq    %r9d, %r9                                     #877.9
        movl      -4(%r11,%r9,4), %r9d                          #877.9
        cmpl      $2, %r9d                                      #878.15
        je        ..B1.465      # Prob 16%                      #878.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r12d r14d
..B1.183:                       # Preds ..B1.182                # Infreq
        cmpl      $1, %r9d                                      #886.15
        je        ..B1.443      # Prob 16%                      #886.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r12d r14d
..B1.184:                       # Preds ..B1.183                # Infreq
        testl     %r9d, %r9d                                    #893.15
        jne       ..B1.186      # Prob 50%                      #893.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r12d r14d
..B1.185:                       # Preds ..B1.184                # Infreq
        incl      %esi                                          #897.6
        incl      (%r15)                                        #896.47
        movl      %esi, (%rbx)                                  #897.6
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r12d r14d
..B1.186:                       # Preds ..B1.443 ..B1.465 ..B1.185 ..B1.184 # Infreq
        incl      %r8d                                          #874.3
        addl      %ecx, %edx                                    #874.3
        cmpl      %r14d, %r8d                                   #874.3
        jb        ..B1.169      # Prob 82%                      #874.3
        jmp       ..B1.429      # Prob 100%                     #874.3
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r12d r14d
..B1.187:                       # Preds ..B1.161                # Infreq
        cmpl      $3, %eax                                      #679.6
        jne       ..B1.167      # Prob 50%                      #679.6
                                # LOE rbx r15 r12d r14d
..B1.188:                       # Preds ..B1.187                # Infreq
        movl      $il0_peep_printf_format_0, %edi               #923.3
        call      puts                                          #923.3
                                # LOE rbx r15 r12d r14d
..B1.189:                       # Preds ..B1.188                # Infreq
        xorl      %r9d, %r9d                                    #927.3
        movl      (%rbx), %edx                                  #935.6
        cmpl      $0, 376(%rsp)                                 #927.23
        jle       ..B1.214      # Prob 10%                      #927.23
                                # LOE rbx r15 edx r9d r12d r14d
..B1.190:                       # Preds ..B1.189                # Infreq
        testl     %r12d, %r12d                                  #929.24
        jle       ..B1.214      # Prob 50%                      #929.24
                                # LOE rbx r15 edx r9d r12d r14d
..B1.191:                       # Preds ..B1.190                # Infreq
        movl      %r12d, %eax                                   #509.20
        xorl      %ecx, %ecx                                    #929.15
        shrl      $31, %eax                                     #509.20
        lea       (%r12,%r12,4), %r8d                           #539.48
        addl      %r12d, %eax                                   #509.20
        xorl      %edi, %edi                                    #929.15
        movl      %r14d, 288(%rsp)                              #929.15
        sarl      $1, %eax                                      #509.20
        movl      376(%rsp), %r14d                              #929.15
        movq      328(%rsp), %r11                               #929.15
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r12d r14d
..B1.192:                       # Preds ..B1.209 ..B1.437 ..B1.191 # Infreq
        movl      %edi, %esi                                    #929.4
        movl      $1, %r10d                                     #929.4
        movl      %esi, %r13d                                   #930.5
        testl     %eax, %eax                                    #929.4
        jbe       ..B1.204      # Prob 10%                      #929.4
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r10d r12d r13d r14d
..B1.194:                       # Preds ..B1.192 ..B1.202       # Infreq
        lea       (%rcx,%r13), %edi                             #930.9
        movslq    %edi, %rdi                                    #930.9
        movl      16(%r11,%rdi,4), %r10d                        #930.9
        cmpl      $2, %r10d                                     #931.15
        je        ..B1.442      # Prob 16%                      #931.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r10d r12d r13d r14d
..B1.195:                       # Preds ..B1.194                # Infreq
        cmpl      $1, %r10d                                     #939.15
        je        ..B1.441      # Prob 16%                      #939.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r10d r12d r13d r14d
..B1.196:                       # Preds ..B1.195                # Infreq
        testl     %r10d, %r10d                                  #946.15
        jne       ..B1.198      # Prob 50%                      #946.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.197:                       # Preds ..B1.196                # Infreq
        incl      %edx                                          #950.6
        incl      (%r15)                                        #949.47
        movl      %edx, (%rbx)                                  #950.6
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.198:                       # Preds ..B1.441 ..B1.442 ..B1.197 ..B1.196 # Infreq
        movl      36(%r11,%rdi,4), %edi                         #930.9
        cmpl      $2, %edi                                      #931.15
        je        ..B1.440      # Prob 16%                      #931.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r12d r13d r14d
..B1.199:                       # Preds ..B1.198                # Infreq
        cmpl      $1, %edi                                      #939.15
        je        ..B1.439      # Prob 16%                      #939.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r9d r12d r13d r14d
..B1.200:                       # Preds ..B1.199                # Infreq
        testl     %edi, %edi                                    #946.15
        jne       ..B1.202      # Prob 50%                      #946.15
                                # LOE rbx r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.201:                       # Preds ..B1.200                # Infreq
        incl      %edx                                          #950.6
        incl      (%r15)                                        #949.47
        movl      %edx, (%rbx)                                  #950.6
                                # LOE rbx r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.202:                       # Preds ..B1.439 ..B1.440 ..B1.201 ..B1.200 # Infreq
        incl      %esi                                          #929.4
        addl      $10, %r13d                                    #929.4
        cmpl      %eax, %esi                                    #929.4
        jb        ..B1.194      # Prob 64%                      #929.4
                                # LOE rbx r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.203:                       # Preds ..B1.202                # Infreq
        xorl      %edi, %edi                                    #
        lea       1(%rsi,%rsi), %r10d                           #930.5
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r10d r12d r14d
..B1.204:                       # Preds ..B1.203 ..B1.192       # Infreq
        lea       -1(%r10), %r13d                               #929.4
        cmpl      %r13d, %r12d                                  #929.4
        jbe       ..B1.437      # Prob 10%                      #929.4
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r10d r12d r14d
..B1.205:                       # Preds ..B1.204                # Infreq
        lea       (%r10,%r10,4), %r10d                          #930.9
        addl      %ecx, %r10d                                   #930.9
        movslq    %r10d, %r10                                   #930.9
        movl      -4(%r11,%r10,4), %r10d                        #930.9
        cmpl      $2, %r10d                                     #931.15
        je        ..B1.436      # Prob 16%                      #931.15
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r10d r12d r14d
..B1.206:                       # Preds ..B1.205                # Infreq
        cmpl      $1, %r10d                                     #939.15
        je        ..B1.435      # Prob 16%                      #939.15
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r10d r12d r14d
..B1.207:                       # Preds ..B1.206                # Infreq
        testl     %r10d, %r10d                                  #946.15
        jne       ..B1.209      # Prob 50%                      #946.15
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r12d r14d
..B1.208:                       # Preds ..B1.207                # Infreq
        incl      %edx                                          #950.6
        incl      (%r15)                                        #949.47
        movl      %edx, (%rbx)                                  #950.6
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r12d r14d
..B1.209:                       # Preds ..B1.435 ..B1.436 ..B1.208 ..B1.207 # Infreq
        incl      %r9d                                          #927.3
        addl      %r8d, %ecx                                    #927.3
        cmpl      %r14d, %r9d                                   #927.3
        jb        ..B1.192      # Prob 82%                      #927.3
        jmp       ..B1.427      # Prob 100%                     #927.3
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r12d r14d
..B1.211:                       # Preds ..B1.160                # Infreq
        movl      $il0_peep_printf_format_2, %edi               #818.3
        call      puts                                          #818.3
                                # LOE rbx r15 r12d r14d
..B1.212:                       # Preds ..B1.211                # Infreq
        xorl      %r8d, %r8d                                    #822.3
        movl      (%rbx), %edx                                  #831.6
        cmpl      $0, 376(%rsp)                                 #822.23
        jle       ..B1.214      # Prob 10%                      #822.23
                                # LOE rbx r15 edx r8d r12d r14d
..B1.213:                       # Preds ..B1.212                # Infreq
        testl     %r12d, %r12d                                  #824.24
        jg        ..B1.408      # Prob 50%                      #824.24
                                # LOE rbx r15 edx r8d r12d r14d
..B1.214:                       # Preds ..B1.189 ..B1.190 ..B1.212 ..B1.213 ..B1.427
                                #       ..B1.460 ..B1.438 ..B1.531 ..B1.167 # Infreq
        movl      $.L_2__STRING.36, %edi                        #971.3
        xorl      %esi, %esi                                    #971.3
        xorl      %eax, %eax                                    #971.3
..___tag_value_main.41:
#       printf(const char *, ...)
        call      printf                                        #971.3
..___tag_value_main.42:
                                # LOE rbx r15 r14d
..B1.215:                       # Preds ..B1.214                # Infreq
        movl      $.L_2__STRING.37, %edi                        #973.3
        xorl      %esi, %esi                                    #973.3
        xorl      %eax, %eax                                    #973.3
        movl      (%r15), %edx                                  #973.3
..___tag_value_main.43:
#       printf(const char *, ...)
        call      printf                                        #973.3
..___tag_value_main.44:
                                # LOE rbx r15 r14d
..B1.216:                       # Preds ..B1.215                # Infreq
        movl      $4, %edi                                      #978.53
#       malloc(size_t)
        call      malloc                                        #978.53
                                # LOE rbx r15 r14d
..B1.217:                       # Preds ..B1.216                # Infreq
        movl      (%rbx), %edi                                  #1003.13
        shll      $8, %edi                                      #1003.13
        movslq    %edi, %rdi                                    #1003.13
        shlq      $2, %rdi                                      #1003.13
#       malloc(size_t)
        call      malloc                                        #1003.13
                                # LOE rax rbx r15 r14d
..B1.606:                       # Preds ..B1.217                # Infreq
        movq      %rax, 336(%rsp)                               #1003.13
                                # LOE rbx r15 r14d
..B1.218:                       # Preds ..B1.606                # Infreq
        movl      (%rbx), %edi                                  #1009.13
        shll      $8, %edi                                      #1009.13
        movslq    %edi, %rdi                                    #1009.13
        shlq      $2, %rdi                                      #1009.13
#       malloc(size_t)
        call      malloc                                        #1009.13
                                # LOE rax rbx r15 r14d
..B1.607:                       # Preds ..B1.218                # Infreq
        movq      %rax, 344(%rsp)                               #1009.13
                                # LOE rbx r15 r14d
..B1.219:                       # Preds ..B1.607                # Infreq
        movslq    (%rbx), %rax                                  #1015.55
        lea       (%rax,%rax,4), %rdi                           #1015.55
        shlq      $2, %rdi                                      #1015.55
#       malloc(size_t)
        call      malloc                                        #1015.55
                                # LOE rax rbx r15 r14d
..B1.608:                       # Preds ..B1.219                # Infreq
        movq      %rax, %rdi                                    #1015.55
                                # LOE rbx rdi r15 r14d
..B1.220:                       # Preds ..B1.608                # Infreq
        movslq    (%rbx), %rax                                  #1018.2
        movq      328(%rsp), %rsi                               #1018.2
        lea       (%rax,%rax,4), %rdx                           #1018.2
        shlq      $2, %rdx                                      #1018.2
        call      _intel_fast_memcpy                            #1018.2
                                # LOE rbx r15 r14d
..B1.221:                       # Preds ..B1.220                # Infreq
        movslq    320(%rsp), %r13                               #1031.18
        lea       (,%r13,4), %r12                               #1031.18
        movq      %r12, %rdi                                    #1030.50
#       malloc(size_t)
        call      malloc                                        #1030.50
                                # LOE rax rbx r12 r13 r15 r14d
..B1.609:                       # Preds ..B1.221                # Infreq
        movq      %rax, 264(%rsp)                               #1030.50
                                # LOE rax rbx r12 r13 r15 eax r14d al ah
..B1.222:                       # Preds ..B1.609                # Infreq
        xorl      %esi, %esi                                    #1032.2
        movq      %r12, %rdx                                    #1032.2
        movq      %rax, %rdi                                    #1032.2
        call      _intel_fast_memset                            #1032.2
                                # LOE rbx r12 r13 r15 r14d
..B1.223:                       # Preds ..B1.222                # Infreq
        movq      %r12, %rdi                                    #1034.41
#       malloc(size_t)
        call      malloc                                        #1034.41
                                # LOE rax rbx r12 r13 r15 r14d
..B1.610:                       # Preds ..B1.223                # Infreq
        movq      %rax, 272(%rsp)                               #1034.41
                                # LOE rax rbx r12 r13 r15 eax r14d al ah
..B1.224:                       # Preds ..B1.610                # Infreq
        xorl      %esi, %esi                                    #1035.2
        movq      %r12, %rdx                                    #1035.2
        movq      %rax, %rdi                                    #1035.2
        call      _intel_fast_memset                            #1035.2
                                # LOE rbx r12 r13 r15 r14d
..B1.225:                       # Preds ..B1.224                # Infreq
        movq      %r12, %rdi                                    #1037.46
#       malloc(size_t)
        call      malloc                                        #1037.46
                                # LOE rax rbx r12 r13 r15 r14d
..B1.611:                       # Preds ..B1.225                # Infreq
        movq      %rax, 280(%rsp)                               #1037.46
                                # LOE rax rbx r12 r13 r15 eax r14d al ah
..B1.226:                       # Preds ..B1.611                # Infreq
        xorl      %esi, %esi                                    #1038.2
        movq      %r12, %rdx                                    #1038.2
        movq      %rax, %rdi                                    #1038.2
        call      _intel_fast_memset                            #1038.2
                                # LOE rbx r12 r13 r15 r14d
..B1.227:                       # Preds ..B1.226                # Infreq
        testl     %r14d, %r14d                                  #1040.17
        jle       ..B1.234      # Prob 50%                      #1040.17
                                # LOE rbx r12 r13 r15 r14d
..B1.228:                       # Preds ..B1.227                # Infreq
        pxor      %xmm1, %xmm1                                  #446.22
        pxor      %xmm0, %xmm0                                  #1042.37
        movq      312(%rsp), %rcx                               #446.22
        movl      $.L_2__STRING.38, %edi                        #1047.3
        cvtsi2ss  %ecx, %xmm1                                   #446.22
        cvtsi2ss  (%r15), %xmm0                                 #1042.37
        divss     .L_2il0floatpacket.0(%rip), %xmm1             #446.37
        mulss     %xmm0, %xmm1                                  #1042.61
        xorl      %esi, %esi                                    #1047.3
        cvttss2si %xmm1, %edx                                   #1042.61
        movq      280(%rsp), %r8                                #1042.4
        xorl      %eax, %eax                                    #1047.3
        movl      %edx, (%r8)                                   #1042.4
..___tag_value_main.45:
#       printf(const char *, ...)
        call      printf                                        #1047.3
..___tag_value_main.46:
                                # LOE rbx r12 r13 r15 r14d
..B1.229:                       # Preds ..B1.228                # Infreq
        xorl      %edx, %edx                                    #1040.2
        cmpl      $2, %r14d                                     #1040.2
        jb        ..B1.234      # Prob 10%                      #1040.2
                                # LOE rdx rbx r12 r13 r15 r14d
..B1.230:                       # Preds ..B1.229                # Infreq
        pxor      %xmm0, %xmm0                                  #1045.99
        lea       -1(%r14), %eax                                #1045.99
        cvtsi2ss  %eax, %xmm0                                   #1045.99
        movq      %r12, 256(%rsp)                               #453.33
        lea       -1(%r13), %rax                                #453.33
        movss     %xmm0, 312(%rsp)                              #453.33
        movq      %rbx, 304(%rsp)                               #453.33
        movq      %rax, %rbx                                    #453.33
        movl      %r14d, 288(%rsp)                              #453.33
        movq      %rdx, %r14                                    #453.33
        movq      280(%rsp), %r12                               #453.33
                                # LOE rbx r12 r13 r14 r15
..B1.231:                       # Preds ..B1.232 ..B1.230       # Infreq
        pxor      %xmm0, %xmm0                                  #1045.37
        movl      %r14d, %esi                                   #1047.3
        cvtsi2ss  (%r15), %xmm0                                 #1045.37
        mulss     400(%rsp), %xmm0                              #1045.61
        incl      %esi                                          #1047.3
        divss     312(%rsp), %xmm0                              #1045.99
        cvttss2si %xmm0, %edx                                   #1045.99
        movl      $.L_2__STRING.38, %edi                        #1047.3
        xorl      %eax, %eax                                    #1047.3
        movl      %edx, 4(%r12,%r14,4)                          #1045.4
..___tag_value_main.47:
#       printf(const char *, ...)
        call      printf                                        #1047.3
..___tag_value_main.48:
                                # LOE rbx r12 r13 r14 r15
..B1.232:                       # Preds ..B1.231                # Infreq
        incq      %r14                                          #1040.2
        cmpq      %rbx, %r14                                    #1040.2
        jb        ..B1.231      # Prob 82%                      #1040.2
                                # LOE rbx r12 r13 r14 r15
..B1.233:                       # Preds ..B1.232                # Infreq
        movq      256(%rsp), %r12                               #
        movq      304(%rsp), %rbx                               #
        movl      288(%rsp), %r14d                              #
                                # LOE rbx r12 r13 r14d
..B1.234:                       # Preds ..B1.229 ..B1.233 ..B1.227 # Infreq
        xorl      %eax, %eax                                    #1050.23
        xorl      %r9d, %r9d                                    #1051.13
        movl      (%rbx), %r8d                                  #1051.22
        xorl      %ecx, %ecx                                    #1050.23
        movq      328(%rsp), %rsi                               #1051.13
        testl     %r8d, %r8d                                    #1051.22
        jle       ..B1.245      # Prob 10%                      #1051.22
                                # LOE rax rcx rbx rsi r12 r13 esi r8d r9d r14d sil
..B1.235:                       # Preds ..B1.234                # Infreq
        movq      280(%rsp), %r15                               #1077.55
        decq      %r13                                          #1077.55
        movq      272(%rsp), %rdx                               #1077.55
        movq      264(%rsp), %rdi                               #1077.55
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r14d
..B1.236:                       # Preds ..B1.243 ..B1.235       # Infreq
        movl      16(%rsi), %r10d                               #1052.7
        cmpl      $2, %r10d                                     #1053.13
        je        ..B1.455      # Prob 16%                      #1053.13
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r10d r14d
..B1.237:                       # Preds ..B1.236                # Infreq
        movl      (%rcx,%rdx), %r11d                            #1064.5
        cmpl      $1, %r10d                                     #1061.13
        je        ..B1.454      # Prob 16%                      #1061.13
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r10d r11d r14d
..B1.238:                       # Preds ..B1.237                # Infreq
        testl     %r10d, %r10d                                  #1068.13
        jne       ..B1.240      # Prob 50%                      #1068.13
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r11d r14d
..B1.239:                       # Preds ..B1.238                # Infreq
        incl      %r11d                                         #1071.49
        movl      %r11d, (%rcx,%rdx)                            #1070.4
        incl      (%rcx,%rdi)                                   #1072.4
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r11d r14d
..B1.240:                       # Preds ..B1.454 ..B1.455 ..B1.239 ..B1.238 # Infreq
        cmpl      (%r15,%rcx), %r11d                            #1076.8
        jl        ..B1.243      # Prob 50%                      #1076.8
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r14d
..B1.241:                       # Preds ..B1.240                # Infreq
        cmpq      %r13, %rax                                    #1077.55
        je        ..B1.243      # Prob 38%                      #1077.55
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r14d
..B1.242:                       # Preds ..B1.241                # Infreq
        addq      $4, %rcx                                      #1078.4
        incq      %rax                                          #1078.4
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r14d
..B1.243:                       # Preds ..B1.242 ..B1.241 ..B1.240 # Infreq
        incl      %r9d                                          #1051.55
        addq      $20, %rsi                                     #1051.55
        cmpl      %r8d, %r9d                                    #1051.22
        jl        ..B1.236      # Prob 82%                      #1051.22
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r14d
..B1.245:                       # Preds ..B1.243 ..B1.234       # Infreq
        xorl      %r13d, %r13d                                  #1082.2
        xorl      %r15d, %r15d                                  #1083.3
        testl     %r14d, %r14d                                  #1082.22
        jle       ..B1.251      # Prob 10%                      #1082.22
                                # LOE rbx r12 r15 r13d r14d
..B1.246:                       # Preds ..B1.245                # Infreq
        movq      %r12, 256(%rsp)                               #
        movq      %rbx, 304(%rsp)                               #
        movq      272(%rsp), %rbx                               #
        movq      264(%rsp), %r12                               #
                                # LOE rbx r12 r15 r13d r14d
..B1.247:                       # Preds ..B1.249 ..B1.246       # Infreq
        movl      $.L_2__STRING.39, %edi                        #1083.3
        movl      %r13d, %esi                                   #1083.3
        xorl      %eax, %eax                                    #1083.3
        movl      (%r12,%r15,4), %edx                           #1083.3
..___tag_value_main.49:
#       printf(const char *, ...)
        call      printf                                        #1083.3
..___tag_value_main.50:
                                # LOE rbx r12 r15 r13d r14d
..B1.248:                       # Preds ..B1.247                # Infreq
        movl      $.L_2__STRING.40, %edi                        #1085.3
        movl      %r13d, %esi                                   #1085.3
        xorl      %eax, %eax                                    #1085.3
        movl      (%rbx,%r15,4), %edx                           #1085.3
..___tag_value_main.51:
#       printf(const char *, ...)
        call      printf                                        #1085.3
..___tag_value_main.52:
                                # LOE rbx r12 r15 r13d r14d
..B1.249:                       # Preds ..B1.248                # Infreq
        incl      %r13d                                         #1082.2
        incq      %r15                                          #1082.2
        cmpl      %r14d, %r13d                                  #1082.2
        jb        ..B1.247      # Prob 82%                      #1082.2
                                # LOE rbx r12 r15 r13d r14d
..B1.250:                       # Preds ..B1.249                # Infreq
        movq      256(%rsp), %r12                               #
        movq      304(%rsp), %rbx                               #
                                # LOE rbx r12 r14d
..B1.251:                       # Preds ..B1.245 ..B1.250       # Infreq
        movq      %r12, %rdi                                    #1090.57
#       malloc(size_t)
        call      malloc                                        #1090.57
                                # LOE rax rbx r14d
..B1.612:                       # Preds ..B1.251                # Infreq
        movq      %rax, %r12                                    #1090.57
                                # LOE rbx r12 r14d
..B1.252:                       # Preds ..B1.612                # Infreq
        xorl      %eax, %eax                                    #1093.26
        cmpl      $1, %r14d                                     #1096.22
        movl      $0, (%r12)                                    #1094.2
        jle       ..B1.259      # Prob 50%                      #1096.22
                                # LOE rbx r12 eax r14d
..B1.253:                       # Preds ..B1.252                # Infreq
        xorl      %esi, %esi                                    #1096.2
        lea       -1(%r14), %ecx                                #1096.2
        movl      %ecx, %edx                                    #1096.2
        movl      $1, %r8d                                      #1096.2
        shrl      $31, %edx                                     #1096.2
        lea       -1(%r14,%rdx), %edx                           #1096.2
        sarl      $1, %edx                                      #1096.2
        testl     %edx, %edx                                    #1096.2
        jbe       ..B1.257      # Prob 10%                      #1096.2
                                # LOE rbx r12 eax edx ecx esi r8d r14d
..B1.254:                       # Preds ..B1.253                # Infreq
        movq      264(%rsp), %r10                               #
                                # LOE rbx r10 r12 eax edx ecx esi r14d
..B1.255:                       # Preds ..B1.255 ..B1.254       # Infreq
        lea       (%rsi,%rsi), %r8d                             #1099.6
        incl      %esi                                          #1096.2
        movslq    %r8d, %r8                                     #1099.6
        addl      (%r10,%r8,4), %eax                            #1099.6
        movl      4(%r10,%r8,4), %r9d                           #1099.6
        movl      %eax, 4(%r12,%r8,4)                           #1100.3
        addl      %r9d, %eax                                    #1099.6
        movl      %eax, 8(%r12,%r8,4)                           #1100.3
        cmpl      %edx, %esi                                    #1096.2
        jb        ..B1.255      # Prob 64%                      #1096.2
                                # LOE rbx r10 r12 eax edx ecx esi r14d
..B1.256:                       # Preds ..B1.255                # Infreq
        lea       1(%rsi,%rsi), %r8d                            #1098.3
                                # LOE rbx r12 eax ecx r8d r14d
..B1.257:                       # Preds ..B1.256 ..B1.253       # Infreq
        lea       -1(%r8), %edx                                 #1096.2
        cmpl      %edx, %ecx                                    #1096.2
        jbe       ..B1.259      # Prob 10%                      #1096.2
                                # LOE rbx r12 eax r8d r14d
..B1.258:                       # Preds ..B1.257                # Infreq
        movslq    %r8d, %r8                                     #1099.6
        movq      264(%rsp), %rdx                               #1099.6
        addl      -4(%rdx,%r8,4), %eax                          #1099.6
        movl      %eax, (%r12,%r8,4)                            #1100.3
                                # LOE rbx r12 r14d
..B1.259:                       # Preds ..B1.252 ..B1.257 ..B1.258 # Infreq
#       clock()
        call      clock                                         #1104.15
                                # LOE rbx r12 r14d
..B1.260:                       # Preds ..B1.259                # Infreq
..___tag_value_main.53:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1106.15
..___tag_value_main.54:
                                # LOE rbx r12 r14d xmm0
..B1.613:                       # Preds ..B1.260                # Infreq
        movsd     %xmm0, 312(%rsp)                              #1106.15
                                # LOE rbx r12 r14d
..B1.261:                       # Preds ..B1.613                # Infreq
        movl      %r14d, %edi                                   #1107.2
..___tag_value_main.55:
#       omp_set_num_threads(int)
        call      omp_set_num_threads                           #1107.2
..___tag_value_main.56:
                                # LOE rbx r12
..B1.262:                       # Preds ..B1.261                # Infreq
#       omp_get_thread_num()
        call      omp_get_thread_num                            #1111.32
                                # LOE rbx r12 eax
..B1.614:                       # Preds ..B1.262                # Infreq
        movl      %eax, %r14d                                   #1111.32
                                # LOE rbx r12 r14
..B1.263:                       # Preds ..B1.614                # Infreq
#       omp_get_num_threads()
        call      omp_get_num_threads                           #1112.34
                                # LOE rbx r12 r14
..B1.264:                       # Preds ..B1.263                # Infreq
        testl     %r14d, %r14d                                  #1115.22
        jne       ..B1.268      # Prob 50%                      #1115.22
                                # LOE rbx r12 r14
..B1.265:                       # Preds ..B1.264                # Infreq
..___tag_value_main.57:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1117.15
..___tag_value_main.58:
                                # LOE rbx r12 r14
..B1.266:                       # Preds ..B1.265                # Infreq
        xorl      %eax, %eax                                    #1119.4
        movl      sar_data_y0(%rip), %r10d                      #1119.4
        xorl      %edi, %edi                                    #1119.4
        movl      sar_data_x0(%rip), %r11d                      #1119.4
        movl      $1, %esi                                      #1119.4
        movl      sar_data_Wy(%rip), %r13d                      #1119.4
        movl      (%r12,%r14,4), %edx                           #1119.4
        movq      264(%rsp), %r12                               #1119.4
        pushq     %rax                                          #1119.4
        pushq     304(%rsp)                                     #1119.4
        pushq     360(%rsp)                                     #1119.4
        pushq     360(%rsp)                                     #1119.4
        pushq     %r10                                          #1119.4
        pushq     %r11                                          #1119.4
        pushq     %r13                                          #1119.4
        movl      sar_data_Wx(%rip), %r15d                      #1119.4
        pushq     %r15                                          #1119.4
        movl      sar_data_K(%rip), %eax                        #1119.4
        pushq     %rax                                          #1119.4
        pushq     400(%rsp)                                     #1119.4
        pushq     %rdx                                          #1119.4
        movl      (%r12,%r14,4), %ecx                           #1119.4
        pushq     %rcx                                          #1119.4
        pushq     528(%rsp)                                     #1119.4
        pushq     sar_data_XYZR(%rip)                           #1119.4
        movss     sar_data_minF(%rip), %xmm0                    #1119.4
        movss     prep2(%rip), %xmm1                            #1119.4
        movss     prep3(%rip), %xmm2                            #1119.4
        movss     prepi(%rip), %xmm3                            #1119.4
        movl      sar_data_Np(%rip), %edx                       #1119.4
        movl      sar_data_Nfft(%rip), %ecx                     #1119.4
        movl      sar_data_Nx(%rip), %r8d                       #1119.4
        movl      sar_data_Ny(%rip), %r9d                       #1119.4
..___tag_value_main.59:
#       bpbasic(int, int, int, int, int, int, float, float *, float *, int, int, int *, int, int, int, int, int, float, float, float, float *, float *, int, int)
        call      bpbasic                                       #1119.4
..___tag_value_main.60:
                                # LOE rbx
..B1.615:                       # Preds ..B1.266                # Infreq
        addq      $112, %rsp                                    #1119.4
        jmp       ..B1.310      # Prob 100%                     #1119.4
                                # LOE rbx
..B1.268:                       # Preds ..B1.264                # Infreq
..___tag_value_main.61:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1135.14
..___tag_value_main.62:
                                # LOE rbx r14
..B1.269:                       # Preds ..B1.268                # Infreq
        movss     sar_data_minF(%rip), %xmm0                    #1137.118
        movss     prep2(%rip), %xmm1                            #1140.32
        movss     prep3(%rip), %xmm2                            #1140.39
        movss     prepi(%rip), %xmm3                            #1140.46
        movl      sar_data_Np(%rip), %r13d                      #1137.66
        movl      sar_data_Nfft(%rip), %r12d                    #1137.79
        movss     %xmm0, 296(%rsp)                              #1137.118
        movss     %xmm1, 280(%rsp)                              #1140.32
        movss     %xmm2, 288(%rsp)                              #1140.39
        movss     %xmm3, 272(%rsp)                              #1140.46
..___tag_value_main.63:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1137.4
..___tag_value_main.64:
                                # LOE rbx r14 r12d r13d xmm0
..B1.616:                       # Preds ..B1.269                # Infreq
        movsd     %xmm0, 256(%rsp)                              #1137.4
                                # LOE rbx r14 r12d r13d
..B1.270:                       # Preds ..B1.616                # Infreq
#       clock()
        call      clock                                         #1137.4
                                # LOE rbx r14 r12d r13d
..B1.271:                       # Preds ..B1.270                # Infreq
        movl      sar_data_Wx(%rip), %edi                       #1137.4
        movl      %edi, %r15d                                   #1137.4
        shrl      $31, %r15d                                    #1137.4
        movl      %r12d, %r11d                                  #1137.4
        addl      %edi, %r15d                                   #1137.4
        pxor      %xmm1, %xmm1                                  #1137.4
        sarl      $1, %r15d                                     #1137.4
        pxor      %xmm8, %xmm8                                  #1137.4
        movl      sar_data_x0(%rip), %r9d                       #1137.4
        pxor      %xmm2, %xmm2                                  #1137.4
        subl      %r15d, %r9d                                   #1137.4
        movl      %r12d, %r15d                                  #1137.4
        negl      %r15d                                         #1137.4
        movl      %r13d, %r8d                                   #1137.4
        shrl      $31, %r11d                                    #1137.4
        xorl      %ecx, %ecx                                    #1137.4
        cvtsi2ss  %r9d, %xmm1                                   #1137.4
        movl      %r15d, %r9d                                   #1137.4
        addl      %r12d, %r11d                                  #1137.4
        shrl      $31, %r9d                                     #1137.4
        movl      sar_data_Nx(%rip), %eax                       #1137.4
        subl      %r12d, %r9d                                   #1137.4
        sarl      $1, %r11d                                     #1137.4
        decl      %eax                                          #1137.4
        cvtsi2ss  %r11d, %xmm8                                  #1137.4
        cvtsi2ss  %eax, %xmm2                                   #1137.4
        movss     296(%rsp), %xmm6                              #1137.4
        movaps    %xmm2, %xmm0                                  #1137.4
        sarl      $1, %r9d                                      #1137.4
        movl      $4, %r10d                                     #1137.4
        mulss     272(%rsp), %xmm6                              #1137.4
        xorl      %edx, %edx                                    #1137.4
        movd      sar_data_Wy(%rip), %xmm3                      #1121.55
        movd      %r10d, %xmm7                                  #1137.4
        pshufd    $0, %xmm3, %xmm5                              #1121.55
        movd      %r9d, %xmm10                                  #1137.4
        shrl      $31, %r8d                                     #1137.4
        movdqa    %xmm5, %xmm3                                  #1137.4
        movss     288(%rsp), %xmm11                             #1137.4
        addl      %r13d, %r8d                                   #1137.4
        movss     280(%rsp), %xmm9                              #1137.4
        psrlq     $32, %xmm3                                    #1137.4
        shufps    $0, %xmm6, %xmm6                              #1137.4
        shufps    $0, %xmm11, %xmm11                            #1137.4
        sarl      $1, %r8d                                      #1137.4
        pshufd    $0, %xmm7, %xmm12                             #1137.4
        shufps    $0, %xmm8, %xmm8                              #1137.4
        pshufd    $0, %xmm10, %xmm7                             #1137.4
        movl      %edi, 320(%rsp)                               #1137.4
        movdqa    .L_2il0floatpacket.6(%rip), %xmm4             #1137.4
        movdqa    .L_2il0floatpacket.7(%rip), %xmm14            #1137.4
        shufps    $0, %xmm9, %xmm9                              #1137.4
        shufps    $0, %xmm0, %xmm0                              #1137.4
        movq      sar_data_XYZR(%rip), %rax                     #1137.4
        movdqa    %xmm7, 2528(%rsp)                             #1137.4
        movaps    %xmm11, 2544(%rsp)                            #1137.4
        movaps    %xmm8, 2560(%rsp)                             #1137.4
        movaps    %xmm6, 2576(%rsp)                             #1137.4
        movdqa    %xmm3, 416(%rsp)                              #1137.4
        movdqa    %xmm5, 2496(%rsp)                             #1137.4
        movdqa    %xmm12, 2512(%rsp)                            #1137.4
        movl      %r8d, 328(%rsp)                               #1137.4
        movl      %r13d, %r8d                                   #1137.4
        movl      %r14d, 264(%rsp)                              #1137.4
        movl      %edx, %r14d                                   #1137.4
        movq      %rbx, 304(%rsp)                               #1137.4
        movl      %r12d, %edx                                   #1137.4
        movq      344(%rsp), %rdi                               #1137.4
        movl      %ecx, %r13d                                   #1137.4
                                # LOE rax rdi edx ecx r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.272:                       # Preds ..B1.306 ..B1.271       # Infreq
        pxor      %xmm3, %xmm3                                  #1137.4
        testl     %r8d, %r8d                                    #1137.4
        cvtsi2ss  %r13d, %xmm3                                  #1137.4
        divss     %xmm2, %xmm3                                  #1137.4
        addss     %xmm1, %xmm3                                  #1137.4
        jle       ..B1.283      # Prob 50%                      #1137.4
                                # LOE rax rdi edx ecx r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B1.273:                       # Preds ..B1.272                # Infreq
        xorl      %ebx, %ebx                                    #1137.4
        movl      $1, %esi                                      #1137.4
        xorl      %r12d, %r12d                                  #1137.4
        cmpl      $1, 328(%rsp)                                 #1137.4
        jb        ..B1.279      # Prob 9%                       #1137.4
                                # LOE rax rdi edx ecx ebx esi r8d r12d r13d r14d r15d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B1.274:                       # Preds ..B1.273                # Infreq
        rcpps     %xmm0, %xmm10                                 #1137.4
        rcpps     %xmm9, %xmm6                                  #1137.4
        movaps    %xmm0, %xmm8                                  #1137.4
        movaps    %xmm9, %xmm5                                  #1137.4
        mulps     %xmm10, %xmm8                                 #1137.4
        xorl      %edi, %edi                                    #1137.4
        mulps     %xmm6, %xmm5                                  #1137.4
        mulps     %xmm10, %xmm8                                 #1137.4
        addps     %xmm10, %xmm10                                #1137.4
        mulps     %xmm6, %xmm5                                  #1137.4
        addps     %xmm6, %xmm6                                  #1137.4
        subps     %xmm8, %xmm10                                 #1137.4
        subps     %xmm5, %xmm6                                  #1137.4
        movl      %r14d, 288(%rsp)                              #1137.4
        movl      %r15d, 272(%rsp)                              #1137.4
        movaps    .L_2il0floatpacket.19(%rip), %xmm8            #1137.4
        movaps    %xmm6, 2736(%rsp)                             #1137.4
        movaps    %xmm10, 2592(%rsp)                            #1137.4
        movaps    %xmm0, 352(%rsp)                              #1137.4
        movss     %xmm2, 400(%rsp)                              #1137.4
        movss     %xmm1, 392(%rsp)                              #1137.4
        movl      %r13d, 280(%rsp)                              #1137.4
        movl      %ecx, 384(%rsp)                               #1137.4
        movl      %r8d, 376(%rsp)                               #1137.4
        movaps    2560(%rsp), %xmm15                            #1137.4
        movaps    2576(%rsp), %xmm14                            #1137.4
        movl      328(%rsp), %r15d                              #1137.4
        movq      432(%rsp), %r14                               #1137.4
                                # LOE rax rdi r14 edx ebx r12d r15d xmm3 xmm4 xmm8 xmm9 xmm14 xmm15
..B1.275:                       # Preds ..B1.277 ..B1.274       # Infreq
        movd      %r12d, %xmm11                                 #1137.4
        lea       (,%rbx,8), %ecx                               #1137.4
        movslq    %ecx, %rcx                                    #1137.4
        lea       (%rdx,%r12), %esi                             #1137.4
        movss     %xmm3, 408(%rsp)                              #1137.4
        movdqa    %xmm4, %xmm13                                 #1137.4
        movq      %rax, 368(%rsp)                               #1137.4
        movq      %rdi, %r13                                    #1137.4
        movl      %edx, 296(%rsp)                               #1137.4
        movss     4(%rax,%rcx,4), %xmm6                         #1137.4
        movd      %esi, %xmm10                                  #1137.4
        movss     8(%rax,%rcx,4), %xmm5                         #1137.4
        movss     20(%rax,%rcx,4), %xmm2                        #1137.4
        movss     24(%rax,%rcx,4), %xmm0                        #1137.4
        mulss     %xmm6, %xmm6                                  #1137.4
        mulss     %xmm5, %xmm5                                  #1137.4
        mulss     %xmm2, %xmm2                                  #1137.4
        mulss     %xmm0, %xmm0                                  #1137.4
        addss     %xmm5, %xmm6                                  #1137.4
        addss     %xmm0, %xmm2                                  #1137.4
        movss     (%rax,%rcx,4), %xmm7                          #1137.4
        movss     16(%rax,%rcx,4), %xmm5                        #1137.4
        subss     %xmm3, %xmm7                                  #1137.4
        subss     %xmm3, %xmm5                                  #1137.4
        movss     28(%rax,%rcx,4), %xmm1                        #1137.4
        movss     12(%rax,%rcx,4), %xmm0                        #1137.4
        shufps    $0, %xmm7, %xmm7                              #1137.4
        shufps    $0, %xmm6, %xmm6                              #1137.4
        shufps    $0, %xmm5, %xmm5                              #1137.4
        shufps    $0, %xmm2, %xmm2                              #1137.4
        shufps    $0, %xmm1, %xmm1                              #1137.4
        shufps    $0, %xmm0, %xmm0                              #1137.4
        pshufd    $0, %xmm10, %xmm12                            #1137.4
        pshufd    $0, %xmm11, %xmm10                            #1137.4
        movdqa    %xmm10, 2704(%rsp)                            #1137.4
        movdqa    %xmm12, 2672(%rsp)                            #1137.4
        movaps    %xmm0, 2656(%rsp)                             #1137.4
        movaps    %xmm6, 2688(%rsp)                             #1137.4
        movaps    %xmm7, 2720(%rsp)                             #1137.4
        movaps    %xmm1, 2640(%rsp)                             #1137.4
        movaps    %xmm2, 2624(%rsp)                             #1137.4
        movaps    %xmm5, 2608(%rsp)                             #1137.4
                                # LOE r13 r14 ebx r12d r15d xmm8 xmm9 xmm13 xmm14 xmm15
..B1.276:                       # Preds ..B1.617 ..B1.275       # Infreq
        movdqa    %xmm13, %xmm10                                #1137.4
        movaps    %xmm8, %xmm3                                  #1137.4
        psrad     $3, %xmm10                                    #1137.4
        movaps    %xmm14, %xmm0                                 #1137.4
        psrld     $28, %xmm10                                   #1137.4
        paddd     %xmm13, %xmm10                                #1137.4
        movdqa    2496(%rsp), %xmm11                            #1137.4
        psrad     $4, %xmm10                                    #1137.4
        pmuludq   %xmm10, %xmm11                                #1137.4
        psrlq     $32, %xmm10                                   #1137.4
        pmuludq   416(%rsp), %xmm10                             #1137.4
        pand      .L_2il0floatpacket.7(%rip), %xmm11            #1137.4
        psllq     $32, %xmm10                                   #1137.4
        por       %xmm10, %xmm11                                #1137.4
        cvtdq2ps  %xmm11, %xmm10                                #1137.4
        mulps     2592(%rsp), %xmm10                            #1137.4
        movaps    2720(%rsp), %xmm11                            #1137.4
        movaps    .L_2il0floatpacket.20(%rip), %xmm1            #1137.4
        subps     %xmm10, %xmm11                                #1137.4
        mulps     %xmm11, %xmm11                                #1137.4
        addps     2688(%rsp), %xmm11                            #1137.4
        rsqrtps   %xmm11, %xmm2                                 #1137.4
        andps     %xmm11, %xmm1                                 #1137.4
        cmpleps   %xmm1, %xmm3                                  #1137.4
        andps     %xmm2, %xmm3                                  #1137.4
        mulps     %xmm3, %xmm11                                 #1137.4
        mulps     %xmm11, %xmm3                                 #1137.4
        subps     .L_2il0floatpacket.17(%rip), %xmm3            #1137.4
        mulps     %xmm3, %xmm11                                 #1137.4
        mulps     .L_2il0floatpacket.18(%rip), %xmm11           #1137.4
        subps     2656(%rsp), %xmm11                            #1137.4
        mulps     %xmm11, %xmm0                                 #1137.4
        call      __svml_sincosf4                               #1137.4
                                # LOE r13 r14 ebx r12d r15d xmm0 xmm1 xmm8 xmm9 xmm10 xmm11 xmm13 xmm14 xmm15
..B1.618:                       # Preds ..B1.276                # Infreq
        movaps    %xmm11, %xmm4                                 #1137.4
        movaps    %xmm1, %xmm3                                  #1137.4
        mulps     2544(%rsp), %xmm4                             #1137.4
        movdqa    2704(%rsp), %xmm2                             #1137.4
        addps     %xmm15, %xmm4                                 #1137.4
        cvttps2dq %xmm4, %xmm5                                  #1137.4
        paddd     %xmm5, %xmm2                                  #1137.4
        paddd     2528(%rsp), %xmm5                             #1137.4
        pslld     $1, %xmm2                                     #1137.4
        cvtdq2ps  %xmm5, %xmm6                                  #1137.4
        movd      %xmm2, %rdx                                   #1137.4
        punpckhqdq %xmm2, %xmm2                                 #1137.4
        movd      %xmm2, %rsi                                   #1137.4
        movaps    2608(%rsp), %xmm12                            #1137.4
        mulps     %xmm9, %xmm6                                  #1137.4
        subps     %xmm10, %xmm12                                #1137.4
        movslq    %esi, %rcx                                    #1137.4
        subps     %xmm6, %xmm11                                 #1137.4
        mulps     %xmm12, %xmm12                                #1137.4
        mulps     2736(%rsp), %xmm11                            #1137.4
        addps     2624(%rsp), %xmm12                            #1137.4
        sarq      $32, %rsi                                     #1137.4
        movslq    %edx, %rax                                    #1137.4
        sarq      $32, %rdx                                     #1137.4
        movd      12(%r14,%rcx,4), %xmm4                        #1137.4
        movd      12(%r14,%rsi,4), %xmm1                        #1137.4
        movd      8(%r14,%rsi,4), %xmm6                         #1137.4
        movd      12(%r14,%rax,4), %xmm10                       #1137.4
        movd      8(%r14,%rax,4), %xmm2                         #1137.4
        movd      12(%r14,%rdx,4), %xmm7                        #1137.4
        movd      8(%r14,%rdx,4), %xmm5                         #1137.4
        punpcklqdq %xmm1, %xmm4                                 #1137.4
        movd      8(%r14,%rcx,4), %xmm1                         #1137.4
        punpcklqdq %xmm7, %xmm10                                #1137.4
        punpcklqdq %xmm5, %xmm2                                 #1137.4
        punpcklqdq %xmm6, %xmm1                                 #1137.4
        movd      4(%r14,%rcx,4), %xmm5                         #1137.4
        shufps    $136, %xmm4, %xmm10                           #1137.4
        shufps    $136, %xmm1, %xmm2                            #1137.4
        movd      4(%r14,%rax,4), %xmm1                         #1137.4
        movd      4(%r14,%rdx,4), %xmm7                         #1137.4
        movd      4(%r14,%rsi,4), %xmm4                         #1137.4
        punpcklqdq %xmm7, %xmm1                                 #1137.4
        punpcklqdq %xmm4, %xmm5                                 #1137.4
        shufps    $136, %xmm5, %xmm1                            #1137.4
        movd      (%r14,%rsi,4), %xmm7                          #1137.4
        subps     %xmm1, %xmm10                                 #1137.4
        mulps     %xmm11, %xmm10                                #1137.4
        movd      (%r14,%rdx,4), %xmm6                          #1137.4
        addps     %xmm10, %xmm1                                 #1137.4
        movd      (%r14,%rax,4), %xmm10                         #1137.4
        movd      (%r14,%rcx,4), %xmm4                          #1137.4
        punpcklqdq %xmm6, %xmm10                                #1137.4
        punpcklqdq %xmm7, %xmm4                                 #1137.4
        shufps    $136, %xmm4, %xmm10                           #1137.4
        subps     %xmm10, %xmm2                                 #1137.4
        mulps     %xmm11, %xmm2                                 #1137.4
        addps     %xmm2, %xmm10                                 #1137.4
        movaps    %xmm10, %xmm11                                #1137.4
        mulps     %xmm3, %xmm11                                 #1137.4
        mulps     %xmm0, %xmm10                                 #1137.4
        mulps     %xmm1, %xmm3                                  #1137.4
        mulps     %xmm1, %xmm0                                  #1137.4
        addps     %xmm3, %xmm10                                 #1137.4
        rsqrtps   %xmm12, %xmm3                                 #1137.4
        subps     %xmm0, %xmm11                                 #1137.4
        addps     1472(%rsp,%r13,4), %xmm10                     #1137.4
        addps     448(%rsp,%r13,4), %xmm11                      #1137.4
        movaps    .L_2il0floatpacket.20(%rip), %xmm0            #1137.4
        movaps    %xmm8, %xmm1                                  #1137.4
        andps     %xmm12, %xmm0                                 #1137.4
        cmpleps   %xmm0, %xmm1                                  #1137.4
        andps     %xmm3, %xmm1                                  #1137.4
        movaps    %xmm14, %xmm0                                 #1137.4
        mulps     %xmm1, %xmm12                                 #1137.4
        mulps     %xmm12, %xmm1                                 #1137.4
        subps     .L_2il0floatpacket.17(%rip), %xmm1            #1137.4
        mulps     %xmm1, %xmm12                                 #1137.4
        mulps     .L_2il0floatpacket.18(%rip), %xmm12           #1137.4
        subps     2640(%rsp), %xmm12                            #1137.4
        mulps     %xmm12, %xmm0                                 #1137.4
        call      __svml_sincosf4                               #1137.4
                                # LOE r13 r14 ebx r12d r15d xmm0 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.617:                       # Preds ..B1.618                # Infreq
        movaps    %xmm12, %xmm6                                 #1137.4
        movaps    %xmm0, %xmm5                                  #1137.4
        mulps     2544(%rsp), %xmm6                             #1137.4
        movaps    %xmm1, %xmm4                                  #1137.4
        movdqa    2672(%rsp), %xmm2                             #1137.4
        addps     %xmm15, %xmm6                                 #1137.4
        cvttps2dq %xmm6, %xmm7                                  #1137.4
        paddd     %xmm7, %xmm2                                  #1137.4
        paddd     2528(%rsp), %xmm7                             #1137.4
        pslld     $1, %xmm2                                     #1137.4
        cvtdq2ps  %xmm7, %xmm0                                  #1137.4
        movd      %xmm2, %rdx                                   #1137.4
        punpckhqdq %xmm2, %xmm2                                 #1137.4
        movd      %xmm2, %rsi                                   #1137.4
        paddd     2512(%rsp), %xmm13                            #1137.4
        mulps     %xmm9, %xmm0                                  #1137.4
        movslq    %edx, %rax                                    #1137.4
        subps     %xmm0, %xmm12                                 #1137.4
        sarq      $32, %rdx                                     #1137.4
        movslq    %esi, %rcx                                    #1137.4
        sarq      $32, %rsi                                     #1137.4
        movd      12(%r14,%rax,4), %xmm3                        #1137.4
        movd      12(%r14,%rdx,4), %xmm1                        #1137.4
        movd      12(%r14,%rcx,4), %xmm0                        #1137.4
        movd      12(%r14,%rsi,4), %xmm6                        #1137.4
        punpcklqdq %xmm1, %xmm3                                 #1137.4
        punpcklqdq %xmm6, %xmm0                                 #1137.4
        shufps    $136, %xmm0, %xmm3                            #1137.4
        movd      8(%r14,%rsi,4), %xmm0                         #1137.4
        movd      8(%r14,%rax,4), %xmm2                         #1137.4
        movd      8(%r14,%rdx,4), %xmm7                         #1137.4
        movd      8(%r14,%rcx,4), %xmm1                         #1137.4
        punpcklqdq %xmm7, %xmm2                                 #1137.4
        punpcklqdq %xmm0, %xmm1                                 #1137.4
        shufps    $136, %xmm1, %xmm2                            #1137.4
        movd      4(%r14,%rcx,4), %xmm1                         #1137.4
        movd      4(%r14,%rax,4), %xmm0                         #1137.4
        movd      4(%r14,%rdx,4), %xmm6                         #1137.4
        movd      4(%r14,%rsi,4), %xmm7                         #1137.4
        punpcklqdq %xmm6, %xmm0                                 #1137.4
        punpcklqdq %xmm7, %xmm1                                 #1137.4
        shufps    $136, %xmm1, %xmm0                            #1137.4
        mulps     2736(%rsp), %xmm12                            #1137.4
        subps     %xmm0, %xmm3                                  #1137.4
        mulps     %xmm12, %xmm3                                 #1137.4
        movd      (%r14,%rax,4), %xmm1                          #1137.4
        addps     %xmm3, %xmm0                                  #1137.4
        movd      (%r14,%rdx,4), %xmm3                          #1137.4
        punpcklqdq %xmm3, %xmm1                                 #1137.4
        movd      (%r14,%rcx,4), %xmm6                          #1137.4
        movd      (%r14,%rsi,4), %xmm3                          #1137.4
        punpcklqdq %xmm3, %xmm6                                 #1137.4
        shufps    $136, %xmm6, %xmm1                            #1137.4
        subps     %xmm1, %xmm2                                  #1137.4
        mulps     %xmm12, %xmm2                                 #1137.4
        addps     %xmm2, %xmm1                                  #1137.4
        movaps    %xmm1, %xmm12                                 #1137.4
        mulps     %xmm4, %xmm12                                 #1137.4
        mulps     %xmm5, %xmm1                                  #1137.4
        mulps     %xmm0, %xmm5                                  #1137.4
        mulps     %xmm0, %xmm4                                  #1137.4
        subps     %xmm5, %xmm12                                 #1137.4
        addps     %xmm4, %xmm1                                  #1137.4
        addps     %xmm12, %xmm11                                #1137.4
        addps     %xmm1, %xmm10                                 #1137.4
        movaps    %xmm11, 448(%rsp,%r13,4)                      #1137.4
        movaps    %xmm10, 1472(%rsp,%r13,4)                     #1137.4
        addq      $4, %r13                                      #1137.4
        cmpq      $256, %r13                                    #1137.4
        jb        ..B1.276      # Prob 99%                      #1137.4
                                # LOE r13 r14 ebx r12d r15d xmm8 xmm9 xmm13 xmm14 xmm15
..B1.277:                       # Preds ..B1.617                # Infreq
        incl      %ebx                                          #1137.4
        xorl      %edi, %edi                                    #
        movl      296(%rsp), %edx                               #
        lea       (%r12,%rdx,2), %r12d                          #1137.4
        movss     408(%rsp), %xmm3                              #
        cmpl      %r15d, %ebx                                   #1137.4
        movq      368(%rsp), %rax                               #
        movdqa    .L_2il0floatpacket.6(%rip), %xmm4             #
        jb        ..B1.275      # Prob 81%                      #1137.4
                                # LOE rax rdx rdi r14 eax edx ebx r12d r15d al dl ah dh xmm3 xmm4 xmm8 xmm9 xmm14 xmm15 ymm3 zmm3
..B1.278:                       # Preds ..B1.277                # Infreq
        movdqa    .L_2il0floatpacket.7(%rip), %xmm14            #
        lea       1(%rbx,%rbx), %esi                            #1137.4
        movaps    352(%rsp), %xmm0                              #
        movss     400(%rsp), %xmm2                              #
        movss     392(%rsp), %xmm1                              #
        movl      288(%rsp), %r14d                              #
        movl      280(%rsp), %r13d                              #
        movl      272(%rsp), %r15d                              #
        movl      384(%rsp), %ecx                               #
        movl      376(%rsp), %r8d                               #
        movq      344(%rsp), %rdi                               #
                                # LOE rax rdi edx ecx esi r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B1.279:                       # Preds ..B1.278 ..B1.273       # Infreq
        movl      %r8d, %ebx                                    #1137.4
        subl      %esi, %ebx                                    #1137.4
        incl      %ebx                                          #1137.4
        je        ..B1.283      # Prob 9%                       #1137.4
                                # LOE rax rdi edx ecx esi r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B1.280:                       # Preds ..B1.279                # Infreq
        rcpps     %xmm0, %xmm10                                 #1137.4
        movaps    %xmm0, %xmm8                                  #1137.4
        lea       (,%rsi,4), %r9d                               #1137.4
        mulps     %xmm10, %xmm8                                 #1137.4
        movaps    %xmm9, %xmm7                                  #1137.4
        imull     %edx, %esi                                    #1137.4
        movdqa    %xmm4, %xmm13                                 #1137.4
        mulps     %xmm10, %xmm8                                 #1137.4
        addps     %xmm10, %xmm10                                #1137.4
        movslq    %r9d, %r9                                     #1137.4
        subps     %xmm8, %xmm10                                 #1137.4
        rcpps     %xmm9, %xmm8                                  #1137.4
        movss     -12(%rax,%r9,4), %xmm6                        #1137.4
        xorl      %ebx, %ebx                                    #1137.4
        movss     -8(%rax,%r9,4), %xmm5                         #1137.4
        addl      %r15d, %esi                                   #1137.4
        mulss     %xmm6, %xmm6                                  #1137.4
        mulss     %xmm5, %xmm5                                  #1137.4
        mulps     %xmm8, %xmm7                                  #1137.4
        addss     %xmm5, %xmm6                                  #1137.4
        mulps     %xmm8, %xmm7                                  #1137.4
        addps     %xmm8, %xmm8                                  #1137.4
        movss     -16(%rax,%r9,4), %xmm11                       #1137.4
        subps     %xmm7, %xmm8                                  #1137.4
        subss     %xmm3, %xmm11                                 #1137.4
        movss     -4(%rax,%r9,4), %xmm5                         #1137.4
        movd      %esi, %xmm3                                   #1137.4
        shufps    $0, %xmm6, %xmm6                              #1137.4
        shufps    $0, %xmm5, %xmm5                              #1137.4
        pshufd    $0, %xmm3, %xmm3                              #1137.4
        shufps    $0, %xmm11, %xmm11                            #1137.4
        movaps    .L_2il0floatpacket.20(%rip), %xmm12           #1137.4
        movdqa    %xmm3, 2784(%rsp)                             #1137.4
        movaps    %xmm5, 2768(%rsp)                             #1137.4
        movaps    %xmm6, 2800(%rsp)                             #1137.4
        movaps    %xmm9, 2752(%rsp)                             #1137.4
        movaps    %xmm0, 352(%rsp)                              #1137.4
        movss     %xmm2, 400(%rsp)                              #1137.4
        movss     %xmm1, 392(%rsp)                              #1137.4
        movl      %ecx, 384(%rsp)                               #1137.4
        movq      %rax, 368(%rsp)                               #1137.4
        movl      %edx, 296(%rsp)                               #1137.4
        movl      %r8d, 376(%rsp)                               #1137.4
        movdqa    2496(%rsp), %xmm15                            #1137.4
        movq      432(%rsp), %r12                               #1137.4
                                # LOE rbx r12 r13d r14d r15d xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.281:                       # Preds ..B1.619 ..B1.280       # Infreq
        movdqa    %xmm13, %xmm9                                 #1137.4
        movdqa    %xmm15, %xmm1                                 #1137.4
        psrad     $3, %xmm9                                     #1137.4
        movaps    %xmm12, %xmm3                                 #1137.4
        psrld     $28, %xmm9                                    #1137.4
        paddd     %xmm13, %xmm9                                 #1137.4
        psrad     $4, %xmm9                                     #1137.4
        pmuludq   %xmm9, %xmm1                                  #1137.4
        psrlq     $32, %xmm9                                    #1137.4
        pmuludq   416(%rsp), %xmm9                              #1137.4
        pand      %xmm14, %xmm1                                 #1137.4
        psllq     $32, %xmm9                                    #1137.4
        por       %xmm9, %xmm1                                  #1137.4
        movaps    %xmm11, %xmm9                                 #1137.4
        cvtdq2ps  %xmm1, %xmm2                                  #1137.4
        mulps     %xmm10, %xmm2                                 #1137.4
        movaps    .L_2il0floatpacket.19(%rip), %xmm5            #1137.4
        subps     %xmm2, %xmm9                                  #1137.4
        mulps     %xmm9, %xmm9                                  #1137.4
        movaps    2576(%rsp), %xmm0                             #1137.4
        addps     2800(%rsp), %xmm9                             #1137.4
        rsqrtps   %xmm9, %xmm4                                  #1137.4
        andps     %xmm9, %xmm3                                  #1137.4
        cmpleps   %xmm3, %xmm5                                  #1137.4
        andps     %xmm4, %xmm5                                  #1137.4
        mulps     %xmm5, %xmm9                                  #1137.4
        mulps     %xmm9, %xmm5                                  #1137.4
        subps     .L_2il0floatpacket.17(%rip), %xmm5            #1137.4
        mulps     %xmm5, %xmm9                                  #1137.4
        mulps     .L_2il0floatpacket.18(%rip), %xmm9            #1137.4
        subps     2768(%rsp), %xmm9                             #1137.4
        mulps     %xmm9, %xmm0                                  #1137.4
        call      __svml_sincosf4                               #1137.4
                                # LOE rbx r12 r13d r14d r15d xmm0 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.619:                       # Preds ..B1.281                # Infreq
        movaps    %xmm9, %xmm6                                  #1137.4
        movaps    %xmm0, %xmm5                                  #1137.4
        mulps     2544(%rsp), %xmm6                             #1137.4
        movaps    %xmm1, %xmm4                                  #1137.4
        movdqa    2784(%rsp), %xmm2                             #1137.4
        paddd     2512(%rsp), %xmm13                            #1137.4
        addps     2560(%rsp), %xmm6                             #1137.4
        cvttps2dq %xmm6, %xmm7                                  #1137.4
        paddd     %xmm7, %xmm2                                  #1137.4
        paddd     2528(%rsp), %xmm7                             #1137.4
        pslld     $1, %xmm2                                     #1137.4
        cvtdq2ps  %xmm7, %xmm0                                  #1137.4
        movd      %xmm2, %rcx                                   #1137.4
        punpckhqdq %xmm2, %xmm2                                 #1137.4
        movd      %xmm2, %r8                                    #1137.4
        mulps     2752(%rsp), %xmm0                             #1137.4
        movslq    %ecx, %rax                                    #1137.4
        subps     %xmm0, %xmm9                                  #1137.4
        sarq      $32, %rcx                                     #1137.4
        movslq    %r8d, %rdi                                    #1137.4
        sarq      $32, %r8                                      #1137.4
        movd      12(%r12,%rax,4), %xmm3                        #1137.4
        movd      12(%r12,%rcx,4), %xmm1                        #1137.4
        movd      12(%r12,%rdi,4), %xmm0                        #1137.4
        movd      12(%r12,%r8,4), %xmm6                         #1137.4
        punpcklqdq %xmm1, %xmm3                                 #1137.4
        punpcklqdq %xmm6, %xmm0                                 #1137.4
        shufps    $136, %xmm0, %xmm3                            #1137.4
        movd      8(%r12,%r8,4), %xmm0                          #1137.4
        movd      8(%r12,%rax,4), %xmm2                         #1137.4
        movd      8(%r12,%rcx,4), %xmm7                         #1137.4
        movd      8(%r12,%rdi,4), %xmm1                         #1137.4
        punpcklqdq %xmm7, %xmm2                                 #1137.4
        punpcklqdq %xmm0, %xmm1                                 #1137.4
        shufps    $136, %xmm1, %xmm2                            #1137.4
        movd      4(%r12,%rdi,4), %xmm1                         #1137.4
        movd      4(%r12,%rax,4), %xmm0                         #1137.4
        movd      4(%r12,%rcx,4), %xmm6                         #1137.4
        movd      4(%r12,%r8,4), %xmm7                          #1137.4
        punpcklqdq %xmm6, %xmm0                                 #1137.4
        punpcklqdq %xmm7, %xmm1                                 #1137.4
        shufps    $136, %xmm1, %xmm0                            #1137.4
        mulps     %xmm8, %xmm9                                  #1137.4
        subps     %xmm0, %xmm3                                  #1137.4
        mulps     %xmm9, %xmm3                                  #1137.4
        movd      (%r12,%rax,4), %xmm1                          #1137.4
        addps     %xmm3, %xmm0                                  #1137.4
        movd      (%r12,%rcx,4), %xmm3                          #1137.4
        punpcklqdq %xmm3, %xmm1                                 #1137.4
        movd      (%r12,%rdi,4), %xmm6                          #1137.4
        movd      (%r12,%r8,4), %xmm3                           #1137.4
        punpcklqdq %xmm3, %xmm6                                 #1137.4
        shufps    $136, %xmm6, %xmm1                            #1137.4
        subps     %xmm1, %xmm2                                  #1137.4
        mulps     %xmm9, %xmm2                                  #1137.4
        addps     %xmm2, %xmm1                                  #1137.4
        movaps    %xmm1, %xmm9                                  #1137.4
        mulps     %xmm4, %xmm9                                  #1137.4
        mulps     %xmm5, %xmm1                                  #1137.4
        mulps     %xmm0, %xmm5                                  #1137.4
        mulps     %xmm0, %xmm4                                  #1137.4
        subps     %xmm5, %xmm9                                  #1137.4
        addps     %xmm4, %xmm1                                  #1137.4
        addps     448(%rsp,%rbx,4), %xmm9                       #1137.4
        addps     1472(%rsp,%rbx,4), %xmm1                      #1137.4
        movaps    %xmm9, 448(%rsp,%rbx,4)                       #1137.4
        movaps    %xmm1, 1472(%rsp,%rbx,4)                      #1137.4
        addq      $4, %rbx                                      #1137.4
        cmpq      $256, %rbx                                    #1137.4
        jb        ..B1.281      # Prob 99%                      #1137.4
                                # LOE rbx r12 r13d r14d r15d xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.282:                       # Preds ..B1.619                # Infreq
        movdqa    .L_2il0floatpacket.6(%rip), %xmm4             #
        movaps    2752(%rsp), %xmm9                             #
        movaps    352(%rsp), %xmm0                              #
        movss     400(%rsp), %xmm2                              #
        movss     392(%rsp), %xmm1                              #
        movl      384(%rsp), %ecx                               #
        movq      368(%rsp), %rax                               #
        movl      296(%rsp), %edx                               #
        movl      376(%rsp), %r8d                               #
        movq      344(%rsp), %rdi                               #
                                # LOE rax rdi edx ecx r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.283:                       # Preds ..B1.272 ..B1.282 ..B1.279 # Infreq
        movslq    %r14d, %r14                                   #1137.4
        xorb      %r11b, %r11b                                  #1137.4
        lea       (%rdi,%r14,4), %r10                           #1137.4
        movq      %r10, %rbx                                    #1137.4
        andq      $15, %rbx                                     #1137.4
        movl      %ebx, %r9d                                    #1137.4
        testl     %r9d, %r9d                                    #1137.4
        je        ..B1.289      # Prob 50%                      #1137.4
                                # LOE rax rbx rdi r10 edx ecx r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.284:                       # Preds ..B1.283                # Infreq
        testl     $3, %r9d                                      #1137.4
        jne       ..B1.444      # Prob 10%                      #1137.4
                                # LOE rax rdi r10 edx ecx r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.285:                       # Preds ..B1.284                # Infreq
        negl      %r9d                                          #1137.4
        xorl      %esi, %esi                                    #1137.4
        addl      $16, %r9d                                     #1137.4
        shrl      $2, %r9d                                      #1137.4
        movl      %r9d, %ebx                                    #1137.4
                                # LOE rax rbx rsi rdi r10 edx ecx r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.286:                       # Preds ..B1.286 ..B1.285       # Infreq
        movss     (%r10,%rsi,4), %xmm3                          #1137.4
        addss     448(%rsp,%rsi,4), %xmm3                       #1137.4
        addss     1472(%rsp,%rsi,4), %xmm3                      #1137.4
        movss     %xmm3, (%r10,%rsi,4)                          #1137.4
        incq      %rsi                                          #1137.4
        cmpq      %rbx, %rsi                                    #1137.4
        jb        ..B1.286      # Prob 99%                      #1137.4
                                # LOE rax rbx rsi rdi r10 edx ecx r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.289:                       # Preds ..B1.283 ..B1.286       # Infreq
        negl      %r9d                                          #1137.4
        lea       1472(%rsp,%rbx,4), %r12                       #1137.4
        andl      $7, %r9d                                      #1137.4
        negl      %r9d                                          #1137.4
        testq     $15, %r12                                     #1137.4
        lea       256(%r9), %esi                                #1137.4
        je        ..B1.293      # Prob 60%                      #1137.4
                                # LOE rax rbx rsi rdi r10 edx ecx esi r8d r9d r13d r14d r15d sil r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.290:                       # Preds ..B1.289                # Infreq
        movq      %rsi, %r12                                    #
        .align    16,0x90
                                # LOE rax rbx rdi r10 r12 edx ecx esi r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.291:                       # Preds ..B1.291 ..B1.290       # Infreq
        movups    448(%rsp,%rbx,4), %xmm5                       #1137.4
        movups    464(%rsp,%rbx,4), %xmm7                       #1137.4
        movups    1472(%rsp,%rbx,4), %xmm3                      #1137.4
        movups    1488(%rsp,%rbx,4), %xmm6                      #1137.4
        addps     (%r10,%rbx,4), %xmm5                          #1137.4
        addps     16(%r10,%rbx,4), %xmm7                        #1137.4
        addps     %xmm3, %xmm5                                  #1137.4
        addps     %xmm6, %xmm7                                  #1137.4
        movaps    %xmm5, (%r10,%rbx,4)                          #1137.4
        movaps    %xmm7, 16(%r10,%rbx,4)                        #1137.4
        addq      $8, %rbx                                      #1137.4
        cmpq      %r12, %rbx                                    #1137.4
        jb        ..B1.291      # Prob 99%                      #1137.4
        jmp       ..B1.295      # Prob 100%                     #1137.4
                                # LOE rax rbx rdi r10 r12 edx ecx esi r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.293:                       # Preds ..B1.289                # Infreq
        movq      %rsi, %r12                                    #
                                # LOE rax rbx rdi r10 r12 edx ecx esi r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.294:                       # Preds ..B1.294 ..B1.293       # Infreq
        movaps    448(%rsp,%rbx,4), %xmm3                       #1137.4
        movaps    464(%rsp,%rbx,4), %xmm5                       #1137.4
        addps     (%r10,%rbx,4), %xmm3                          #1137.4
        addps     16(%r10,%rbx,4), %xmm5                        #1137.4
        addps     1472(%rsp,%rbx,4), %xmm3                      #1137.4
        addps     1488(%rsp,%rbx,4), %xmm5                      #1137.4
        movaps    %xmm3, (%r10,%rbx,4)                          #1137.4
        movaps    %xmm5, 16(%r10,%rbx,4)                        #1137.4
        addq      $8, %rbx                                      #1137.4
        cmpq      %r12, %rbx                                    #1137.4
        jb        ..B1.294      # Prob 99%                      #1137.4
                                # LOE rax rbx rdi r10 r12 edx ecx esi r8d r9d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.295:                       # Preds ..B1.291 ..B1.294       # Infreq
        addl      $257, %r9d                                    #1137.4
        cmpl      $256, %r9d                                    #1137.4
        ja        ..B1.306      # Prob 50%                      #1137.4
                                # LOE rax rdi edx ecx esi r8d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.296:                       # Preds ..B1.295 ..B1.444       # Infreq
        movl      %esi, %ebx                                    #1137.4
        negl      %ebx                                          #1137.4
        addl      $256, %ebx                                    #1137.4
        cmpb      $1, %r11b                                     #1137.4
        jne       ..B1.298      # Prob 50%                      #1137.4
                                # LOE rax rbx rdi edx ecx esi r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.297:                       # Preds ..B1.298 ..B1.296       # Infreq
        xorl      %r9d, %r9d                                    #1137.4
        jmp       ..B1.302      # Prob 100%                     #1137.4
                                # LOE rax rbx rdi edx ecx esi r8d r9d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.298:                       # Preds ..B1.296                # Infreq
        cmpl      $4, %ebx                                      #1137.4
        jb        ..B1.297      # Prob 10%                      #1137.4
                                # LOE rax rbx rdi edx ecx esi r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.299:                       # Preds ..B1.298                # Infreq
        movl      %ebx, %r9d                                    #1137.4
        lea       (%rsi,%r14), %r10d                            #1137.4
        movslq    %r10d, %r10                                   #1137.4
        xorl      %r11d, %r11d                                  #1137.4
        andl      $-4, %r9d                                     #1137.4
        lea       (%rdi,%r10,4), %r10                           #1137.4
                                # LOE rax rbx rdi r10 edx ecx esi r8d r9d r11d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.300:                       # Preds ..B1.300 ..B1.299       # Infreq
        lea       (%rsi,%r11), %r12d                            #1137.4
        addl      $4, %r11d                                     #1137.4
        movslq    %r12d, %r12                                   #1137.4
        movups    448(%rsp,%r12,4), %xmm5                       #1137.4
        movups    1472(%rsp,%r12,4), %xmm3                      #1137.4
        addps     (%r10), %xmm5                                 #1137.4
        addps     %xmm3, %xmm5                                  #1137.4
        movaps    %xmm5, (%r10)                                 #1137.4
        addq      $16, %r10                                     #1137.4
        cmpl      %r9d, %r11d                                   #1137.4
        jb        ..B1.300      # Prob 99%                      #1137.4
                                # LOE rax rbx rdi r10 edx ecx esi r8d r9d r11d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.302:                       # Preds ..B1.300 ..B1.297       # Infreq
        movslq    %r9d, %r9                                     #1137.4
        cmpq      %rbx, %r9                                     #1137.4
        jae       ..B1.306      # Prob 0%                       #1137.4
                                # LOE rax rbx rdi r9 edx ecx esi r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.303:                       # Preds ..B1.302                # Infreq
        lea       (%rsi,%r14), %r10d                            #1137.4
        movslq    %r10d, %r10                                   #1137.4
        lea       (%rdi,%r10,4), %r11                           #1137.4
        lea       (%r11,%r9,4), %r10                            #1137.4
                                # LOE rax rbx rdi r9 r10 edx ecx esi r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.304:                       # Preds ..B1.304 ..B1.303       # Infreq
        movl      %r9d, %r11d                                   #1137.4
        incq      %r9                                           #1137.4
        addl      %esi, %r11d                                   #1137.4
        movslq    %r11d, %r11                                   #1137.4
        movss     (%r10), %xmm3                                 #1137.4
        addss     448(%rsp,%r11,4), %xmm3                       #1137.4
        addss     1472(%rsp,%r11,4), %xmm3                      #1137.4
        movss     %xmm3, (%r10)                                 #1137.4
        addq      $4, %r10                                      #1137.4
        cmpq      %rbx, %r9                                     #1137.4
        jb        ..B1.304      # Prob 99%                      #1137.4
                                # LOE rax rbx rdi r9 r10 edx ecx esi r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.306:                       # Preds ..B1.304 ..B1.295 ..B1.302 # Infreq
        incl      %ecx                                          #1137.4
        addl      $256, %r14d                                   #1137.4
        addl      320(%rsp), %r13d                              #1137.4
        cmpl      $512, %ecx                                    #1137.4
        jb        ..B1.272      # Prob 99%                      #1137.4
                                # LOE rax rdi edx ecx r8d r13d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.307:                       # Preds ..B1.306                # Infreq
        movl      264(%rsp), %r14d                              #
        movq      304(%rsp), %rbx                               #
#       clock()
        call      clock                                         #1137.4
                                # LOE rbx r14 ebx r14d bl bh r14b
..B1.308:                       # Preds ..B1.307                # Infreq
..___tag_value_main.65:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1137.4
..___tag_value_main.66:
                                # LOE rbx r14 ebx r14d bl bh r14b xmm0
..B1.309:                       # Preds ..B1.308                # Infreq
        movl      $.L_2__STRING.51, %edi                        #1137.4
        movl      %r14d, %esi                                   #1137.4
        movl      $1, %eax                                      #1137.4
        subsd     256(%rsp), %xmm0                              #1137.4
..___tag_value_main.67:
#       printf(const char *, ...)
        call      printf                                        #1137.4
..___tag_value_main.68:
                                # LOE rbx ebx bl bh
..B1.310:                       # Preds ..B1.615 ..B1.309       # Infreq
..___tag_value_main.69:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1143.12
..___tag_value_main.70:
                                # LOE rbx
..B1.311:                       # Preds ..B1.310                # Infreq
..___tag_value_main.71:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1158.13
..___tag_value_main.72:
                                # LOE rbx xmm0
..B1.621:                       # Preds ..B1.311                # Infreq
        movsd     %xmm0, 256(%rsp)                              #1158.13
                                # LOE rbx
..B1.312:                       # Preds ..B1.621                # Infreq
#       clock()
        call      clock                                         #1159.13
                                # LOE rbx
..B1.313:                       # Preds ..B1.312                # Infreq
        movsd     256(%rsp), %xmm0                              #1163.4
        movl      $.L_2__STRING.41, %edi                        #1163.4
        movl      $1, %eax                                      #1163.4
        subsd     312(%rsp), %xmm0                              #1163.4
..___tag_value_main.73:
#       printf(const char *, ...)
        call      printf                                        #1163.4
..___tag_value_main.74:
                                # LOE rbx
..B1.314:                       # Preds ..B1.313                # Infreq
        movl      (%rbx), %edx                                  #1166.2
        shll      $8, %edx                                      #1166.2
        movslq    %edx, %rdx                                    #1166.2
        shlq      $2, %rdx                                      #1166.2
        movq      im_final_host_R(%rip), %rdi                   #1166.2
        movq      336(%rsp), %rsi                               #1166.2
        call      _intel_fast_memcpy                            #1166.2
                                # LOE rbx
..B1.315:                       # Preds ..B1.314                # Infreq
        movl      (%rbx), %edx                                  #1169.2
        shll      $8, %edx                                      #1169.2
        movslq    %edx, %rdx                                    #1169.2
        shlq      $2, %rdx                                      #1169.2
        movq      im_final_host_Q(%rip), %rdi                   #1169.2
        movq      344(%rsp), %rsi                               #1169.2
        call      _intel_fast_memcpy                            #1169.2
                                # LOE
..B1.316:                       # Preds ..B1.315                # Infreq
        movl      $.L_2__STRING.42, %edi                        #1196.3
        xorl      %esi, %esi                                    #1196.3
        xorl      %eax, %eax                                    #1196.3
..___tag_value_main.75:
#       printf(const char *, ...)
        call      printf                                        #1196.3
..___tag_value_main.76:
                                # LOE
..B1.317:                       # Preds ..B1.316                # Infreq
        movl      sar_data_Nx(%rip), %r14d                      #1200.60
        movslq    %r14d, %r13                                   #1200.60
        lea       (,%r13,8), %rdi                               #1200.35
#       malloc(size_t)
        call      malloc                                        #1200.35
                                # LOE rax r13 r14d
..B1.622:                       # Preds ..B1.317                # Infreq
        movq      %rax, %rbx                                    #1200.35
                                # LOE rbx r13 r14d
..B1.318:                       # Preds ..B1.622                # Infreq
        xorl      %r12d, %r12d                                  #1201.14
        testl     %r14d, %r14d                                  #1201.23
        jle       ..B1.323      # Prob 10%                      #1201.23
                                # LOE rbx r12 r13 r14d
..B1.319:                       # Preds ..B1.318                # Infreq
        lea       (,%r13,4), %r15                               #1203.22
                                # LOE rbx r12 r13 r15 r14d
..B1.320:                       # Preds ..B1.321 ..B1.319       # Infreq
        movq      %r15, %rdi                                    #1202.38
#       malloc(size_t)
        call      malloc                                        #1202.38
                                # LOE rax rbx r12 r13 r15 r14d
..B1.321:                       # Preds ..B1.320                # Infreq
        movq      %rax, (%rbx,%r12,8)                           #1202.4
        incq      %r12                                          #1201.36
        cmpq      %r13, %r12                                    #1201.23
        jl        ..B1.320      # Prob 82%                      #1201.23
                                # LOE rbx r12 r13 r15 r14d
..B1.323:                       # Preds ..B1.321 ..B1.318       # Infreq
#       clock()
        call      clock                                         #1210.17
                                # LOE rax rbx r13 r14d
..B1.624:                       # Preds ..B1.323                # Infreq
        movq      %rax, %r15                                    #1210.17
                                # LOE rbx r13 r15 r14d
..B1.324:                       # Preds ..B1.624                # Infreq
#       clock()
        call      clock                                         #1211.17
                                # LOE rax rbx r13 r15 r14d
..B1.625:                       # Preds ..B1.324                # Infreq
        movq      %rax, %r12                                    #1211.17
                                # LOE rbx r12 r13 r15 r14d
..B1.325:                       # Preds ..B1.625                # Infreq
        movl      sar_data_Ny(%rip), %eax                       #1214.23
        movl      %eax, %r10d                                   #1214.35
        sarl      $3, %r10d                                     #1214.35
        shrl      $28, %r10d                                    #1214.35
        addl      %eax, %r10d                                   #1214.35
        sarl      $4, %r10d                                     #1214.35
        testl     %r10d, %r10d                                  #1214.35
        jle       ..B1.334      # Prob 0%                       #1214.35
                                # LOE rbx r12 r13 r15 r10d r14d
..B1.326:                       # Preds ..B1.325                # Infreq
        movl      %r14d, %eax                                   #1217.32
        xorl      %r9d, %r9d                                    #1217.4
        sarl      $3, %eax                                      #1217.32
        xorl      %edi, %edi                                    #1218.15
        shrl      $28, %eax                                     #1217.32
        addl      %r14d, %eax                                   #1217.32
        sarl      $4, %eax                                      #1217.32
        movq      im_final_host_R(%rip), %rdx                   #1224.15
        testl     %eax, %eax                                    #1217.32
        movq      im_final_host_Q(%rip), %rcx                   #1225.17
        jle       ..B1.334      # Prob 10%                      #1217.32
                                # LOE rdx rcx rbx rdi r12 r13 r15 r9d r10d r14d
..B1.327:                       # Preds ..B1.326                # Infreq
        movl      %r14d, %r8d                                   #1217.32
        movl      %r14d, %eax                                   #1224.11
        sarl      $3, %r8d                                      #1217.32
        xorl      %r11d, %r11d                                  #1224.15
        shll      $4, %eax                                      #1224.11
        shrl      $28, %r8d                                     #1217.32
        movl      %eax, %esi                                    #1224.15
        addl      %r14d, %r8d                                   #1217.32
        negl      %esi                                          #1224.15
        sarl      $4, %r8d                                      #1217.32
        addl      %eax, %esi                                    #1224.15
        movl      %r10d, 272(%rsp)                              #1224.15
        movq      %r12, 256(%rsp)                               #1224.15
        movq      %r15, 264(%rsp)                               #1224.15
        xorl      %r15d, %r15d                                  #1224.15
        movq      %r13, 296(%rsp)                               #1224.15
        movl      %r14d, 288(%rsp)                              #1224.15
                                # LOE rdx rcx rbx rdi r11 eax esi r8d r9d r15d
..B1.328:                       # Preds ..B1.332 ..B1.327       # Infreq
        movl      %r15d, %r13d                                  #1214.3
        movq      %r11, %r12                                    #1217.9
        movl      %r8d, 312(%rsp)                               #1223.9
        movl      %r13d, %r14d                                  #1217.9
        movq      %rdi, 304(%rsp)                               #1223.9
        lea       (%rbx,%rdi,8), %r10                           #1223.9
        movl      %r9d, 280(%rsp)                               #1223.9
        movq      %rbx, 328(%rsp)                               #1223.9
        movl      272(%rsp), %r8d                               #1223.9
                                # LOE rdx rcx r10 r11 r12 eax esi r8d r13d r14d
..B1.329:                       # Preds ..B1.331 ..B1.328       # Infreq
        movq      %r11, %r9                                     #1219.6
        lea       (%rsi,%r14), %ebx                             #1224.15
        movslq    %ebx, %rbx                                    #1224.15
        lea       (%rdx,%rbx,4), %rdi                           #1224.15
        lea       (%rcx,%rbx,4), %rbx                           #1225.17
                                # LOE rdx rcx rbx rdi r9 r10 r11 r12 eax esi r8d r13d r14d
..B1.330:                       # Preds ..B1.330 ..B1.329       # Infreq
        movss     64(%rdi,%r9,4), %xmm0                         #1224.15
        movss     (%rdi,%r9,4), %xmm1                           #1224.15
        movss     64(%rbx,%r9,4), %xmm2                         #1225.17
        movss     (%rbx,%r9,4), %xmm3                           #1225.17
        unpcklps  %xmm0, %xmm1                                  #1224.15
        unpcklps  %xmm2, %xmm3                                  #1225.17
        cvtps2pd  %xmm1, %xmm5                                  #1224.15
        cvtps2pd  %xmm3, %xmm4                                  #1225.17
        mulpd     %xmm5, %xmm5                                  #1224.11
        mulpd     %xmm4, %xmm4                                  #1225.13
        addpd     %xmm4, %xmm5                                  #1225.13
        sqrtpd    %xmm5, %xmm6                                  #1223.85
        cvtpd2ps  %xmm6, %xmm7                                  #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        movlpd    %xmm7, (%r15,%r12)                            #1223.9
        movss     192(%rdi,%r9,4), %xmm8                        #1224.15
        movss     128(%rdi,%r9,4), %xmm9                        #1224.15
        movss     192(%rbx,%r9,4), %xmm10                       #1225.17
        movss     128(%rbx,%r9,4), %xmm11                       #1225.17
        unpcklps  %xmm8, %xmm9                                  #1224.15
        unpcklps  %xmm10, %xmm11                                #1225.17
        cvtps2pd  %xmm9, %xmm13                                 #1224.15
        cvtps2pd  %xmm11, %xmm12                                #1225.17
        mulpd     %xmm13, %xmm13                                #1224.11
        mulpd     %xmm12, %xmm12                                #1225.13
        addpd     %xmm12, %xmm13                                #1225.13
        sqrtpd    %xmm13, %xmm14                                #1223.85
        cvtpd2ps  %xmm14, %xmm15                                #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        movlpd    %xmm15, 8(%r15,%r12)                          #1223.9
        movss     320(%rdi,%r9,4), %xmm0                        #1224.15
        movss     256(%rdi,%r9,4), %xmm1                        #1224.15
        movss     320(%rbx,%r9,4), %xmm2                        #1225.17
        movss     256(%rbx,%r9,4), %xmm3                        #1225.17
        unpcklps  %xmm0, %xmm1                                  #1224.15
        unpcklps  %xmm2, %xmm3                                  #1225.17
        cvtps2pd  %xmm1, %xmm5                                  #1224.15
        cvtps2pd  %xmm3, %xmm4                                  #1225.17
        mulpd     %xmm5, %xmm5                                  #1224.11
        mulpd     %xmm4, %xmm4                                  #1225.13
        addpd     %xmm4, %xmm5                                  #1225.13
        sqrtpd    %xmm5, %xmm6                                  #1223.85
        cvtpd2ps  %xmm6, %xmm7                                  #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        movlpd    %xmm7, 16(%r15,%r12)                          #1223.9
        movss     448(%rdi,%r9,4), %xmm8                        #1224.15
        movss     384(%rdi,%r9,4), %xmm9                        #1224.15
        .byte     144                                           #1225.17
        movss     448(%rbx,%r9,4), %xmm10                       #1225.17
        movss     384(%rbx,%r9,4), %xmm11                       #1225.17
        unpcklps  %xmm8, %xmm9                                  #1224.15
        unpcklps  %xmm10, %xmm11                                #1225.17
        cvtps2pd  %xmm9, %xmm13                                 #1224.15
        cvtps2pd  %xmm11, %xmm12                                #1225.17
        mulpd     %xmm13, %xmm13                                #1224.11
        mulpd     %xmm12, %xmm12                                #1225.13
        addpd     %xmm12, %xmm13                                #1225.13
        sqrtpd    %xmm13, %xmm14                                #1223.85
        cvtpd2ps  %xmm14, %xmm15                                #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        movlpd    %xmm15, 24(%r15,%r12)                         #1223.9
        movss     576(%rdi,%r9,4), %xmm0                        #1224.15
        movss     512(%rdi,%r9,4), %xmm1                        #1224.15
        movss     576(%rbx,%r9,4), %xmm2                        #1225.17
        movss     512(%rbx,%r9,4), %xmm3                        #1225.17
        unpcklps  %xmm0, %xmm1                                  #1224.15
        unpcklps  %xmm2, %xmm3                                  #1225.17
        cvtps2pd  %xmm1, %xmm5                                  #1224.15
        cvtps2pd  %xmm3, %xmm4                                  #1225.17
        mulpd     %xmm5, %xmm5                                  #1224.11
        mulpd     %xmm4, %xmm4                                  #1225.13
        addpd     %xmm4, %xmm5                                  #1225.13
        sqrtpd    %xmm5, %xmm6                                  #1223.85
        cvtpd2ps  %xmm6, %xmm7                                  #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        movlpd    %xmm7, 32(%r15,%r12)                          #1223.9
        movss     704(%rdi,%r9,4), %xmm8                        #1224.15
        movss     640(%rdi,%r9,4), %xmm9                        #1224.15
        movss     704(%rbx,%r9,4), %xmm10                       #1225.17
        movss     640(%rbx,%r9,4), %xmm11                       #1225.17
        unpcklps  %xmm8, %xmm9                                  #1224.15
        unpcklps  %xmm10, %xmm11                                #1225.17
        cvtps2pd  %xmm9, %xmm13                                 #1224.15
        cvtps2pd  %xmm11, %xmm12                                #1225.17
        mulpd     %xmm13, %xmm13                                #1224.11
        mulpd     %xmm12, %xmm12                                #1225.13
        addpd     %xmm12, %xmm13                                #1225.13
        sqrtpd    %xmm13, %xmm14                                #1223.85
        cvtpd2ps  %xmm14, %xmm15                                #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        movlpd    %xmm15, 40(%r15,%r12)                         #1223.9
        movss     832(%rdi,%r9,4), %xmm0                        #1224.15
        movss     768(%rdi,%r9,4), %xmm1                        #1224.15
        movss     832(%rbx,%r9,4), %xmm2                        #1225.17
        movss     768(%rbx,%r9,4), %xmm3                        #1225.17
        unpcklps  %xmm0, %xmm1                                  #1224.15
        unpcklps  %xmm2, %xmm3                                  #1225.17
        cvtps2pd  %xmm1, %xmm5                                  #1224.15
        cvtps2pd  %xmm3, %xmm4                                  #1225.17
        mulpd     %xmm5, %xmm5                                  #1224.11
        mulpd     %xmm4, %xmm4                                  #1225.13
        addpd     %xmm4, %xmm5                                  #1225.13
        sqrtpd    %xmm5, %xmm6                                  #1223.85
        cvtpd2ps  %xmm6, %xmm7                                  #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        movlpd    %xmm7, 48(%r15,%r12)                          #1223.9
        movss     960(%rdi,%r9,4), %xmm8                        #1224.15
        movss     896(%rdi,%r9,4), %xmm9                        #1224.15
        movss     960(%rbx,%r9,4), %xmm10                       #1225.17
        movss     896(%rbx,%r9,4), %xmm11                       #1225.17
        unpcklps  %xmm8, %xmm9                                  #1224.15
        unpcklps  %xmm10, %xmm11                                #1225.17
        cvtps2pd  %xmm9, %xmm0                                  #1224.15
        cvtps2pd  %xmm11, %xmm12                                #1225.17
        mulpd     %xmm0, %xmm0                                  #1224.11
        mulpd     %xmm12, %xmm12                                #1225.13
        addpd     %xmm12, %xmm0                                 #1225.13
        sqrtpd    %xmm0, %xmm13                                 #1223.85
        cvtpd2ps  %xmm13, %xmm14                                #1223.85
        movq      (%r10,%r9,8), %r15                            #1223.9
        incq      %r9                                           #1219.6
        cmpq      $16, %r9                                      #1219.6
        movlpd    %xmm14, 56(%r15,%r12)                         #1223.9
        jb        ..B1.330      # Prob 93%                      #1219.6
                                # LOE rdx rcx rbx rdi r9 r10 r11 r12 eax esi r8d r13d r14d
..B1.331:                       # Preds ..B1.330                # Infreq
        incl      %r13d                                         #1214.3
        addl      %eax, %r14d                                   #1214.3
        addq      $64, %r12                                     #1214.3
        cmpl      %r8d, %r13d                                   #1214.3
        jb        ..B1.329      # Prob 82%                      #1214.3
                                # LOE rdx rcx r10 r11 r12 eax esi r8d r13d r14d
..B1.332:                       # Preds ..B1.331                # Infreq
        movl      280(%rsp), %r9d                               #
        addl      $256, %esi                                    #1217.4
        incl      %r9d                                          #1217.4
        xorl      %r15d, %r15d                                  #
        movq      304(%rsp), %rdi                               #
        movl      312(%rsp), %r8d                               #
        addq      $16, %rdi                                     #1217.4
        movq      328(%rsp), %rbx                               #
        cmpl      %r8d, %r9d                                    #1217.4
        jb        ..B1.328      # Prob 81%                      #1217.4
                                # LOE rdx rcx rbx rdi r11 eax ebx esi r8d r9d r15d bl bh
..B1.333:                       # Preds ..B1.332                # Infreq
        movq      256(%rsp), %r12                               #
        movq      264(%rsp), %r15                               #
        movq      296(%rsp), %r13                               #
        movl      288(%rsp), %r14d                              #
                                # LOE rbx r12 r13 r15 r14d
..B1.334:                       # Preds ..B1.325 ..B1.326 ..B1.333 # Infreq
        movss     .L_2il0floatpacket.8(%rip), %xmm0             #1239.21
        xorl      %eax, %eax                                    #1241.3
        movss     %xmm0, 304(%rsp)                              #1239.21
        testl     %r14d, %r14d                                  #1241.23
        jle       ..B1.354      # Prob 10%                      #1241.23
                                # LOE rax rbx r12 r13 r15 r14d xmm0 ymm0 zmm0
..B1.335:                       # Preds ..B1.334                # Infreq
        xorl      %r10d, %r10d                                  #
                                # LOE rax rbx r10 r12 r13 r15 r14d xmm0
..B1.336:                       # Preds ..B1.352 ..B1.335       # Infreq
        cmpq      $8, %r13                                      #1244.4
        jl        ..B1.451      # Prob 10%                      #1244.4
                                # LOE rax rbx r10 r12 r13 r15 r14d xmm0
..B1.337:                       # Preds ..B1.336                # Infreq
        movl      (%rbx,%rax,8), %edi                           #1246.9
        andl      $15, %edi                                     #1244.4
        je        ..B1.340      # Prob 50%                      #1244.4
                                # LOE rax rbx r10 r12 r13 r15 edi r14d xmm0
..B1.338:                       # Preds ..B1.337                # Infreq
        testl     $3, %edi                                      #1244.4
        jne       ..B1.451      # Prob 10%                      #1244.4
                                # LOE rax rbx r10 r12 r13 r15 edi r14d xmm0
..B1.339:                       # Preds ..B1.338                # Infreq
        negl      %edi                                          #1244.4
        addl      $16, %edi                                     #1244.4
        shrl      $2, %edi                                      #1244.4
                                # LOE rax rbx r10 r12 r13 r15 edi r14d xmm0
..B1.340:                       # Preds ..B1.339 ..B1.337       # Infreq
        movl      %edi, %r9d                                    #1244.4
        lea       8(%r9), %rsi                                  #1244.4
        cmpq      %rsi, %r13                                    #1244.4
        jl        ..B1.451      # Prob 10%                      #1244.4
                                # LOE rax rbx r9 r10 r12 r13 r15 edi r14d xmm0
..B1.341:                       # Preds ..B1.340                # Infreq
        negl      %edi                                          #1244.4
        movq      %r10, %rsi                                    #1244.4
        addl      %r14d, %edi                                   #1244.4
        andl      $7, %edi                                      #1244.4
        negl      %edi                                          #1244.4
        addl      %r14d, %edi                                   #1244.4
        movslq    %edi, %rdi                                    #1244.4
        testq     %r9, %r9                                      #1244.4
        movq      (%rbx,%rax,8), %r8                            #1246.9
        jbe       ..B1.345      # Prob 10%                      #1244.4
                                # LOE rax rbx rsi rdi r8 r9 r10 r12 r13 r15 r14d xmm0
..B1.343:                       # Preds ..B1.341 ..B1.343       # Infreq
        movss     (%r8,%rsi,4), %xmm1                           #1246.9
        movaps    %xmm0, %xmm2                                  #1246.5
        movaps    %xmm1, %xmm0                                  #1246.5
        incq      %rsi                                          #1244.4
        comiss    %xmm2, %xmm0                                  #1246.5
        ja        ..L77         # Prob 50%                      #1246.5
        movaps    %xmm2, %xmm0                                  #1246.5
..L77:                                                          #
        cmpq      %r9, %rsi                                     #1244.4
        jb        ..B1.343      # Prob 82%                      #1244.4
                                # LOE rax rbx rsi rdi r8 r9 r10 r12 r13 r15 r14d xmm0
..B1.345:                       # Preds ..B1.343 ..B1.341       # Infreq
        shufps    $0, %xmm0, %xmm0                              #1239.21
                                # LOE rax rbx rdi r8 r9 r10 r12 r13 r15 r14d xmm0
..B1.346:                       # Preds ..B1.346 ..B1.345       # Infreq
        movaps    (%r8,%r9,4), %xmm1                            #1246.9
        maxps     %xmm0, %xmm1                                  #1246.5
        movaps    16(%r8,%r9,4), %xmm0                          #1246.9
        addq      $8, %r9                                       #1244.4
        maxps     %xmm1, %xmm0                                  #1246.5
        cmpq      %rdi, %r9                                     #1244.4
        jb        ..B1.346      # Prob 82%                      #1244.4
                                # LOE rax rbx rdi r8 r9 r10 r12 r13 r15 r14d xmm0
..B1.347:                       # Preds ..B1.346                # Infreq
        movaps    %xmm0, %xmm1                                  #1239.21
        movhlps   %xmm0, %xmm1                                  #1239.21
        maxps     %xmm1, %xmm0                                  #1239.21
        movaps    %xmm0, %xmm2                                  #1239.21
        shufps    $245, %xmm0, %xmm2                            #1239.21
        maxss     %xmm2, %xmm0                                  #1239.21
                                # LOE rax rbx rdi r10 r12 r13 r15 r14d xmm0
..B1.348:                       # Preds ..B1.347 ..B1.451       # Infreq
        cmpq      %r13, %rdi                                    #1244.4
        jae       ..B1.352      # Prob 10%                      #1244.4
                                # LOE rax rbx rdi r10 r12 r13 r15 r14d xmm0
..B1.349:                       # Preds ..B1.348                # Infreq
        movq      (%rbx,%rax,8), %rsi                           #1246.9
                                # LOE rax rbx rsi rdi r10 r12 r13 r15 r14d xmm0
..B1.350:                       # Preds ..B1.350 ..B1.349       # Infreq
        movss     (%rsi,%rdi,4), %xmm1                          #1246.9
        movaps    %xmm0, %xmm2                                  #1246.5
        movaps    %xmm1, %xmm0                                  #1246.5
        incq      %rdi                                          #1244.4
        comiss    %xmm2, %xmm0                                  #1246.5
        ja        ..L78         # Prob 50%                      #1246.5
        movaps    %xmm2, %xmm0                                  #1246.5
..L78:                                                          #
        cmpq      %r13, %rdi                                    #1244.4
        jb        ..B1.350      # Prob 82%                      #1244.4
                                # LOE rax rbx rsi rdi r10 r12 r13 r15 r14d xmm0
..B1.352:                       # Preds ..B1.350 ..B1.348       # Infreq
        incq      %rax                                          #1241.3
        cmpq      %r13, %rax                                    #1241.3
        jb        ..B1.336      # Prob 82%                      #1241.3
                                # LOE rax rbx r10 r12 r13 r15 r14d xmm0
..B1.353:                       # Preds ..B1.352                # Infreq
        movss     %xmm0, 304(%rsp)                              #
                                # LOE rbx r12 r13 r15 r14d
..B1.354:                       # Preds ..B1.353 ..B1.334       # Infreq
        lea       (,%r13,8), %rdi                               #1255.39
#       malloc(size_t)
        call      malloc                                        #1255.39
                                # LOE rax rbx r12 r13 r15 r14d
..B1.626:                       # Preds ..B1.354                # Infreq
        movq      %rax, 320(%rsp)                               #1255.39
                                # LOE rbx r12 r13 r15 r14d
..B1.355:                       # Preds ..B1.626                # Infreq
        xorl      %eax, %eax                                    #1257.3
        testl     %r14d, %r14d                                  #1257.23
        jle       ..B1.360      # Prob 10%                      #1257.23
                                # LOE rax rbx r12 r13 r15 r14d
..B1.356:                       # Preds ..B1.355                # Infreq
        movq      %rbx, 328(%rsp)                               #1258.57
        lea       (,%r13,4), %rdi                               #1258.57
        movq      %r15, 264(%rsp)                               #1258.57
        movq      %rax, %r15                                    #1258.57
        movl      %r14d, 288(%rsp)                              #1258.57
        movq      %rdi, %r14                                    #1258.57
        movq      320(%rsp), %rbx                               #1258.57
                                # LOE rbx r12 r13 r14 r15
..B1.357:                       # Preds ..B1.358 ..B1.356       # Infreq
        movq      %r14, %rdi                                    #1258.34
#       malloc(size_t)
        call      malloc                                        #1258.34
                                # LOE rax rbx r12 r13 r14 r15
..B1.358:                       # Preds ..B1.357                # Infreq
        movq      %rax, (%rbx,%r15,8)                           #1258.4
        incq      %r15                                          #1257.3
        cmpq      %r13, %r15                                    #1257.3
        jb        ..B1.357      # Prob 82%                      #1257.3
                                # LOE rbx r12 r13 r14 r15
..B1.359:                       # Preds ..B1.358                # Infreq
        movl      288(%rsp), %r14d                              #
        testl     %r14d, %r14d                                  #1201.23
        movq      264(%rsp), %r15                               #
        movq      328(%rsp), %rbx                               #
                                # LOE rbx r12 r13 r15 r14d
..B1.360:                       # Preds ..B1.359 ..B1.355       # Infreq
        movl      $0, %eax                                      #1261.3
        jle       ..B1.390      # Prob 10%                      #1261.23
                                # LOE rax rbx r12 r13 r15 r14d
..B1.361:                       # Preds ..B1.360                # Infreq
        movss     304(%rsp), %xmm0                              #1246.5
        movq      %rbx, %rcx                                    #1281.29
        movq      %r12, 256(%rsp)                               #1281.29
        movq      %rax, %rbx                                    #1281.29
        shufps    $0, %xmm0, %xmm0                              #1246.5
        pxor      %xmm5, %xmm5                                  #1280.39
        movaps    .L_2il0floatpacket.9(%rip), %xmm11            #1264.28
        pxor      %xmm2, %xmm2                                  #1279.29
        movaps    .L_2il0floatpacket.10(%rip), %xmm9            #1278.32
        movl      %r14d, %edx                                   #1281.29
        movaps    .L_2il0floatpacket.11(%rip), %xmm12           #1281.29
        movaps    .L_2il0floatpacket.12(%rip), %xmm8            #1280.39
        movsd     .L_2il0floatpacket.13(%rip), %xmm4            #1264.28
        movss     .L_2il0floatpacket.14(%rip), %xmm3            #1278.32
        movss     .L_2il0floatpacket.16(%rip), %xmm1            #1281.29
        movq      %r15, 264(%rsp)                               #1281.29
        movq      320(%rsp), %r12                               #1281.29
                                # LOE rax rcx rbx r12 r13 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.362:                       # Preds ..B1.388 ..B1.361       # Infreq
        cmpq      $4, %r13                                      #1263.4
        jl        ..B1.448      # Prob 10%                      #1263.4
                                # LOE rax rcx rbx r12 r13 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.363:                       # Preds ..B1.362                # Infreq
        movl      (%r12,%rbx,8), %r15d                          #1283.6
        andl      $15, %r15d                                    #1263.4
        je        ..B1.366      # Prob 50%                      #1263.4
                                # LOE rax rcx rbx r12 r13 edx r15d xmm0 xmm8 xmm9 xmm11 xmm12
..B1.364:                       # Preds ..B1.363                # Infreq
        testl     $3, %r15d                                     #1263.4
        jne       ..B1.448      # Prob 10%                      #1263.4
                                # LOE rax rcx rbx r12 r13 edx r15d xmm0 xmm8 xmm9 xmm11 xmm12
..B1.365:                       # Preds ..B1.364                # Infreq
        negl      %r15d                                         #1263.4
        addl      $16, %r15d                                    #1263.4
        shrl      $2, %r15d                                     #1263.4
                                # LOE rax rcx rbx r12 r13 edx r15d xmm0 xmm8 xmm9 xmm11 xmm12
..B1.366:                       # Preds ..B1.365 ..B1.363       # Infreq
        movl      %r15d, %r8d                                   #1263.4
        lea       4(%r8), %rsi                                  #1263.4
        cmpq      %rsi, %r13                                    #1263.4
        jl        ..B1.448      # Prob 10%                      #1263.4
                                # LOE rax rcx rbx r8 r12 r13 edx r15d xmm0 xmm8 xmm9 xmm11 xmm12
..B1.367:                       # Preds ..B1.366                # Infreq
        negl      %r15d                                         #1263.4
        movq      %rax, %rsi                                    #1263.4
        addl      %edx, %r15d                                   #1263.4
        andl      $3, %r15d                                     #1263.4
        negl      %r15d                                         #1263.4
        addl      %edx, %r15d                                   #1263.4
        movslq    %r15d, %r15                                   #1263.4
        testq     %r8, %r8                                      #1263.4
        movq      (%rcx,%rbx,8), %r14                           #1265.14
        movq      (%r12,%rbx,8), %rdi                           #1264.5
        jbe       ..B1.376      # Prob 10%                      #1263.4
                                # LOE rax rcx rbx rsi rdi r8 r12 r13 r14 r15 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.368:                       # Preds ..B1.367                # Infreq
        movaps    %xmm0, 272(%rsp)                              #
        movq      %rdi, %r12                                    #
        movq      %rbx, 312(%rsp)                               #
        movq      %rsi, %rbx                                    #
        movq      %rcx, 328(%rsp)                               #
        pxor      %xmm11, %xmm11                                #
        movq      %r13, 296(%rsp)                               #
        movq      %r8, %r13                                     #
        movl      %edx, 288(%rsp)                               #
        movss     .L_2il0floatpacket.16(%rip), %xmm10           #
        movss     .L_2il0floatpacket.14(%rip), %xmm13           #
        movsd     .L_2il0floatpacket.13(%rip), %xmm14           #
        movss     304(%rsp), %xmm15                             #
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.369:                       # Preds ..B1.368 ..B1.374       # Infreq
        movss     (%r14,%rbx,4), %xmm0                          #1265.8
        divss     %xmm15, %xmm0                                 #1265.8
        cvtss2sd  %xmm0, %xmm0                                  #1265.8
        unpcklpd  %xmm0, %xmm0                                  #1265.8
        call      __svml_log102                                 #1265.8
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.628:                       # Preds ..B1.369                # Infreq
        pxor      %xmm1, %xmm1                                  #1264.5
        mulsd     %xmm14, %xmm0                                 #1265.8
        cvtsd2ss  %xmm0, %xmm1                                  #1264.5
        comiss    %xmm1, %xmm13                                 #1278.32
        jbe       ..B1.371      # Prob 50%                      #1278.32
                                # LOE rbx r12 r13 r14 r15 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.370:                       # Preds ..B1.628                # Infreq
        movss     %xmm11, (%r12,%rbx,4)                         #1279.6
        jmp       ..B1.374      # Prob 100%                     #1279.6
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.371:                       # Preds ..B1.628                # Infreq
        comiss    %xmm11, %xmm1                                 #1280.39
        jbe       ..B1.373      # Prob 50%                      #1280.39
                                # LOE rbx r12 r13 r14 r15 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.372:                       # Preds ..B1.371                # Infreq
        movss     %xmm10, (%r12,%rbx,4)                         #1281.6
        jmp       ..B1.374      # Prob 100%                     #1281.6
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.373:                       # Preds ..B1.371                # Infreq
        divss     %xmm13, %xmm1                                 #1283.56
        movaps    %xmm10, %xmm0                                 #1283.56
        subss     %xmm1, %xmm0                                  #1283.56
        movss     %xmm0, (%r12,%rbx,4)                          #1283.6
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.374:                       # Preds ..B1.370 ..B1.372 ..B1.373 # Infreq
        incq      %rbx                                          #1263.4
        cmpq      %r13, %rbx                                    #1263.4
        jb        ..B1.369      # Prob 82%                      #1263.4
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.375:                       # Preds ..B1.374                # Infreq
        movaps    .L_2il0floatpacket.9(%rip), %xmm11            #
        movq      %r13, %r8                                     #
        movaps    272(%rsp), %xmm0                              #
        xorl      %eax, %eax                                    #
        movq      312(%rsp), %rbx                               #
        movq      320(%rsp), %r12                               #
        movq      328(%rsp), %rcx                               #
        movq      296(%rsp), %r13                               #
        movl      288(%rsp), %edx                               #
                                # LOE rax rcx rbx r8 r12 r13 r14 r15 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.376:                       # Preds ..B1.367 ..B1.375       # Infreq
        rcpps     %xmm0, %xmm13                                 #1265.42
        movaps    %xmm0, %xmm10                                 #1265.42
        movaps    %xmm9, %xmm1                                  #1283.56
        mulps     %xmm13, %xmm10                                #1265.42
        mulps     %xmm13, %xmm10                                #1265.42
        addps     %xmm13, %xmm13                                #1265.42
        movaps    %xmm0, 272(%rsp)                              #1283.56
        subps     %xmm10, %xmm13                                #1265.42
        rcpps     %xmm9, %xmm10                                 #1283.56
        mulps     %xmm10, %xmm1                                 #1283.56
        mulps     %xmm10, %xmm1                                 #1283.56
        addps     %xmm10, %xmm10                                #1283.56
        movq      %rcx, 328(%rsp)                               #1283.56
        subps     %xmm1, %xmm10                                 #1283.56
        movq      %r13, 296(%rsp)                               #1283.56
        movq      %r8, %r13                                     #1283.56
        movl      %edx, 288(%rsp)                               #1283.56
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
..B1.377:                       # Preds ..B1.629 ..B1.376       # Infreq
        movups    (%r14,%r13,4), %xmm15                         #1265.14
        mulps     %xmm13, %xmm15                                #1265.42
        cvtps2pd  %xmm15, %xmm0                                 #1265.42
        movhlps   %xmm15, %xmm15                                #1265.42
        cvtps2pd  %xmm15, %xmm15                                #1265.42
        call      __svml_log102                                 #1265.8
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm15
..B1.630:                       # Preds ..B1.377                # Infreq
        movaps    %xmm0, %xmm14                                 #1265.8
        movaps    %xmm15, %xmm0                                 #1265.8
        call      __svml_log102                                 #1265.8
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
..B1.629:                       # Preds ..B1.630                # Infreq
        mulpd     %xmm11, %xmm14                                #1265.8
        mulpd     %xmm11, %xmm0                                 #1265.8
        cvtpd2ps  %xmm14, %xmm2                                 #1265.8
        cvtpd2ps  %xmm0, %xmm1                                  #1265.8
        movq      (%r12,%rbx,8), %rdx                           #1264.5
        pxor      %xmm5, %xmm5                                  #1280.39
        movlhps   %xmm1, %xmm2                                  #1265.8
        movaps    %xmm8, %xmm14                                 #1280.39
        movaps    %xmm10, %xmm15                                #1283.56
        movups    %xmm2, (%rdx,%r13,4)                          #1264.5
        movaps    %xmm12, %xmm2                                 #1283.56
        movq      (%r12,%rbx,8), %rcx                           #1278.9
        movups    (%rcx,%r13,4), %xmm3                          #1278.9
        movaps    %xmm3, %xmm0                                  #1278.32
        cmpltps   %xmm9, %xmm0                                  #1278.32
        movaps    %xmm0, %xmm4                                  #1279.6
        pxor      %xmm0, %xmm14                                 #1280.39
        andnps    %xmm3, %xmm4                                  #1279.6
        movups    %xmm4, (%rcx,%r13,4)                          #1279.6
        movq      (%r12,%rbx,8), %rsi                           #1280.16
        movups    (%rsi,%r13,4), %xmm6                          #1280.16
        cmpltps   %xmm6, %xmm5                                  #1280.39
        andps     %xmm5, %xmm14                                 #1280.39
        orps      %xmm5, %xmm0                                  #1280.39
        movaps    %xmm14, %xmm7                                 #1281.6
        andps     %xmm12, %xmm14                                #1281.29
        andnps    %xmm6, %xmm7                                  #1281.6
        pxor      %xmm8, %xmm0                                  #1280.39
        orps      %xmm7, %xmm14                                 #1281.6
        movups    %xmm14, (%rsi,%r13,4)                         #1281.6
        movq      (%r12,%rbx,8), %rdi                           #1283.33
        movups    (%rdi,%r13,4), %xmm1                          #1283.33
        mulps     %xmm1, %xmm15                                 #1283.56
        subps     %xmm15, %xmm2                                 #1283.56
        andps     %xmm0, %xmm2                                  #1283.56
        andnps    %xmm1, %xmm0                                  #1283.6
        orps      %xmm0, %xmm2                                  #1283.6
        movaps    %xmm2, (%rdi,%r13,4)                          #1283.6
        addq      $4, %r13                                      #1263.4
        cmpq      %r15, %r13                                    #1263.4
        jb        ..B1.377      # Prob 82%                      #1263.4
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13
..B1.378:                       # Preds ..B1.629                # Infreq
        movaps    272(%rsp), %xmm0                              #
        xorl      %eax, %eax                                    #
        movq      328(%rsp), %rcx                               #
        movq      296(%rsp), %r13                               #
        movl      288(%rsp), %edx                               #
                                # LOE rax rcx rbx r12 r13 r15 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.379:                       # Preds ..B1.378 ..B1.448       # Infreq
        cmpq      %r13, %r15                                    #1263.4
        jae       ..B1.388      # Prob 10%                      #1263.4
                                # LOE rax rcx rbx r12 r13 r15 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.380:                       # Preds ..B1.379                # Infreq
        movq      (%rcx,%rbx,8), %rsi                           #1265.14
        movq      (%r12,%rbx,8), %r14                           #1264.5
        movq      %rsi, %r12                                    #1264.5
        movaps    %xmm0, 272(%rsp)                              #1264.5
        pxor      %xmm11, %xmm11                                #1264.5
        movq      %rcx, 328(%rsp)                               #1264.5
        movl      %edx, 288(%rsp)                               #1264.5
        movss     .L_2il0floatpacket.16(%rip), %xmm10           #1264.5
        movss     .L_2il0floatpacket.14(%rip), %xmm13           #1264.5
        movsd     .L_2il0floatpacket.13(%rip), %xmm14           #1264.5
        movss     304(%rsp), %xmm15                             #1264.5
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.381:                       # Preds ..B1.386 ..B1.380       # Infreq
        movss     (%r12,%r15,4), %xmm0                          #1265.8
        divss     %xmm15, %xmm0                                 #1265.8
        cvtss2sd  %xmm0, %xmm0                                  #1265.8
        unpcklpd  %xmm0, %xmm0                                  #1265.8
        call      __svml_log102                                 #1265.8
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.631:                       # Preds ..B1.381                # Infreq
        pxor      %xmm1, %xmm1                                  #1264.5
        mulsd     %xmm14, %xmm0                                 #1265.8
        cvtsd2ss  %xmm0, %xmm1                                  #1264.5
        comiss    %xmm1, %xmm13                                 #1278.32
        jbe       ..B1.383      # Prob 50%                      #1278.32
                                # LOE rbx r12 r13 r14 r15 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.382:                       # Preds ..B1.631                # Infreq
        movss     %xmm11, (%r14,%r15,4)                         #1279.6
        jmp       ..B1.386      # Prob 100%                     #1279.6
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.383:                       # Preds ..B1.631                # Infreq
        comiss    %xmm11, %xmm1                                 #1280.39
        jbe       ..B1.385      # Prob 50%                      #1280.39
                                # LOE rbx r12 r13 r14 r15 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.384:                       # Preds ..B1.383                # Infreq
        movss     %xmm10, (%r14,%r15,4)                         #1281.6
        jmp       ..B1.386      # Prob 100%                     #1281.6
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.385:                       # Preds ..B1.383                # Infreq
        divss     %xmm13, %xmm1                                 #1283.56
        movaps    %xmm10, %xmm0                                 #1283.56
        subss     %xmm1, %xmm0                                  #1283.56
        movss     %xmm0, (%r14,%r15,4)                          #1283.6
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.386:                       # Preds ..B1.382 ..B1.384 ..B1.385 # Infreq
        incq      %r15                                          #1263.4
        cmpq      %r13, %r15                                    #1263.4
        jb        ..B1.381      # Prob 82%                      #1263.4
                                # LOE rbx r12 r13 r14 r15 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B1.387:                       # Preds ..B1.386                # Infreq
        movaps    .L_2il0floatpacket.9(%rip), %xmm11            #
        xorl      %eax, %eax                                    #
        movaps    272(%rsp), %xmm0                              #
        movq      320(%rsp), %r12                               #
        movq      328(%rsp), %rcx                               #
        movl      288(%rsp), %edx                               #
                                # LOE rax rcx rbx r12 r13 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.388:                       # Preds ..B1.387 ..B1.379       # Infreq
        incq      %rbx                                          #1261.3
        cmpq      %r13, %rbx                                    #1261.3
        jb        ..B1.362      # Prob 82%                      #1261.3
                                # LOE rax rcx rbx r12 r13 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.389:                       # Preds ..B1.388                # Infreq
        movq      256(%rsp), %r12                               #
        movq      264(%rsp), %r15                               #
                                # LOE r12 r15
..B1.390:                       # Preds ..B1.389 ..B1.360       # Infreq
#       clock()
        call      clock                                         #1290.15
                                # LOE rax r12 r15
..B1.391:                       # Preds ..B1.390                # Infreq
        subq      %r15, %rax                                    #1293.3
        pxor      %xmm0, %xmm0                                  #1293.3
        cvtsi2sdq %rax, %xmm0                                   #1293.3
        divsd     .L_2il0floatpacket.15(%rip), %xmm0            #1293.3
        movl      $.L_2__STRING.43, %edi                        #1293.3
        movl      $1, %eax                                      #1293.3
..___tag_value_main.79:
#       printf(const char *, ...)
        call      printf                                        #1293.3
..___tag_value_main.80:
                                # LOE r12
..B1.392:                       # Preds ..B1.391                # Infreq
        movl      $.L_2__STRING.44, %edi                        #1296.13
        movl      $.L_2__STRING.45, %esi                        #1296.13
#       fopen(const char *, const char *)
        call      fopen                                         #1296.13
                                # LOE rax r12
..B1.633:                       # Preds ..B1.392                # Infreq
        movq      %rax, %r15                                    #1296.13
                                # LOE r12 r15
..B1.393:                       # Preds ..B1.633                # Infreq
        testq     %r15, %r15                                    #1297.12
        je        ..B1.446      # Prob 0%                       #1297.12
                                # LOE r12 r15
..B1.394:                       # Preds ..B1.393                # Infreq
        movslq    sar_data_Nx(%rip), %r13                       #1302.23
        xorl      %r14d, %r14d                                  #1302.14
        testq     %r13, %r13                                    #1302.23
        jle       ..B1.402      # Prob 10%                      #1302.23
                                # LOE r12 r13 r14 r15
..B1.395:                       # Preds ..B1.394                # Infreq
        movq      %r12, 256(%rsp)                               #
        xorl      %r12d, %r12d                                  #
        movq      320(%rsp), %rbx                               #
                                # LOE rbx r12 r13 r14 r15
..B1.397:                       # Preds ..B1.395 ..B1.400 ..B1.398 # Infreq
        movq      (%rbx,%r14,8), %rdx                           #1305.5
        pxor      %xmm0, %xmm0                                  #1305.5
        movq      %r15, %rdi                                    #1305.5
        movl      $.L_2__STRING.47, %esi                        #1305.5
        movl      $1, %eax                                      #1305.5
        cvtss2sd  (%rdx,%r12,4), %xmm0                          #1305.5
#       fprintf(FILE *, const char *, ...)
        call      fprintf                                       #1305.5
                                # LOE rbx r12 r13 r14 r15
..B1.398:                       # Preds ..B1.397                # Infreq
        incq      %r12                                          #1304.37
        cmpq      %r13, %r12                                    #1304.24
        jl        ..B1.397      # Prob 82%                      #1304.24
                                # LOE rbx r12 r13 r14 r15
..B1.399:                       # Preds ..B1.398                # Infreq
        movl      $10, %edi                                     #1308.4
        movq      %r15, %rsi                                    #1308.4
        xorl      %r12d, %r12d                                  #
        call      fputc                                         #1308.4
                                # LOE rbx r12 r13 r14 r15
..B1.400:                       # Preds ..B1.399                # Infreq
        incq      %r14                                          #1302.36
        cmpq      %r13, %r14                                    #1302.23
        jl        ..B1.397      # Prob 82%                      #1302.23
                                # LOE rbx r12 r13 r14 r15
..B1.401:                       # Preds ..B1.400                # Infreq
        movq      256(%rsp), %r12                               #
                                # LOE r12 r15
..B1.402:                       # Preds ..B1.401 ..B1.394       # Infreq
        movq      %r15, %rdi                                    #1311.3
#       fclose(FILE *)
        call      fclose                                        #1311.3
                                # LOE r12
..B1.403:                       # Preds ..B1.402                # Infreq
#       clock()
        call      clock                                         #1313.15
                                # LOE rax r12
..B1.404:                       # Preds ..B1.403                # Infreq
        subq      %r12, %rax                                    #1316.3
        pxor      %xmm0, %xmm0                                  #1316.3
        cvtsi2sdq %rax, %xmm0                                   #1316.3
        divsd     .L_2il0floatpacket.15(%rip), %xmm0            #1316.3
        movl      $.L_2__STRING.49, %edi                        #1316.3
        movl      $1, %eax                                      #1316.3
..___tag_value_main.81:
#       printf(const char *, ...)
        call      printf                                        #1316.3
..___tag_value_main.82:
                                # LOE
..B1.405:                       # Preds ..B1.404                # Infreq
        movq      sar_data_XYZR(%rip), %rdi                     #1329.3
#       free(void *)
        call      free                                          #1329.3
                                # LOE
..B1.406:                       # Preds ..B1.405                # Infreq
        movl      $_ZSt4cout, %edi                              #1331.8
        movl      $.L_2__STRING.50, %esi                        #1331.8
..___tag_value_main.83:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #1331.8
..___tag_value_main.84:
                                # LOE
..B1.407:                       # Preds ..B1.406                # Infreq
        xorl      %eax, %eax                                    #1339.9
        addq      $2904, %rsp                                   #1339.9
	.cfi_restore 3
        popq      %rbx                                          #1339.9
	.cfi_restore 15
        popq      %r15                                          #1339.9
	.cfi_restore 14
        popq      %r14                                          #1339.9
	.cfi_restore 13
        popq      %r13                                          #1339.9
	.cfi_restore 12
        popq      %r12                                          #1339.9
        movq      %rbp, %rsp                                    #1339.9
        popq      %rbp                                          #1339.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #1339.9
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.408:                       # Preds ..B1.213                # Infreq
        movl      %r12d, %eax                                   #509.20
        xorl      %ecx, %ecx                                    #824.15
        shrl      $31, %eax                                     #509.20
        lea       (%r12,%r12,4), %r9d                           #539.48
        addl      %r12d, %eax                                   #509.20
        xorl      %edi, %edi                                    #824.15
        sarl      $1, %eax                                      #509.20
        movl      %r14d, 288(%rsp)                              #824.15
        movl      376(%rsp), %esi                               #824.15
        movq      328(%rsp), %r13                               #824.15
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r12d
..B1.409:                       # Preds ..B1.426 ..B1.459 ..B1.408 # Infreq
        movl      %edi, %r11d                                   #824.4
        movl      $1, %r10d                                     #824.4
        movl      %r11d, %r14d                                  #826.5
        testl     %eax, %eax                                    #824.4
        jbe       ..B1.421      # Prob 10%                      #824.4
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r10d r11d r12d r14d
..B1.411:                       # Preds ..B1.409 ..B1.419       # Infreq
        lea       (%rcx,%r14), %edi                             #826.9
        movslq    %edi, %rdi                                    #826.9
        movl      16(%r13,%rdi,4), %r10d                        #826.9
        cmpl      $2, %r10d                                     #827.15
        je        ..B1.464      # Prob 16%                      #827.15
                                # LOE rbx rdi r13 r15 eax edx ecx esi r8d r9d r10d r11d r12d r14d
..B1.412:                       # Preds ..B1.411                # Infreq
        cmpl      $1, %r10d                                     #835.15
        je        ..B1.463      # Prob 16%                      #835.15
                                # LOE rbx rdi r13 r15 eax edx ecx esi r8d r9d r10d r11d r12d r14d
..B1.413:                       # Preds ..B1.412                # Infreq
        testl     %r10d, %r10d                                  #842.15
        jne       ..B1.415      # Prob 50%                      #842.15
                                # LOE rbx rdi r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.414:                       # Preds ..B1.413                # Infreq
        incl      %edx                                          #846.6
        incl      (%r15)                                        #845.47
        movl      %edx, (%rbx)                                  #846.6
                                # LOE rbx rdi r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.415:                       # Preds ..B1.463 ..B1.464 ..B1.414 ..B1.413 # Infreq
        movl      36(%r13,%rdi,4), %edi                         #826.9
        cmpl      $2, %edi                                      #827.15
        je        ..B1.462      # Prob 16%                      #827.15
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r11d r12d r14d
..B1.416:                       # Preds ..B1.415                # Infreq
        cmpl      $1, %edi                                      #835.15
        je        ..B1.461      # Prob 16%                      #835.15
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r11d r12d r14d
..B1.417:                       # Preds ..B1.416                # Infreq
        testl     %edi, %edi                                    #842.15
        jne       ..B1.419      # Prob 50%                      #842.15
                                # LOE rbx r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.418:                       # Preds ..B1.417                # Infreq
        incl      %edx                                          #846.6
        incl      (%r15)                                        #845.47
        movl      %edx, (%rbx)                                  #846.6
                                # LOE rbx r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.419:                       # Preds ..B1.461 ..B1.462 ..B1.418 ..B1.417 # Infreq
        incl      %r11d                                         #824.4
        addl      $10, %r14d                                    #824.4
        cmpl      %eax, %r11d                                   #824.4
        jb        ..B1.411      # Prob 64%                      #824.4
                                # LOE rbx r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.420:                       # Preds ..B1.419                # Infreq
        xorl      %edi, %edi                                    #
        lea       1(%r11,%r11), %r10d                           #826.5
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r10d r12d
..B1.421:                       # Preds ..B1.420 ..B1.409       # Infreq
        lea       -1(%r10), %r11d                               #824.4
        cmpl      %r11d, %r12d                                  #824.4
        jbe       ..B1.459      # Prob 10%                      #824.4
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r10d r12d
..B1.422:                       # Preds ..B1.421                # Infreq
        lea       (%r10,%r10,4), %r10d                          #826.9
        addl      %ecx, %r10d                                   #826.9
        movslq    %r10d, %r10                                   #826.9
        movl      -4(%r13,%r10,4), %r10d                        #826.9
        cmpl      $2, %r10d                                     #827.15
        je        ..B1.458      # Prob 16%                      #827.15
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r10d r12d
..B1.423:                       # Preds ..B1.422                # Infreq
        cmpl      $1, %r10d                                     #835.15
        je        ..B1.457      # Prob 16%                      #835.15
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r10d r12d
..B1.424:                       # Preds ..B1.423                # Infreq
        testl     %r10d, %r10d                                  #842.15
        jne       ..B1.426      # Prob 50%                      #842.15
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r12d
..B1.425:                       # Preds ..B1.424                # Infreq
        incl      %edx                                          #846.6
        incl      (%r15)                                        #845.47
        movl      %edx, (%rbx)                                  #846.6
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r12d
..B1.426:                       # Preds ..B1.457 ..B1.458 ..B1.425 ..B1.424 # Infreq
        incl      %r8d                                          #822.3
        addl      %r9d, %ecx                                    #822.3
        cmpl      %esi, %r8d                                    #822.3
        jb        ..B1.409      # Prob 82%                      #822.3
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r12d
..B1.427:                       # Preds ..B1.209 ..B1.426       # Infreq
        movl      288(%rsp), %r14d                              #
        jmp       ..B1.214      # Prob 100%                     #
                                # LOE rbx r15 edx r14d
..B1.428:                       # Preds ..B1.181                # Infreq
        incl      %r8d                                          #874.3
        addl      %ecx, %edx                                    #874.3
        cmpl      %r14d, %r8d                                   #874.3
        jb        ..B1.169      # Prob 82%                      #874.3
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r12d r14d
..B1.429:                       # Preds ..B1.186 ..B1.428       # Infreq
        movl      288(%rsp), %r14d                              #
        jmp       ..B1.166      # Prob 100%                     #
                                # LOE rbx r15 esi r14d
..B1.430:                       # Preds ..B1.175                # Infreq
        addl      $16, (%r15)                                   #881.47
        incl      %esi                                          #882.6
        movl      %esi, (%rbx)                                  #882.6
        cmpl      $1, %edi                                      #886.15
        jne       ..B1.179      # Prob 84%                      #886.15
                                # LOE rbx r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.431:                       # Preds ..B1.430 ..B1.176       # Infreq
        incl      %esi                                          #890.6
        addl      $4, (%r15)                                    #889.47
        movl      %esi, (%rbx)                                  #890.6
        jmp       ..B1.179      # Prob 100%                     #890.6
                                # LOE rbx r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.432:                       # Preds ..B1.433 ..B1.172       # Infreq
        incl      %esi                                          #890.6
        addl      $4, (%r15)                                    #889.47
        movl      %esi, (%rbx)                                  #890.6
        jmp       ..B1.175      # Prob 100%                     #890.6
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.433:                       # Preds ..B1.171                # Infreq
        addl      $16, (%r15)                                   #881.47
        incl      %esi                                          #882.6
        movl      %esi, (%rbx)                                  #882.6
        cmpl      $1, %r9d                                      #886.15
        je        ..B1.432      # Prob 16%                      #886.15
        jmp       ..B1.175      # Prob 100%                     #886.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r10d r12d r13d r14d
..B1.435:                       # Preds ..B1.436 ..B1.206       # Infreq
        incl      %edx                                          #943.6
        addl      $4, (%r15)                                    #942.47
        movl      %edx, (%rbx)                                  #943.6
        jmp       ..B1.209      # Prob 100%                     #943.6
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r12d r14d
..B1.436:                       # Preds ..B1.205                # Infreq
        addl      $16, (%r15)                                   #934.47
        incl      %edx                                          #935.6
        movl      %edx, (%rbx)                                  #935.6
        cmpl      $1, %r10d                                     #939.15
        je        ..B1.435      # Prob 16%                      #939.15
        jmp       ..B1.209      # Prob 100%                     #939.15
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r12d r14d
..B1.437:                       # Preds ..B1.204                # Infreq
        incl      %r9d                                          #927.3
        addl      %r8d, %ecx                                    #927.3
        cmpl      %r14d, %r9d                                   #927.3
        jb        ..B1.192      # Prob 82%                      #927.3
                                # LOE rbx r11 r15 eax edx ecx edi r8d r9d r12d r14d
..B1.438:                       # Preds ..B1.437                # Infreq
        movl      288(%rsp), %r14d                              #
        jmp       ..B1.214      # Prob 100%                     #
                                # LOE rbx r15 edx r14d
..B1.439:                       # Preds ..B1.440 ..B1.199       # Infreq
        incl      %edx                                          #943.6
        addl      $4, (%r15)                                    #942.47
        movl      %edx, (%rbx)                                  #943.6
        jmp       ..B1.202      # Prob 100%                     #943.6
                                # LOE rbx r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.440:                       # Preds ..B1.198                # Infreq
        addl      $16, (%r15)                                   #934.47
        incl      %edx                                          #935.6
        movl      %edx, (%rbx)                                  #935.6
        cmpl      $1, %edi                                      #939.15
        je        ..B1.439      # Prob 16%                      #939.15
        jmp       ..B1.202      # Prob 100%                     #939.15
                                # LOE rbx r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.441:                       # Preds ..B1.442 ..B1.195       # Infreq
        incl      %edx                                          #943.6
        addl      $4, (%r15)                                    #942.47
        movl      %edx, (%rbx)                                  #943.6
        jmp       ..B1.198      # Prob 100%                     #943.6
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.442:                       # Preds ..B1.194                # Infreq
        addl      $16, (%r15)                                   #934.47
        incl      %edx                                          #935.6
        movl      %edx, (%rbx)                                  #935.6
        cmpl      $1, %r10d                                     #939.15
        je        ..B1.441      # Prob 16%                      #939.15
        jmp       ..B1.198      # Prob 100%                     #939.15
                                # LOE rbx rdi r11 r15 eax edx ecx esi r8d r9d r12d r13d r14d
..B1.443:                       # Preds ..B1.465 ..B1.183       # Infreq
        incl      %esi                                          #890.6
        addl      $4, (%r15)                                    #889.47
        movl      %esi, (%rbx)                                  #890.6
        jmp       ..B1.186      # Prob 100%                     #890.6
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r12d r14d
..B1.444:                       # Preds ..B1.284                # Infreq
        xorl      %esi, %esi                                    #1137.4
        movb      $1, %r11b                                     #1137.4
        jmp       ..B1.296      # Prob 100%                     #1137.4
                                # LOE rax rdi edx ecx esi r8d r13d r14d r15d r11b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B1.446:                       # Preds ..B1.393                # Infreq
        movl      $il0_peep_printf_format_4, %edi               #1298.4
        call      puts                                          #1298.4
                                # LOE
..B1.447:                       # Preds ..B1.561 ..B1.446       # Infreq
        movl      $1, %edi                                      #1299.4
#       exit(int)
        call      exit                                          #1299.4
                                # LOE
..B1.448:                       # Preds ..B1.362 ..B1.364 ..B1.366 # Infreq
        movq      %rax, %r15                                    #1263.4
        jmp       ..B1.379      # Prob 100%                     #1263.4
                                # LOE rax rcx rbx r12 r13 r15 edx xmm0 xmm8 xmm9 xmm11 xmm12
..B1.451:                       # Preds ..B1.336 ..B1.338 ..B1.340 # Infreq
        movq      %r10, %rdi                                    #1244.4
        jmp       ..B1.348      # Prob 100%                     #1244.4
                                # LOE rax rbx rdi r10 r12 r13 r15 r14d xmm0
..B1.454:                       # Preds ..B1.455 ..B1.237       # Infreq
        addl      $4, %r11d                                     #1064.49
        movl      %r11d, (%rcx,%rdx)                            #1063.4
        incl      (%rcx,%rdi)                                   #1065.4
        jmp       ..B1.240      # Prob 100%                     #1065.4
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r11d r14d
..B1.455:                       # Preds ..B1.236                # Infreq
        movl      (%rcx,%rdx), %r11d                            #1056.5
        incl      (%rcx,%rdi)                                   #1057.4
        addl      $16, %r11d                                    #1056.49
        movl      %r11d, (%rcx,%rdx)                            #1055.4
        cmpl      $1, %r10d                                     #1061.13
        je        ..B1.454      # Prob 16%                      #1061.13
        jmp       ..B1.240      # Prob 100%                     #1061.13
                                # LOE rax rdx rcx rbx rsi rdi r12 r13 r15 r8d r9d r11d r14d
..B1.457:                       # Preds ..B1.458 ..B1.423       # Infreq
        incl      %edx                                          #839.6
        addl      $4, (%r15)                                    #838.47
        movl      %edx, (%rbx)                                  #839.6
        jmp       ..B1.426      # Prob 100%                     #839.6
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r12d
..B1.458:                       # Preds ..B1.422                # Infreq
        addl      $16, (%r15)                                   #830.46
        incl      %edx                                          #831.6
        movl      %edx, (%rbx)                                  #831.6
        cmpl      $1, %r10d                                     #835.15
        je        ..B1.457      # Prob 16%                      #835.15
        jmp       ..B1.426      # Prob 100%                     #835.15
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r12d
..B1.459:                       # Preds ..B1.421                # Infreq
        incl      %r8d                                          #822.3
        addl      %r9d, %ecx                                    #822.3
        cmpl      %esi, %r8d                                    #822.3
        jb        ..B1.409      # Prob 82%                      #822.3
                                # LOE rbx r13 r15 eax edx ecx esi edi r8d r9d r12d
..B1.460:                       # Preds ..B1.459                # Infreq
        movl      288(%rsp), %r14d                              #
        jmp       ..B1.214      # Prob 100%                     #
                                # LOE rbx r15 edx r14d
..B1.461:                       # Preds ..B1.462 ..B1.416       # Infreq
        incl      %edx                                          #839.6
        addl      $4, (%r15)                                    #838.47
        movl      %edx, (%rbx)                                  #839.6
        jmp       ..B1.419      # Prob 100%                     #839.6
                                # LOE rbx r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.462:                       # Preds ..B1.415                # Infreq
        addl      $16, (%r15)                                   #830.46
        incl      %edx                                          #831.6
        movl      %edx, (%rbx)                                  #831.6
        cmpl      $1, %edi                                      #835.15
        je        ..B1.461      # Prob 16%                      #835.15
        jmp       ..B1.419      # Prob 100%                     #835.15
                                # LOE rbx r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.463:                       # Preds ..B1.464 ..B1.412       # Infreq
        incl      %edx                                          #839.6
        addl      $4, (%r15)                                    #838.47
        movl      %edx, (%rbx)                                  #839.6
        jmp       ..B1.415      # Prob 100%                     #839.6
                                # LOE rbx rdi r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.464:                       # Preds ..B1.411                # Infreq
        addl      $16, (%r15)                                   #830.46
        incl      %edx                                          #831.6
        movl      %edx, (%rbx)                                  #831.6
        cmpl      $1, %r10d                                     #835.15
        je        ..B1.463      # Prob 16%                      #835.15
        jmp       ..B1.415      # Prob 100%                     #835.15
                                # LOE rbx rdi r13 r15 eax edx ecx esi r8d r9d r11d r12d r14d
..B1.465:                       # Preds ..B1.182                # Infreq
        addl      $16, (%r15)                                   #881.47
        incl      %esi                                          #882.6
        movl      %esi, (%rbx)                                  #882.6
        cmpl      $1, %r9d                                      #886.15
        je        ..B1.443      # Prob 16%                      #886.15
        jmp       ..B1.186      # Prob 100%                     #886.15
                                # LOE rbx r11 r15 eax edx ecx esi edi r8d r12d r14d
..B1.466:                       # Preds ..B1.159                # Infreq
        movl      $il0_peep_printf_format_3, %edi               #680.3
        call      puts                                          #680.3
                                # LOE rbx r15 r12d r14d
..B1.467:                       # Preds ..B1.466                # Infreq
        movl      376(%rsp), %ecx                               #686.31
        xorl      %r9d, %r9d                                    #686.3
        xorb      %r10b, %r10b                                  #683.15
        imull     %ecx, %ecx                                    #686.31
        cmpl      $1, %ecx                                      #686.31
        jle       ..B1.479      # Prob 10%                      #686.31
                                # LOE rbx r15 ecx r9d r12d r14d r10b
..B1.468:                       # Preds ..B1.467                # Infreq
        movl      %r12d, %r8d                                   #688.33
        xorl      %edx, %edx                                    #688.4
        imull     %r12d, %r8d                                   #688.33
        decl      %ecx                                          #686.31
        decl      %r8d                                          #688.47
        xorl      %eax, %eax                                    #690.5
        testl     %r8d, %r8d                                    #688.47
        jle       ..B1.479      # Prob 10%                      #688.47
                                # LOE rax rbx r15 edx ecx r8d r9d r12d r14d r10b
..B1.469:                       # Preds ..B1.468                # Infreq
        movl      %r14d, 288(%rsp)                              #
        xorl      %r11d, %r11d                                  #
        movq      328(%rsp), %rdi                               #
        xorl      %r13d, %r13d                                  #
                                # LOE rax rbx rdi r11 r15 edx ecx r8d r9d r12d r13d r10b
..B1.470:                       # Preds ..B1.476 ..B1.469 ..B1.472 # Infreq
        movl      36(%rdi,%rax,4), %r14d                        #690.41
        movl      16(%rdi,%rax,4), %esi                         #690.8
        cmpl      %r14d, %esi                                   #690.41
        jge       ..B1.472      # Prob 50%                      #690.41
                                # LOE rax rbx rdi r11 r15 edx ecx esi r8d r9d r12d r13d r14d r10b
..B1.471:                       # Preds ..B1.470                # Infreq
        movdqu    (%rdi,%rax,4), %xmm1                          #694.16
        movdqu    20(%rdi,%rax,4), %xmm0                        #695.37
        movdqu    %xmm1, 20(%rdi,%rax,4)                        #696.7
        movdqu    %xmm0, (%rdi,%rax,4)                          #695.7
        movl      %r14d, 16(%rdi,%rax,4)                        #695.7
        movb      $1, %r10b                                     #692.6
        movl      %esi, 36(%rdi,%rax,4)                         #696.7
                                # LOE rax rbx rdi r11 r15 edx ecx r8d r9d r12d r13d r10b
..B1.472:                       # Preds ..B1.471 ..B1.470       # Infreq
        incl      %edx                                          #688.4
        addq      $5, %rax                                      #688.4
        cmpl      %r8d, %edx                                    #688.4
        jb        ..B1.470      # Prob 82%                      #688.4
                                # LOE rax rbx rdi r11 r15 edx ecx r8d r9d r12d r13d r10b
..B1.473:                       # Preds ..B1.472                # Infreq
        testb     %r10b, %r10b                                  #700.17
        je        ..B1.478      # Prob 20%                      #700.17
                                # LOE rbx rdi r11 r15 ecx r8d r9d r12d r13d r10b
..B1.475:                       # Preds ..B1.473 ..B1.476       # Infreq
        incl      %r9d                                          #686.3
        cmpl      %ecx, %r9d                                    #686.3
        jae       ..B1.478      # Prob 18%                      #686.3
                                # LOE rbx rdi r11 r15 ecx r8d r9d r12d r13d r10b
..B1.476:                       # Preds ..B1.475                # Infreq
        movl      %r13d, %edx                                   #688.4
        movq      %r11, %rax                                    #690.5
        testl     %r8d, %r8d                                    #688.47
        jle       ..B1.475      # Prob 10%                      #688.47
        jmp       ..B1.470      # Prob 100%                     #688.47
                                # LOE rax rbx rdi r11 r15 edx ecx r8d r9d r12d r13d r10b
..B1.478:                       # Preds ..B1.473 ..B1.475       # Infreq
        movl      288(%rsp), %r14d                              #
                                # LOE rbx r15 r12d r14d
..B1.479:                       # Preds ..B1.468 ..B1.467 ..B1.478 # Infreq
        movq      264(%rsp), %rdi                               #707.45
#       malloc(size_t)
        call      malloc                                        #707.45
                                # LOE rax rbx r15 r12d r14d
..B1.635:                       # Preds ..B1.479                # Infreq
        movq      %rax, %r13                                    #707.45
                                # LOE rbx r13 r15 r12d r14d
..B1.480:                       # Preds ..B1.635                # Infreq
        movq      %r13, %rdi                                    #708.3
        xorl      %esi, %esi                                    #708.3
        movq      264(%rsp), %rdx                               #708.3
        call      _intel_fast_memset                            #708.3
                                # LOE rbx r13 r15 r12d r14d
..B1.481:                       # Preds ..B1.480                # Infreq
        xorl      %edi, %edi                                    #714.14
        xorl      %r11d, %r11d                                  #712.24
        cmpl      $0, 376(%rsp)                                 #714.23
        jle       ..B1.636      # Prob 10%                      #714.23
                                # LOE rbx r11 r13 r15 edi r12d r14d
..B1.482:                       # Preds ..B1.481                # Infreq
        testl     %r12d, %r12d                                  #716.24
        jle       ..B1.537      # Prob 10%                      #716.24
                                # LOE rbx r11 r13 r15 edi r12d r14d
..B1.483:                       # Preds ..B1.482                # Infreq
        xorl      %esi, %esi                                    #714.38
        lea       (%r12,%r12,4), %eax                           #721.53
        movl      %eax, 272(%rsp)                               #721.53
        xorl      %r10d, %r10d                                  #721.53
        movl      %r14d, 288(%rsp)                              #721.53
        movq      328(%rsp), %rcx                               #721.53
                                # LOE rcx rbx r11 r13 r15 esi edi r10d r12d
..B1.484:                       # Preds ..B1.489 ..B1.483       # Infreq
        lea       (%rsi,%rsi,4), %eax                           #721.62
        addl      %r10d, %eax                                   #721.62
        movslq    %eax, %rax                                    #721.9
        movl      16(%rcx,%rax,4), %r8d                         #721.9
        cmpl      $2, %r8d                                      #722.15
        je        ..B1.535      # Prob 16%                      #722.15
                                # LOE rax rcx rbx r11 r13 r15 esi edi r8d r10d r12d
..B1.485:                       # Preds ..B1.484                # Infreq
        cmpl      $1, %r8d                                      #738.15
        je        ..B1.638      # Prob 16%                      #738.15
                                # LOE rax rcx rbx r11 r13 r15 esi edi r8d r10d r12d
..B1.486:                       # Preds ..B1.485                # Infreq
        testl     %r8d, %r8d                                    #749.15
        jne       ..B1.488      # Prob 50%                      #749.15
                                # LOE rax rcx rbx r11 r13 r15 esi edi r8d r10d r12d
..B1.487:                       # Preds ..B1.486                # Infreq
        movl      %r11d, %r14d                                  #750.6
        imull     336(%rsp), %r14d                              #750.47
        movl      (%rbx,%r11,4), %r9d                           #750.67
        addl      %r9d, %r14d                                   #750.67
        incl      %r9d                                          #757.6
        incl      (%r15,%r11,4)                                 #756.47
        movl      %r9d, (%rbx,%r11,4)                           #757.6
        incq      %r11                                          #758.6
        lea       (%r14,%r14,4), %edx                           #750.67
        movslq    %edx, %rdx                                    #750.6
        movl      %r8d, 16(%r13,%rdx,4)                         #752.6
        movl      (%rcx,%rax,4), %r8d                           #750.119
        movl      4(%rcx,%rax,4), %eax                          #751.119
        movl      %r8d, (%r13,%rdx,4)                           #750.6
        movl      %eax, 4(%r13,%rdx,4)                          #751.6
                                # LOE rcx rbx r11 r13 r15 esi edi r10d r12d
..B1.488:                       # Preds ..B1.536 ..B1.535 ..B1.487 ..B1.486 # Infreq
        incl      %esi                                          #716.39
        cmpl      %r12d, %esi                                   #716.24
        jge       ..B1.490      # Prob 18%                      #716.24
                                # LOE rcx rbx r11 r13 r15 esi edi r10d r12d
..B1.489:                       # Preds ..B1.488 ..B1.493       # Infreq
        xorl      %eax, %eax                                    #719.6
        cmpq      $1, %r11                                      #719.6
        cmove     %rax, %r11                                    #719.6
        jmp       ..B1.484      # Prob 100%                     #719.6
                                # LOE rcx rbx r11 r13 r15 esi edi r10d r12d
..B1.490:                       # Preds ..B1.488                # Infreq
        incl      %edi                                          #714.38
        cmpl      376(%rsp), %edi                               #714.23
        jge       ..B1.534      # Prob 18%                      #714.23
                                # LOE rcx rbx r11 r13 r15 edi r12d
..B1.491:                       # Preds ..B1.490                # Infreq
        movl      376(%rsp), %eax                               #
        xorl      %edx, %edx                                    #
                                # LOE rcx rbx r11 r13 r15 eax edx edi r12d
..B1.492:                       # Preds ..B1.494 ..B1.491       # Infreq
        movl      %edx, %esi                                    #716.15
        testl     %r12d, %r12d                                  #716.24
        jle       ..B1.494      # Prob 10%                      #716.24
                                # LOE rcx rbx r11 r13 r15 eax edx esi edi r12d
..B1.493:                       # Preds ..B1.492                # Infreq
        movl      %edi, %r10d                                   #721.53
        movl      %eax, 376(%rsp)                               #
        imull     272(%rsp), %r10d                              #721.53
        jmp       ..B1.489      # Prob 100%                     #721.53
                                # LOE rcx rbx r11 r13 r15 esi edi r10d r12d
..B1.494:                       # Preds ..B1.538 ..B1.492       # Infreq
        incl      %edi                                          #714.38
        cmpl      %eax, %edi                                    #714.23
        jl        ..B1.492      # Prob 82%                      #714.23
                                # LOE rcx rbx r11 r13 r15 eax edx edi r12d
..B1.495:                       # Preds ..B1.494                # Infreq
        movl      %eax, 376(%rsp)                               #
        movl      288(%rsp), %r14d                              #
                                # LOE rbx r13 r15 r14d
..B1.496:                       # Preds ..B1.495 ..B1.534 ..B1.636 # Infreq
        movl      336(%rsp), %edx                               #773.4
        xorl      %eax, %eax                                    #773.4
        testl     %edx, %edx                                    #773.4
        cmovg     %edx, %eax                                    #773.4
        lea       (%rax,%rax,4), %ecx                           #773.4
        movslq    %ecx, %rcx                                    #773.4
        lea       -4(%r13,%rcx,4), %rsi                         #773.39
        cmpq      328(%rsp), %rsi                               #771.4
        jb        ..B1.498      # Prob 50%                      #771.4
                                # LOE rcx rbx r13 r15 r14d
..B1.497:                       # Preds ..B1.496                # Infreq
        movq      328(%rsp), %rax                               #773.4
        lea       -4(%rax,%rcx,4), %rdx                         #773.4
        cmpq      %rdx, %r13                                    #771.39
        jbe       ..B1.505      # Prob 50%                      #771.39
                                # LOE rbx r13 r15 r14d
..B1.498:                       # Preds ..B1.496 ..B1.497       # Infreq
        cmpl      $0, 336(%rsp)                                 #770.37
        jle       ..B1.512      # Prob 50%                      #770.37
                                # LOE rbx r13 r15 r14d
..B1.499:                       # Preds ..B1.498                # Infreq
        movl      336(%rsp), %eax                               #770.3
        movl      %eax, %r8d                                    #770.3
        shrl      $31, %r8d                                     #770.3
        xorl      %esi, %esi                                    #770.3
        addl      %eax, %r8d                                    #770.3
        movl      $1, %edx                                      #770.3
        sarl      $1, %r8d                                      #770.3
        xorl      %ecx, %ecx                                    #771.4
        testl     %r8d, %r8d                                    #770.3
        jbe       ..B1.503      # Prob 10%                      #770.3
                                # LOE rbx r13 r15 edx ecx esi r8d r14d
..B1.500:                       # Preds ..B1.499                # Infreq
        movq      328(%rsp), %rax                               #
        .align    16,0x90
                                # LOE rax rbx r13 r15 ecx esi r8d r14d
..B1.501:                       # Preds ..B1.501 ..B1.500       # Infreq
        movslq    %ecx, %rdx                                    #771.39
        incl      %esi                                          #770.3
        addl      $10, %ecx                                     #770.3
        cmpl      %r8d, %esi                                    #770.3
        movl      (%r13,%rdx,4), %r9d                           #771.39
        movl      %r9d, (%rax,%rdx,4)                           #771.4
        movl      24(%r13,%rdx,4), %r9d                         #772.39
        movl      %r9d, 24(%rax,%rdx,4)                         #772.4
        movl      4(%r13,%rdx,4), %r10d                         #772.39
        movl      16(%r13,%rdx,4), %r11d                        #773.39
        movl      20(%r13,%rdx,4), %r12d                        #771.39
        movl      36(%r13,%rdx,4), %r9d                         #773.39
        movl      %r10d, 4(%rax,%rdx,4)                         #772.4
        movl      %r11d, 16(%rax,%rdx,4)                        #773.4
        movl      %r12d, 20(%rax,%rdx,4)                        #771.4
        movl      %r9d, 36(%rax,%rdx,4)                         #773.4
        jb        ..B1.501      # Prob 64%                      #770.3
                                # LOE rax rbx r13 r15 ecx esi r8d r14d
..B1.502:                       # Preds ..B1.501                # Infreq
        lea       1(%rsi,%rsi), %edx                            #771.4
                                # LOE rbx r13 r15 edx r14d
..B1.503:                       # Preds ..B1.502 ..B1.499       # Infreq
        lea       -1(%rdx), %eax                                #770.3
        cmpl      336(%rsp), %eax                               #770.3
        jb        ..B1.511      # Prob 90%                      #770.3
        jmp       ..B1.512      # Prob 100%                     #770.3
                                # LOE rbx r13 r15 edx r14d
..B1.505:                       # Preds ..B1.497                # Infreq
        cmpl      $0, 336(%rsp)                                 #770.37
        jle       ..B1.512      # Prob 50%                      #770.37
                                # LOE rbx r13 r15 r14d
..B1.506:                       # Preds ..B1.505                # Infreq
        movl      336(%rsp), %eax                               #770.3
        movl      %eax, %r8d                                    #770.3
        shrl      $31, %r8d                                     #770.3
        xorl      %esi, %esi                                    #770.3
        addl      %eax, %r8d                                    #770.3
        movl      $1, %edx                                      #770.3
        sarl      $1, %r8d                                      #770.3
        xorl      %ecx, %ecx                                    #771.4
        testl     %r8d, %r8d                                    #770.3
        jbe       ..B1.510      # Prob 10%                      #770.3
                                # LOE rbx r13 r15 edx ecx esi r8d r14d
..B1.507:                       # Preds ..B1.506                # Infreq
        movq      328(%rsp), %rax                               #
        .align    16,0x90
                                # LOE rax rbx r13 r15 ecx esi r8d r14d
..B1.508:                       # Preds ..B1.508 ..B1.507       # Infreq
        movslq    %ecx, %rdx                                    #771.39
        incl      %esi                                          #770.3
        addl      $10, %ecx                                     #770.3
        cmpl      %r8d, %esi                                    #770.3
        movl      (%r13,%rdx,4), %r9d                           #771.39
        movl      %r9d, (%rax,%rdx,4)                           #771.4
        movl      24(%r13,%rdx,4), %r9d                         #772.39
        movl      %r9d, 24(%rax,%rdx,4)                         #772.4
        movl      4(%r13,%rdx,4), %r10d                         #772.39
        movl      16(%r13,%rdx,4), %r11d                        #773.39
        movl      20(%r13,%rdx,4), %r12d                        #771.39
        movl      36(%r13,%rdx,4), %r9d                         #773.39
        movl      %r10d, 4(%rax,%rdx,4)                         #772.4
        movl      %r11d, 16(%rax,%rdx,4)                        #773.4
        movl      %r12d, 20(%rax,%rdx,4)                        #771.4
        movl      %r9d, 36(%rax,%rdx,4)                         #773.4
        jb        ..B1.508      # Prob 64%                      #770.3
                                # LOE rax rbx r13 r15 ecx esi r8d r14d
..B1.509:                       # Preds ..B1.508                # Infreq
        lea       1(%rsi,%rsi), %edx                            #771.4
                                # LOE rbx r13 r15 edx r14d
..B1.510:                       # Preds ..B1.509 ..B1.506       # Infreq
        lea       -1(%rdx), %eax                                #770.3
        cmpl      336(%rsp), %eax                               #770.3
        jae       ..B1.512      # Prob 10%                      #770.3
                                # LOE rbx r13 r15 edx r14d
..B1.511:                       # Preds ..B1.503 ..B1.510       # Infreq
        movq      328(%rsp), %rsi                               #771.4
        lea       (%rdx,%rdx,4), %eax                           #771.39
        movslq    %eax, %rax                                    #771.39
        movl      -20(%r13,%rax,4), %edx                        #771.39
        movl      -16(%r13,%rax,4), %ecx                        #772.39
        movl      -4(%r13,%rax,4), %r13d                        #773.39
        movl      %edx, -20(%rsi,%rax,4)                        #771.4
        movl      %ecx, -16(%rsi,%rax,4)                        #772.4
        movl      %r13d, -4(%rsi,%rax,4)                        #773.4
                                # LOE rbx r15 r14d
..B1.512:                       # Preds ..B1.505 ..B1.498 ..B1.503 ..B1.510 ..B1.511
                                #                               # Infreq
        movl      376(%rsp), %edx                               #789.5
        movl      %edx, %ecx                                    #789.5
        movl      272(%rsp), %eax                               #789.5
        xorb      %r12b, %r12b                                  #780.3
        imull     %eax, %ecx                                    #789.5
        negl      %eax                                          #780.3
        imull     %eax, %edx                                    #789.9
        pxor      %xmm0, %xmm0                                  #781.16
        movdqa    .L_2il0floatpacket.4(%rip), %xmm2             #789.55
        movdqa    .L_2il0floatpacket.5(%rip), %xmm1             #794.56
        movl      336(%rsp), %eax                               #786.4
        addl      %ecx, %edx                                    #789.9
        movl      %edx, 376(%rsp)                               #789.9
        andl      $-4, %eax                                     #786.4
        movq      %r15, 256(%rsp)                               #786.4
        movl      %eax, 264(%rsp)                               #786.4
        movl      %ecx, 280(%rsp)                               #786.4
        movq      %rbx, 304(%rsp)                               #786.4
        movl      %r14d, 288(%rsp)                              #786.4
        movl      %edx, %r15d                                   #786.4
        movl      336(%rsp), %r13d                              #786.4
                                # LOE r13d r15d r12b
..B1.513:                       # Preds ..B1.529 ..B1.512       # Infreq
        xorl      %esi, %esi                                    #781.16
        xorl      %r14d, %r14d                                  #786.46
        xorl      %ebx, %ebx                                    #786.46
        testl     %r13d, %r13d                                  #786.46
        jle       ..B1.526      # Prob 50%                      #786.46
                                # LOE ebx esi r13d r14d r15d r12b
..B1.514:                       # Preds ..B1.513                # Infreq
        cmpl      $4, %r13d                                     #786.4
        jl        ..B1.533      # Prob 10%                      #786.4
                                # LOE ebx esi r13d r14d r15d r12b
..B1.515:                       # Preds ..B1.514                # Infreq
        xorl      %ecx, %ecx                                    #786.4
        pxor      %xmm2, %xmm2                                  #781.16
        pxor      %xmm9, %xmm9                                  #789.5
        movdqa    %xmm2, %xmm1                                  #782.15
        xorl      %edx, %edx                                    #789.5
        movl      264(%rsp), %eax                               #786.4
        movl      %eax, %esi                                    #789.5
        movq      328(%rsp), %rdi                               #789.5
        movdqa    %xmm1, %xmm0                                  #783.15
        movdqa    .L_2il0floatpacket.5(%rip), %xmm10            #789.5
        movdqa    .L_2il0floatpacket.4(%rip), %xmm11            #789.5
        .align    16,0x90
                                # LOE rdi eax edx ecx esi r13d r15d r12b xmm0 xmm1 xmm2 xmm9 xmm10 xmm11
..B1.516:                       # Preds ..B1.516 ..B1.515       # Infreq
        movdqa    %xmm11, %xmm6                                 #789.55
        lea       (%r15,%rdx), %ebx                             #789.9
        movslq    %ebx, %rbx                                    #789.9
        movdqa    %xmm10, %xmm7                                 #794.56
        addl      $4, %ecx                                      #786.4
        addl      $20, %edx                                     #786.4
        cmpl      %esi, %ecx                                    #786.4
        movd      76(%rdi,%rbx,4), %xmm3                        #789.9
        movd      36(%rdi,%rbx,4), %xmm5                        #789.9
        movd      56(%rdi,%rbx,4), %xmm4                        #789.9
        movd      16(%rdi,%rbx,4), %xmm8                        #789.9
        punpckldq %xmm3, %xmm5                                  #789.9
        punpckldq %xmm4, %xmm8                                  #789.9
        punpckldq %xmm5, %xmm8                                  #789.9
        pcmpeqd   %xmm8, %xmm6                                  #789.55
        pcmpeqd   %xmm8, %xmm7                                  #794.56
        pcmpeqd   %xmm9, %xmm8                                  #799.55
        psubd     %xmm6, %xmm2                                  #790.6
        psubd     %xmm7, %xmm1                                  #795.6
        psubd     %xmm8, %xmm0                                  #800.6
        jb        ..B1.516      # Prob 82%                      #786.4
                                # LOE rdi eax edx ecx esi r13d r15d r12b xmm0 xmm1 xmm2 xmm9 xmm10 xmm11
..B1.517:                       # Preds ..B1.516                # Infreq
        movdqa    %xmm0, %xmm3                                  #783.15
        movdqa    %xmm1, %xmm5                                  #782.15
        movdqa    %xmm2, %xmm7                                  #781.16
        psrldq    $8, %xmm3                                     #783.15
        psrldq    $8, %xmm5                                     #782.15
        paddd     %xmm3, %xmm0                                  #783.15
        psrldq    $8, %xmm7                                     #781.16
        paddd     %xmm5, %xmm1                                  #782.15
        paddd     %xmm7, %xmm2                                  #781.16
        movdqa    %xmm0, %xmm4                                  #783.15
        movdqa    %xmm1, %xmm6                                  #782.15
        movdqa    %xmm2, %xmm8                                  #781.16
        psrlq     $32, %xmm4                                    #783.15
        psrlq     $32, %xmm6                                    #782.15
        psrlq     $32, %xmm8                                    #781.16
        paddd     %xmm4, %xmm0                                  #783.15
        paddd     %xmm6, %xmm1                                  #782.15
        paddd     %xmm8, %xmm2                                  #781.16
        movd      %xmm0, %ebx                                   #783.15
        movd      %xmm1, %r14d                                  #782.15
        movd      %xmm2, %esi                                   #781.16
                                # LOE eax ebx esi r13d r14d r15d r12b
..B1.518:                       # Preds ..B1.517 ..B1.533       # Infreq
        cmpl      %r13d, %eax                                   #786.4
        lea       (%rax,%rax,4), %edx                           #786.4
        jae       ..B1.526      # Prob 10%                      #786.4
                                # LOE eax edx ebx esi r13d r14d r15d r12b
..B1.519:                       # Preds ..B1.518                # Infreq
        movq      328(%rsp), %r8                                #
                                # LOE r8 eax edx ebx esi r13d r14d r15d r12b
..B1.520:                       # Preds ..B1.524 ..B1.519       # Infreq
        lea       (%r15,%rdx), %ecx                             #789.9
        movslq    %ecx, %rcx                                    #789.9
        movl      16(%r8,%rcx,4), %edi                          #789.9
        cmpl      $2, %edi                                      #789.55
        je        ..B1.532      # Prob 16%                      #789.55
                                # LOE r8 eax edx ebx esi edi r13d r14d r15d r12b
..B1.521:                       # Preds ..B1.520                # Infreq
        cmpl      $1, %edi                                      #794.56
        je        ..B1.523      # Prob 16%                      #794.56
                                # LOE r8 eax edx ebx esi edi r13d r14d r15d r12b
..B1.522:                       # Preds ..B1.521                # Infreq
        testl     %edi, %edi                                    #800.6
        lea       1(%rbx), %ecx                                 #800.6
        cmove     %ecx, %ebx                                    #800.6
        jmp       ..B1.524      # Prob 100%                     #800.6
                                # LOE r8 eax edx ebx esi r13d r14d r15d r12b
..B1.523:                       # Preds ..B1.532 ..B1.521       # Infreq
        incl      %r14d                                         #795.6
                                # LOE r8 eax edx ebx esi r13d r14d r15d r12b
..B1.524:                       # Preds ..B1.523 ..B1.532 ..B1.522 # Infreq
        incl      %eax                                          #786.4
        addl      $5, %edx                                      #786.4
        cmpl      %r13d, %eax                                   #786.4
        jb        ..B1.520      # Prob 82%                      #786.4
                                # LOE r8 eax edx ebx esi r13d r14d r15d r12b
..B1.526:                       # Preds ..B1.524 ..B1.518 ..B1.513 # Infreq
        movl      $.L_2__STRING.27, %edi                        #805.4
        xorl      %eax, %eax                                    #805.4
..___tag_value_main.99:
#       printf(const char *, ...)
        call      printf                                        #805.4
..___tag_value_main.100:
                                # LOE ebx r13d r14d r15d r12b
..B1.527:                       # Preds ..B1.526                # Infreq
        movl      $.L_2__STRING.28, %edi                        #806.4
        movl      %r14d, %esi                                   #806.4
        xorl      %eax, %eax                                    #806.4
..___tag_value_main.101:
#       printf(const char *, ...)
        call      printf                                        #806.4
..___tag_value_main.102:
                                # LOE ebx r13d r15d r12b
..B1.528:                       # Preds ..B1.527                # Infreq
        movl      $.L_2__STRING.29, %edi                        #807.4
        movl      %ebx, %esi                                    #807.4
        xorl      %eax, %eax                                    #807.4
..___tag_value_main.103:
#       printf(const char *, ...)
        call      printf                                        #807.4
..___tag_value_main.104:
                                # LOE r13d r15d r12b
..B1.529:                       # Preds ..B1.528                # Infreq
        incb      %r12b                                         #780.3
        addl      280(%rsp), %r15d                              #780.3
        cmpb      $4, %r12b                                     #780.3
        jb        ..B1.513      # Prob 75%                      #780.3
                                # LOE r13d r15d r12b
..B1.530:                       # Preds ..B1.529                # Infreq
        movl      $.L_2__STRING.30, %edi                        #814.3
        movl      $1, %eax                                      #814.3
        pxor      %xmm0, %xmm0                                  #814.3
        movq      256(%rsp), %r15                               #
        movq      304(%rsp), %rbx                               #
        movl      288(%rsp), %r14d                              #
..___tag_value_main.105:
#       printf(const char *, ...)
        call      printf                                        #814.3
..___tag_value_main.106:
                                # LOE rbx r14 r15 ebx r14d r15d bl bh r14b r15b
..B1.531:                       # Preds ..B1.530                # Infreq
        movl      (%rbx), %edx                                  #972.5
        jmp       ..B1.214      # Prob 100%                     #972.5
                                # LOE rbx r15 edx r14d
..B1.532:                       # Preds ..B1.520                # Infreq
        incl      %esi                                          #790.6
        cmpl      $1, %edi                                      #794.56
        je        ..B1.523      # Prob 16%                      #794.56
        jmp       ..B1.524      # Prob 100%                     #794.56
                                # LOE r8 eax edx ebx esi r13d r14d r15d r12b
..B1.533:                       # Preds ..B1.514                # Infreq
        xorl      %eax, %eax                                    #786.4
        jmp       ..B1.518      # Prob 100%                     #786.4
                                # LOE eax ebx esi r13d r14d r15d r12b
..B1.534:                       # Preds ..B1.490                # Infreq
        movl      288(%rsp), %r14d                              #
        jmp       ..B1.496      # Prob 100%                     #
                                # LOE rbx r13 r15 r14d
..B1.535:                       # Preds ..B1.484                # Infreq
        movl      %r11d, %r14d                                  #724.6
        imull     336(%rsp), %r14d                              #724.47
        movl      (%rbx,%r11,4), %r9d                           #724.67
        addl      %r9d, %r14d                                   #724.67
        incl      %r9d                                          #730.6
        movl      %r9d, (%rbx,%r11,4)                           #730.6
        movl      (%rcx,%rax,4), %r9d                           #724.119
        addl      $16, (%r15,%r11,4)                            #729.47
        lea       (%r14,%r14,4), %edx                           #724.67
        movslq    %edx, %rdx                                    #724.6
        incq      %r11                                          #733.6
        movl      4(%rcx,%rax,4), %r14d                         #725.119
        cmpl      $1, %r8d                                      #738.15
        movl      %r8d, 16(%r13,%rdx,4)                         #726.6
        movl      %r9d, (%r13,%rdx,4)                           #724.6
        movl      %r14d, 4(%r13,%rdx,4)                         #725.6
        je        ..B1.536      # Prob 16%                      #738.15
        jmp       ..B1.488      # Prob 100%                     #738.15
                                # LOE rcx rbx r11 r13 r15 esi edi r8d r9d r10d r12d r14d
..B1.638:                       # Preds ..B1.485                # Infreq
        movl      (%rcx,%rax,4), %r9d                           #750.119
        movl      4(%rcx,%rax,4), %r14d                         #751.119
                                # LOE rcx rbx r11 r13 r15 esi edi r8d r9d r10d r12d r14d
..B1.536:                       # Preds ..B1.535 ..B1.638       # Infreq
        movl      %r11d, %edx                                   #739.6
        imull     336(%rsp), %edx                               #739.47
        movl      (%rbx,%r11,4), %eax                           #739.67
        addl      %eax, %edx                                    #739.67
        incl      %eax                                          #745.6
        addl      $4, (%r15,%r11,4)                             #744.47
        movl      %eax, (%rbx,%r11,4)                           #745.6
        incq      %r11                                          #746.6
        lea       (%rdx,%rdx,4), %edx                           #739.67
        movslq    %edx, %rdx                                    #739.6
        movl      %r9d, (%r13,%rdx,4)                           #739.6
        movl      %r14d, 4(%r13,%rdx,4)                         #740.6
        movl      %r8d, 16(%r13,%rdx,4)                         #741.6
        jmp       ..B1.488      # Prob 100%                     #741.6
                                # LOE rcx rbx r11 r13 r15 esi edi r10d r12d
..B1.537:                       # Preds ..B1.482                # Infreq
        movl      $1, %edi                                      #714.38
        cmpl      $1, 376(%rsp)                                 #714.23
        jle       ..B1.636      # Prob 18%                      #714.23
                                # LOE rbx r11 r13 r15 edi r12d r14d
..B1.538:                       # Preds ..B1.537                # Infreq
        movl      %r14d, 288(%rsp)                              #539.48
        lea       (%r12,%r12,4), %eax                           #539.48
        movl      %eax, 272(%rsp)                               #539.48
        xorl      %edx, %edx                                    #539.48
        movl      376(%rsp), %eax                               #539.48
        movq      328(%rsp), %rcx                               #539.48
        jmp       ..B1.494      # Prob 100%                     #539.48
                                # LOE rcx rbx r11 r13 r15 eax edx edi r12d
..B1.542:                       # Preds ..B1.118                # Infreq
        incl      %eax                                          #535.37
        addl      %edx, %ecx                                    #535.37
        addl      $16, %r9d                                     #535.37
        cmpl      %r15d, %eax                                   #535.22
        jl        ..B1.118      # Prob 82%                      #535.22
        jmp       ..B1.147      # Prob 100%                     #535.22
                                # LOE r14 eax edx ecx esi r8d r9d r10d r12d r15d
..B1.558:                       # Preds ..B1.77                 # Infreq
        incq      %r12                                          #492.2
        cmpq      %rcx, %r12                                    #492.2
        jl        ..B1.77       # Prob 82%                      #492.2
        jmp       ..B1.82       # Prob 100%                     #492.2
                                # LOE rdx rcx rbx rsi r12 r13
..B1.560:                       # Preds ..B1.74                 # Infreq
        movl      $il0_peep_printf_format_5, %edi               #492.2
        call      puts                                          #492.2
                                # LOE
..B1.561:                       # Preds ..B1.569 ..B1.565 ..B1.560 # Infreq
        movl      $.L_2__STRING.6, %edi                         #492.2
#       system(const char *)
        call      system                                        #492.2
        jmp       ..B1.447      # Prob 100%                     #492.2
                                # LOE
..B1.563:                       # Preds ..B1.66                 # Infreq
        incq      %r12                                          #492.2
        cmpq      %rcx, %r12                                    #492.2
        jl        ..B1.66       # Prob 82%                      #492.2
        jmp       ..B1.71       # Prob 100%                     #492.2
                                # LOE rdx rcx rbx rsi r12 r14
..B1.565:                       # Preds ..B1.63                 # Infreq
        movl      $il0_peep_printf_format_6, %edi               #492.2
        call      puts                                          #492.2
        jmp       ..B1.561      # Prob 100%                     #492.2
                                # LOE
..B1.569:                       # Preds ..B1.36                 # Infreq
        movl      $il0_peep_printf_format_7, %edi               #492.2
        call      puts                                          #492.2
        jmp       ..B1.561      # Prob 100%                     #492.2
                                # LOE
..B1.636:                       # Preds ..B1.481 ..B1.537       # Infreq
        lea       (%r12,%r12,4), %eax                           #539.48
        movl      %eax, 272(%rsp)                               #539.48
        jmp       ..B1.496      # Prob 100%                     #539.48
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r13 r15 r14d
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_1:
	.long	1852732754
	.long	543649385
	.long	1752459639
	.long	1685015840
	.long	1701406313
	.long	1766203492
	.long	796336244
	.long	1869750383
	.long	1868767351
	.long	1701605485
	.long	2123124
	.align 4
il0_peep_printf_format_0:
	.long	1852732754
	.long	543649385
	.long	1752459639
	.long	1767984672
	.long	1830839670
	.long	1869116517
	.word	8292
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_2:
	.long	1852732754
	.long	543649385
	.long	1752459639
	.long	1685015840
	.long	1701406313
	.long	1766203492
	.word	8308
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_4:
	.long	1869771333
	.long	1886330994
	.long	1852403301
	.long	1768300647
	.long	2188652
	.align 4
il0_peep_printf_format_3:
	.long	1852732754
	.long	543649385
	.long	1752459639
	.long	1414548512
	.word	8224
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_5:
	.long	1869771365
	.word	8306
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_6:
	.long	1869771365
	.word	8306
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_7:
	.long	1869771365
	.word	8306
	.byte	0
	.data
# -- End  main
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST1:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
       .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
# --- std::char_traits<char>::length(const std::char_traits<char>::char_type *)
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: %rdi
..B2.1:                         # Preds ..B2.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.108:
..L109:
                                                        #263.7
        pushq     %rsi                                          #263.7
	.cfi_def_cfa_offset 16
        movq      %rdi, %rdx                                    #263.16
        movq      %rdx, %rcx                                    #263.16
        andq      $-16, %rdx                                    #263.16
        pxor      %xmm0, %xmm0                                  #263.16
        pcmpeqb   (%rdx), %xmm0                                 #263.16
        pmovmskb  %xmm0, %eax                                   #263.16
        andl      $15, %ecx                                     #263.16
        shrl      %cl, %eax                                     #263.16
        bsf       %eax, %eax                                    #263.16
        jne       ..L111        # Prob 60%                      #263.16
        movq      %rdx, %rax                                    #263.16
        addq      %rcx, %rdx                                    #263.16
        call      __intel_sse2_strlen                           #263.16
..L111:                                                         #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.1
        popq      %rcx                                          #263.16
	.cfi_def_cfa_offset 8
        ret                                                     #263.16
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
	.size	_ZNSt11char_traitsIcE6lengthEPKc,.-_ZNSt11char_traitsIcE6lengthEPKc
	.data
# -- End  _ZNSt11char_traitsIcE6lengthEPKc
	.text
# -- Begin  _Z9max_arrayPfi
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z9max_arrayPfi
# --- max_array(float *, int)
_Z9max_arrayPfi:
# parameter 1: %rdi
# parameter 2: %esi
..B3.1:                         # Preds ..B3.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z9max_arrayPfi.114:
..L115:
                                                        #95.37
        movss     .L_2il0floatpacket.8(%rip), %xmm0             #98.12
        testl     %esi, %esi                                    #99.18
        jle       ..B3.18       # Prob 50%                      #99.18
                                # LOE rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B3.2:                         # Preds ..B3.1
        movslq    %esi, %rcx                                    #99.2
        cmpq      $8, %rcx                                      #99.2
        jl        ..B3.19       # Prob 10%                      #99.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B3.3:                         # Preds ..B3.2
        movq      %rdi, %rax                                    #99.2
        andq      $15, %rax                                     #99.2
        testl     %eax, %eax                                    #99.2
        je        ..B3.6        # Prob 50%                      #99.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B3.4:                         # Preds ..B3.3
        testb     $3, %al                                       #99.2
        jne       ..B3.19       # Prob 10%                      #99.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B3.5:                         # Preds ..B3.4
        negl      %eax                                          #99.2
        addl      $16, %eax                                     #99.2
        shrl      $2, %eax                                      #99.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B3.6:                         # Preds ..B3.5 ..B3.3
        movl      %eax, %edx                                    #99.2
        lea       8(%rdx), %r8                                  #99.2
        cmpq      %r8, %rcx                                     #99.2
        jl        ..B3.19       # Prob 10%                      #99.2
                                # LOE rdx rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B3.7:                         # Preds ..B3.6
        negl      %eax                                          #99.2
        addl      %esi, %eax                                    #99.2
        andl      $7, %eax                                      #99.2
        subl      %eax, %esi                                    #99.2
        xorl      %eax, %eax                                    #99.2
        movslq    %esi, %rsi                                    #99.2
        testq     %rdx, %rdx                                    #99.2
        jbe       ..B3.11       # Prob 9%                       #99.2
                                # LOE rax rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.9:                         # Preds ..B3.7 ..B3.9
        movss     (%rdi,%rax,4), %xmm1                          #100.7
        movaps    %xmm0, %xmm2                                  #100.3
        movaps    %xmm1, %xmm0                                  #100.3
        incq      %rax                                          #99.2
        comiss    %xmm2, %xmm0                                  #100.3
        ja        ..L116        # Prob 50%                      #100.3
        movaps    %xmm2, %xmm0                                  #100.3
..L116:                                                         #
        cmpq      %rdx, %rax                                    #99.2
        jb        ..B3.9        # Prob 82%                      #99.2
                                # LOE rax rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.11:                        # Preds ..B3.9 ..B3.7
        shufps    $0, %xmm0, %xmm0                              #98.12
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.12:                        # Preds ..B3.12 ..B3.11
        movaps    (%rdi,%rdx,4), %xmm1                          #100.7
        maxps     %xmm0, %xmm1                                  #100.3
        movaps    16(%rdi,%rdx,4), %xmm0                        #100.7
        addq      $8, %rdx                                      #99.2
        maxps     %xmm1, %xmm0                                  #100.3
        cmpq      %rsi, %rdx                                    #99.2
        jb        ..B3.12       # Prob 82%                      #99.2
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.13:                        # Preds ..B3.12
        movaps    %xmm0, %xmm1                                  #98.12
        movhlps   %xmm0, %xmm1                                  #98.12
        maxps     %xmm1, %xmm0                                  #98.12
        movaps    %xmm0, %xmm2                                  #98.12
        shufps    $245, %xmm0, %xmm2                            #98.12
        maxss     %xmm2, %xmm0                                  #98.12
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.14:                        # Preds ..B3.13 ..B3.19
        cmpq      %rcx, %rsi                                    #99.2
        jae       ..B3.18       # Prob 9%                       #99.2
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.16:                        # Preds ..B3.14 ..B3.16
        movss     (%rdi,%rsi,4), %xmm1                          #100.7
        movaps    %xmm0, %xmm2                                  #100.3
        movaps    %xmm1, %xmm0                                  #100.3
        incq      %rsi                                          #99.2
        comiss    %xmm2, %xmm0                                  #100.3
        ja        ..L117        # Prob 50%                      #100.3
        movaps    %xmm2, %xmm0                                  #100.3
..L117:                                                         #
        cmpq      %rcx, %rsi                                    #99.2
        jb        ..B3.16       # Prob 82%                      #99.2
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.18:                        # Preds ..B3.16 ..B3.14 ..B3.1
        ret                                                     #104.9
                                # LOE
..B3.19:                        # Preds ..B3.2 ..B3.4 ..B3.6    # Infreq
        xorl      %esi, %esi                                    #99.2
        jmp       ..B3.14       # Prob 100%                     #99.2
        .align    16,0x90
	.cfi_endproc
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
# mark_end;
	.type	_Z9max_arrayPfi,@function
	.size	_Z9max_arrayPfi,.-_Z9max_arrayPfi
	.data
# -- End  _Z9max_arrayPfi
	.text
# -- Begin  _Z9min_arrayPfi
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z9min_arrayPfi
# --- min_array(float *, int)
_Z9min_arrayPfi:
# parameter 1: %rdi
# parameter 2: %esi
..B4.1:                         # Preds ..B4.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z9min_arrayPfi.119:
..L120:
                                                        #107.37
        movss     .L_2il0floatpacket.21(%rip), %xmm0            #110.12
        testl     %esi, %esi                                    #111.18
        jle       ..B4.18       # Prob 50%                      #111.18
                                # LOE rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B4.2:                         # Preds ..B4.1
        movslq    %esi, %rcx                                    #111.2
        cmpq      $8, %rcx                                      #111.2
        jl        ..B4.19       # Prob 10%                      #111.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B4.3:                         # Preds ..B4.2
        movq      %rdi, %rax                                    #111.2
        andq      $15, %rax                                     #111.2
        testl     %eax, %eax                                    #111.2
        je        ..B4.6        # Prob 50%                      #111.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B4.4:                         # Preds ..B4.3
        testb     $3, %al                                       #111.2
        jne       ..B4.19       # Prob 10%                      #111.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B4.5:                         # Preds ..B4.4
        negl      %eax                                          #111.2
        addl      $16, %eax                                     #111.2
        shrl      $2, %eax                                      #111.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B4.6:                         # Preds ..B4.5 ..B4.3
        movl      %eax, %edx                                    #111.2
        lea       8(%rdx), %r8                                  #111.2
        cmpq      %r8, %rcx                                     #111.2
        jl        ..B4.19       # Prob 10%                      #111.2
                                # LOE rdx rcx rbx rbp rdi r12 r13 r14 r15 eax esi xmm0
..B4.7:                         # Preds ..B4.6
        negl      %eax                                          #111.2
        addl      %esi, %eax                                    #111.2
        andl      $7, %eax                                      #111.2
        subl      %eax, %esi                                    #111.2
        xorl      %eax, %eax                                    #111.2
        movslq    %esi, %rsi                                    #111.2
        testq     %rdx, %rdx                                    #111.2
        jbe       ..B4.11       # Prob 9%                       #111.2
                                # LOE rax rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B4.9:                         # Preds ..B4.7 ..B4.9
        movss     (%rdi,%rax,4), %xmm1                          #112.7
        movaps    %xmm0, %xmm2                                  #112.3
        movaps    %xmm1, %xmm0                                  #112.3
        incq      %rax                                          #111.2
        comiss    %xmm0, %xmm2                                  #112.3
        ja        ..L121        # Prob 50%                      #112.3
        movaps    %xmm2, %xmm0                                  #112.3
..L121:                                                         #
        cmpq      %rdx, %rax                                    #111.2
        jb        ..B4.9        # Prob 82%                      #111.2
                                # LOE rax rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B4.11:                        # Preds ..B4.9 ..B4.7
        shufps    $0, %xmm0, %xmm0                              #110.12
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B4.12:                        # Preds ..B4.12 ..B4.11
        movaps    (%rdi,%rdx,4), %xmm1                          #112.7
        minps     %xmm0, %xmm1                                  #112.3
        movaps    16(%rdi,%rdx,4), %xmm0                        #112.7
        addq      $8, %rdx                                      #111.2
        minps     %xmm1, %xmm0                                  #112.3
        cmpq      %rsi, %rdx                                    #111.2
        jb        ..B4.12       # Prob 82%                      #111.2
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B4.13:                        # Preds ..B4.12
        movaps    %xmm0, %xmm1                                  #110.12
        movhlps   %xmm0, %xmm1                                  #110.12
        minps     %xmm1, %xmm0                                  #110.12
        movaps    %xmm0, %xmm2                                  #110.12
        shufps    $245, %xmm0, %xmm2                            #110.12
        minss     %xmm2, %xmm0                                  #110.12
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B4.14:                        # Preds ..B4.13 ..B4.19
        cmpq      %rcx, %rsi                                    #111.2
        jae       ..B4.18       # Prob 9%                       #111.2
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B4.16:                        # Preds ..B4.14 ..B4.16
        movss     (%rdi,%rsi,4), %xmm1                          #112.7
        movaps    %xmm0, %xmm2                                  #112.3
        movaps    %xmm1, %xmm0                                  #112.3
        incq      %rsi                                          #111.2
        comiss    %xmm0, %xmm2                                  #112.3
        ja        ..L122        # Prob 50%                      #112.3
        movaps    %xmm2, %xmm0                                  #112.3
..L122:                                                         #
        cmpq      %rcx, %rsi                                    #111.2
        jb        ..B4.16       # Prob 82%                      #111.2
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B4.18:                        # Preds ..B4.16 ..B4.14 ..B4.1
        ret                                                     #116.9
                                # LOE
..B4.19:                        # Preds ..B4.2 ..B4.4 ..B4.6    # Infreq
        xorl      %esi, %esi                                    #111.2
        jmp       ..B4.14       # Prob 100%                     #111.2
        .align    16,0x90
	.cfi_endproc
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
# mark_end;
	.type	_Z9min_arrayPfi,@function
	.size	_Z9min_arrayPfi,.-_Z9min_arrayPfi
	.data
# -- End  _Z9min_arrayPfi
	.text
# -- Begin  _Z4meanPfi
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z4meanPfi
# --- mean(float *, int)
_Z4meanPfi:
# parameter 1: %rdi
# parameter 2: %esi
..B5.1:                         # Preds ..B5.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z4meanPfi.124:
..L125:
                                                        #119.32
        pxor      %xmm0, %xmm0                                  #122.12
        testl     %esi, %esi                                    #124.18
        jle       ..B5.25       # Prob 50%                      #124.18
                                # LOE rbx rbp rdi r12 r13 r14 r15 esi xmm0
..B5.2:                         # Preds ..B5.1
        xorb      %al, %al                                      #124.2
        cmpl      $32, %esi                                     #124.2
        jl        ..B5.27       # Prob 10%                      #124.2
                                # LOE rbx rbp rdi r12 r13 r14 r15 esi al xmm0
..B5.3:                         # Preds ..B5.2
        movq      %rdi, %rdx                                    #124.2
        andq      $15, %rdx                                     #124.2
        movl      %edx, %edx                                    #124.2
        testl     %edx, %edx                                    #124.2
        je        ..B5.6        # Prob 50%                      #124.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi al xmm0
..B5.4:                         # Preds ..B5.3
        testb     $3, %dl                                       #124.2
        jne       ..B5.27       # Prob 10%                      #124.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi al xmm0
..B5.5:                         # Preds ..B5.4
        negl      %edx                                          #124.2
        addl      $16, %edx                                     #124.2
        shrl      $2, %edx                                      #124.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi al xmm0
..B5.6:                         # Preds ..B5.5 ..B5.3
        lea       32(%rdx), %ecx                                #124.2
        cmpl      %ecx, %esi                                    #124.2
        jl        ..B5.27       # Prob 10%                      #124.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 esi al xmm0
..B5.7:                         # Preds ..B5.6
        movl      %esi, %ecx                                    #124.2
        xorl      %r8d, %r8d                                    #124.2
        subl      %edx, %ecx                                    #124.2
        andl      $31, %ecx                                     #124.2
        negl      %ecx                                          #124.2
        addl      %esi, %ecx                                    #124.2
        testq     %rdx, %rdx                                    #124.2
        jbe       ..B5.11       # Prob 9%                       #124.2
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 ecx esi al xmm0
..B5.9:                         # Preds ..B5.7 ..B5.9
        addss     (%rdi,%r8,4), %xmm0                           #125.15
        incq      %r8                                           #124.2
        cmpq      %rdx, %r8                                     #124.2
        jb        ..B5.9        # Prob 82%                      #124.2
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 ecx esi al xmm0
..B5.11:                        # Preds ..B5.9 ..B5.7
        movslq    %ecx, %r8                                     #124.2
        pxor      %xmm6, %xmm6                                  #122.12
        movaps    %xmm6, %xmm7                                  #122.12
        movaps    %xmm6, %xmm5                                  #122.12
        movss     %xmm0, %xmm7                                  #122.12
        movaps    %xmm6, %xmm4                                  #122.12
        movaps    %xmm6, %xmm3                                  #122.12
        movaps    %xmm6, %xmm2                                  #122.12
        movaps    %xmm6, %xmm1                                  #122.12
        movaps    %xmm6, %xmm0                                  #122.12
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 ecx esi al xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.12:                        # Preds ..B5.12 ..B5.11
        addps     (%rdi,%rdx,4), %xmm7                          #125.15
        addps     16(%rdi,%rdx,4), %xmm6                        #125.15
        addps     32(%rdi,%rdx,4), %xmm5                        #125.15
        addps     48(%rdi,%rdx,4), %xmm4                        #125.15
        addps     64(%rdi,%rdx,4), %xmm3                        #125.15
        addps     80(%rdi,%rdx,4), %xmm2                        #125.15
        addps     96(%rdi,%rdx,4), %xmm1                        #125.15
        addps     112(%rdi,%rdx,4), %xmm0                       #125.15
        addq      $32, %rdx                                     #124.2
        cmpq      %r8, %rdx                                     #124.2
        jb        ..B5.12       # Prob 82%                      #124.2
                                # LOE rdx rbx rbp rdi r8 r12 r13 r14 r15 ecx esi al xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B5.13:                        # Preds ..B5.12
        addps     %xmm6, %xmm7                                  #122.12
        addps     %xmm4, %xmm5                                  #122.12
        addps     %xmm2, %xmm3                                  #122.12
        addps     %xmm0, %xmm1                                  #122.12
        addps     %xmm5, %xmm7                                  #122.12
        addps     %xmm1, %xmm3                                  #122.12
        addps     %xmm3, %xmm7                                  #122.12
        movaps    %xmm7, %xmm0                                  #122.12
        movhlps   %xmm7, %xmm0                                  #122.12
        addps     %xmm0, %xmm7                                  #122.12
        movaps    %xmm7, %xmm1                                  #122.12
        shufps    $245, %xmm7, %xmm1                            #122.12
        addss     %xmm1, %xmm7                                  #122.12
        movaps    %xmm7, %xmm0                                  #122.12
                                # LOE rbx rbp rdi r12 r13 r14 r15 ecx esi al xmm0
..B5.14:                        # Preds ..B5.13 ..B5.27
        lea       1(%rcx), %edx                                 #124.2
        cmpl      %edx, %esi                                    #124.2
        jb        ..B5.25       # Prob 50%                      #124.2
                                # LOE rbx rbp rdi r12 r13 r14 r15 ecx esi al xmm0
..B5.15:                        # Preds ..B5.14
        movslq    %esi, %rdx                                    #124.2
        movslq    %ecx, %rcx                                    #124.2
        subq      %rcx, %rdx                                    #124.2
        cmpb      $1, %al                                       #124.2
        jne       ..B5.17       # Prob 50%                      #124.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 ecx esi xmm0
..B5.16:                        # Preds ..B5.17 ..B5.15
        xorl      %eax, %eax                                    #124.2
        jmp       ..B5.21       # Prob 100%                     #124.2
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 ecx esi xmm0
..B5.17:                        # Preds ..B5.15
        cmpq      $4, %rdx                                      #124.2
        jl        ..B5.16       # Prob 10%                      #124.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 ecx esi xmm0
..B5.18:                        # Preds ..B5.17
        movslq    %ecx, %rcx                                    #125.15
        movl      %edx, %eax                                    #124.2
        andl      $-4, %eax                                     #124.2
        xorl      %r9d, %r9d                                    #124.2
        pxor      %xmm1, %xmm1                                  #122.12
        movslq    %eax, %rax                                    #124.2
        movss     %xmm0, %xmm1                                  #122.12
        lea       (%rdi,%rcx,4), %r8                            #125.15
                                # LOE rax rdx rbx rbp rdi r8 r9 r12 r13 r14 r15 ecx esi xmm1
..B5.19:                        # Preds ..B5.19 ..B5.18
        addps     (%r8,%r9,4), %xmm1                            #125.15
        addq      $4, %r9                                       #124.2
        cmpq      %rax, %r9                                     #124.2
        jb        ..B5.19       # Prob 82%                      #124.2
                                # LOE rax rdx rbx rbp rdi r8 r9 r12 r13 r14 r15 ecx esi xmm1
..B5.20:                        # Preds ..B5.19
        movaps    %xmm1, %xmm0                                  #122.12
        movhlps   %xmm1, %xmm0                                  #122.12
        addps     %xmm0, %xmm1                                  #122.12
        movaps    %xmm1, %xmm2                                  #122.12
        shufps    $245, %xmm1, %xmm2                            #122.12
        addss     %xmm2, %xmm1                                  #122.12
        movaps    %xmm1, %xmm0                                  #122.12
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 ecx esi xmm0
..B5.21:                        # Preds ..B5.20 ..B5.16
        cmpq      %rdx, %rax                                    #124.2
        jae       ..B5.25       # Prob 9%                       #124.2
                                # LOE rax rdx rbx rbp rdi r12 r13 r14 r15 ecx esi xmm0
..B5.22:                        # Preds ..B5.21
        movslq    %ecx, %rcx                                    #125.15
        lea       (%rdi,%rcx,4), %rcx                           #125.15
                                # LOE rax rdx rcx rbx rbp r12 r13 r14 r15 esi xmm0
..B5.23:                        # Preds ..B5.23 ..B5.22
        addss     (%rcx,%rax,4), %xmm0                          #125.15
        incq      %rax                                          #124.2
        cmpq      %rdx, %rax                                    #124.2
        jb        ..B5.23       # Prob 82%                      #124.2
                                # LOE rax rdx rcx rbx rbp r12 r13 r14 r15 esi xmm0
..B5.25:                        # Preds ..B5.23 ..B5.21 ..B5.14 ..B5.1
        pxor      %xmm1, %xmm1                                  #127.15
        cvtsi2ss  %esi, %xmm1                                   #127.15
        divss     %xmm1, %xmm0                                  #127.15
        ret                                                     #128.9
                                # LOE
..B5.27:                        # Preds ..B5.2 ..B5.4 ..B5.6    # Infreq
        movb      $1, %al                                       #124.2
        xorl      %ecx, %ecx                                    #124.2
        jmp       ..B5.14       # Prob 100%                     #124.2
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx rbp rdi r12 r13 r14 r15 ecx esi al xmm0
# mark_end;
	.type	_Z4meanPfi,@function
	.size	_Z4meanPfi,.-_Z4meanPfi
	.data
# -- End  _Z4meanPfi
	.text
# -- Begin  _Z12makeSarImagePf
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z12makeSarImagePf
# --- makeSarImage(float *)
_Z12makeSarImagePf:
# parameter 1: %rdi
..B6.1:                         # Preds ..B6.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z12makeSarImagePf.127:
..L128:
                                                        #155.49
        pushq     %r12                                          #155.49
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #155.49
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #155.49
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #155.49
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #155.49
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #155.49
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $264, %rsp                                    #155.49
	.cfi_def_cfa_offset 320
        movq      %rdi, %rbx                                    #155.49
        movl      $.L_2__STRING.0, %edi                         #157.19
        movl      $.L_2__STRING.4, %esi                         #162.2
        movq      %rdi, fnamePHXheader(%rip)                    #157.2
        movq      $.L_2__STRING.1, fnamePAUX(%rip)              #158.2
        movq      $.L_2__STRING.2, fnamePHdata_pdcph_I(%rip)    #159.2
        movq      $.L_2__STRING.3, fnamePHdata_pdcph_Q(%rip)    #160.2
#       fopen(const char *, const char *)
        call      fopen                                         #162.2
                                # LOE rax rbx r12 r13
..B6.79:                        # Preds ..B6.1
        movq      %rax, %rbp                                    #162.2
                                # LOE rbx rbp r12 r13
..B6.2:                         # Preds ..B6.79 ..B6.3
        movq      %rbp, %rdi                                    #162.2
        movl      $.L_2__STRING.8, %esi                         #162.2
        xorl      %eax, %eax                                    #162.2
        lea       (%rsp), %rdx                                  #162.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #162.2
                                # LOE rbx rbp r12 r13 eax
..B6.3:                         # Preds ..B6.2
        cmpb      $-1, %al                                      #162.2
        jne       ..B6.2        # Prob 82%                      #162.2
                                # LOE rbx rbp r12 r13
..B6.4:                         # Preds ..B6.3
        testq     %rbp, %rbp                                    #162.2
        je        ..B6.6        # Prob 32%                      #162.2
                                # LOE rbx rbp r12 r13
..B6.5:                         # Preds ..B6.4
        movq      %rbp, %rdi                                    #162.2
#       fclose(FILE *)
        call      fclose                                        #162.2
                                # LOE rbx r12 r13
..B6.6:                         # Preds ..B6.5 ..B6.4
        pxor      %xmm0, %xmm0                                  #162.2
        cvtsi2ss  sar_data_K(%rip), %xmm0                       #162.2
        movss     .L_2il0floatpacket.1(%rip), %xmm1             #162.2
        divss     %xmm0, %xmm1                                  #162.2
        movslq    sar_data_Np(%rip), %r15                       #164.53
        movss     %xmm1, sar_data_deltaF(%rip)                  #162.2
        lea       (,%r15,8), %rdi                               #164.28
#       malloc(size_t)
        call      malloc                                        #164.28
                                # LOE rax rbx r12 r13 r15
..B6.81:                        # Preds ..B6.6
        movq      %rax, %r14                                    #164.28
                                # LOE rbx r12 r13 r14 r15
..B6.7:                         # Preds ..B6.81
        xorl      %ebp, %ebp                                    #165.13
        testq     %r15, %r15                                    #165.22
        jle       ..B6.12       # Prob 10%                      #165.22
                                # LOE rbx rbp r12 r13 r14 r15
..B6.9:                         # Preds ..B6.7 ..B6.10
        movl      $136, %edi                                    #166.23
#       malloc(size_t)
        call      malloc                                        #166.23
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.10:                        # Preds ..B6.9
        movq      %rax, (%r14,%rbp,8)                           #166.3
        incq      %rbp                                          #165.35
        cmpq      %r15, %rbp                                    #165.22
        jl        ..B6.9        # Prob 82%                      #165.22
                                # LOE rbx rbp r12 r13 r14 r15
..B6.12:                        # Preds ..B6.10 ..B6.7
        movl      $.L_2__STRING.4, %esi                         #175.2
        movq      fnamePAUX(%rip), %rdi                         #175.2
#       fopen(const char *, const char *)
        call      fopen                                         #175.2
                                # LOE rax rbx r12 r13 r14
..B6.83:                        # Preds ..B6.12
        movq      %rax, %r15                                    #175.2
                                # LOE rbx r12 r13 r14 r15
..B6.13:                        # Preds ..B6.83
        testq     %r15, %r15                                    #175.2
        je        ..B6.74       # Prob 0%                       #175.2
                                # LOE rbx r12 r13 r14 r15
..B6.14:                        # Preds ..B6.13
        xorl      %ebp, %ebp                                    #175.2
        cmpl      $0, sar_data_Np(%rip)                         #175.2
        jle       ..B6.21       # Prob 10%                      #175.2
                                # LOE rbx rbp r12 r13 r14 r15
..B6.16:                        # Preds ..B6.14 ..B6.19
        xorb      %r13b, %r13b                                  #175.2
        xorl      %r12d, %r12d                                  #175.2
                                # LOE rbx rbp r12 r14 r15 r13b
..B6.17:                        # Preds ..B6.18 ..B6.16
        movq      %r12, %rdx                                    #175.2
        movq      %r15, %rdi                                    #175.2
        addq      (%r14,%rbp,8), %rdx                           #175.2
        movl      $.L_2__STRING.7, %esi                         #175.2
        xorl      %eax, %eax                                    #175.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #175.2
                                # LOE rbx rbp r12 r14 r15 r13b
..B6.18:                        # Preds ..B6.17
        incb      %r13b                                         #175.2
        addq      $4, %r12                                      #175.2
        cmpb      $34, %r13b                                    #175.2
        jl        ..B6.17       # Prob 97%                      #175.2
                                # LOE rbx rbp r12 r14 r15 r13b
..B6.19:                        # Preds ..B6.18
        incq      %rbp                                          #175.2
        movslq    sar_data_Np(%rip), %rax                       #175.2
        cmpq      %rax, %rbp                                    #175.2
        jl        ..B6.16       # Prob 82%                      #175.2
                                # LOE rbx rbp r14 r15
..B6.21:                        # Preds ..B6.19 ..B6.14
        movq      %r15, %rdi                                    #175.2
#       fclose(FILE *)
        call      fclose                                        #175.2
                                # LOE rbx r12 r13 r14
..B6.22:                        # Preds ..B6.21
        movq      (%r14), %rax                                  #182.18
        movslq    sar_data_Np(%rip), %rbp                       #202.22
        testq     %rbp, %rbp                                    #202.22
        movl      116(%rax), %edx                               #182.18
        movl      %edx, sar_data_minF(%rip)                     #182.2
        movl      $0, %edx                                      #202.13
        jle       ..B6.26       # Prob 10%                      #202.22
                                # LOE rdx rbx rbp r12 r13 r14
..B6.23:                        # Preds ..B6.22
        movq      sar_data_XYZR(%rip), %rax                     #203.3
                                # LOE rax rdx rbx rbp r12 r13 r14
..B6.24:                        # Preds ..B6.24 ..B6.23
        movl      %edx, %ecx                                    #203.3
        shll      $2, %ecx                                      #203.19
        movq      (%r14,%rdx,8), %r10                           #203.26
        incq      %rdx                                          #202.34
        movslq    %ecx, %rcx                                    #203.3
        cmpq      %rbp, %rdx                                    #202.22
        movl      64(%r10), %esi                                #203.26
        movl      68(%r10), %edi                                #204.26
        movl      72(%r10), %r8d                                #205.26
        movl      76(%r10), %r11d                               #206.25
        movl      %esi, (%rax,%rcx,4)                           #203.3
        movl      %edi, 4(%rax,%rcx,4)                          #204.3
        movl      %r8d, 8(%rax,%rcx,4)                          #205.3
        movl      %r11d, 12(%rax,%rcx,4)                        #206.3
        jl        ..B6.24       # Prob 82%                      #202.22
                                # LOE rax rdx rbx rbp r12 r13 r14
..B6.26:                        # Preds ..B6.24 ..B6.22
        lea       (,%rbp,8), %r14                               #211.65
        movq      %r14, %rdi                                    #211.40
#       malloc(size_t)
        call      malloc                                        #211.40
                                # LOE rax rbx rbp r12 r13 r14
..B6.84:                        # Preds ..B6.26
        movq      %rax, %r15                                    #211.40
                                # LOE rbx rbp r12 r13 r14 r15
..B6.27:                        # Preds ..B6.84
        xorl      %eax, %eax                                    #212.13
        testq     %rbp, %rbp                                    #212.22
        jle       ..B6.32       # Prob 10%                      #212.22
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.28:                        # Preds ..B6.27
        movslq    sar_data_K(%rip), %rdi                        #213.58
        movq      %rax, %r13                                    #213.58
        shlq      $2, %rdi                                      #213.58
        movq      %rdi, %r12                                    #213.58
                                # LOE rbx rbp r12 r13 r14 r15
..B6.29:                        # Preds ..B6.30 ..B6.28
        movq      %r12, %rdi                                    #213.35
#       malloc(size_t)
        call      malloc                                        #213.35
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.30:                        # Preds ..B6.29
        movq      %rax, (%r15,%r13,8)                           #213.3
        incq      %r13                                          #212.35
        cmpq      %rbp, %r13                                    #212.22
        jl        ..B6.29       # Prob 82%                      #212.22
                                # LOE rbx rbp r12 r13 r14 r15
..B6.32:                        # Preds ..B6.30 ..B6.27
        movq      %r14, %rdi                                    #215.40
#       malloc(size_t)
        call      malloc                                        #215.40
                                # LOE rax rbx rbp r12 r13 r15
..B6.86:                        # Preds ..B6.32
        movq      %rax, %r14                                    #215.40
                                # LOE rbx rbp r12 r13 r14 r15
..B6.33:                        # Preds ..B6.86
        xorl      %eax, %eax                                    #216.13
        testq     %rbp, %rbp                                    #216.22
        jle       ..B6.38       # Prob 10%                      #216.22
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.34:                        # Preds ..B6.33
        movslq    sar_data_K(%rip), %rdi                        #217.58
        movq      %rax, %r12                                    #217.58
        shlq      $2, %rdi                                      #217.58
        movq      %rbp, %r13                                    #217.58
        movq      %rdi, %rbp                                    #217.58
                                # LOE rbx rbp r12 r13 r14 r15
..B6.35:                        # Preds ..B6.36 ..B6.34
        movq      %rbp, %rdi                                    #217.35
#       malloc(size_t)
        call      malloc                                        #217.35
                                # LOE rax rbx rbp r12 r13 r14 r15
..B6.36:                        # Preds ..B6.35
        movq      %rax, (%r14,%r12,8)                           #217.3
        incq      %r12                                          #216.35
        cmpq      %r13, %r12                                    #216.22
        jl        ..B6.35       # Prob 82%                      #216.22
                                # LOE rbx rbp r12 r13 r14 r15
..B6.38:                        # Preds ..B6.36 ..B6.33
        movl      $.L_2__STRING.4, %esi                         #219.2
        movq      fnamePHdata_pdcph_I(%rip), %rdi               #219.2
#       fopen(const char *, const char *)
        call      fopen                                         #219.2
                                # LOE rax rbx r12 r13 r14 r15
..B6.39:                        # Preds ..B6.38
        testq     %rax, %rax                                    #219.2
        je        ..B6.71       # Prob 0%                       #219.2
                                # LOE rax rbx r12 r13 r14 r15
..B6.40:                        # Preds ..B6.39
        movslq    sar_data_Np(%rip), %rsi                       #219.2
        xorl      %ebp, %ebp                                    #219.2
        testq     %rsi, %rsi                                    #219.2
        jle       ..B6.48       # Prob 10%                      #219.2
                                # LOE rax rbx rbp rsi r12 r13 r14 r15
..B6.41:                        # Preds ..B6.40
        movslq    sar_data_K(%rip), %rdx                        #219.2
        movq      %rbx, 256(%rsp)                               #219.2
        movq      %rax, %rbx                                    #219.2
                                # LOE rdx rbx rbp rsi r14 r15
..B6.42:                        # Preds ..B6.69 ..B6.46 ..B6.41
        xorl      %r12d, %r12d                                  #219.2
        xorl      %r13d, %r13d                                  #219.2
        testq     %rdx, %rdx                                    #219.2
        jle       ..B6.69       # Prob 10%                      #219.2
                                # LOE rdx rbx rbp rsi r12 r13 r14 r15
..B6.44:                        # Preds ..B6.42 ..B6.45
        movq      %r13, %rdx                                    #219.2
        movq      %rbx, %rdi                                    #219.2
        addq      (%r15,%rbp,8), %rdx                           #219.2
        movl      $.L_2__STRING.7, %esi                         #219.2
        xorl      %eax, %eax                                    #219.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #219.2
                                # LOE rbx rbp r12 r13 r14 r15
..B6.45:                        # Preds ..B6.44
        incq      %r12                                          #219.2
        addq      $4, %r13                                      #219.2
        movslq    sar_data_K(%rip), %rdx                        #219.2
        cmpq      %rdx, %r12                                    #219.2
        jl        ..B6.44       # Prob 82%                      #219.2
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B6.46:                        # Preds ..B6.45
        incq      %rbp                                          #219.2
        movslq    sar_data_Np(%rip), %rsi                       #219.2
        cmpq      %rsi, %rbp                                    #219.2
        jl        ..B6.42       # Prob 82%                      #219.2
                                # LOE rdx rbx rbp rsi r14 r15
..B6.47:                        # Preds ..B6.69 ..B6.46         # Infreq
        movq      %rbx, %rax                                    #
        movq      256(%rsp), %rbx                               #
                                # LOE rax rbx r12 r13 r14 r15
..B6.48:                        # Preds ..B6.47 ..B6.40         # Infreq
        movq      %rax, %rdi                                    #219.2
#       fclose(FILE *)
        call      fclose                                        #219.2
                                # LOE rbx r12 r13 r14 r15
..B6.49:                        # Preds ..B6.48                 # Infreq
        movl      $.L_2__STRING.4, %esi                         #219.2
        movq      fnamePHdata_pdcph_Q(%rip), %rdi               #219.2
#       fopen(const char *, const char *)
        call      fopen                                         #219.2
                                # LOE rax rbx r12 r13 r14 r15
..B6.50:                        # Preds ..B6.49                 # Infreq
        testq     %rax, %rax                                    #219.2
        je        ..B6.66       # Prob 0%                       #219.2
                                # LOE rax rbx r12 r13 r14 r15
..B6.51:                        # Preds ..B6.50                 # Infreq
        movslq    sar_data_Np(%rip), %rsi                       #219.2
        xorl      %ebp, %ebp                                    #219.2
        testq     %rsi, %rsi                                    #219.2
        jle       ..B6.59       # Prob 10%                      #219.2
                                # LOE rax rbx rbp rsi r12 r13 r14 r15
..B6.52:                        # Preds ..B6.51                 # Infreq
        movslq    sar_data_K(%rip), %rdx                        #219.2
        movq      %rbx, 256(%rsp)                               #219.2
        movq      %rax, %rbx                                    #219.2
                                # LOE rdx rbx rbp rsi r14 r15
..B6.53:                        # Preds ..B6.64 ..B6.57 ..B6.52 # Infreq
        xorl      %r12d, %r12d                                  #219.2
        xorl      %r13d, %r13d                                  #219.2
        testq     %rdx, %rdx                                    #219.2
        jle       ..B6.64       # Prob 10%                      #219.2
                                # LOE rdx rbx rbp rsi r12 r13 r14 r15
..B6.55:                        # Preds ..B6.53 ..B6.56         # Infreq
        movq      %r13, %rdx                                    #219.2
        movq      %rbx, %rdi                                    #219.2
        addq      (%r14,%rbp,8), %rdx                           #219.2
        movl      $.L_2__STRING.7, %esi                         #219.2
        xorl      %eax, %eax                                    #219.2
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #219.2
                                # LOE rbx rbp r12 r13 r14 r15
..B6.56:                        # Preds ..B6.55                 # Infreq
        incq      %r12                                          #219.2
        addq      $4, %r13                                      #219.2
        movslq    sar_data_K(%rip), %rdx                        #219.2
        cmpq      %rdx, %r12                                    #219.2
        jl        ..B6.55       # Prob 82%                      #219.2
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B6.57:                        # Preds ..B6.56                 # Infreq
        incq      %rbp                                          #219.2
        movslq    sar_data_Np(%rip), %rsi                       #219.2
        cmpq      %rsi, %rbp                                    #219.2
        jl        ..B6.53       # Prob 82%                      #219.2
                                # LOE rdx rbx rbp rsi r14 r15
..B6.58:                        # Preds ..B6.64 ..B6.57         # Infreq
        movq      %rbx, %rax                                    #
        movq      256(%rsp), %rbx                               #
                                # LOE rax rbx r12 r13 r14 r15
..B6.59:                        # Preds ..B6.58 ..B6.51         # Infreq
        movq      %rax, %rdi                                    #219.2
#       fclose(FILE *)
        call      fclose                                        #219.2
                                # LOE rbx r12 r13 r14 r15
..B6.60:                        # Preds ..B6.59                 # Infreq
        movq      %r15, %rcx                                    #223.2
        movq      %r14, %r8                                     #223.2
        movq      %rbx, %r9                                     #223.2
        movl      sar_data_Np(%rip), %edi                       #223.2
        movl      sar_data_Nfft(%rip), %esi                     #223.2
        movl      sar_data_K(%rip), %edx                        #223.2
..___tag_value__Z12makeSarImagePf.142:
#       getIfftresults(int, int, int, float **, float **, float *)
        call      getIfftresults                                #223.2
..___tag_value__Z12makeSarImagePf.143:
                                # LOE r12 r13 r14 r15
..B6.61:                        # Preds ..B6.60                 # Infreq
        movss     sar_data_deltaF(%rip), %xmm0                  #235.42
        pxor      %xmm3, %xmm3                                  #237.27
        movss     .L_2il0floatpacket.2(%rip), %xmm2             #233.8
        movq      %r15, %rdi                                    #241.2
        cvtsi2ss  sar_data_Nfft(%rip), %xmm3                    #237.27
        addss     %xmm0, %xmm0                                  #235.42
        divss     %xmm0, %xmm2                                  #235.42
        movaps    %xmm2, %xmm1                                  #237.27
        divss     %xmm3, %xmm1                                  #237.27
        divss     %xmm2, %xmm3                                  #238.26
        movss     %xmm1, prep2(%rip)                            #237.2
        movss     %xmm3, prep3(%rip)                            #238.2
        movl      $859047967, prepi(%rip)                       #239.2
#       free(void *)
        call      free                                          #241.2
                                # LOE r12 r13 r14
..B6.62:                        # Preds ..B6.61                 # Infreq
        movq      %r14, %rdi                                    #242.2
#       free(void *)
        call      free                                          #242.2
                                # LOE r12 r13
..B6.63:                        # Preds ..B6.62                 # Infreq
        addq      $264, %rsp                                    #244.1
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #244.1
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #244.1
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #244.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #244.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #244.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #244.1
	.cfi_def_cfa_offset 8
        ret                                                     #244.1
	.cfi_def_cfa_offset 320
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B6.64:                        # Preds ..B6.53                 # Infreq
        incq      %rbp                                          #219.2
        cmpq      %rsi, %rbp                                    #219.2
        jl        ..B6.53       # Prob 82%                      #219.2
        jmp       ..B6.58       # Prob 100%                     #219.2
                                # LOE rdx rbx rbp rsi r14 r15
..B6.66:                        # Preds ..B6.50                 # Infreq
        movl      $il0_peep_printf_format_8, %edi               #219.2
        call      puts                                          #219.2
                                # LOE
..B6.67:                        # Preds ..B6.74 ..B6.71 ..B6.66 # Infreq
        movl      $.L_2__STRING.6, %edi                         #219.2
#       system(const char *)
        call      system                                        #219.2
                                # LOE
..B6.68:                        # Preds ..B6.67                 # Infreq
        movl      $1, %edi                                      #219.2
#       exit(int)
        call      exit                                          #219.2
                                # LOE
..B6.69:                        # Preds ..B6.42                 # Infreq
        incq      %rbp                                          #219.2
        cmpq      %rsi, %rbp                                    #219.2
        jl        ..B6.42       # Prob 82%                      #219.2
        jmp       ..B6.47       # Prob 100%                     #219.2
                                # LOE rdx rbx rbp rsi r14 r15
..B6.71:                        # Preds ..B6.39                 # Infreq
        movl      $il0_peep_printf_format_9, %edi               #219.2
        call      puts                                          #219.2
        jmp       ..B6.67       # Prob 100%                     #219.2
                                # LOE
..B6.74:                        # Preds ..B6.13                 # Infreq
        movl      $il0_peep_printf_format_10, %edi              #175.2
        call      puts                                          #175.2
        jmp       ..B6.67       # Prob 100%                     #175.2
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_Z12makeSarImagePf,@function
	.size	_Z12makeSarImagePf,.-_Z12makeSarImagePf
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_8:
	.long	1869771365
	.word	8306
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_9:
	.long	1869771365
	.word	8306
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_10:
	.long	1869771365
	.word	8306
	.byte	0
	.data
# -- End  _Z12makeSarImagePf
	.text
# -- Begin  _Z16readPostDCPHPauxPPf
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z16readPostDCPHPauxPPf
# --- readPostDCPHPaux(float **)
_Z16readPostDCPHPauxPPf:
# parameter 1: %rdi
..B7.1:                         # Preds ..B7.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z16readPostDCPHPauxPPf.165:
..L166:
                                                        #246.37
        pushq     %r12                                          #246.37
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        subq      $32, %rsp                                     #246.37
	.cfi_def_cfa_offset 48
        movl      $.L_2__STRING.4, %esi                         #248.13
        movq      %rdi, %r12                                    #246.37
        movq      fnamePAUX(%rip), %rdi                         #248.13
#       fopen(const char *, const char *)
        call      fopen                                         #248.13
                                # LOE rax rbx rbp r12 r13 r14 r15
..B7.17:                        # Preds ..B7.1
        movq      %rax, %rdi                                    #248.13
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B7.2:                         # Preds ..B7.17
        testq     %rdi, %rdi                                    #250.15
        je        ..B7.12       # Prob 0%                       #250.15
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B7.3:                         # Preds ..B7.2
        xorl      %eax, %eax                                    #256.7
        cmpl      $0, sar_data_Np(%rip)                         #256.18
        jle       ..B7.10       # Prob 10%                      #256.18
                                # LOE rax rbx rbp rdi r12 r13 r14 r15
..B7.4:                         # Preds ..B7.3
        movq      %r13, 24(%rsp)                                #
	.cfi_offset 13, -24
        movq      %r12, %r13                                    #
        movq      %r14, 16(%rsp)                                #
	.cfi_offset 14, -32
        movq      %rax, %r12                                    #
        movq      %r15, 8(%rsp)                                 #
	.cfi_offset 15, -40
        movq      %rdi, %r14                                    #
        movq      %rbx, (%rsp)                                  #
	.cfi_offset 3, -48
                                # LOE rbp r12 r13 r14
..B7.5:                         # Preds ..B7.8 ..B7.4
        xorb      %bl, %bl                                      #260.8
        xorl      %r15d, %r15d                                  #260.8
                                # LOE rbp r12 r13 r14 r15 bl
..B7.6:                         # Preds ..B7.7 ..B7.5
        movq      %r15, %rdx                                    #262.4
        movq      %r14, %rdi                                    #262.4
        addq      (%r13,%r12,8), %rdx                           #262.4
        movl      $.L_2__STRING.7, %esi                         #262.4
        xorl      %eax, %eax                                    #262.4
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #262.4
                                # LOE rbp r12 r13 r14 r15 bl
..B7.7:                         # Preds ..B7.6
        incb      %bl                                           #260.25
        addq      $4, %r15                                      #260.25
        cmpb      $34, %bl                                      #260.19
        jl        ..B7.6        # Prob 97%                      #260.19
                                # LOE rbp r12 r13 r14 r15 bl
..B7.8:                         # Preds ..B7.7
        incq      %r12                                          #256.31
        movslq    sar_data_Np(%rip), %rdx                       #256.18
        cmpq      %rdx, %r12                                    #256.18
        jl        ..B7.5        # Prob 82%                      #256.18
                                # LOE rbp r12 r13 r14
..B7.9:                         # Preds ..B7.8
        movq      24(%rsp), %r13                                #
	.cfi_restore 13
        movq      %r14, %rdi                                    #
        movq      16(%rsp), %r14                                #
	.cfi_restore 14
        movq      8(%rsp), %r15                                 #
	.cfi_restore 15
        movq      (%rsp), %rbx                                  #
	.cfi_restore 3
                                # LOE rbx rbp rdi r13 r14 r15
..B7.10:                        # Preds ..B7.9 ..B7.3
        addq      $32, %rsp                                     #268.2
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #268.2
	.cfi_def_cfa_offset 8
#       fclose(FILE *)
        jmp       fclose                                        #268.2
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -16
                                # LOE
..B7.12:                        # Preds ..B7.2                  # Infreq
        movl      $il0_peep_printf_format_11, %edi              #251.3
        call      puts                                          #251.3
                                # LOE
..B7.13:                        # Preds ..B7.12                 # Infreq
        movl      $.L_2__STRING.6, %edi                         #252.3
#       system(const char *)
        call      system                                        #252.3
                                # LOE
..B7.14:                        # Preds ..B7.13                 # Infreq
        movl      $1, %edi                                      #253.3
#       exit(int)
        call      exit                                          #253.3
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_Z16readPostDCPHPauxPPf,@function
	.size	_Z16readPostDCPHPauxPPf,.-_Z16readPostDCPHPauxPPf
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_11:
	.long	1869771365
	.word	8306
	.byte	0
	.data
# -- End  _Z16readPostDCPHPauxPPf
	.text
# -- Begin  _Z12readPostDCPHPPfS0_
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z12readPostDCPHPPfS0_
# --- readPostDCPH(float **, float **)
_Z12readPostDCPHPPfS0_:
# parameter 1: %rdi
# parameter 2: %rsi
..B8.1:                         # Preds ..B8.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z12readPostDCPHPPfS0_.184:
..L185:
                                                        #273.53
        pushq     %r13                                          #273.53
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        pushq     %r14                                          #273.53
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        pushq     %r15                                          #273.53
	.cfi_def_cfa_offset 32
	.cfi_offset 15, -32
        pushq     %rbx                                          #273.53
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
        pushq     %rbp                                          #273.53
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
        subq      $16, %rsp                                     #273.53
	.cfi_def_cfa_offset 64
        movq      %rsi, %rbx                                    #273.53
        movl      $.L_2__STRING.4, %esi                         #275.14
        movq      %rdi, %rbp                                    #273.53
        movq      fnamePHdata_pdcph_I(%rip), %rdi               #275.14
#       fopen(const char *, const char *)
        call      fopen                                         #275.14
                                # LOE rax rbx rbp r12 r13 r14 r15
..B8.36:                        # Preds ..B8.1
        movq      %rax, %rdi                                    #275.14
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B8.2:                         # Preds ..B8.36
        testq     %rdi, %rdi                                    #277.15
        je        ..B8.31       # Prob 0%                       #277.15
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B8.3:                         # Preds ..B8.2
        movslq    sar_data_Np(%rip), %rax                       #283.18
        xorl      %ecx, %ecx                                    #283.7
        testq     %rax, %rax                                    #283.18
        jle       ..B8.11       # Prob 10%                      #283.18
                                # LOE rax rcx rbx rbp rdi r12 r13 r14 r15
..B8.4:                         # Preds ..B8.3
        movslq    sar_data_K(%rip), %rdx                        #287.19
        movq      %rcx, %r14                                    #287.19
        movq      %r12, (%rsp)                                  #287.19
	.cfi_offset 12, -64
        movq      %rbp, %r13                                    #287.19
        movq      %rdi, %rbp                                    #287.19
                                # LOE rax rdx rbx rbp r13 r14
..B8.5:                         # Preds ..B8.29 ..B8.9 ..B8.4
        xorl      %r12d, %r12d                                  #287.8
        xorl      %r15d, %r15d                                  #287.19
        testq     %rdx, %rdx                                    #287.19
        jle       ..B8.29       # Prob 10%                      #287.19
                                # LOE rax rdx rbx rbp r12 r13 r14 r15
..B8.7:                         # Preds ..B8.5 ..B8.8
        movq      %r15, %rdx                                    #289.4
        movq      %rbp, %rdi                                    #289.4
        addq      (%r13,%r14,8), %rdx                           #289.4
        movl      $.L_2__STRING.7, %esi                         #289.4
        xorl      %eax, %eax                                    #289.4
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #289.4
                                # LOE rbx rbp r12 r13 r14 r15
..B8.8:                         # Preds ..B8.7
        incq      %r12                                          #287.31
        addq      $4, %r15                                      #287.31
        movslq    sar_data_K(%rip), %rdx                        #287.19
        cmpq      %rdx, %r12                                    #287.19
        jl        ..B8.7        # Prob 82%                      #287.19
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B8.9:                         # Preds ..B8.8
        incq      %r14                                          #283.31
        movslq    sar_data_Np(%rip), %rax                       #283.18
        cmpq      %rax, %r14                                    #283.18
        jl        ..B8.5        # Prob 82%                      #283.18
                                # LOE rax rdx rbx rbp r13 r14
..B8.10:                        # Preds ..B8.29 ..B8.9          # Infreq
        movq      (%rsp), %r12                                  #
	.cfi_restore 12
        movq      %rbp, %rdi                                    #
                                # LOE rbx rdi r12 r13 r14 r15
..B8.11:                        # Preds ..B8.3 ..B8.10          # Infreq
#       fclose(FILE *)
        call      fclose                                        #297.2
                                # LOE rbx r12 r13 r14 r15
..B8.12:                        # Preds ..B8.11                 # Infreq
        movl      $.L_2__STRING.4, %esi                         #299.14
        movq      fnamePHdata_pdcph_Q(%rip), %rdi               #299.14
#       fopen(const char *, const char *)
        call      fopen                                         #299.14
                                # LOE rax rbx r12 r13 r14 r15
..B8.13:                        # Preds ..B8.12                 # Infreq
        testq     %rax, %rax                                    #301.15
        je        ..B8.26       # Prob 0%                       #301.15
                                # LOE rax rbx r12 r13 r14 r15
..B8.14:                        # Preds ..B8.13                 # Infreq
        movslq    sar_data_Np(%rip), %rcx                       #307.18
        xorl      %ebp, %ebp                                    #307.7
        testq     %rcx, %rcx                                    #307.18
        jle       ..B8.22       # Prob 10%                      #307.18
                                # LOE rax rcx rbx rbp r12 r13 r14 r15
..B8.15:                        # Preds ..B8.14                 # Infreq
        movslq    sar_data_K(%rip), %rdx                        #311.19
        movq      %rbx, %r15                                    #311.19
        movq      %rax, %rbx                                    #311.19
                                # LOE rdx rcx rbx rbp r12 r15
..B8.16:                        # Preds ..B8.24 ..B8.20 ..B8.15 # Infreq
        xorl      %r13d, %r13d                                  #311.8
        xorl      %r14d, %r14d                                  #311.19
        testq     %rdx, %rdx                                    #311.19
        jle       ..B8.24       # Prob 10%                      #311.19
                                # LOE rdx rcx rbx rbp r12 r13 r14 r15
..B8.18:                        # Preds ..B8.16 ..B8.19         # Infreq
        movq      %r14, %rdx                                    #313.4
        movq      %rbx, %rdi                                    #313.4
        addq      (%r15,%rbp,8), %rdx                           #313.4
        movl      $.L_2__STRING.7, %esi                         #313.4
        xorl      %eax, %eax                                    #313.4
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #313.4
                                # LOE rbx rbp r12 r13 r14 r15
..B8.19:                        # Preds ..B8.18                 # Infreq
        incq      %r13                                          #311.31
        addq      $4, %r14                                      #311.31
        movslq    sar_data_K(%rip), %rdx                        #311.19
        cmpq      %rdx, %r13                                    #311.19
        jl        ..B8.18       # Prob 82%                      #311.19
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B8.20:                        # Preds ..B8.19                 # Infreq
        incq      %rbp                                          #307.31
        movslq    sar_data_Np(%rip), %rcx                       #307.18
        cmpq      %rcx, %rbp                                    #307.18
        jl        ..B8.16       # Prob 82%                      #307.18
                                # LOE rdx rcx rbx rbp r12 r15
..B8.21:                        # Preds ..B8.24 ..B8.20         # Infreq
        movq      %rbx, %rax                                    #
                                # LOE rax r12 r13 r14 r15
..B8.22:                        # Preds ..B8.21 ..B8.14         # Infreq
        movq      %rax, %rdi                                    #319.2
        addq      $16, %rsp                                     #319.2
	.cfi_def_cfa_offset 48
	.cfi_restore 6
        popq      %rbp                                          #319.2
	.cfi_def_cfa_offset 40
	.cfi_restore 3
        popq      %rbx                                          #319.2
	.cfi_def_cfa_offset 32
	.cfi_restore 15
        popq      %r15                                          #319.2
	.cfi_def_cfa_offset 24
	.cfi_restore 14
        popq      %r14                                          #319.2
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        popq      %r13                                          #319.2
	.cfi_def_cfa_offset 8
#       fclose(FILE *)
        jmp       fclose                                        #319.2
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -48
	.cfi_offset 13, -16
	.cfi_offset 14, -24
	.cfi_offset 15, -32
                                # LOE
..B8.24:                        # Preds ..B8.16                 # Infreq
        incq      %rbp                                          #307.31
        cmpq      %rcx, %rbp                                    #307.18
        jl        ..B8.16       # Prob 82%                      #307.18
        jmp       ..B8.21       # Prob 100%                     #307.18
                                # LOE rdx rcx rbx rbp r12 r15
..B8.26:                        # Preds ..B8.13                 # Infreq
        movl      $il0_peep_printf_format_12, %edi              #302.3
        call      puts                                          #302.3
                                # LOE
..B8.27:                        # Preds ..B8.31 ..B8.26         # Infreq
        movl      $.L_2__STRING.6, %edi                         #303.3
#       system(const char *)
        call      system                                        #303.3
                                # LOE
..B8.28:                        # Preds ..B8.27                 # Infreq
        movl      $1, %edi                                      #304.3
#       exit(int)
        call      exit                                          #304.3
	.cfi_offset 12, -64
                                # LOE
..B8.29:                        # Preds ..B8.5                  # Infreq
        incq      %r14                                          #283.31
        cmpq      %rax, %r14                                    #283.18
        jl        ..B8.5        # Prob 82%                      #283.18
        jmp       ..B8.10       # Prob 100%                     #283.18
	.cfi_restore 12
                                # LOE rax rdx rbx rbp r13 r14
..B8.31:                        # Preds ..B8.2                  # Infreq
        movl      $il0_peep_printf_format_13, %edi              #278.3
        call      puts                                          #278.3
        jmp       ..B8.27       # Prob 100%                     #278.3
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_Z12readPostDCPHPPfS0_,@function
	.size	_Z12readPostDCPHPPfS0_,.-_Z12readPostDCPHPPfS0_
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_12:
	.long	1869771365
	.word	8306
	.byte	0
	.space 1, 0x00 	# pad
	.align 4
il0_peep_printf_format_13:
	.long	1869771365
	.word	8306
	.byte	0
	.data
# -- End  _Z12readPostDCPHPPfS0_
	.text
# -- Begin  _Z23load_input_frame_headerv
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z23load_input_frame_headerv
# --- load_input_frame_header()
_Z23load_input_frame_headerv:
..B9.1:                         # Preds ..B9.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z23load_input_frame_headerv.219:
..L220:
                                                        #325.32
        pushq     %r12                                          #325.32
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        subq      $256, %rsp                                    #325.32
	.cfi_def_cfa_offset 272
        movl      $.L_2__STRING.4, %esi                         #330.13
        movq      fnamePHXheader(%rip), %rdi                    #330.13
#       fopen(const char *, const char *)
        call      fopen                                         #330.13
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.9:                         # Preds ..B9.1
        movq      %rax, %r12                                    #330.13
                                # LOE rbx rbp r12 r13 r14 r15
..B9.2:                         # Preds ..B9.9 ..B9.3
        movq      %r12, %rdi                                    #333.7
        movl      $.L_2__STRING.8, %esi                         #333.7
        xorl      %eax, %eax                                    #333.7
        lea       (%rsp), %rdx                                  #333.7
#       fscanf(FILE *, const char *, ...)
        call      fscanf                                        #333.7
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B9.3:                         # Preds ..B9.2
        cmpb      $-1, %al                                      #347.16
        jne       ..B9.2        # Prob 82%                      #347.16
                                # LOE rbx rbp r12 r13 r14 r15
..B9.4:                         # Preds ..B9.3
        movq      %r12, %rax                                    #
        testq     %rax, %rax                                    #349.12
        je        ..B9.6        # Prob 32%                      #349.12
                                # LOE rax rbx rbp r12 r13 r14 r15
..B9.5:                         # Preds ..B9.4
        movq      %rax, %rdi                                    #350.3
#       fclose(FILE *)
        call      fclose                                        #350.3
                                # LOE rbx rbp r12 r13 r14 r15
..B9.6:                         # Preds ..B9.5 ..B9.4
        pxor      %xmm0, %xmm0                                  #357.43
        movl      $1, %eax                                      #359.9
        cvtsi2ss  sar_data_K(%rip), %xmm0                       #357.43
        movss     .L_2il0floatpacket.1(%rip), %xmm1             #357.36
        divss     %xmm0, %xmm1                                  #357.43
        movss     %xmm1, sar_data_deltaF(%rip)                  #357.2
        addq      $256, %rsp                                    #359.9
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #359.9
	.cfi_def_cfa_offset 8
        ret                                                     #359.9
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_Z23load_input_frame_headerv,@function
	.size	_Z23load_input_frame_headerv,.-_Z23load_input_frame_headerv
	.data
# -- End  _Z23load_input_frame_headerv
	.text
# -- Begin  bpbasiccpu
	.text
# mark_begin;
       .align    16,0x90
	.globl bpbasiccpu
# --- bpbasiccpu(int, int, int, int, int, int, int, int, float, float *, float *, int, int, int *, int, int, int, int, int, float, float, float, float *, float *, int, int)
bpbasiccpu:
# parameter 1: %edi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %ecx
# parameter 5: %r8d
# parameter 6: %r9d
# parameter 7: 2576 + %rsp
# parameter 8: 2584 + %rsp
# parameter 9: %xmm0
# parameter 10: 2592 + %rsp
# parameter 11: 2600 + %rsp
# parameter 12: 2608 + %rsp
# parameter 13: 2616 + %rsp
# parameter 14: 2624 + %rsp
# parameter 15: 2632 + %rsp
# parameter 16: 2640 + %rsp
# parameter 17: 2648 + %rsp
# parameter 18: 2656 + %rsp
# parameter 19: 2664 + %rsp
# parameter 20: %xmm1
# parameter 21: %xmm2
# parameter 22: %xmm3
# parameter 23: 2672 + %rsp
# parameter 24: 2680 + %rsp
# parameter 25: 2688 + %rsp
# parameter 26: 2696 + %rsp
..B10.1:                        # Preds ..B10.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value_bpbasiccpu.228:
..L229:
                                                        #1346.423
        pushq     %r12                                          #1346.423
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #1346.423
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #1346.423
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #1346.423
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #1346.423
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #1346.423
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $2520, %rsp                                   #1346.423
	.cfi_def_cfa_offset 2576
        movl      %r9d, %r15d                                   #1346.423
        movss     %xmm3, 16(%rsp)                               #1346.423
        movl      %r8d, %ebx                                    #1346.423
        movss     %xmm2, 32(%rsp)                               #1346.423
        movl      %edx, %ebp                                    #1346.423
        movss     %xmm1, 24(%rsp)                               #1346.423
        movss     %xmm0, 40(%rsp)                               #1346.423
..___tag_value_bpbasiccpu.243:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1368.12
..___tag_value_bpbasiccpu.244:
                                # LOE r12 r13 r14 ebx ebp r15d xmm0
..B10.47:                       # Preds ..B10.1
        movsd     %xmm0, 8(%rsp)                                #1368.12
                                # LOE r12 r13 r14 ebx ebp r15d
..B10.2:                        # Preds ..B10.47
#       clock()
        call      clock                                         #1372.14
                                # LOE r12 r13 r14 ebx ebp r15d
..B10.3:                        # Preds ..B10.2
        movl      sar_data_Wx(%rip), %r10d                      #1400.28
        movl      %r10d, %ecx                                   #1400.42
        shrl      $31, %ecx                                     #1400.42
        pxor      %xmm2, %xmm2                                  #1400.42
        addl      %r10d, %ecx                                   #1400.42
        movl      %r15d, %r9d                                   #1444.42
        sarl      $1, %ecx                                      #1400.42
        negl      %r9d                                          #1444.42
        movl      sar_data_x0(%rip), %r11d                      #1400.14
        pxor      %xmm8, %xmm8                                  #1432.33
        subl      %ecx, %r11d                                   #1400.14
        pxor      %xmm1, %xmm1                                  #1401.61
        cvtsi2ss  %r11d, %xmm2                                  #1400.42
        movl      $4, %r11d                                     #1417.7
        movl      %ebx, %ecx                                    #1346.6
        movl      sar_data_Nx(%rip), %edx                       #1401.47
        decl      %edx                                          #1401.61
        cvtsi2ss  %edx, %xmm1                                   #1401.61
        movd      %r11d, %xmm14                                 #1417.7
        movl      %r15d, %r11d                                  #1432.33
        shrl      $31, %r11d                                    #1432.33
        xorl      %edx, %edx                                    #1373.2
        addl      %r15d, %r11d                                  #1432.33
        xorl      %r8d, %r8d                                    #1373.2
        sarl      $1, %r11d                                     #1432.33
        cvtsi2ss  %r11d, %xmm8                                  #1432.33
        movl      %r9d, %r11d                                   #1436.23
        movaps    %xmm1, %xmm0                                  #1417.77
        shrl      $31, %r11d                                    #1436.23
        movl      %r8d, %r13d                                   #1373.2
        subl      %r15d, %r11d                                  #1436.23
        movl      %ebx, %r8d                                    #1373.2
        movss     40(%rsp), %xmm7                               #1427.23
        movl      %edx, %r12d                                   #1373.2
        sarl      $1, %r11d                                     #1436.23
        mulss     16(%rsp), %xmm7                               #1427.23
        movd      sar_data_Wy(%rip), %xmm3                      #1417.40
        movd      %r11d, %xmm10                                 #1436.23
        pshufd    $0, %xmm3, %xmm5                              #1417.40
        shrl      $31, %ecx                                     #1346.6
        movdqa    %xmm5, %xmm6                                  #1417.40
        movss     32(%rsp), %xmm11                              #1346.6
        addl      %ebx, %ecx                                    #1346.6
        movss     24(%rsp), %xmm9                               #1346.6
        psrlq     $32, %xmm6                                    #1417.40
        shufps    $0, %xmm7, %xmm7                              #1427.23
        shufps    $0, %xmm11, %xmm11                            #1346.6
        sarl      $1, %ecx                                      #1346.6
        shufps    $0, %xmm8, %xmm8                              #1432.33
        movl      %ecx, %ebx                                    #1373.2
        pshufd    $0, %xmm10, %xmm10                            #1436.23
        movq      2680(%rsp), %rdi                              #1346.423
        movq      sar_data_XYZR(%rip), %rax                     #1409.9
        shufps    $0, %xmm0, %xmm0                              #1417.77
        movdqa    .L_2il0floatpacket.6(%rip), %xmm4             #1417.7
        shufps    $0, %xmm9, %xmm9                              #1346.6
        pshufd    $0, %xmm14, %xmm14                            #1417.7
        movdqa    %xmm10, 2208(%rsp)                            #1373.2
        movaps    %xmm11, 2192(%rsp)                            #1373.2
        movaps    %xmm8, 2176(%rsp)                             #1373.2
        movaps    %xmm7, 2224(%rsp)                             #1373.2
        movdqa    %xmm6, 2240(%rsp)                             #1373.2
        movdqa    %xmm5, 2256(%rsp)                             #1373.2
        movl      %r10d, 48(%rsp)                               #1373.2
        movl      %ebp, (%rsp)                                  #1373.2
        movl      %r9d, %ebp                                    #1373.2
        movl      %r15d, %r9d                                   #1373.2
                                # LOE rax rdi edx ebx ebp r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.4:                        # Preds ..B10.38 ..B10.3
        pxor      %xmm3, %xmm3                                  #1401.24
        testl     %r8d, %r8d                                    #1407.20
        cvtsi2ss  %r13d, %xmm3                                  #1401.24
        divss     %xmm1, %xmm3                                  #1401.61
        addss     %xmm2, %xmm3                                  #1401.61
        jle       ..B10.15      # Prob 50%                      #1407.20
                                # LOE rax rdi edx ebx ebp r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B10.5:                        # Preds ..B10.4
        xorl      %r15d, %r15d                                  #1407.5
        movl      $1, %esi                                      #1407.5
        xorl      %r14d, %r14d                                  #1409.6
        cmpl      $1, %ebx                                      #1407.5
        jb        ..B10.11      # Prob 9%                       #1407.5
                                # LOE rax rdi edx ebx ebp esi r8d r9d r12d r13d r14d r15d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B10.6:                        # Preds ..B10.5
        rcpps     %xmm0, %xmm10                                 #1414.6
        rcpps     %xmm9, %xmm6                                  #1414.6
        movaps    %xmm0, %xmm8                                  #1414.6
        movaps    %xmm9, %xmm5                                  #1414.6
        mulps     %xmm10, %xmm8                                 #1414.6
        mulps     %xmm6, %xmm5                                  #1414.6
        mulps     %xmm10, %xmm8                                 #1414.6
        addps     %xmm10, %xmm10                                #1414.6
        mulps     %xmm6, %xmm5                                  #1414.6
        addps     %xmm6, %xmm6                                  #1414.6
        subps     %xmm8, %xmm10                                 #1414.6
        subps     %xmm5, %xmm6                                  #1414.6
        movl      %r12d, 16(%rsp)                               #1414.6
        movaps    .L_2il0floatpacket.19(%rip), %xmm8            #1414.6
        movaps    %xmm6, 2496(%rsp)                             #1414.6
        movaps    %xmm10, 2352(%rsp)                            #1414.6
        movdqa    %xmm14, 2336(%rsp)                            #1414.6
        movaps    %xmm0, 64(%rsp)                               #1414.6
        movss     %xmm1, 104(%rsp)                              #1414.6
        movss     %xmm2, 96(%rsp)                               #1414.6
        movl      %r13d, 24(%rsp)                               #1414.6
        movl      %ebp, 32(%rsp)                                #1414.6
        movq      %rax, %rbp                                    #1414.6
        movl      %edx, 88(%rsp)                                #1414.6
        movl      %r8d, 56(%rsp)                                #1414.6
        movaps    2176(%rsp), %xmm11                            #1414.6
        movaps    2224(%rsp), %xmm12                            #1414.6
        movq      2600(%rsp), %r12                              #1414.6
                                # LOE rbp r12 ebx r9d r14d r15d xmm3 xmm4 xmm8 xmm9 xmm11 xmm12
..B10.7:                        # Preds ..B10.9 ..B10.6
        movd      %r14d, %xmm14                                 #1444.42
        lea       (,%r15,8), %edx                               #1409.9
        movslq    %edx, %rdx                                    #1409.9
        lea       (%r9,%r14), %esi                              #1444.42
        movss     %xmm3, 112(%rsp)                              #1444.42
        movdqa    %xmm4, %xmm13                                 #1417.7
        movl      %r9d, 40(%rsp)                                #1444.42
        xorl      %r13d, %r13d                                  #1414.6
        movss     4(%rbp,%rdx,4), %xmm6                         #1410.9
        movd      %esi, %xmm10                                  #1444.42
        movss     8(%rbp,%rdx,4), %xmm5                         #1411.9
        movss     20(%rbp,%rdx,4), %xmm2                        #1410.9
        movss     24(%rbp,%rdx,4), %xmm0                        #1411.9
        mulss     %xmm6, %xmm6                                  #1421.21
        mulss     %xmm5, %xmm5                                  #1423.21
        mulss     %xmm2, %xmm2                                  #1421.21
        mulss     %xmm0, %xmm0                                  #1423.21
        addss     %xmm5, %xmm6                                  #1421.7
        addss     %xmm0, %xmm2                                  #1421.7
        movss     (%rbp,%rdx,4), %xmm7                          #1409.9
        movss     16(%rbp,%rdx,4), %xmm5                        #1409.9
        subss     %xmm3, %xmm7                                  #1417.18
        subss     %xmm3, %xmm5                                  #1417.18
        movss     28(%rbp,%rdx,4), %xmm1                        #1382.5
        movss     12(%rbp,%rdx,4), %xmm0                        #1382.5
        shufps    $0, %xmm7, %xmm7                              #1417.18
        shufps    $0, %xmm6, %xmm6                              #1421.7
        shufps    $0, %xmm5, %xmm5                              #1417.18
        shufps    $0, %xmm2, %xmm2                              #1421.7
        shufps    $0, %xmm1, %xmm1                              #1382.5
        shufps    $0, %xmm0, %xmm0                              #1382.5
        pshufd    $0, %xmm10, %xmm15                            #1444.42
        pshufd    $0, %xmm14, %xmm10                            #1444.42
        movdqa    %xmm10, 2464(%rsp)                            #1444.42
        movdqa    %xmm15, 2432(%rsp)                            #1444.42
        movaps    %xmm0, 2416(%rsp)                             #1444.42
        movaps    %xmm6, 2448(%rsp)                             #1444.42
        movaps    %xmm7, 2480(%rsp)                             #1444.42
        movaps    %xmm1, 2400(%rsp)                             #1444.42
        movaps    %xmm2, 2384(%rsp)                             #1444.42
        movaps    %xmm5, 2368(%rsp)                             #1444.42
                                # LOE rbp r12 r13 ebx r14d r15d xmm8 xmm9 xmm11 xmm12 xmm13
..B10.8:                        # Preds ..B10.48 ..B10.7
        movdqa    %xmm13, %xmm10                                #1417.28
        movaps    %xmm8, %xmm3                                  #1424.12
        psrad     $3, %xmm10                                    #1417.28
        movaps    %xmm12, %xmm0                                 #1427.30
        psrld     $28, %xmm10                                   #1417.28
        paddd     %xmm13, %xmm10                                #1417.28
        movdqa    2256(%rsp), %xmm14                            #1417.40
        psrad     $4, %xmm10                                    #1417.28
        pmuludq   %xmm10, %xmm14                                #1417.40
        psrlq     $32, %xmm10                                   #1417.40
        pmuludq   2240(%rsp), %xmm10                            #1417.40
        pand      .L_2il0floatpacket.7(%rip), %xmm14            #1417.40
        psllq     $32, %xmm10                                   #1417.40
        por       %xmm10, %xmm14                                #1417.40
        cvtdq2ps  %xmm14, %xmm10                                #1417.40
        mulps     2352(%rsp), %xmm10                            #1417.77
        movaps    2480(%rsp), %xmm14                            #1417.77
        movaps    .L_2il0floatpacket.20(%rip), %xmm1            #1424.12
        subps     %xmm10, %xmm14                                #1417.77
        mulps     %xmm14, %xmm14                                #1418.20
        addps     2448(%rsp), %xmm14                            #1423.7
        rsqrtps   %xmm14, %xmm2                                 #1424.12
        andps     %xmm14, %xmm1                                 #1424.12
        cmpleps   %xmm1, %xmm3                                  #1424.12
        andps     %xmm2, %xmm3                                  #1424.12
        mulps     %xmm3, %xmm14                                 #1424.12
        mulps     %xmm14, %xmm3                                 #1424.12
        subps     .L_2il0floatpacket.17(%rip), %xmm3            #1424.12
        mulps     %xmm3, %xmm14                                 #1424.12
        mulps     .L_2il0floatpacket.18(%rip), %xmm14           #1424.12
        subps     2416(%rsp), %xmm14                            #1424.23
        mulps     %xmm14, %xmm0                                 #1427.30
        call      __svml_sincosf4                               #1429.7
                                # LOE rbp r12 r13 ebx r14d r15d xmm0 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14
..B10.49:                       # Preds ..B10.8
        movaps    %xmm14, %xmm4                                 #1432.20
        movaps    %xmm1, %xmm3                                  #1429.7
        mulps     2192(%rsp), %xmm4                             #1432.20
        movdqa    2464(%rsp), %xmm2                             #1444.15
        addps     %xmm11, %xmm4                                 #1432.33
        cvttps2dq %xmm4, %xmm5                                  #1432.33
        paddd     %xmm5, %xmm2                                  #1444.15
        paddd     2208(%rsp), %xmm5                             #1436.27
        pslld     $1, %xmm2                                     #1444.15
        cvtdq2ps  %xmm5, %xmm6                                  #1436.27
        movd      %xmm2, %rsi                                   #1444.15
        punpckhqdq %xmm2, %xmm2                                 #1444.15
        movd      %xmm2, %r8                                    #1444.15
        movaps    2368(%rsp), %xmm15                            #1417.77
        mulps     %xmm9, %xmm6                                  #1436.36
        subps     %xmm10, %xmm15                                #1417.77
        movslq    %r8d, %rdi                                    #1444.15
        subps     %xmm6, %xmm14                                 #1450.22
        mulps     %xmm15, %xmm15                                #1418.20
        mulps     2496(%rsp), %xmm14                            #1450.30
        addps     2384(%rsp), %xmm15                            #1423.7
        sarq      $32, %r8                                      #1444.15
        movslq    %esi, %rdx                                    #1444.15
        sarq      $32, %rsi                                     #1444.15
        movd      12(%r12,%rdi,4), %xmm4                        #1444.15
        movd      12(%r12,%r8,4), %xmm1                         #1444.15
        movd      8(%r12,%r8,4), %xmm6                          #1444.15
        movd      12(%r12,%rdx,4), %xmm10                       #1444.15
        movd      8(%r12,%rdx,4), %xmm2                         #1444.15
        movd      12(%r12,%rsi,4), %xmm7                        #1444.15
        movd      8(%r12,%rsi,4), %xmm5                         #1444.15
        punpcklqdq %xmm1, %xmm4                                 #1444.15
        movd      8(%r12,%rdi,4), %xmm1                         #1444.15
        punpcklqdq %xmm7, %xmm10                                #1444.15
        punpcklqdq %xmm5, %xmm2                                 #1444.15
        punpcklqdq %xmm6, %xmm1                                 #1444.15
        movd      4(%r12,%rdi,4), %xmm5                         #1444.15
        shufps    $136, %xmm4, %xmm10                           #1444.15
        shufps    $136, %xmm1, %xmm2                            #1444.15
        movd      4(%r12,%rdx,4), %xmm1                         #1444.15
        movd      4(%r12,%rsi,4), %xmm7                         #1444.15
        movd      4(%r12,%r8,4), %xmm4                          #1444.15
        punpcklqdq %xmm7, %xmm1                                 #1444.15
        punpcklqdq %xmm4, %xmm5                                 #1444.15
        shufps    $136, %xmm5, %xmm1                            #1444.15
        movd      (%r12,%r8,4), %xmm7                           #1444.15
        subps     %xmm1, %xmm10                                 #1460.32
        mulps     %xmm14, %xmm10                                #1460.32
        movd      (%r12,%rsi,4), %xmm6                          #1444.15
        addps     %xmm10, %xmm1                                 #1460.32
        movd      (%r12,%rdx,4), %xmm10                         #1444.15
        movd      (%r12,%rdi,4), %xmm4                          #1444.15
        punpcklqdq %xmm6, %xmm10                                #1444.15
        punpcklqdq %xmm7, %xmm4                                 #1444.15
        shufps    $136, %xmm4, %xmm10                           #1444.15
        subps     %xmm10, %xmm2                                 #1453.44
        mulps     %xmm14, %xmm2                                 #1453.44
        addps     %xmm2, %xmm10                                 #1453.44
        movaps    %xmm10, %xmm14                                #1463.43
        mulps     %xmm3, %xmm14                                 #1463.43
        mulps     %xmm0, %xmm10                                 #1464.43
        mulps     %xmm1, %xmm3                                  #1464.68
        mulps     %xmm1, %xmm0                                  #1463.68
        addps     %xmm3, %xmm10                                 #1464.68
        rsqrtps   %xmm15, %xmm3                                 #1424.12
        subps     %xmm0, %xmm14                                 #1463.68
        addps     1152(%rsp,%r13,4), %xmm10                     #1464.7
        addps     128(%rsp,%r13,4), %xmm14                      #1463.7
        movaps    .L_2il0floatpacket.20(%rip), %xmm0            #1424.12
        movaps    %xmm8, %xmm1                                  #1424.12
        andps     %xmm15, %xmm0                                 #1424.12
        cmpleps   %xmm0, %xmm1                                  #1424.12
        andps     %xmm3, %xmm1                                  #1424.12
        movaps    %xmm12, %xmm0                                 #1427.30
        mulps     %xmm1, %xmm15                                 #1424.12
        mulps     %xmm15, %xmm1                                 #1424.12
        subps     .L_2il0floatpacket.17(%rip), %xmm1            #1424.12
        mulps     %xmm1, %xmm15                                 #1424.12
        mulps     .L_2il0floatpacket.18(%rip), %xmm15           #1424.12
        subps     2400(%rsp), %xmm15                            #1424.23
        mulps     %xmm15, %xmm0                                 #1427.30
        call      __svml_sincosf4                               #1429.7
                                # LOE rbp r12 r13 ebx r14d r15d xmm0 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B10.48:                       # Preds ..B10.49
        movaps    %xmm15, %xmm6                                 #1432.20
        movaps    %xmm0, %xmm5                                  #1429.7
        mulps     2192(%rsp), %xmm6                             #1432.20
        movaps    %xmm1, %xmm4                                  #1429.7
        movdqa    2432(%rsp), %xmm2                             #1444.15
        addps     %xmm11, %xmm6                                 #1432.33
        cvttps2dq %xmm6, %xmm7                                  #1432.33
        paddd     %xmm7, %xmm2                                  #1444.15
        paddd     2208(%rsp), %xmm7                             #1436.27
        pslld     $1, %xmm2                                     #1444.15
        cvtdq2ps  %xmm7, %xmm0                                  #1436.27
        movd      %xmm2, %rsi                                   #1444.15
        punpckhqdq %xmm2, %xmm2                                 #1444.15
        movd      %xmm2, %r8                                    #1444.15
        paddd     2336(%rsp), %xmm13                            #1417.7
        mulps     %xmm9, %xmm0                                  #1436.36
        movslq    %esi, %rdx                                    #1444.15
        subps     %xmm0, %xmm15                                 #1450.22
        sarq      $32, %rsi                                     #1444.15
        movslq    %r8d, %rdi                                    #1444.15
        sarq      $32, %r8                                      #1444.15
        movd      12(%r12,%rdx,4), %xmm3                        #1444.15
        movd      12(%r12,%rsi,4), %xmm1                        #1444.15
        movd      12(%r12,%rdi,4), %xmm0                        #1444.15
        movd      12(%r12,%r8,4), %xmm6                         #1444.15
        punpcklqdq %xmm1, %xmm3                                 #1444.15
        punpcklqdq %xmm6, %xmm0                                 #1444.15
        shufps    $136, %xmm0, %xmm3                            #1444.15
        movd      8(%r12,%r8,4), %xmm0                          #1444.15
        movd      8(%r12,%rdx,4), %xmm2                         #1444.15
        movd      8(%r12,%rsi,4), %xmm7                         #1444.15
        movd      8(%r12,%rdi,4), %xmm1                         #1444.15
        punpcklqdq %xmm7, %xmm2                                 #1444.15
        punpcklqdq %xmm0, %xmm1                                 #1444.15
        shufps    $136, %xmm1, %xmm2                            #1444.15
        movd      4(%r12,%rdi,4), %xmm1                         #1444.15
        movd      4(%r12,%rdx,4), %xmm0                         #1444.15
        movd      4(%r12,%rsi,4), %xmm6                         #1444.15
        movd      4(%r12,%r8,4), %xmm7                          #1444.15
        punpcklqdq %xmm6, %xmm0                                 #1444.15
        punpcklqdq %xmm7, %xmm1                                 #1444.15
        shufps    $136, %xmm1, %xmm0                            #1444.15
        mulps     2496(%rsp), %xmm15                            #1450.30
        subps     %xmm0, %xmm3                                  #1460.32
        mulps     %xmm15, %xmm3                                 #1460.32
        movd      (%r12,%rdx,4), %xmm1                          #1444.15
        addps     %xmm3, %xmm0                                  #1460.32
        movd      (%r12,%rsi,4), %xmm3                          #1444.15
        punpcklqdq %xmm3, %xmm1                                 #1444.15
        movd      (%r12,%rdi,4), %xmm6                          #1444.15
        movd      (%r12,%r8,4), %xmm3                           #1444.15
        punpcklqdq %xmm3, %xmm6                                 #1444.15
        shufps    $136, %xmm6, %xmm1                            #1444.15
        subps     %xmm1, %xmm2                                  #1453.44
        mulps     %xmm15, %xmm2                                 #1453.44
        addps     %xmm2, %xmm1                                  #1453.44
        movaps    %xmm1, %xmm15                                 #1463.43
        mulps     %xmm4, %xmm15                                 #1463.43
        mulps     %xmm5, %xmm1                                  #1464.43
        mulps     %xmm0, %xmm5                                  #1463.68
        mulps     %xmm0, %xmm4                                  #1464.68
        subps     %xmm5, %xmm15                                 #1463.68
        addps     %xmm4, %xmm1                                  #1464.68
        addps     %xmm15, %xmm14                                #1463.7
        addps     %xmm1, %xmm10                                 #1464.7
        movaps    %xmm14, 128(%rsp,%r13,4)                      #1463.7
        movaps    %xmm10, 1152(%rsp,%r13,4)                     #1464.7
        addq      $4, %r13                                      #1414.6
        cmpq      $256, %r13                                    #1414.6
        jb        ..B10.8       # Prob 99%                      #1414.6
                                # LOE rbp r12 r13 ebx r14d r15d xmm8 xmm9 xmm11 xmm12 xmm13
..B10.9:                        # Preds ..B10.48
        incl      %r15d                                         #1407.5
        movl      40(%rsp), %r9d                                #
        lea       (%r14,%r9,2), %r14d                           #1407.5
        movss     112(%rsp), %xmm3                              #
        cmpl      %ebx, %r15d                                   #1407.5
        movdqa    .L_2il0floatpacket.6(%rip), %xmm4             #
        jb        ..B10.7       # Prob 82%                      #1407.5
                                # LOE rbp r9 r12 ebx r9d r14d r15d r9b xmm3 xmm4 xmm8 xmm9 xmm11 xmm12 ymm3 zmm3
..B10.10:                       # Preds ..B10.9
        movdqa    2336(%rsp), %xmm14                            #
        lea       1(%r15,%r15), %esi                            #1409.6
        movaps    64(%rsp), %xmm0                               #
        movq      %rbp, %rax                                    #
        movss     104(%rsp), %xmm1                              #
        movss     96(%rsp), %xmm2                               #
        movl      16(%rsp), %r12d                               #
        movl      24(%rsp), %r13d                               #
        movl      32(%rsp), %ebp                                #
        movl      88(%rsp), %edx                                #
        movl      56(%rsp), %r8d                                #
        movq      2680(%rsp), %rdi                              #
                                # LOE rax rdi edx ebx ebp esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B10.11:                       # Preds ..B10.10 ..B10.5
        movl      %r8d, %r10d                                   #1346.423
        subl      %esi, %r10d                                   #1346.423
        incl      %r10d                                         #1346.423
        je        ..B10.15      # Prob 9%                       #1407.5
                                # LOE rax rdi edx ebx ebp esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm9 xmm14
..B10.12:                       # Preds ..B10.11
        rcpps     %xmm0, %xmm11                                 #1444.42
        rcpps     %xmm9, %xmm13                                 #1444.42
        movaps    %xmm0, %xmm10                                 #1444.42
        lea       (,%rsi,4), %r10d                              #1409.9
        movslq    %r10d, %r10                                   #1409.9
        movaps    %xmm9, %xmm7                                  #1444.42
        movdqa    %xmm4, %xmm8                                  #1417.7
        movaps    %xmm9, 2272(%rsp)                             #1444.42
        xorl      %r14d, %r14d                                  #1414.6
        movaps    %xmm0, 64(%rsp)                               #1444.42
        movss     -12(%rax,%r10,4), %xmm6                       #1410.9
        movss     -8(%rax,%r10,4), %xmm5                        #1411.9
        imull     %r9d, %esi                                    #1444.42
        mulss     %xmm6, %xmm6                                  #1421.21
        mulss     %xmm5, %xmm5                                  #1423.21
        mulps     %xmm11, %xmm10                                #1444.42
        mulps     %xmm13, %xmm7                                 #1444.42
        addss     %xmm5, %xmm6                                  #1421.7
        mulps     %xmm11, %xmm10                                #1444.42
        addps     %xmm11, %xmm11                                #1444.42
        mulps     %xmm13, %xmm7                                 #1444.42
        addps     %xmm13, %xmm13                                #1444.42
        subps     %xmm10, %xmm11                                #1444.42
        subps     %xmm7, %xmm13                                 #1444.42
        movss     -16(%rax,%r10,4), %xmm12                      #1409.9
        addl      %ebp, %esi                                    #1444.42
        movss     -4(%rax,%r10,4), %xmm5                        #1382.5
        subss     %xmm3, %xmm12                                 #1417.18
        movd      %esi, %xmm3                                   #1444.42
        shufps    $0, %xmm6, %xmm6                              #1421.7
        shufps    $0, %xmm5, %xmm5                              #1382.5
        pshufd    $0, %xmm3, %xmm3                              #1444.42
        shufps    $0, %xmm12, %xmm12                            #1417.18
        movaps    .L_2il0floatpacket.20(%rip), %xmm10           #1444.42
        movdqa    %xmm3, 2304(%rsp)                             #1444.42
        movaps    %xmm5, 2288(%rsp)                             #1444.42
        movaps    %xmm6, 2320(%rsp)                             #1444.42
        movss     %xmm1, 104(%rsp)                              #1444.42
        movss     %xmm2, 96(%rsp)                               #1444.42
        movl      %edx, 88(%rsp)                                #1444.42
        movq      %rax, 80(%rsp)                                #1444.42
        movl      %r8d, 56(%rsp)                                #1444.42
        movl      %r9d, 40(%rsp)                                #1444.42
        movdqa    .L_2il0floatpacket.7(%rip), %xmm15            #1444.42
        movq      2600(%rsp), %r15                              #1444.42
                                # LOE r14 r15 ebx ebp r12d r13d xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B10.13:                       # Preds ..B10.50 ..B10.12
        movdqa    %xmm8, %xmm9                                  #1417.28
        movaps    %xmm10, %xmm3                                 #1424.12
        psrad     $3, %xmm9                                     #1417.28
        psrld     $28, %xmm9                                    #1417.28
        paddd     %xmm8, %xmm9                                  #1417.28
        movdqa    2256(%rsp), %xmm1                             #1417.40
        psrad     $4, %xmm9                                     #1417.28
        pmuludq   %xmm9, %xmm1                                  #1417.40
        psrlq     $32, %xmm9                                    #1417.40
        pmuludq   2240(%rsp), %xmm9                             #1417.40
        pand      %xmm15, %xmm1                                 #1417.40
        psllq     $32, %xmm9                                    #1417.40
        por       %xmm9, %xmm1                                  #1417.40
        movaps    %xmm12, %xmm9                                 #1417.77
        cvtdq2ps  %xmm1, %xmm2                                  #1417.40
        mulps     %xmm11, %xmm2                                 #1417.77
        movaps    .L_2il0floatpacket.19(%rip), %xmm5            #1424.12
        subps     %xmm2, %xmm9                                  #1417.77
        mulps     %xmm9, %xmm9                                  #1418.20
        movaps    2224(%rsp), %xmm0                             #1427.30
        addps     2320(%rsp), %xmm9                             #1423.7
        rsqrtps   %xmm9, %xmm4                                  #1424.12
        andps     %xmm9, %xmm3                                  #1424.12
        cmpleps   %xmm3, %xmm5                                  #1424.12
        andps     %xmm4, %xmm5                                  #1424.12
        mulps     %xmm5, %xmm9                                  #1424.12
        mulps     %xmm9, %xmm5                                  #1424.12
        subps     .L_2il0floatpacket.17(%rip), %xmm5            #1424.12
        mulps     %xmm5, %xmm9                                  #1424.12
        mulps     .L_2il0floatpacket.18(%rip), %xmm9            #1424.12
        subps     2288(%rsp), %xmm9                             #1424.23
        mulps     %xmm9, %xmm0                                  #1427.30
        call      __svml_sincosf4                               #1429.7
                                # LOE r14 r15 ebx ebp r12d r13d xmm0 xmm1 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B10.50:                       # Preds ..B10.13
        movaps    %xmm9, %xmm6                                  #1432.20
        movaps    %xmm0, %xmm5                                  #1429.7
        mulps     2192(%rsp), %xmm6                             #1432.20
        movaps    %xmm1, %xmm4                                  #1429.7
        movdqa    2304(%rsp), %xmm2                             #1444.15
        paddd     %xmm14, %xmm8                                 #1417.7
        addps     2176(%rsp), %xmm6                             #1432.33
        cvttps2dq %xmm6, %xmm7                                  #1432.33
        paddd     %xmm7, %xmm2                                  #1444.15
        paddd     2208(%rsp), %xmm7                             #1436.27
        pslld     $1, %xmm2                                     #1444.15
        cvtdq2ps  %xmm7, %xmm0                                  #1436.27
        movd      %xmm2, %rdx                                   #1444.15
        punpckhqdq %xmm2, %xmm2                                 #1444.15
        movd      %xmm2, %r10                                   #1444.15
        mulps     2272(%rsp), %xmm0                             #1436.36
        movslq    %edx, %rax                                    #1444.15
        subps     %xmm0, %xmm9                                  #1450.22
        sarq      $32, %rdx                                     #1444.15
        movslq    %r10d, %rdi                                   #1444.15
        sarq      $32, %r10                                     #1444.15
        movd      12(%r15,%rax,4), %xmm3                        #1444.15
        movd      12(%r15,%rdx,4), %xmm1                        #1444.15
        movd      12(%r15,%rdi,4), %xmm0                        #1444.15
        movd      12(%r15,%r10,4), %xmm6                        #1444.15
        punpcklqdq %xmm1, %xmm3                                 #1444.15
        punpcklqdq %xmm6, %xmm0                                 #1444.15
        shufps    $136, %xmm0, %xmm3                            #1444.15
        movd      8(%r15,%r10,4), %xmm0                         #1444.15
        movd      8(%r15,%rax,4), %xmm2                         #1444.15
        movd      8(%r15,%rdx,4), %xmm7                         #1444.15
        movd      8(%r15,%rdi,4), %xmm1                         #1444.15
        punpcklqdq %xmm7, %xmm2                                 #1444.15
        punpcklqdq %xmm0, %xmm1                                 #1444.15
        shufps    $136, %xmm1, %xmm2                            #1444.15
        movd      4(%r15,%rdi,4), %xmm1                         #1444.15
        movd      4(%r15,%rax,4), %xmm0                         #1444.15
        movd      4(%r15,%rdx,4), %xmm6                         #1444.15
        movd      4(%r15,%r10,4), %xmm7                         #1444.15
        punpcklqdq %xmm6, %xmm0                                 #1444.15
        punpcklqdq %xmm7, %xmm1                                 #1444.15
        shufps    $136, %xmm1, %xmm0                            #1444.15
        mulps     %xmm13, %xmm9                                 #1450.30
        subps     %xmm0, %xmm3                                  #1460.32
        mulps     %xmm9, %xmm3                                  #1460.32
        movd      (%r15,%rax,4), %xmm1                          #1444.15
        addps     %xmm3, %xmm0                                  #1460.32
        movd      (%r15,%rdx,4), %xmm3                          #1444.15
        punpcklqdq %xmm3, %xmm1                                 #1444.15
        movd      (%r15,%rdi,4), %xmm6                          #1444.15
        movd      (%r15,%r10,4), %xmm3                          #1444.15
        punpcklqdq %xmm3, %xmm6                                 #1444.15
        shufps    $136, %xmm6, %xmm1                            #1444.15
        subps     %xmm1, %xmm2                                  #1453.44
        mulps     %xmm9, %xmm2                                  #1453.44
        addps     %xmm2, %xmm1                                  #1453.44
        movaps    %xmm1, %xmm9                                  #1463.43
        mulps     %xmm4, %xmm9                                  #1463.43
        mulps     %xmm5, %xmm1                                  #1464.43
        mulps     %xmm0, %xmm5                                  #1463.68
        mulps     %xmm0, %xmm4                                  #1464.68
        subps     %xmm5, %xmm9                                  #1463.68
        addps     %xmm4, %xmm1                                  #1464.68
        addps     128(%rsp,%r14,4), %xmm9                       #1463.7
        addps     1152(%rsp,%r14,4), %xmm1                      #1464.7
        movaps    %xmm9, 128(%rsp,%r14,4)                       #1463.7
        movaps    %xmm1, 1152(%rsp,%r14,4)                      #1464.7
        addq      $4, %r14                                      #1414.6
        cmpq      $256, %r14                                    #1414.6
        jb        ..B10.13      # Prob 99%                      #1414.6
                                # LOE r14 r15 ebx ebp r12d r13d xmm8 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15
..B10.14:                       # Preds ..B10.50
        movdqa    .L_2il0floatpacket.6(%rip), %xmm4             #
        movaps    2272(%rsp), %xmm9                             #
        movaps    64(%rsp), %xmm0                               #
        movss     104(%rsp), %xmm1                              #
        movss     96(%rsp), %xmm2                               #
        movl      88(%rsp), %edx                                #
        movq      80(%rsp), %rax                                #
        movl      56(%rsp), %r8d                                #
        movl      40(%rsp), %r9d                                #
        movq      2680(%rsp), %rdi                              #
                                # LOE rax rdi edx ebx ebp r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.15:                       # Preds ..B10.4 ..B10.14 ..B10.11
        movslq    %r12d, %r12                                   #1472.6
        xorb      %r15b, %r15b                                  #1468.5
        lea       (%rdi,%r12,4), %r14                           #1472.6
        movq      %r14, %r10                                    #1468.5
        andq      $15, %r10                                     #1468.5
        movl      %r10d, %r11d                                  #1468.5
        testl     %r11d, %r11d                                  #1468.5
        je        ..B10.21      # Prob 50%                      #1468.5
                                # LOE rax rdi r10 r14 edx ebx ebp r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.16:                       # Preds ..B10.15
        testl     $3, %r11d                                     #1468.5
        jne       ..B10.43      # Prob 10%                      #1468.5
                                # LOE rax rdi r14 edx ebx ebp r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.17:                       # Preds ..B10.16
        negl      %r11d                                         #1468.5
        xorl      %ecx, %ecx                                    #1468.5
        addl      $16, %r11d                                    #1468.5
        shrl      $2, %r11d                                     #1468.5
        movl      %r11d, %r10d                                  #1468.5
                                # LOE rax rcx rdi r10 r14 edx ebx ebp r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.18:                       # Preds ..B10.18 ..B10.17
        movss     (%r14,%rcx,4), %xmm3                          #1470.6
        addss     128(%rsp,%rcx,4), %xmm3                       #1470.6
        addss     1152(%rsp,%rcx,4), %xmm3                      #1472.6
        movss     %xmm3, (%r14,%rcx,4)                          #1472.6
        incq      %rcx                                          #1468.5
        cmpq      %r10, %rcx                                    #1468.5
        jb        ..B10.18      # Prob 99%                      #1468.5
                                # LOE rax rcx rdi r10 r14 edx ebx ebp r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.21:                       # Preds ..B10.15 ..B10.18
        negl      %r11d                                         #1468.5
        lea       1152(%rsp,%r10,4), %rcx                       #1472.42
        andl      $7, %r11d                                     #1468.5
        negl      %r11d                                         #1468.5
        testq     $15, %rcx                                     #1468.5
        lea       256(%r11), %esi                               #1468.5
        je        ..B10.25      # Prob 60%                      #1468.5
                                # LOE rax rsi rdi r10 r14 edx ebx ebp esi r8d r9d r11d r12d r13d sil r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.22:                       # Preds ..B10.21
        movq      %rsi, %rcx                                    #
        .align    16,0x90
                                # LOE rax rcx rdi r10 r14 edx ebx ebp esi r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.23:                       # Preds ..B10.23 ..B10.22
        movups    128(%rsp,%r10,4), %xmm5                       #1470.43
        movups    144(%rsp,%r10,4), %xmm7                       #1470.43
        movups    1152(%rsp,%r10,4), %xmm3                      #1472.42
        movups    1168(%rsp,%r10,4), %xmm6                      #1472.42
        addps     (%r14,%r10,4), %xmm5                          #1470.6
        addps     16(%r14,%r10,4), %xmm7                        #1470.6
        addps     %xmm3, %xmm5                                  #1472.6
        addps     %xmm6, %xmm7                                  #1472.6
        movaps    %xmm5, (%r14,%r10,4)                          #1472.6
        movaps    %xmm7, 16(%r14,%r10,4)                        #1472.6
        addq      $8, %r10                                      #1468.5
        cmpq      %rcx, %r10                                    #1468.5
        jb        ..B10.23      # Prob 99%                      #1468.5
        jmp       ..B10.27      # Prob 100%                     #1468.5
                                # LOE rax rcx rdi r10 r14 edx ebx ebp esi r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.25:                       # Preds ..B10.21
        movq      %rsi, %rcx                                    #
        .align    16,0x90
                                # LOE rax rcx rdi r10 r14 edx ebx ebp esi r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.26:                       # Preds ..B10.26 ..B10.25
        movaps    (%r14,%r10,4), %xmm3                          #1470.6
        movaps    16(%r14,%r10,4), %xmm5                        #1470.6
        addps     128(%rsp,%r10,4), %xmm3                       #1470.6
        addps     144(%rsp,%r10,4), %xmm5                       #1470.6
        addps     1152(%rsp,%r10,4), %xmm3                      #1472.6
        addps     1168(%rsp,%r10,4), %xmm5                      #1472.6
        movaps    %xmm3, (%r14,%r10,4)                          #1472.6
        movaps    %xmm5, 16(%r14,%r10,4)                        #1472.6
        addq      $8, %r10                                      #1468.5
        cmpq      %rcx, %r10                                    #1468.5
        jb        ..B10.26      # Prob 99%                      #1468.5
                                # LOE rax rcx rdi r10 r14 edx ebx ebp esi r8d r9d r11d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.27:                       # Preds ..B10.23 ..B10.26
        addl      $257, %r11d                                   #1468.5
        cmpl      $256, %r11d                                   #1468.5
        ja        ..B10.38      # Prob 50%                      #1468.5
                                # LOE rax rdi edx ebx ebp esi r8d r9d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.28:                       # Preds ..B10.27 ..B10.43
        movl      %esi, %ecx                                    #1468.5
        negl      %ecx                                          #1468.5
        addl      $256, %ecx                                    #1468.5
        cmpb      $1, %r15b                                     #1468.5
        jne       ..B10.30      # Prob 50%                      #1468.5
                                # LOE rax rcx rdi edx ebx ebp esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.29:                       # Preds ..B10.30 ..B10.28
        xorl      %r10d, %r10d                                  #1468.5
        jmp       ..B10.34      # Prob 100%                     #1468.5
                                # LOE rax rcx rdi edx ebx ebp esi r8d r9d r10d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.30:                       # Preds ..B10.28
        cmpl      $4, %ecx                                      #1468.5
        jb        ..B10.29      # Prob 10%                      #1468.5
                                # LOE rax rcx rdi edx ebx ebp esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.31:                       # Preds ..B10.30
        movl      %ecx, %r10d                                   #1468.5
        lea       (%rsi,%r12), %r14d                            #1470.6
        movslq    %r14d, %r14                                   #1470.6
        andl      $-4, %r10d                                    #1468.5
        xorl      %r11d, %r11d                                  #1468.5
        lea       (%rdi,%r14,4), %r14                           #1470.6
                                # LOE rax rcx rdi r14 edx ebx ebp esi r8d r9d r10d r11d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.32:                       # Preds ..B10.32 ..B10.31
        lea       (%rsi,%r11), %r15d                            #1470.43
        addl      $4, %r11d                                     #1468.5
        movslq    %r15d, %r15                                   #1470.43
        movups    128(%rsp,%r15,4), %xmm5                       #1470.43
        movups    1152(%rsp,%r15,4), %xmm3                      #1472.42
        addps     (%r14), %xmm5                                 #1470.6
        addps     %xmm3, %xmm5                                  #1472.6
        movaps    %xmm5, (%r14)                                 #1472.6
        addq      $16, %r14                                     #1468.5
        cmpl      %r10d, %r11d                                  #1468.5
        jb        ..B10.32      # Prob 99%                      #1468.5
                                # LOE rax rcx rdi r14 edx ebx ebp esi r8d r9d r10d r11d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.34:                       # Preds ..B10.32 ..B10.29
        movslq    %r10d, %r10                                   #1468.5
        cmpq      %rcx, %r10                                    #1468.5
        jae       ..B10.38      # Prob 0%                       #1468.5
                                # LOE rax rcx rdi r10 edx ebx ebp esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.35:                       # Preds ..B10.34
        lea       (%rsi,%r12), %r11d                            #1470.6
        movslq    %r11d, %r11                                   #1470.6
        lea       (%rdi,%r11,4), %r14                           #1470.6
        lea       (%r14,%r10,4), %r11                           #1470.6
                                # LOE rax rcx rdi r10 r11 edx ebx ebp esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.36:                       # Preds ..B10.36 ..B10.35
        movl      %r10d, %r14d                                  #1470.6
        incq      %r10                                          #1468.5
        addl      %esi, %r14d                                   #1470.43
        movslq    %r14d, %r14                                   #1470.43
        movss     (%r11), %xmm3                                 #1470.6
        addss     128(%rsp,%r14,4), %xmm3                       #1470.6
        addss     1152(%rsp,%r14,4), %xmm3                      #1472.6
        movss     %xmm3, (%r11)                                 #1472.6
        addq      $4, %r11                                      #1468.5
        cmpq      %rcx, %r10                                    #1468.5
        jb        ..B10.36      # Prob 99%                      #1468.5
                                # LOE rax rcx rdi r10 r11 edx ebx ebp esi r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.38:                       # Preds ..B10.36 ..B10.27 ..B10.34
        incl      %edx                                          #1373.2
        addl      $256, %r12d                                   #1373.2
        addl      48(%rsp), %r13d                               #1373.2
        cmpl      $512, %edx                                    #1373.2
        jb        ..B10.4       # Prob 99%                      #1373.2
                                # LOE rax rdi edx ebx ebp r8d r9d r12d r13d xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
..B10.39:                       # Preds ..B10.38
        movl      (%rsp), %ebp                                  #
#       clock()
        call      clock                                         #1717.11
                                # LOE rbp r12 r13 r14 ebp bpl
..B10.40:                       # Preds ..B10.39
..___tag_value_bpbasiccpu.245:
#       omp_get_wtime()
        call      omp_get_wtime                                 #1719.10
..___tag_value_bpbasiccpu.246:
                                # LOE rbp r12 r13 r14 ebp bpl xmm0
..B10.41:                       # Preds ..B10.40
        movl      $.L_2__STRING.51, %edi                        #1722.4
        movl      %ebp, %esi                                    #1722.4
        movl      $1, %eax                                      #1722.4
        subsd     8(%rsp), %xmm0                                #1722.4
        addq      $2520, %rsp                                   #1722.4
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #1722.4
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #1722.4
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #1722.4
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #1722.4
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #1722.4
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #1722.4
	.cfi_def_cfa_offset 8
#       printf(const char *, ...)
        jmp       printf                                        #1722.4
	.cfi_def_cfa_offset 2576
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B10.43:                       # Preds ..B10.16                # Infreq
        movb      $1, %r15b                                     #1468.5
        xorl      %esi, %esi                                    #1468.5
        jmp       ..B10.28      # Prob 100%                     #1468.5
        .align    16,0x90
	.cfi_endproc
                                # LOE rax rdi edx ebx ebp esi r8d r9d r12d r13d r15b xmm0 xmm1 xmm2 xmm4 xmm9 xmm14
# mark_end;
	.type	bpbasiccpu,@function
	.size	bpbasiccpu,.-bpbasiccpu
	.data
# -- End  bpbasiccpu
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
       .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B11.1:                        # Preds ..B11.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.268:
..L269:
                                                        #
        pushq     %rsi                                          #
	.cfi_def_cfa_offset 16
        movl      $_ZSt8__ioinit, %edi                          #72.25
..___tag_value___sti__$E.271:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #72.25
..___tag_value___sti__$E.272:
                                # LOE rbx rbp r12 r13 r14 r15
..B11.2:                        # Preds ..B11.1
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #72.25
        movl      $_ZSt8__ioinit, %esi                          #72.25
        movl      $__dso_handle, %edx                           #72.25
        addq      $8, %rsp                                      #72.25
	.cfi_def_cfa_offset 8
#       __cxa_atexit()
        jmp       __cxa_atexit                                  #72.25
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.text
# -- Begin  _Z10initializeiii
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z10initializeiii
# --- initialize(int, int, int)
_Z10initializeiii:
# parameter 1: %edi
# parameter 2: %esi
# parameter 3: %edx
..B12.1:                        # Preds ..B12.0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__Z10initializeiii.275:
..L276:
                                                        #131.62
        pushq     %rsi                                          #131.62
	.cfi_def_cfa_offset 16
        movl      $100, %eax                                    #135.2
        movl      %edi, sar_data_Np(%rip)                       #132.2
        xorl      %ecx, %ecx                                    #140.2
        movslq    %edi, %rdi                                    #152.28
        shlq      $4, %rdi                                      #152.28
        movl      %eax, sar_data_Wx(%rip)                       #135.2
        movl      %eax, sar_data_Wy(%rip)                       #136.2
        movl      $4096, sar_data_Nfft(%rip)                    #137.2
        movl      %esi, sar_data_Nx(%rip)                       #138.2
        movl      %edx, sar_data_Ny(%rip)                       #139.2
        movl      %ecx, sar_data_x0(%rip)                       #140.2
        movl      %ecx, sar_data_y0(%rip)                       #141.2
        movl      $424, sar_data_K(%rip)                        #145.2
#       malloc(size_t)
        call      malloc                                        #152.28
                                # LOE rax rbx rbp r12 r13 r14 r15
..B12.2:                        # Preds ..B12.1
        movq      %rax, sar_data_XYZR(%rip)                     #152.2
        popq      %rcx                                          #153.1
	.cfi_def_cfa_offset 8
        ret                                                     #153.1
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	_Z10initializeiii,@function
	.size	_Z10initializeiii,.-_Z10initializeiii
	.data
# -- End  _Z10initializeiii
	.bss
	.align 8
	.align 8
	.globl sar_data_XYZR
sar_data_XYZR:
	.type	sar_data_XYZR,@object
	.size	sar_data_XYZR,8
	.space 8	# pad
	.align 8
	.globl fnamePHXheader
fnamePHXheader:
	.type	fnamePHXheader,@object
	.size	fnamePHXheader,8
	.space 8	# pad
	.align 8
	.globl fnamePAUX
fnamePAUX:
	.type	fnamePAUX,@object
	.size	fnamePAUX,8
	.space 8	# pad
	.align 8
	.globl fnamePHdata_pdcph_I
fnamePHdata_pdcph_I:
	.type	fnamePHdata_pdcph_I,@object
	.size	fnamePHdata_pdcph_I,8
	.space 8	# pad
	.align 8
	.globl fnamePHdata_pdcph_Q
fnamePHdata_pdcph_Q:
	.type	fnamePHdata_pdcph_Q,@object
	.size	fnamePHdata_pdcph_Q,8
	.space 8	# pad
	.align 8
	.globl im_final_host_R
im_final_host_R:
	.type	im_final_host_R,@object
	.size	im_final_host_R,8
	.space 8	# pad
	.align 8
	.globl im_final_host_Q
im_final_host_Q:
	.type	im_final_host_Q,@object
	.size	im_final_host_Q,8
	.space 8	# pad
	.align 4
	.globl sar_data_Np
sar_data_Np:
	.type	sar_data_Np,@object
	.size	sar_data_Np,4
	.space 4	# pad
	.align 4
	.globl sar_data_Wx
sar_data_Wx:
	.type	sar_data_Wx,@object
	.size	sar_data_Wx,4
	.space 4	# pad
	.align 4
	.globl sar_data_Wy
sar_data_Wy:
	.type	sar_data_Wy,@object
	.size	sar_data_Wy,4
	.space 4	# pad
	.align 4
	.globl sar_data_Nfft
sar_data_Nfft:
	.type	sar_data_Nfft,@object
	.size	sar_data_Nfft,4
	.space 4	# pad
	.align 4
	.globl sar_data_Nx
sar_data_Nx:
	.type	sar_data_Nx,@object
	.size	sar_data_Nx,4
	.space 4	# pad
	.align 4
	.globl sar_data_Ny
sar_data_Ny:
	.type	sar_data_Ny,@object
	.size	sar_data_Ny,4
	.space 4	# pad
	.align 4
	.globl sar_data_x0
sar_data_x0:
	.type	sar_data_x0,@object
	.size	sar_data_x0,4
	.space 4	# pad
	.align 4
	.globl sar_data_y0
sar_data_y0:
	.type	sar_data_y0,@object
	.size	sar_data_y0,4
	.space 4	# pad
	.align 4
	.globl sar_data_K
sar_data_K:
	.type	sar_data_K,@object
	.size	sar_data_K,4
	.space 4	# pad
	.align 4
	.globl sar_data_deltaF
sar_data_deltaF:
	.type	sar_data_deltaF,@object
	.size	sar_data_deltaF,4
	.space 4	# pad
	.align 4
	.globl sar_data_minF
sar_data_minF:
	.type	sar_data_minF,@object
	.size	sar_data_minF,4
	.space 4	# pad
	.align 4
	.globl prep2
prep2:
	.type	prep2,@object
	.size	prep2,4
	.space 4	# pad
	.align 4
	.globl prep3
prep3:
	.type	prep3,@object
	.size	prep3,4
	.space 4	# pad
	.align 4
	.globl prepi
prepi:
	.type	prepi,@object
	.size	prepi,4
	.space 4	# pad
	.align 1
_ZSt8__ioinit:
	.type	_ZSt8__ioinit,@object
	.size	_ZSt8__ioinit,1
	.space 1	# pad
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.4:
	.long	0x00000002,0x00000002,0x00000002,0x00000002
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,16
	.align 16
.L_2il0floatpacket.5:
	.long	0x00000001,0x00000001,0x00000001,0x00000001
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,16
	.align 16
.L_2il0floatpacket.6:
	.long	0x00000000,0x00000001,0x00000002,0x00000003
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,16
	.align 16
.L_2il0floatpacket.7:
	.long	0xffffffff,0x00000000,0xffffffff,0x00000000
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,16
	.align 16
.L_2il0floatpacket.9:
	.long	0x00000000,0x40340000,0x00000000,0x40340000
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,16
	.align 16
.L_2il0floatpacket.10:
	.long	0xc28c0000,0xc28c0000,0xc28c0000,0xc28c0000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,16
	.align 16
.L_2il0floatpacket.11:
	.long	0x3f800000,0x3f800000,0x3f800000,0x3f800000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,16
	.align 16
.L_2il0floatpacket.12:
	.long	0xffffffff,0xffffffff,0xffffffff,0xffffffff
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,16
	.align 16
.L_2il0floatpacket.17:
	.long	0x40400000,0x40400000,0x40400000,0x40400000
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,16
	.align 16
.L_2il0floatpacket.18:
	.long	0xbf000000,0xbf000000,0xbf000000,0xbf000000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,16
	.align 16
.L_2il0floatpacket.19:
	.long	0x00800000,0x00800000,0x00800000,0x00800000
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,16
	.align 16
.L_2il0floatpacket.20:
	.long	0x7fffffff,0x7fffffff,0x7fffffff,0x7fffffff
	.type	.L_2il0floatpacket.20,@object
	.size	.L_2il0floatpacket.20,16
	.align 8
.L_2il0floatpacket.13:
	.long	0x00000000,0x40340000
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,8
	.align 8
.L_2il0floatpacket.15:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,8
	.align 4
.L_2il0floatpacket.0:
	.long	0x42c80000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,4
	.align 4
.L_2il0floatpacket.1:
	.long	0x4e14bbaa
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,4
	.align 4
.L_2il0floatpacket.2:
	.long	0x4d8ef3c2
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,4
	.align 4
.L_2il0floatpacket.3:
	.long	0x3334081f
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,4
	.align 4
.L_2il0floatpacket.8:
	.long	0xff800000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,4
	.align 4
.L_2il0floatpacket.14:
	.long	0xc28c0000
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,4
	.align 4
.L_2il0floatpacket.16:
	.long	0x3f800000
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,4
	.align 4
.L_2il0floatpacket.21:
	.long	0x7f800000
	.type	.L_2il0floatpacket.21,@object
	.size	.L_2il0floatpacket.21,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.14:
	.long	1852797559
	.long	1918967911
	.long	1701672295
	.long	7566446
	.type	.L_2__STRING.14,@object
	.size	.L_2__STRING.14,16
	.align 4
.L_2__STRING.15:
	.long	1734438217
	.long	1769152613
	.long	622880122
	.long	544743524
	.long	169894949
	.byte	0
	.type	.L_2__STRING.15,@object
	.size	.L_2__STRING.15,21
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.16:
	.long	1651340622
	.long	1864397413
	.long	1970282598
	.long	1936028524
	.long	543434016
	.word	10
	.type	.L_2__STRING.16,@object
	.size	.L_2__STRING.16,22
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.18:
	.long	1853188195
	.long	1768038507
	.long	1680154740
	.word	2592
	.byte	0
	.type	.L_2__STRING.18,@object
	.size	.L_2__STRING.18,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.long	1127165486
	.long	1346458417
	.long	825246513
	.long	825569328
	.long	1886596663
	.long	774993007
	.long	1752721520
	.long	1949200996
	.word	29816
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,35
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.word	114
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1127165486
	.long	1346458417
	.long	825246513
	.long	825569328
	.long	1886596663
	.long	774993007
	.long	2020958576
	.long	1954051118
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,33
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	1932471854
	.long	829714288
	.long	1667526751
	.long	1230989424
	.long	1954051118
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,21
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1932471854
	.long	829714288
	.long	1667526751
	.long	1365207152
	.long	1954051118
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,21
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.word	29477
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,3
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	2123301
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,4
	.align 4
.L_2__STRING.19:
	.long	1751607656
	.long	1818850336
	.long	622883685
	.long	663652
	.type	.L_2__STRING.19,@object
	.size	.L_2__STRING.19,16
	.align 4
.L_2__STRING.20:
	.long	1868785011
	.long	1948279918
	.long	1936026729
	.long	543434016
	.word	10
	.type	.L_2__STRING.20,@object
	.size	.L_2__STRING.20,18
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.21:
	.long	544698220
	.long	1701603700
	.long	1680154739
	.word	2592
	.byte	0
	.type	.L_2__STRING.21,@object
	.size	.L_2__STRING.21,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.22:
	.long	1751607656
	.long	544502629
	.long	169894949
	.byte	0
	.type	.L_2__STRING.22,@object
	.size	.L_2__STRING.22,13
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.23:
	.long	543452722
	.long	543434016
	.word	10
	.type	.L_2__STRING.23,@object
	.size	.L_2__STRING.23,10
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.24:
	.long	1702326124
	.long	622883955
	.long	663652
	.type	.L_2__STRING.24,@object
	.size	.L_2__STRING.24,12
	.align 4
.L_2__STRING.25:
	.long	1768778092
	.long	1633886324
	.long	1918967916
	.long	544825714
	.long	622879781
	.long	663652
	.type	.L_2__STRING.25,@object
	.size	.L_2__STRING.25,24
	.align 4
.L_2__STRING.33:
	.long	1702521203
	.long	1634952562
	.long	2036429426
	.long	1680154744
	.long	2053731104
	.long	1936028261
	.long	1634890337
	.long	622885241
	.long	663652
	.type	.L_2__STRING.33,@object
	.size	.L_2__STRING.33,36
	.align 4
.L_2__STRING.34:
	.long	1920098592
	.long	1931508065
	.long	543521385
	.long	1680154682
	.word	2592
	.byte	0
	.type	.L_2__STRING.34,@object
	.size	.L_2__STRING.34,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.36:
	.long	1431323424
	.long	541346080
	.long	1746953253
	.long	622883681
	.long	1769218148
	.long	544433516
	.word	10
	.type	.L_2__STRING.36,@object
	.size	.L_2__STRING.36,26
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.37:
	.long	1431323424
	.long	541346080
	.long	1746953253
	.long	622883681
	.long	1868767332
	.long	1953853549
	.long	1869182049
	.long	663662
	.type	.L_2__STRING.37,@object
	.size	.L_2__STRING.37,32
	.align 4
.L_2__STRING.38:
	.long	1601203567
	.long	1768778092
	.long	1633886324
	.long	1918967916
	.long	544825714
	.long	622879781
	.long	663652
	.type	.L_2__STRING.38,@object
	.size	.L_2__STRING.38,28
	.align 4
.L_2__STRING.39:
	.long	1347243808
	.long	1431323424
	.long	541346080
	.long	1746953253
	.long	622883681
	.long	1769218148
	.long	544433516
	.word	10
	.type	.L_2__STRING.39,@object
	.size	.L_2__STRING.39,30
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.40:
	.long	1347243808
	.long	1431323424
	.long	541346080
	.long	1746953253
	.long	622883681
	.long	1868767332
	.long	1953853549
	.long	1869182049
	.long	663662
	.type	.L_2__STRING.40,@object
	.size	.L_2__STRING.40,36
	.align 4
.L_2__STRING.51:
	.long	1769172585
	.long	1948280164
	.long	1818326127
	.long	1835627552
	.long	1713381477
	.long	1646293615
	.long	1935762032
	.long	1663066985
	.long	1684632944
	.long	543434016
	.long	1714695717
	.word	10
	.type	.L_2__STRING.51,@object
	.size	.L_2__STRING.51,46
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.41:
	.long	1634625862
	.long	1769218156
	.long	543973748
	.long	1701669236
	.long	1769174304
	.long	1864394606
	.long	1835951472
	.long	622882669
	.long	174470190
	.byte	0
	.type	.L_2__STRING.41,@object
	.size	.L_2__STRING.41,37
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.42:
	.long	1701667171
	.long	1919248416
	.long	1869488229
	.long	544502900
	.long	544502577
	.long	1852403568
	.long	1969365108
	.long	1869488244
	.long	1869029492
	.long	622879855
	.long	663652
	.type	.L_2__STRING.42,@object
	.size	.L_2__STRING.42,44
	.align 4
.L_2__STRING.43:
	.long	1886680431
	.long	1763734645
	.long	1701273965
	.long	1852793632
	.long	1970435187
	.long	1869182051
	.long	1769218158
	.long	540697965
	.long	825107744
	.long	169895472
	.byte	0
	.type	.L_2__STRING.43,@object
	.size	.L_2__STRING.43,41
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.44:
	.long	1886680431
	.long	1835627637
	.long	778397537
	.long	7633012
	.type	.L_2__STRING.44,@object
	.size	.L_2__STRING.44,16
	.align 4
.L_2__STRING.45:
	.word	119
	.type	.L_2__STRING.45,@object
	.size	.L_2__STRING.45,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.47:
	.long	157707301
	.byte	0
	.type	.L_2__STRING.47,@object
	.size	.L_2__STRING.47,5
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.49:
	.long	1635020660
	.long	1970217068
	.long	1953853556
	.long	1701669236
	.long	622862394
	.long	1714434350
	.word	2592
	.byte	0
	.type	.L_2__STRING.49,@object
	.size	.L_2__STRING.49,27
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.50:
	.long	1397965136
	.long	672837
	.type	.L_2__STRING.50,@object
	.size	.L_2__STRING.50,8
	.align 4
.L_2__STRING.27:
	.long	1751607656
	.long	1701603700
	.long	1936946035
	.long	622869792
	.long	663652
	.type	.L_2__STRING.27,@object
	.size	.L_2__STRING.27,20
	.align 4
.L_2__STRING.28:
	.long	1952738866
	.long	1936026729
	.long	544437107
	.long	1680154685
	.word	2592
	.byte	0
	.type	.L_2__STRING.28,@object
	.size	.L_2__STRING.28,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.29:
	.long	1953984364
	.long	1936026729
	.long	544437107
	.long	1680154685
	.word	2592
	.byte	0
	.type	.L_2__STRING.29,@object
	.size	.L_2__STRING.29,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.30:
	.long	542396492
	.long	1701669236
	.long	1713709114
	.word	2592
	.byte	0
	.type	.L_2__STRING.30,@object
	.size	.L_2__STRING.30,15
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	1937072496
	.word	101
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,6
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
