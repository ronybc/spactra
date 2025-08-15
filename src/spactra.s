	.file	"spactra.c"
# GNU C (GCC) version 4.9.0 20140521 (prerelease) (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 4.9.0 20140521 (prerelease), GMP version 6.0.0, MPFR version 3.1.2-p5, MPC version 1.0.2
# warning: MPFR header version 3.1.2-p5 differs from library version 3.1.2-p8.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  spactra.c -march=ivybridge -mmmx -mno-3dnow -msse -msse2
# -msse3 -mssse3 -mno-sse4a -mcx16 -msahf -mno-movbe -mno-aes -mno-sha
# -mpclmul -mpopcnt -mno-abm -mno-lwp -mno-fma -mno-fma4 -mno-xop -mno-bmi
# -mno-bmi2 -mno-tbm -mavx -mno-avx2 -msse4.2 -msse4.1 -mno-lzcnt -mno-rtm
# -mno-hle -mno-rdrnd -mf16c -mfsgsbase -mno-rdseed -mno-prfchw -mno-adx
# -mfxsr -mxsave -mxsaveopt -mno-avx512f -mno-avx512er -mno-avx512cd
# -mno-avx512pf -mno-prefetchwt1 --param l1-cache-size=32
# --param l1-cache-line-size=64 --param l2-cache-size=3072 -mtune=ivybridge
# -O3 -Wpedantic -std=gnu99 -ffast-math -fomit-frame-pointer -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fassociative-math
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fcx-limited-range
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize
# -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -ffinite-math-only -fforward-propagate -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
# -fipa-pure-const -fipa-reference -fipa-sra -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fpredictive-commoning -fprefetch-loop-arrays -freciprocal-math -free
# -freg-struct-return -freorder-blocks -freorder-blocks-and-partition
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
# -fstrict-overflow -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -funsafe-math-optimizations -funswitch-loops
# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops -mavx
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mcx16
# -mf16c -mfancy-math-387 -mfp-ret-in-387 -mfsgsbase -mfxsr -mglibc
# -mlong-double-80 -mmmx -mpclmul -mpopcnt -mpush-args -mred-zone -msahf
# -msse -msse2 -msse3 -msse4 -msse4.1 -msse4.2 -mssse3
# -mtls-direct-seg-refs -mvzeroupper -mxsave -mxsaveopt

	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.type	window_hanning, @function
window_hanning:
.LFB88:
	.cfi_startproc
	testl	%esi, %esi	# n
	jle	.L9	#,
	subl	$1, %esi	#,
	vxorpd	%xmm0, %xmm0, %xmm0	# D.15165
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	vcvtsi2sd	%esi, %xmm0, %xmm0	# D.15167, D.15165, D.15165
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# wav, wav
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	1(%rsi), %r12	#, D.15168
	xorl	%ebx, %ebx	# ivtmp.55
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
	vmovsd	.LC0(%rip), %xmm5	#, tmp135
	vdivsd	%xmm0, %xmm5, %xmm0	# D.15165, tmp135, D.15165
	vmulsd	.LC1(%rip), %xmm0, %xmm6	#, D.15165, D.15165
	vmovsd	%xmm6, 8(%rsp)	# D.15165, %sfp
	.p2align 4,,10
	.p2align 3
.L3:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.15165
	vcvtsi2sd	%ebx, %xmm0, %xmm0	# ivtmp.55, D.15165, D.15165
	vmulsd	8(%rsp), %xmm0, %xmm0	# %sfp, D.15165, D.15165
	call	cos	#
	vmovsd	.LC2(%rip), %xmm3	#, tmp138
	vmovsd	.LC0(%rip), %xmm4	#, tmp139
	vmulsd	0(%rbp,%rbx,8), %xmm3, %xmm1	# MEM[base: wav_13(D), index: ivtmp.55_8, step: 8, offset: 0B], tmp138, D.15165
	vsubsd	%xmm0, %xmm4, %xmm0	# D.15165, tmp139, D.15165
	vmulsd	%xmm0, %xmm1, %xmm1	# D.15165, D.15165, D.15165
	vmovsd	%xmm1, 0(%rbp,%rbx,8)	# D.15165, MEM[base: wav_13(D), index: ivtmp.55_8, step: 8, offset: 0B]
	addq	$1, %rbx	#, ivtmp.55
	cmpq	%r12, %rbx	# D.15168, ivtmp.55
	jne	.L3	#,
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L9:
	ret
	.cfi_endproc
.LFE88:
	.size	window_hanning, .-window_hanning
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.type	window_blackman_harris, @function
window_blackman_harris:
.LFB89:
	.cfi_startproc
	testl	%esi, %esi	# n
	jle	.L19	#,
	subl	$1, %esi	#,
	vxorpd	%xmm1, %xmm1, %xmm1	# D.15178
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13	# wav, wav
	vcvtsi2sd	%esi, %xmm1, %xmm1	# D.15180, D.15178, D.15178
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	vmovq	%xmm0, %r12	# order, order
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	1(%rsi), %rbp	#, D.15181
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx	# ivtmp.63
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 96
	vmovsd	.LC0(%rip), %xmm0	#, tmp116
	vdivsd	%xmm1, %xmm0, %xmm0	# D.15178, tmp116, reciptmp.67
	vmulsd	.LC4(%rip), %xmm0, %xmm7	#, reciptmp.67, D.15178
	vmovsd	%xmm7, 24(%rsp)	# D.15178, %sfp
	vmulsd	.LC1(%rip), %xmm0, %xmm7	#, reciptmp.67, D.15178
	vmovsd	%xmm7, 32(%rsp)	# D.15178, %sfp
	vmulsd	.LC5(%rip), %xmm0, %xmm7	#, reciptmp.67, D.15178
	vmovsd	%xmm7, 40(%rsp)	# D.15178, %sfp
	.p2align 4,,10
	.p2align 3
.L13:
	vxorpd	%xmm3, %xmm3, %xmm3	# D.15178
	vcvtsi2sd	%ebx, %xmm3, %xmm3	# ivtmp.63, D.15178, D.15178
	vmulsd	24(%rsp), %xmm3, %xmm0	# %sfp, D.15178, D.15178
	vmovsd	%xmm3, (%rsp)	# D.15178, %sfp
	call	cos	#
	vmovsd	(%rsp), %xmm3	# %sfp, D.15178
	vmovsd	%xmm0, 8(%rsp)	#, %sfp
	vmulsd	32(%rsp), %xmm3, %xmm0	# %sfp, D.15178, D.15178
	call	cos	#
	vmovsd	(%rsp), %xmm3	# %sfp, D.15178
	vmovsd	%xmm0, 16(%rsp)	#, %sfp
	vmulsd	40(%rsp), %xmm3, %xmm0	# %sfp, D.15178, D.15178
	call	cos	#
	vmovsd	.LC6(%rip), %xmm7	#, tmp165
	vmovsd	.LC7(%rip), %xmm5	#, tmp167
	vmulsd	8(%rsp), %xmm7, %xmm2	# %sfp, tmp165, D.15178
	vmulsd	16(%rsp), %xmm5, %xmm1	# %sfp, tmp167, D.15178
	vmulsd	.LC8(%rip), %xmm0, %xmm0	#, D.15178, D.15178
	vsubsd	%xmm1, %xmm2, %xmm2	# D.15178, D.15178, D.15178
	vmovq	%r12, %xmm1	# order,
	vsubsd	%xmm0, %xmm2, %xmm0	# D.15178, D.15178, D.15178
	vaddsd	.LC9(%rip), %xmm0, %xmm0	#, D.15178, window
	call	__pow_finite	#
	vmulsd	0(%r13,%rbx,8), %xmm0, %xmm0	# MEM[base: wav_23(D), index: ivtmp.63_8, step: 8, offset: 0B], tmp138, D.15178
	vmovsd	%xmm0, 0(%r13,%rbx,8)	# D.15178, MEM[base: wav_23(D), index: ivtmp.63_8, step: 8, offset: 0B]
	addq	$1, %rbx	#, ivtmp.63
	cmpq	%rbp, %rbx	# D.15181, ivtmp.63
	jne	.L13	#,
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.L19:
	ret
	.cfi_endproc
.LFE89:
	.size	window_blackman_harris, .-window_blackman_harris
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.type	execute_fftw, @function
execute_fftw:
.LFB85:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	%esi, %r15d	# n, n
	pushq	%r14	#
	pushq	%r13	#
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rdi, %r13	# wav, wav
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%esi, %ebx	# n, tmp181
	shrl	$31, %ebx	#, tmp181
	subq	$32, %rsp	#,
	addl	%esi, %ebx	# n, tmp182
	sarl	%ebx	#
	leal	1(%rbx), %r14d	#, fn
	movslq	%r14d, %rdi	# fn, D.15221
	salq	$4, %rdi	#, D.15221
	call	fftw_malloc	#
	movl	%r15d, %edi	# n,
	movl	$64, %ecx	#,
	movq	%r13, %rsi	# wav,
	movq	%rax, %rdx	# fft,
	movq	%rax, %r12	#, fft
	call	fftw_plan_dft_r2c_1d	#
	movq	%rax, %rdi	# plan_et,
	movq	%rax, %r15	#, plan_et
	call	fftw_execute	#
	vxorpd	%xmm0, %xmm0, %xmm0	# peak
	testl	%r14d, %r14d	# fn
	jle	.L21	#,
	movl	%r14d, %edx	# fn, D.15227
	movq	%rdx, %rax	# D.15227, D.15227
	salq	$4, %rax	#, D.15227
	addq	%r12, %rax	# fft, D.15226
	cmpq	%rax, %r13	# D.15226, wav
	leaq	0(%r13,%rdx,8), %rax	#, D.15224
	setae	%cl	#, D.15225
	cmpq	%rax, %r12	# D.15224, fft
	setae	%al	#, D.15225
	orb	%al, %cl	# D.15225, tmp240
	je	.L22	#,
	cmpl	$4, %r14d	#, fn
	jbe	.L22	#,
	subl	$3, %ebx	#, D.15223
	xorl	%edx, %edx	# ivtmp.102
	xorl	%eax, %eax	# ivtmp.96
	vxorpd	%xmm3, %xmm3, %xmm3	# vect_peak_35.82
	shrl	$2, %ebx	#, D.15223
	addl	$1, %ebx	#, bnd.71
	leal	0(,%rbx,4), %ecx	#, ratio_mult_vf.72
.L23:
	vmovupd	(%r12,%rdx,2), %xmm0	# MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 0B], MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 0B]
	vinsertf128	$0x1, 16(%r12,%rdx,2), %ymm0, %ymm2	# MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 0B], MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 0B], tmp199
	addl	$1, %eax	#, ivtmp.96
	vmovupd	32(%r12,%rdx,2), %xmm0	# MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 32B], MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 32B]
	vinsertf128	$0x1, 48(%r12,%rdx,2), %ymm0, %ymm0	# MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 32B], MEM[base: fft_12, index: ivtmp.102_63, step: 2, offset: 32B], tmp201
	vinsertf128	$1, %xmm0, %ymm2, %ymm1	# tmp201, tmp199, tmp203
	vperm2f128	$49, %ymm0, %ymm2, %ymm0	#, tmp201, tmp199, tmp204
	vunpcklpd	%ymm0, %ymm1, %ymm2	# tmp204, tmp203, D.15228
	vunpckhpd	%ymm0, %ymm1, %ymm0	# tmp204, tmp203, D.15228
	vmulpd	%ymm2, %ymm2, %ymm2	# D.15228, D.15228, vect_powmult_32.78
	vmulpd	%ymm0, %ymm0, %ymm0	# D.15228, D.15228, vect_powmult_36.79
	vaddpd	%ymm2, %ymm0, %ymm0	# vect_powmult_32.78, vect_powmult_36.79, vect__24.80
	vsqrtpd	%ymm0, %ymm0	# vect__24.80, tmp207
	vmovups	%xmm0, 0(%r13,%rdx)	#, MEM[base: wav_13(D), index: ivtmp.102_63, offset: 0B]
	vextractf128	$0x1, %ymm0, 16(%r13,%rdx)	# tmp207, MEM[base: wav_13(D), index: ivtmp.102_63, offset: 0B]
	vmaxpd	%ymm0, %ymm3, %ymm3	# tmp207, vect_peak_35.82, vect_peak_35.82
	addq	$32, %rdx	#, ivtmp.102
	cmpl	%ebx, %eax	# bnd.71, ivtmp.96
	jb	.L23	#,
	vperm2f128	$1, %ymm3, %ymm3, %ymm0	#, vect_peak_35.82, vect_peak_35.82, tmp218
	vmaxpd	%ymm3, %ymm0, %ymm3	# vect_peak_35.82, tmp218, tmp219
	vshufpd	$1, %ymm3, %ymm3, %ymm0	#, tmp219, tmp219, tmp220
	vmaxpd	%ymm3, %ymm0, %ymm0	# tmp219, tmp220, vect_peak_35.85
	cmpl	%ecx, %r14d	# ratio_mult_vf.72, fn
	je	.L41	#,
	movslq	%ecx, %rdx	# ratio_mult_vf.72, D.15221
	movq	%rdx, %rax	# D.15221, D.15221
	salq	$4, %rax	#, D.15221
	addq	%r12, %rax	# fft, D.15226
	vmovsd	(%rax), %xmm2	# *_38, D.15222
	vmovsd	8(%rax), %xmm1	# *_38, D.15222
	leal	1(%rcx), %eax	#, i
	vmulsd	%xmm2, %xmm2, %xmm2	# D.15222, D.15222, D.15222
	vmulsd	%xmm1, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vaddsd	%xmm2, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vsqrtsd	%xmm1, %xmm1, %xmm1	# D.15222, tmp223
	vmaxsd	%xmm1, %xmm0, %xmm0	# tmp223, peak, peak
	vmovsd	%xmm1, 0(%r13,%rdx,8)	# tmp223, *_25
	cmpl	%eax, %r14d	# i, fn
	jle	.L41	#,
	cltq
	addl	$2, %ecx	#, i
	movq	%rax, %rdx	# D.15221, D.15221
	salq	$4, %rdx	#, D.15221
	addq	%r12, %rdx	# fft, D.15226
	vmovsd	(%rdx), %xmm2	# *_128, D.15222
	vmovsd	8(%rdx), %xmm1	# *_128, D.15222
	vmulsd	%xmm2, %xmm2, %xmm2	# D.15222, D.15222, D.15222
	vmulsd	%xmm1, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vaddsd	%xmm2, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vsqrtsd	%xmm1, %xmm1, %xmm1	# D.15222, tmp228
	vmaxsd	%xmm1, %xmm0, %xmm0	# tmp228, peak, peak
	vmovsd	%xmm1, 0(%r13,%rax,8)	# tmp228, *_137
	cmpl	%ecx, %r14d	# i, fn
	jle	.L41	#,
	movslq	%ecx, %rcx	# i, D.15221
	movq	%rcx, %rax	# D.15221, D.15221
	salq	$4, %rax	#, D.15221
	addq	%r12, %rax	# fft, D.15226
	vmovsd	(%rax), %xmm2	# *_80, D.15222
	vmovsd	8(%rax), %xmm1	# *_80, D.15222
	vmulsd	%xmm2, %xmm2, %xmm2	# D.15222, D.15222, D.15222
	vmulsd	%xmm1, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vaddsd	%xmm2, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vsqrtsd	%xmm1, %xmm1, %xmm1	# D.15222, tmp213
	vmaxsd	%xmm1, %xmm0, %xmm0	# tmp213, peak, peak
	vmovsd	%xmm1, 0(%r13,%rcx,8)	# tmp213, *_89
	vzeroupper
.L21:
	movq	%r15, %rdi	# plan_et,
	vmovsd	%xmm0, -56(%rbp)	# peak, %sfp
	call	fftw_destroy_plan	#
	movq	%r12, %rdi	# fft,
	call	fftw_free	#
	vmovsd	-56(%rbp), %xmm0	# %sfp, peak
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
.L41:
	.cfi_restore_state
	vzeroupper
	jmp	.L21	#
.L22:
	movq	%r12, %rcx	# fft, ivtmp.91
	xorl	%edx, %edx	# ivtmp.95
	vxorpd	%xmm0, %xmm0, %xmm0	# peak
	leaq	8(,%rbx,8), %rax	#, D.15227
	.p2align 4,,10
	.p2align 3
.L28:
	vmovsd	(%rcx), %xmm2	# MEM[base: _143, offset: 0B], D.15222
	addq	$16, %rcx	#, ivtmp.91
	vmovsd	-8(%rcx), %xmm1	# MEM[base: _143, offset: 8B], D.15222
	vmulsd	%xmm2, %xmm2, %xmm2	# D.15222, D.15222, D.15222
	vmulsd	%xmm1, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vaddsd	%xmm2, %xmm1, %xmm1	# D.15222, D.15222, D.15222
	vsqrtsd	%xmm1, %xmm1, %xmm1	# D.15222, tmp234
	vmovsd	%xmm1, 0(%r13,%rdx)	# tmp234, MEM[base: wav_13(D), index: ivtmp.95_141, offset: 0B]
	addq	$8, %rdx	#, ivtmp.95
	vmaxsd	%xmm1, %xmm0, %xmm0	# tmp234, peak, peak
	cmpq	%rax, %rdx	# D.15227, ivtmp.95
	jne	.L28	#,
	jmp	.L21	#
	.cfi_endproc
.LFE85:
	.size	execute_fftw, .-execute_fftw
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.type	cftmdl1.constprop.5, @function
cftmdl1.constprop.5:
.LFB98:
	.cfi_startproc
	vmovsd	8(%rdi), %xmm3	# MEM[(double *)a_5(D) + 8B], D.15268
	movq	%rdi, %rdx	# a, ivtmp.136
	movq	%rdi, %rax	# a, ivtmp.126
	xorl	%ecx, %ecx	# ivtmp.119
	vmovsd	264(%rdi), %xmm0	# MEM[(double *)a_5(D) + 264B], D.15268
	vmovsd	256(%rdi), %xmm1	# MEM[(double *)a_5(D) + 256B], D.15268
	vaddsd	%xmm3, %xmm0, %xmm10	# D.15268, D.15268, x0i
	vmovsd	(%rdi), %xmm9	# *a_5(D), D.15268
	vsubsd	%xmm0, %xmm3, %xmm0	# D.15268, D.15268, x1i
	vmovsd	128(%rdi), %xmm7	# MEM[(double *)a_5(D) + 128B], D.15268
	vmovsd	384(%rdi), %xmm3	# MEM[(double *)a_5(D) + 384B], D.15268
	vaddsd	%xmm9, %xmm1, %xmm8	# D.15268, D.15268, x0r
	vmovsd	136(%rdi), %xmm2	# MEM[(double *)a_5(D) + 136B], D.15268
	vsubsd	%xmm1, %xmm9, %xmm9	# D.15268, D.15268, x1r
	vaddsd	%xmm7, %xmm3, %xmm4	# D.15268, D.15268, x2r
	vmovsd	392(%rdi), %xmm6	# MEM[(double *)a_5(D) + 392B], D.15268
	vsubsd	%xmm3, %xmm7, %xmm3	# D.15268, D.15268, x3r
	vaddsd	%xmm2, %xmm6, %xmm5	# D.15268, D.15268, x2i
	vsubsd	%xmm6, %xmm2, %xmm1	# D.15268, D.15268, x3i
	vaddsd	%xmm8, %xmm4, %xmm2	# x0r, x2r, D.15268
	vsubsd	%xmm4, %xmm8, %xmm4	# x2r, x0r, D.15268
	vmovsd	%xmm2, (%rdi)	# D.15268, *a_5(D)
	vaddsd	%xmm10, %xmm5, %xmm2	# x0i, x2i, D.15268
	vmovsd	%xmm4, 128(%rdi)	# D.15268, MEM[(double *)a_5(D) + 128B]
	vmovsd	%xmm2, 8(%rdi)	# D.15268, MEM[(double *)a_5(D) + 8B]
	vsubsd	%xmm5, %xmm10, %xmm2	# x2i, x0i, D.15268
	vmovsd	%xmm2, 136(%rdi)	# D.15268, MEM[(double *)a_5(D) + 136B]
	vsubsd	%xmm1, %xmm9, %xmm2	# x3i, x1r, D.15268
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, D.15268
	vmovsd	%xmm2, 256(%rdi)	# D.15268, MEM[(double *)a_5(D) + 256B]
	vaddsd	%xmm0, %xmm3, %xmm2	# x1i, x3r, D.15268
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, D.15268
	vmovsd	%xmm1, 384(%rdi)	# D.15268, MEM[(double *)a_5(D) + 384B]
	vmovsd	%xmm2, 264(%rdi)	# D.15268, MEM[(double *)a_5(D) + 264B]
	vmovsd	%xmm0, 392(%rdi)	# D.15268, MEM[(double *)a_5(D) + 392B]
	vmovsd	8(%rsi), %xmm5	# MEM[(double *)w_48(D) + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L45:
	vmovsd	24(%rax), %xmm1	# MEM[base: _464, offset: 24B], D.15268
	subq	$16, %rdx	#, ivtmp.136
	addq	$16, %rax	#, ivtmp.126
	vmovsd	264(%rax), %xmm2	# MEM[base: _464, offset: 280B], D.15268
	vmovsd	256(%rax), %xmm3	# MEM[base: _464, offset: 272B], D.15268
	vmovsd	128(%rax), %xmm14	# MEM[base: _464, offset: 144B], D.15268
	vaddsd	%xmm1, %xmm2, %xmm0	# D.15268, D.15268, x0i
	vmovsd	(%rax), %xmm4	# MEM[base: _464, offset: 16B], D.15268
	vsubsd	%xmm2, %xmm1, %xmm2	# D.15268, D.15268, x1i
	vmovsd	384(%rax), %xmm1	# MEM[base: _464, offset: 400B], D.15268
	vaddsd	%xmm4, %xmm3, %xmm10	# D.15268, D.15268, x0r
	vmovsd	136(%rax), %xmm13	# MEM[base: _464, offset: 152B], D.15268
	vaddsd	%xmm14, %xmm1, %xmm12	# D.15268, D.15268, x2r
	vmovsd	32(%rsi,%rcx), %xmm9	# MEM[base: w_48(D), index: ivtmp.119_472, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.15268, D.15268, x1r
	vmovsd	392(%rax), %xmm3	# MEM[base: _464, offset: 408B], D.15268
	vmovsd	40(%rsi,%rcx), %xmm8	# MEM[base: w_48(D), index: ivtmp.119_472, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm14, %xmm1	# D.15268, D.15268, x3r
	vaddsd	%xmm13, %xmm3, %xmm11	# D.15268, D.15268, x2i
	vmovsd	48(%rsi,%rcx), %xmm6	# MEM[base: w_48(D), index: ivtmp.119_472, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm13, %xmm3	# D.15268, D.15268, x3i
	vmovsd	56(%rsi,%rcx), %xmm7	# MEM[base: w_48(D), index: ivtmp.119_472, offset: 56B], wk3i
	addq	$32, %rcx	#, ivtmp.119
	vaddsd	%xmm10, %xmm12, %xmm13	# x0r, x2r, D.15268
	vsubsd	%xmm12, %xmm10, %xmm10	# x2r, x0r, D.15268
	vmovsd	%xmm13, (%rax)	# D.15268, MEM[base: _464, offset: 16B]
	vaddsd	%xmm0, %xmm11, %xmm13	# x0i, x2i, D.15268
	vsubsd	%xmm11, %xmm0, %xmm0	# x2i, x0i, D.15268
	vmovsd	%xmm10, 128(%rax)	# D.15268, MEM[base: _464, offset: 144B]
	vaddsd	%xmm2, %xmm1, %xmm10	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm13, 8(%rax)	# D.15268, MEM[base: _464, offset: 24B]
	vmovsd	%xmm0, 136(%rax)	# D.15268, MEM[base: _464, offset: 152B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vmulsd	%xmm8, %xmm10, %xmm12	# wk1i, x0i, D.15268
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm9, %xmm10, %xmm10	# wk1r, x0i, D.15268
	vmulsd	%xmm9, %xmm0, %xmm11	# wk1r, x0r, D.15268
	vmulsd	%xmm8, %xmm0, %xmm0	# wk1i, x0r, D.15268
	vmulsd	%xmm6, %xmm3, %xmm2	# wk3r, x0r, D.15268
	vmulsd	%xmm7, %xmm3, %xmm3	# wk3i, x0r, D.15268
	vsubsd	%xmm12, %xmm11, %xmm11	# D.15268, D.15268, D.15268
	vaddsd	%xmm10, %xmm0, %xmm0	# D.15268, D.15268, D.15268
	vmovsd	%xmm11, 256(%rax)	# D.15268, MEM[base: _464, offset: 272B]
	vmovsd	%xmm0, 264(%rax)	# D.15268, MEM[base: _464, offset: 280B]
	vmulsd	%xmm7, %xmm1, %xmm0	# wk3i, x0i, D.15268
	vmulsd	%xmm6, %xmm1, %xmm1	# wk3r, x0i, D.15268
	vaddsd	%xmm2, %xmm0, %xmm0	# D.15268, D.15268, D.15268
	vsubsd	%xmm3, %xmm1, %xmm1	# D.15268, D.15268, D.15268
	vmovsd	%xmm0, 384(%rax)	# D.15268, MEM[base: _464, offset: 400B]
	vmovsd	%xmm1, 392(%rax)	# D.15268, MEM[base: _464, offset: 408B]
	vmovsd	136(%rdx), %xmm0	# MEM[base: _448, offset: 120B], D.15268
	vmovsd	392(%rdx), %xmm1	# MEM[base: _448, offset: 376B], D.15268
	vmovsd	384(%rdx), %xmm2	# MEM[base: _448, offset: 368B], D.15268
	vmovsd	128(%rdx), %xmm10	# MEM[base: _448, offset: 112B], D.15268
	vaddsd	%xmm0, %xmm1, %xmm4	# D.15268, D.15268, x0i
	vmovsd	256(%rdx), %xmm14	# MEM[base: _448, offset: 240B], D.15268
	vsubsd	%xmm1, %xmm0, %xmm1	# D.15268, D.15268, x1i
	vmovsd	512(%rdx), %xmm0	# MEM[base: _448, offset: 496B], D.15268
	vaddsd	%xmm10, %xmm2, %xmm11	# D.15268, D.15268, x0r
	vmovsd	264(%rdx), %xmm3	# MEM[base: _448, offset: 248B], D.15268
	vsubsd	%xmm2, %xmm10, %xmm10	# D.15268, D.15268, x1r
	vaddsd	%xmm14, %xmm0, %xmm13	# D.15268, D.15268, x2r
	vmovsd	520(%rdx), %xmm2	# MEM[base: _448, offset: 504B], D.15268
	vsubsd	%xmm0, %xmm14, %xmm0	# D.15268, D.15268, x3r
	vaddsd	%xmm3, %xmm2, %xmm12	# D.15268, D.15268, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.15268, D.15268, x3i
	vaddsd	%xmm11, %xmm13, %xmm2	# x0r, x2r, D.15268
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.15268
	vmovsd	%xmm2, 128(%rdx)	# D.15268, MEM[base: _448, offset: 112B]
	vaddsd	%xmm4, %xmm12, %xmm2	# x0i, x2i, D.15268
	vsubsd	%xmm12, %xmm4, %xmm4	# x2i, x0i, D.15268
	vmovsd	%xmm11, 256(%rdx)	# D.15268, MEM[base: _448, offset: 240B]
	vmovsd	%xmm2, 136(%rdx)	# D.15268, MEM[base: _448, offset: 120B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 264(%rdx)	# D.15268, MEM[base: _448, offset: 248B]
	vsubsd	%xmm3, %xmm10, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm9, %xmm2, %xmm12	# wk1r, x0i, D.15268
	vmulsd	%xmm8, %xmm4, %xmm11	# wk1i, x0r, D.15268
	vmulsd	%xmm8, %xmm2, %xmm8	# wk1i, x0i, D.15268
	vaddsd	%xmm10, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm6, %xmm0, %xmm1	# wk3r, x0i, D.15268
	vmulsd	%xmm9, %xmm4, %xmm4	# wk1r, x0r, D.15268
	vmulsd	%xmm7, %xmm2, %xmm3	# wk3i, x0r, D.15268
	vmulsd	%xmm7, %xmm0, %xmm0	# wk3i, x0i, D.15268
	vsubsd	%xmm12, %xmm11, %xmm11	# D.15268, D.15268, D.15268
	vmulsd	%xmm6, %xmm2, %xmm2	# wk3r, x0r, D.15268
	vaddsd	%xmm8, %xmm4, %xmm4	# D.15268, D.15268, D.15268
	vmovsd	%xmm11, 384(%rdx)	# D.15268, MEM[base: _448, offset: 368B]
	vaddsd	%xmm3, %xmm1, %xmm1	# D.15268, D.15268, D.15268
	vsubsd	%xmm2, %xmm0, %xmm0	# D.15268, D.15268, D.15268
	vmovsd	%xmm4, 392(%rdx)	# D.15268, MEM[base: _448, offset: 376B]
	vmovsd	%xmm1, 512(%rdx)	# D.15268, MEM[base: _448, offset: 496B]
	vmovsd	%xmm0, 520(%rdx)	# D.15268, MEM[base: _448, offset: 504B]
	cmpq	$96, %rcx	#, ivtmp.119
	jne	.L45	#,
	vmovsd	328(%rdi), %xmm1	# MEM[(double *)a_5(D) + 328B], D.15268
	vmovsd	72(%rdi), %xmm3	# MEM[(double *)a_5(D) + 72B], D.15268
	vmovsd	320(%rdi), %xmm0	# MEM[(double *)a_5(D) + 320B], D.15268
	vaddsd	%xmm3, %xmm1, %xmm2	# D.15268, D.15268, x0i
	vmovsd	64(%rdi), %xmm7	# MEM[(double *)a_5(D) + 64B], D.15268
	vsubsd	%xmm1, %xmm3, %xmm3	# D.15268, D.15268, x1i
	vmovsd	192(%rdi), %xmm6	# MEM[(double *)a_5(D) + 192B], D.15268
	vmovsd	448(%rdi), %xmm1	# MEM[(double *)a_5(D) + 448B], D.15268
	vaddsd	%xmm7, %xmm0, %xmm4	# D.15268, D.15268, x0r
	vmovsd	456(%rdi), %xmm10	# MEM[(double *)a_5(D) + 456B], D.15268
	vsubsd	%xmm0, %xmm7, %xmm7	# D.15268, D.15268, x1r
	vaddsd	%xmm6, %xmm1, %xmm9	# D.15268, D.15268, x2r
	vmovsd	200(%rdi), %xmm0	# MEM[(double *)a_5(D) + 200B], D.15268
	vsubsd	%xmm1, %xmm6, %xmm6	# D.15268, D.15268, x3r
	vaddsd	%xmm0, %xmm10, %xmm8	# D.15268, D.15268, x2i
	vsubsd	%xmm10, %xmm0, %xmm1	# D.15268, D.15268, x3i
	vaddsd	%xmm4, %xmm9, %xmm0	# x0r, x2r, D.15268
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.15268
	vmovsd	%xmm0, 64(%rdi)	# D.15268, MEM[(double *)a_5(D) + 64B]
	vaddsd	%xmm2, %xmm8, %xmm0	# x0i, x2i, D.15268
	vsubsd	%xmm8, %xmm2, %xmm2	# x2i, x0i, D.15268
	vmovsd	%xmm4, 192(%rdi)	# D.15268, MEM[(double *)a_5(D) + 192B]
	vsubsd	%xmm1, %xmm7, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm0, 72(%rdi)	# D.15268, MEM[(double *)a_5(D) + 72B]
	vmovsd	%xmm2, 200(%rdi)	# D.15268, MEM[(double *)a_5(D) + 200B]
	vaddsd	%xmm3, %xmm6, %xmm2	# x1i, x3r, x0i
	vsubsd	%xmm2, %xmm4, %xmm0	# x0i, x0r, D.15268
	vaddsd	%xmm4, %xmm2, %xmm2	# x0r, x0i, D.15268
	vmulsd	%xmm5, %xmm0, %xmm0	# wn4r, D.15268, D.15268
	vmulsd	%xmm5, %xmm2, %xmm2	# wn4r, D.15268, D.15268
	vmovsd	%xmm0, 320(%rdi)	# D.15268, MEM[(double *)a_5(D) + 320B]
	vaddsd	%xmm7, %xmm1, %xmm0	# x1r, x3i, x0r
	vsubsd	%xmm6, %xmm3, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm2, 328(%rdi)	# D.15268, MEM[(double *)a_5(D) + 328B]
	vmovsd	.LC13(%rip), %xmm3	#, tmp276
	vxorpd	%xmm5, %xmm3, %xmm3	# wn4r, tmp276, D.15268
	vaddsd	%xmm0, %xmm1, %xmm2	# x0r, x0i, D.15268
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.15268
	vmulsd	%xmm3, %xmm2, %xmm2	# D.15268, D.15268, D.15268
	vmulsd	%xmm5, %xmm0, %xmm0	# wn4r, D.15268, D.15268
	vmovsd	%xmm2, 448(%rdi)	# D.15268, MEM[(double *)a_5(D) + 448B]
	vmovsd	%xmm0, 456(%rdi)	# D.15268, MEM[(double *)a_5(D) + 456B]
	ret
	.cfi_endproc
.LFE98:
	.size	cftmdl1.constprop.5, .-cftmdl1.constprop.5
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.type	window_kaiser, @function
window_kaiser:
.LFB87:
	.cfi_startproc
	vmovsd	.LC2(%rip), %xmm1	#, tmp134
	leal	-1(%rsi), %edx	#,
	vxorpd	%xmm7, %xmm7, %xmm7	# D.15305
	movl	$1, %eax	#, i
	vcvtsi2sd	%edx, %xmm7, %xmm7	# D.15308, D.15305, D.15305
	vmovsd	.LC0(%rip), %xmm5	#, tmp157
	vmulsd	%xmm1, %xmm0, %xmm6	# tmp134, beta, x_2
	vmovapd	%xmm5, %xmm3	# tmp157, denom
	vmovapd	%xmm5, %xmm0	# tmp157, fact
	vmovapd	%xmm5, %xmm2	# tmp157, num
	vmovapd	%xmm5, %xmm9	# tmp157, tmp160
	vmulsd	%xmm1, %xmm7, %xmm7	# tmp134, D.15305, m_2
	vmulsd	%xmm6, %xmm6, %xmm4	# x_2, x_2, D.15305
	.p2align 4,,10
	.p2align 3
.L48:
	vxorpd	%xmm1, %xmm1, %xmm1	# D.15305
	vcvtsi2sd	%eax, %xmm1, %xmm1	# i, D.15305, D.15305
	addl	$1, %eax	#, i
	vmulsd	%xmm4, %xmm2, %xmm2	# D.15305, num, num
	vmulsd	%xmm1, %xmm0, %xmm0	# D.15305, fact, fact
	vmulsd	%xmm0, %xmm0, %xmm1	# fact, fact, D.15305
	vdivsd	%xmm1, %xmm2, %xmm1	# D.15305, num, D.15305
	vaddsd	%xmm1, %xmm3, %xmm3	# D.15305, denom, denom
	cmpl	$20, %eax	#, i
	jne	.L48	#,
	testl	%esi, %esi	# windowLength
	jle	.L56	#,
	vdivsd	%xmm7, %xmm9, %xmm8	# m_2, tmp160, D.15305
	vmovq	%xmm5, %rcx	# tmp157, result
	leaq	1(%rdx), %rsi	#, D.15306
	xorl	%edx, %edx	# ivtmp.154
	vdivsd	%xmm3, %xmm9, %xmm9	# denom, tmp160, D.15305
	.p2align 4,,10
	.p2align 3
.L51:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.15305
	vcvtsi2sd	%edx, %xmm0, %xmm0	# ivtmp.154, D.15305, D.15305
	vmovq	%rcx, %xmm3	# result, result
	movl	$1, %eax	#, i
	vmovq	%rcx, %xmm2	# result, num
	vsubsd	%xmm7, %xmm0, %xmm0	# m_2, D.15305, D.15305
	vmulsd	%xmm8, %xmm0, %xmm0	# D.15305, D.15305, val
	vmulsd	%xmm0, %xmm0, %xmm4	# val, val, D.15305
	vmovq	%rcx, %xmm0	# result, fact
	vsubsd	%xmm4, %xmm5, %xmm4	# D.15305, tmp157, val
	vsqrtsd	%xmm4, %xmm4, %xmm4	# val, tmp147
	vmulsd	%xmm6, %xmm4, %xmm4	# x_2, tmp147, x_2
	vmulsd	%xmm4, %xmm4, %xmm4	# x_2, x_2, D.15305
	.p2align 4,,10
	.p2align 3
.L50:
	vxorpd	%xmm1, %xmm1, %xmm1	# D.15305
	vcvtsi2sd	%eax, %xmm1, %xmm1	# i, D.15305, D.15305
	addl	$1, %eax	#, i
	vmulsd	%xmm4, %xmm2, %xmm2	# D.15305, num, num
	vmulsd	%xmm1, %xmm0, %xmm0	# D.15305, fact, fact
	vmulsd	%xmm0, %xmm0, %xmm1	# fact, fact, D.15305
	vdivsd	%xmm1, %xmm2, %xmm1	# D.15305, num, D.15305
	vaddsd	%xmm1, %xmm3, %xmm3	# D.15305, result, result
	cmpl	$20, %eax	#, i
	jne	.L50	#,
	vmulsd	(%rdi,%rdx,8), %xmm9, %xmm0	# MEM[base: out_19(D), index: ivtmp.154_16, step: 8, offset: 0B], D.15305, D.15305
	vmulsd	%xmm3, %xmm0, %xmm3	# result, D.15305, D.15305
	vmovsd	%xmm3, (%rdi,%rdx,8)	# D.15305, MEM[base: out_19(D), index: ivtmp.154_16, step: 8, offset: 0B]
	addq	$1, %rdx	#, ivtmp.154
	cmpq	%rsi, %rdx	# D.15306, ivtmp.154
	jne	.L51	#,
.L56:
	ret
	.cfi_endproc
.LFE87:
	.size	window_kaiser, .-window_kaiser
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.type	makewt.part.0, @function
makewt.part.0:
.LFB93:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	vxorpd	%xmm0, %xmm0, %xmm0	# D.15404
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	%edi, %r15d	# nw, nwh
	sarl	%r15d	# nwh
	pushq	%r14	#
	vcvtsi2sd	%r15d, %xmm0, %xmm0	# nwh, D.15404, D.15404
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdx, %rbx	# w, w
	subq	$64, %rsp	#,
	movl	%edi, -72(%rbp)	# nw, %sfp
	vmovsd	.LC16(%rip), %xmm1	#, tmp406
	movq	%rsi, -88(%rbp)	# ip, %sfp
	vdivsd	%xmm0, %xmm1, %xmm6	# D.15404, tmp406, delta
	vmulsd	%xmm6, %xmm0, %xmm0	# delta, D.15404, D.15404
	vmovsd	%xmm6, -80(%rbp)	# delta, %sfp
	call	cos	#
	cmpl	$4, %r15d	#, nwh
	movq	-88(%rbp), %r10	# %sfp, ip
	vmovsd	.LC0(%rip), %xmm7	#, tmp615
	vmovapd	%xmm0, %xmm2	#, wn4r
	vmovsd	%xmm0, 8(%rbx)	# wn4r, MEM[(double *)w_7(D) + 8B]
	vmovsd	%xmm7, (%rbx)	# tmp615, *w_7(D)
	je	.L117	#,
	jg	.L118	#,
	cmpl	$2, %r15d	#, nwh
	jle	.L114	#,
.L59:
	vmovsd	.LC2(%rip), %xmm3	#, tmp556
	xorl	%esi, %esi	#
	jmp	.L76	#
	.p2align 4,,10
	.p2align 3
.L121:
	cmpl	$2, %r15d	#, nwh
	jle	.L119	#,
.L78:
	movslq	%r8d, %rsi	# nw0,
.L76:
	vmovsd	.LC0(%rip), %xmm4	#, tmp638
	leal	(%rsi,%r15), %r8d	#, nw0
	sarl	%r15d	# nwh
	movslq	%r8d, %rdi	# nw0, D.15408
	leaq	0(,%rdi,8), %rdx	#, D.15408
	leaq	(%rbx,%rdx), %rax	#, D.15409
	vmovsd	%xmm4, (%rax)	# tmp638, *_46
	vmovsd	%xmm2, 8(%rbx,%rdx)	# wn4r, *_49
	cmpl	$4, %r15d	#, nwh
	je	.L120	#,
	jle	.L121	#,
	leal	-5(%r15), %r14d	#, D.15413
	movslq	%esi, %rcx	# nw0, D.15410
	addq	$4, %rdi	#, D.15410
	leaq	4(%rcx), %r9	#, D.15410
	addq	$8, %rcx	#, D.15410
	leaq	0(,%r9,8), %r12	#, D.15410
	vdivsd	(%rbx,%r9,8), %xmm3, %xmm0	# *_68, tmp556, D.15404
	movl	%r14d, %r9d	# D.15413, D.15413
	movq	%rcx, %r10	# D.15410, D.15410
	vmovsd	16(%rbx,%r12), %xmm1	# *_72, wk3r
	shrl	$2, %r9d	#,
	movq	%rcx, -72(%rbp)	# D.15410, %sfp
	leal	1(%r9), %r13d	#,
	vmovsd	%xmm0, 16(%rbx,%rdx)	# D.15404, *_76
	vdivsd	%xmm1, %xmm3, %xmm1	# wk3r, tmp556, D.15404
	movq	%r13, %r11	#,
	leaq	(%r10,%r13,8), %r10	#, D.15410
	leaq	32(%r12), %rcx	#, D.15410
	salq	$3, %r10	#, D.15410
	vmovsd	%xmm1, 24(%rbx,%rdx)	# D.15404, *_80
	leaq	0(,%rdi,8), %rdx	#, D.15410
	leaq	(%rdi,%r13,4), %rdi	#, D.15410
	cmpq	%r10, %rdx	# D.15410, D.15410
	setge	%r10b	#, D.15414
	salq	$3, %rdi	#, D.15410
	cmpq	%rdi, %rcx	# D.15410, D.15410
	setge	%dil	#, D.15414
	orb	%dil, %r10b	# D.15414, tmp611
	je	.L81	#,
	cmpl	$6, %r13d	#, D.15411
	jbe	.L81	#,
	cmpl	$3, %r14d	#, D.15413
	jbe	.L88	#,
	addq	%rbx, %rcx	# w, vectp.171
	addq	%rbx, %rdx	# w, vectp.174
	xorl	%eax, %eax	# ivtmp.221
	xorl	%edi, %edi	# ivtmp.217
	.p2align 4,,10
	.p2align 3
.L83:
	addl	$1, %edi	#, ivtmp.217
	vmovupd	(%rcx,%rax,2), %xmm1	# MEM[base: vectp.171_239, index: ivtmp.221_348, step: 2, offset: 0B], MEM[base: vectp.171_239, index: ivtmp.221_348, step: 2, offset: 0B]
	vinsertf128	$0x1, 16(%rcx,%rax,2), %ymm1, %ymm1	# MEM[base: vectp.171_239, index: ivtmp.221_348, step: 2, offset: 0B], MEM[base: vectp.171_239, index: ivtmp.221_348, step: 2, offset: 0B], tmp533
	vmovups	%xmm1, (%rdx,%rax)	#, MEM[base: vectp.174_231, index: ivtmp.221_348, offset: 0B]
	vextractf128	$0x1, %ymm1, 16(%rdx,%rax)	# tmp533, MEM[base: vectp.174_231, index: ivtmp.221_348, offset: 0B]
	addq	$32, %rax	#, ivtmp.221
	cmpl	%edi, %r9d	# ivtmp.217, D.15413
	ja	.L83	#,
	leal	0(,%r11,4), %eax	#, j
	cmpl	%r9d, %r11d	# D.15413, D.15411
	je	.L78	#,
.L82:
	leal	(%rsi,%rax,2), %edx	#, D.15411
	addl	%r8d, %eax	# nw0, D.15411
	movslq	%edx, %rdx	# D.15411, D.15408
	cltq
	vmovupd	(%rbx,%rdx,8), %xmm0	# MEM[(double *)_282], MEM[(double *)_282]
	vinsertf128	$0x1, 16(%rbx,%rdx,8), %ymm0, %ymm0	# MEM[(double *)_282], MEM[(double *)_282], tmp539
	vmovups	%xmm0, (%rbx,%rax,8)	#, MEM[(double *)_265]
	vextractf128	$0x1, %ymm0, 16(%rbx,%rax,8)	# tmp539, MEM[(double *)_265]
	jmp	.L78	#
	.p2align 4,,10
	.p2align 3
.L119:
	vzeroupper
.L114:
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L120:
	.cfi_restore_state
	addq	$4, %rsi	#, D.15410
	vmovsd	(%rbx,%rsi,8), %xmm1	# *_53, wk1r
	vmovsd	8(%rbx,%rsi,8), %xmm0	# *_57, wk1i
	vmovsd	%xmm1, 16(%rbx,%rdx)	# wk1r, *_61
	vmovsd	%xmm0, 24(%rbx,%rdx)	# wk1i, *_64
	jmp	.L78	#
	.p2align 4,,10
	.p2align 3
.L88:
	movl	$4, %eax	#, j
	jmp	.L82	#
	.p2align 4,,10
	.p2align 3
.L81:
	movq	-72(%rbp), %rsi	# %sfp, D.15410
	leaq	-32(%rbx,%r12), %rdx	#, ivtmp.210
	leaq	(%rsi,%r9,8), %rcx	#, D.15410
	leaq	(%rbx,%rcx,8), %rcx	#, D.15415
	.p2align 4,,10
	.p2align 3
.L85:
	vmovupd	64(%rdx), %xmm1	# MEM[base: _516, offset: 64B], MEM[base: _516, offset: 64B]
	addq	$64, %rdx	#, ivtmp.210
	vinsertf128	$0x1, 16(%rdx), %ymm1, %ymm1	# MEM[base: _516, offset: 64B], MEM[base: _516, offset: 64B], tmp548
	addq	$32, %rax	#, ivtmp.216
	vmovups	%xmm1, (%rax)	#, MEM[base: _521, offset: 32B]
	vextractf128	$0x1, %ymm1, 16(%rax)	# tmp548, MEM[base: _521, offset: 32B]
	cmpq	%rcx, %rdx	# D.15415, ivtmp.210
	jne	.L85	#,
	jmp	.L78	#
	.p2align 4,,10
	.p2align 3
.L117:
	vmovsd	-80(%rbp), %xmm5	# %sfp, delta
	vmovsd	%xmm0, -72(%rbp)	# wn4r, %sfp
	leaq	-64(%rbp), %rsi	#, tmp617
	leaq	-56(%rbp), %rdi	#, tmp618
	vaddsd	%xmm5, %xmm5, %xmm0	#, delta, D.15404
	call	sincos	#
	vmovsd	-64(%rbp), %xmm0	#, D.15412
	vmovsd	-72(%rbp), %xmm2	# %sfp, wn4r
	vmovsd	%xmm0, 16(%rbx)	# D.15412, MEM[(double *)w_7(D) + 16B]
	vmovsd	-56(%rbp), %xmm0	#, D.15412
	vmovsd	%xmm0, 24(%rbx)	# D.15412, MEM[(double *)w_7(D) + 24B]
	jmp	.L59	#
	.p2align 4,,10
	.p2align 3
.L118:
	cmpl	$32, -72(%rbp)	#, %sfp
	movl	$0, 8(%r10)	#, MEM[(int *)ip_11(D) + 8B]
	movl	$2, %r14d	#, j
	movl	$16, 12(%r10)	#, MEM[(int *)ip_11(D) + 12B]
	jle	.L65	#,
	movl	%r15d, -92(%rbp)	# nwh, %sfp
	movq	%rbx, -104(%rbp)	# w, %sfp
	jmp	.L99	#
	.p2align 4,,10
	.p2align 3
.L123:
	testb	%bl, %bl	# D.15414
	je	.L66	#,
	leaq	(%r10,%rax), %r11	#, vectp.176
	movl	%r14d, %eax	# j, j
	andl	$15, %r11d	#, D.15415
	shrq	$2, %r11	#, D.15415
	negq	%r11	# D.15415
	andl	$3, %r11d	#, D.15413
	cmpl	%r11d, %edi	# D.15413, D.15413
	cmovbe	%edi, %r11d	# D.15413,, prolog_loop_niters.177
	testl	%r11d, %r11d	# prolog_loop_niters.177
	je	.L67	#,
	movl	(%r10,%rcx,4), %eax	# *_148, tmp630
	sall	$2, %eax	#, p
	movl	%eax, (%r10,%r8,4)	# p, *_154
	leal	(%rdx,%r14), %r8d	#, D.15411
	addl	%esi, %eax	# q, tmp450
	movslq	%r8d, %r8	# D.15411, D.15408
	movl	%eax, (%r10,%r8,4)	# tmp450, *_159
	leal	1(%r14), %eax	#, j
	cmpl	$1, %r11d	#, prolog_loop_niters.177
	je	.L67	#,
	leal	(%rax,%r14), %r9d	#, D.15411
	movslq	%eax, %r8	# j, D.15408
	addl	%edx, %eax	# j, D.15411
	movl	(%r10,%r8,4), %r8d	# *_499, *_499
	movslq	%r9d, %r9	# D.15411, D.15408
	cltq
	sall	$2, %r8d	#, p
	movl	%r8d, (%r10,%r9,4)	# p, *_505
	addl	%esi, %r8d	# q, tmp457
	movl	%r8d, (%r10,%rax,4)	# tmp457, *_510
	leal	2(%r14), %eax	#, j
	cmpl	$3, %r11d	#, prolog_loop_niters.177
	jne	.L67	#,
	leal	(%r14,%rax), %r9d	#, D.15411
	movslq	%eax, %r8	# j, D.15408
	addl	%edx, %eax	# j, D.15411
	movl	(%r10,%r8,4), %r8d	# *_410, *_410
	movslq	%r9d, %r9	# D.15411, D.15408
	cltq
	sall	$2, %r8d	#, p
	movl	%r8d, (%r10,%r9,4)	# p, *_416
	addl	%esi, %r8d	# q, tmp464
	movl	%r8d, (%r10,%rax,4)	# tmp464, *_421
	leal	3(%r14), %eax	#, j
.L67:
	subl	%r11d, %edi	# prolog_loop_niters.177, niters.179
	movl	%r11d, %r9d	# prolog_loop_niters.177, prolog_loop_adjusted_niters.178
	vmovd	%esi, %xmm7	# q, q
	leal	-4(%rdi), %r8d	#, D.15413
	vpshufd	$0, %xmm7, %xmm1	# q, vect_cst_.190
	leaq	(%rcx,%r9), %r12	#, D.15410
	shrl	$2, %r8d	#, D.15413
	addq	%r15, %r9	# D.15408, D.15410
	leaq	(%r10,%r12,4), %r11	#, vectp.184
	addq	%r12, %rcx	# D.15410, D.15410
	addl	$1, %r8d	#, bnd.180
	leaq	(%r10,%rcx,4), %r12	#, vectp.188
	xorl	%ecx, %ecx	# ivtmp.248
	leaq	(%r10,%r9,4), %r13	#, vectp.192
	xorl	%r9d, %r9d	# ivtmp.245
	leal	0(,%r8,4), %ebx	#, ratio_mult_vf.181
.L69:
	vmovdqa	(%r11,%rcx), %xmm0	# MEM[base: vectp.184_471, index: ivtmp.248_334, offset: 0B], MEM[base: vectp.184_471, index: ivtmp.248_334, offset: 0B]
	addl	$1, %r9d	#, ivtmp.245
	vpslld	$2, %xmm0, %xmm0	#, MEM[base: vectp.184_471, index: ivtmp.248_334, offset: 0B], vect_p_152.186
	vmovups	%xmm0, (%r12,%rcx)	# vect_p_152.186, MEM[base: vectp.188_478, index: ivtmp.248_334, offset: 0B]
	vpaddd	%xmm0, %xmm1, %xmm0	# vect_p_152.186, vect_cst_.190, vect__161.189
	vmovups	%xmm0, 0(%r13,%rcx)	# vect__161.189, MEM[base: vectp.192_486, index: ivtmp.248_334, offset: 0B]
	addq	$16, %rcx	#, ivtmp.248
	cmpl	%r8d, %r9d	# bnd.180, ivtmp.245
	jb	.L69	#,
	addl	%ebx, %eax	# ratio_mult_vf.181, j
	cmpl	%ebx, %edi	# ratio_mult_vf.181, niters.179
	je	.L73	#,
	leal	(%r14,%rax), %edi	#, D.15411
	movslq	%eax, %rcx	# j, D.15408
	movl	(%r10,%rcx,4), %ecx	# *_467, *_467
	movslq	%edi, %rdi	# D.15411, D.15408
	sall	$2, %ecx	#, p
	movl	%ecx, (%r10,%rdi,4)	# p, *_332
	leal	(%rdx,%rax), %edi	#, D.15411
	addl	%esi, %ecx	# q, tmp488
	movslq	%edi, %rdi	# D.15411, D.15408
	movl	%ecx, (%r10,%rdi,4)	# tmp488, *_87
	leal	1(%rax), %ecx	#, j
	cmpl	%edx, %ecx	# j, j
	jge	.L73	#,
	leal	(%rcx,%r14), %r8d	#, D.15411
	movslq	%ecx, %rdi	# j, D.15408
	addl	%edx, %ecx	# j, D.15411
	movl	(%r10,%rdi,4), %edi	# *_95, *_95
	movslq	%r8d, %r8	# D.15411, D.15408
	movslq	%ecx, %rcx	# D.15411, D.15408
	addl	$2, %eax	#, j
	sall	$2, %edi	#, p
	movl	%edi, (%r10,%r8,4)	# p, *_101
	addl	%esi, %edi	# q, tmp495
	movl	%edi, (%r10,%rcx,4)	# tmp495, *_106
	cmpl	%edx, %eax	# j, j
	jge	.L73	#,
	movslq	%eax, %rcx	# j, D.15408
	addl	%eax, %r14d	# j, D.15411
	addl	%edx, %eax	# j, D.15411
	movl	(%r10,%rcx,4), %ecx	# *_443, *_443
	movslq	%r14d, %r14	# D.15411, D.15408
	cltq
	sall	$2, %ecx	#, p
	addl	%ecx, %esi	# p, tmp481
	movl	%ecx, (%r10,%r14,4)	# p, *_449
	movl	%esi, (%r10,%rax,4)	# tmp481, *_454
.L73:
	sarl	$2, -72(%rbp)	#, %sfp
	movl	%edx, %r14d	# j, j
	movl	-72(%rbp), %eax	# %sfp, nw
	cmpl	$32, %eax	#, nw
	jle	.L122	#,
.L99:
	leal	(%r14,%r14), %edx	#, j
	movl	%r14d, %esi	# j, q
	sall	$4, %esi	#, q
	cmpl	%r14d, %edx	# j, j
	jle	.L73	#,
	movslq	%r14d, %rcx	# j, D.15408
	movslq	%edx, %r8	# j, D.15408
	movl	%edx, %edi	# j, D.15413
	leaq	4(%rcx,%r8), %r13	#, D.15410
	subl	%r14d, %edi	# j, D.15413
	leaq	0(,%rcx,4), %rax	#, D.15408
	salq	$2, %r13	#, D.15405
	leaq	(%r8,%rcx), %r15	#, D.15408
	cmpq	%r13, %rax	# D.15405, D.15408
	leaq	0(,%r15,4), %rbx	#, D.15405
	setge	%r11b	#, D.15414
	leaq	16(%rax), %r12	#, D.15405
	cmpq	%r12, %rbx	# D.15405, D.15405
	setge	%r9b	#, D.15414
	orl	%r11d, %r9d	# D.15414, D.15414
	leaq	0(,%rcx,8), %r11	#, D.15408
	cmpq	%r13, %r11	# D.15405, D.15408
	leaq	16(%r11), %r13	#, D.15410
	setge	-88(%rbp)	#, %sfp
	cmpq	%rbx, %r13	# D.15405, D.15410
	setle	%bl	#, D.15414
	orb	-88(%rbp), %bl	# %sfp, D.15414
	cmpq	%r13, %rax	# D.15410, D.15408
	setge	%r13b	#, D.15414
	cmpq	%r12, %r11	# D.15405, D.15408
	setge	%r11b	#, D.15414
	orl	%r11d, %r13d	# D.15414, D.15414
	cmpl	$8, %edi	#, D.15413
	seta	%r11b	#, D.15414
	andl	%r11d, %r13d	# D.15414, D.15414
	testb	%r9b, %r13b	# D.15414, D.15414
	jne	.L123	#,
.L66:
	subl	$1, %edi	#, D.15410
	addq	%r10, %rax	# ip, ivtmp.241
	leaq	1(%rcx,%rdi), %rdi	#, D.15410
	leaq	(%r10,%rdi,4), %r9	#, D.15415
	.p2align 4,,10
	.p2align 3
.L74:
	movl	(%rax), %ebx	# MEM[base: _26, offset: 0B], tmp632
	leal	0(,%rbx,4), %edi	#, p
	movl	%edi, (%rax,%rcx,4)	# p, MEM[base: _26, index: _220, step: 4, offset: 0B]
	addl	%esi, %edi	# q, tmp502
	movl	%edi, (%rax,%r8,4)	# tmp502, MEM[base: _26, index: _221, step: 4, offset: 0B]
	addq	$4, %rax	#, ivtmp.241
	cmpq	%r9, %rax	# D.15415, ivtmp.241
	jne	.L74	#,
	sarl	$2, -72(%rbp)	#, %sfp
	movl	%edx, %r14d	# j, j
	movl	-72(%rbp), %eax	# %sfp, nw
	cmpl	$32, %eax	#, nw
	jg	.L99	#,
.L122:
	movl	-92(%rbp), %r15d	# %sfp, nwh
	movq	-104(%rbp), %rbx	# %sfp, w
.L65:
	vmovsd	-80(%rbp), %xmm5	# %sfp, delta
	vmovsd	%xmm2, -72(%rbp)	# wn4r, %sfp
	leaq	32(%rbx), %r12	#, ivtmp.231
	movl	$4, %r13d	#, j
	vaddsd	%xmm5, %xmm5, %xmm0	#, delta, D.15404
	call	cos	#
	vmovsd	-80(%rbp), %xmm5	# %sfp, delta
	vmovsd	.LC2(%rip), %xmm7	#, tmp621
	vdivsd	%xmm0, %xmm7, %xmm0	# D.15404, tmp621, D.15404
	vmovsd	%xmm0, 16(%rbx)	# D.15404, MEM[(double *)w_7(D) + 16B]
	vmulsd	.LC17(%rip), %xmm5, %xmm0	#, delta, D.15404
	call	cos	#
	vmovsd	-72(%rbp), %xmm2	# %sfp, wn4r
	vmovsd	.LC2(%rip), %xmm5	#, tmp623
	vmovq	%xmm2, %r14	# wn4r, wn4r
	vdivsd	%xmm0, %xmm5, %xmm0	# D.15404, tmp623, D.15404
	vmovsd	%xmm0, 24(%rbx)	# D.15404, MEM[(double *)w_7(D) + 24B]
	.p2align 4,,10
	.p2align 3
.L62:
	vxorpd	%xmm1, %xmm1, %xmm1	# D.15404
	vcvtsi2sd	%r13d, %xmm1, %xmm1	# j, D.15404, D.15404
	addl	$4, %r13d	#, j
	vmulsd	-80(%rbp), %xmm1, %xmm1	# %sfp, D.15404, D.15404
	addq	$32, %r12	#, ivtmp.231
	leaq	-64(%rbp), %rsi	#, tmp634
	leaq	-56(%rbp), %rdi	#, tmp635
	vmovapd	%xmm1, %xmm0	# D.15404,
	vmovsd	%xmm1, -72(%rbp)	# D.15404, %sfp
	call	sincos	#
	vmovsd	-64(%rbp), %xmm0	#, D.15412
	leaq	-64(%rbp), %rsi	#, tmp636
	vmovsd	-72(%rbp), %xmm1	# %sfp, D.15404
	leaq	-56(%rbp), %rdi	#, tmp637
	vmovsd	%xmm0, -32(%r12)	# D.15412, MEM[base: _225, offset: 0B]
	vmovsd	-56(%rbp), %xmm0	#, D.15412
	vmovsd	%xmm0, -24(%r12)	# D.15412, MEM[base: _225, offset: 8B]
	vmulsd	.LC18(%rip), %xmm1, %xmm0	#, D.15404, D.15404
	call	sincos	#
	vmovsd	-64(%rbp), %xmm1	#, D.15412
	vmovsd	-56(%rbp), %xmm0	#, D.15412
	vxorpd	.LC13(%rip), %xmm0, %xmm0	#, D.15412, D.15404
	vmovsd	%xmm0, -8(%r12)	# D.15404, MEM[base: _225, offset: 24B]
	vmovsd	%xmm1, -16(%r12)	# D.15412, MEM[base: _225, offset: 16B]
	cmpl	%r13d, %r15d	# j, nwh
	jg	.L62	#,
	vmovq	%r14, %xmm2	# wn4r, wn4r
	jmp	.L59	#
	.cfi_endproc
.LFE93:
	.size	makewt.part.0, .-makewt.part.0
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	makewt
	.type	makewt, @function
makewt:
.LFB54:
	.cfi_startproc
	movl	%edi, (%rsi)	# nw, *ip_2(D)
	movl	$1, 4(%rsi)	#, MEM[(int *)ip_2(D) + 4B]
	cmpl	$2, %edi	#, nw
	jle	.L126	#,
	jmp	makewt.part.0	#
	.p2align 4,,10
	.p2align 3
.L126:
	ret
	.cfi_endproc
.LFE54:
	.size	makewt, .-makewt
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	makeipt
	.type	makeipt, @function
makeipt:
.LFB55:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$2, %edx	#, j
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edi, %r14d	# nw, nw
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$0, 8(%rsi)	#, MEM[(int *)ip_6(D) + 8B]
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$16, 12(%rsi)	#, MEM[(int *)ip_6(D) + 12B]
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	cmpl	$32, %edi	#, nw
	jg	.L149	#,
	jmp	.L158	#
	.p2align 4,,10
	.p2align 3
.L161:
	testb	%bpl, %bpl	# D.15469
	je	.L132	#,
	leaq	(%rsi,%rax), %r11	#, vectp.260
	movl	%edx, %eax	# j, j
	andl	$15, %r11d	#, D.15476
	shrq	$2, %r11	#, D.15476
	negq	%r11	# D.15476
	andl	$3, %r11d	#, D.15475
	cmpl	%r11d, %r9d	# D.15475, D.15475
	cmovbe	%r9d, %r11d	# D.15475,, prolog_loop_niters.261
	testl	%r11d, %r11d	# prolog_loop_niters.261
	je	.L133	#,
	movl	(%rsi,%rdi,4), %eax	# *_231, tmp368
	sall	$2, %eax	#, p
	movl	%eax, (%rsi,%r10,4)	# p, *_237
	leal	(%rcx,%rdx), %r10d	#, D.15471
	addl	%r8d, %eax	# q, tmp286
	movslq	%r10d, %r10	# D.15471, D.15472
	movl	%eax, (%rsi,%r10,4)	# tmp286, *_242
	leal	1(%rdx), %eax	#, j
	cmpl	$1, %r11d	#, prolog_loop_niters.261
	je	.L133	#,
	leal	(%rdx,%rax), %ebx	#, D.15471
	movslq	%eax, %r10	# j, D.15472
	addl	%ecx, %eax	# j, D.15471
	movl	(%rsi,%r10,4), %r10d	# *_252, *_252
	movslq	%ebx, %rbx	# D.15471, D.15472
	cltq
	sall	$2, %r10d	#, p
	movl	%r10d, (%rsi,%rbx,4)	# p, *_258
	addl	%r8d, %r10d	# q, tmp293
	movl	%r10d, (%rsi,%rax,4)	# tmp293, *_263
	leal	2(%rdx), %eax	#, j
	cmpl	$3, %r11d	#, prolog_loop_niters.261
	jne	.L133	#,
	leal	(%rdx,%rax), %ebx	#, D.15471
	movslq	%eax, %r10	# j, D.15472
	addl	%ecx, %eax	# j, D.15471
	movl	(%rsi,%r10,4), %r10d	# *_125, *_125
	movslq	%ebx, %rbx	# D.15471, D.15472
	cltq
	sall	$2, %r10d	#, p
	movl	%r10d, (%rsi,%rbx,4)	# p, *_131
	addl	%r8d, %r10d	# q, tmp300
	movl	%r10d, (%rsi,%rax,4)	# tmp300, *_136
	leal	3(%rdx), %eax	#, j
.L133:
	subl	%r11d, %r9d	# prolog_loop_niters.261, niters.263
	movl	%r11d, %ebx	# prolog_loop_niters.261, prolog_loop_adjusted_niters.262
	vmovd	%r8d, %xmm2	# q, q
	leal	-4(%r9), %r10d	#, D.15475
	addq	%rbx, %r12	# prolog_loop_adjusted_niters.262, D.15474
	vpshufd	$0, %xmm2, %xmm1	# q, vect_cst_.274
	leaq	(%rdi,%rbx), %r13	#, D.15474
	shrl	$2, %r10d	#, D.15475
	xorl	%ebx, %ebx	# ivtmp.285
	leaq	(%rsi,%r13,4), %rbp	#, vectp.268
	addq	%r13, %rdi	# D.15474, D.15474
	addl	$1, %r10d	#, bnd.264
	leaq	(%rsi,%rdi,4), %r13	#, vectp.272
	xorl	%edi, %edi	# ivtmp.288
	leal	0(,%r10,4), %r11d	#, ratio_mult_vf.265
	leaq	(%rsi,%r12,4), %r12	#, vectp.276
.L135:
	vmovdqa	0(%rbp,%rdi), %xmm0	# MEM[base: vectp.268_186, index: ivtmp.288_98, offset: 0B], MEM[base: vectp.268_186, index: ivtmp.288_98, offset: 0B]
	addl	$1, %ebx	#, ivtmp.285
	vpslld	$2, %xmm0, %xmm0	#, MEM[base: vectp.268_186, index: ivtmp.288_98, offset: 0B], vect_p_17.270
	vmovups	%xmm0, 0(%r13,%rdi)	# vect_p_17.270, MEM[base: vectp.272_193, index: ivtmp.288_98, offset: 0B]
	vpaddd	%xmm1, %xmm0, %xmm0	# vect_cst_.274, vect_p_17.270, vect__27.273
	vmovups	%xmm0, (%r12,%rdi)	# vect__27.273, MEM[base: vectp.276_201, index: ivtmp.288_98, offset: 0B]
	addq	$16, %rdi	#, ivtmp.288
	cmpl	%r10d, %ebx	# bnd.264, ivtmp.285
	jb	.L135	#,
	addl	%r11d, %eax	# ratio_mult_vf.265, j
	cmpl	%r11d, %r9d	# ratio_mult_vf.265, niters.263
	je	.L139	#,
	leal	(%rdx,%rax), %r9d	#, D.15471
	movslq	%eax, %rdi	# j, D.15472
	movl	(%rsi,%rdi,4), %edi	# *_145, *_145
	movslq	%r9d, %r9	# D.15471, D.15472
	sall	$2, %edi	#, p
	movl	%edi, (%rsi,%r9,4)	# p, *_17
	leal	(%rcx,%rax), %r9d	#, D.15471
	addl	%r8d, %edi	# q, tmp324
	movslq	%r9d, %r9	# D.15471, D.15472
	movl	%edi, (%rsi,%r9,4)	# tmp324, *_23
	leal	1(%rax), %edi	#, j
	cmpl	%edi, %ecx	# j, j
	jle	.L139	#,
	leal	(%rdi,%rdx), %r10d	#, D.15471
	movslq	%edi, %r9	# j, D.15472
	addl	%ecx, %edi	# j, D.15471
	movl	(%rsi,%r9,4), %r9d	# *_211, *_211
	movslq	%r10d, %r10	# D.15471, D.15472
	movslq	%edi, %rdi	# D.15471, D.15472
	addl	$2, %eax	#, j
	sall	$2, %r9d	#, p
	movl	%r9d, (%rsi,%r10,4)	# p, *_217
	addl	%r8d, %r9d	# q, tmp331
	movl	%r9d, (%rsi,%rdi,4)	# tmp331, *_222
	cmpl	%eax, %ecx	# j, j
	jle	.L139	#,
	movslq	%eax, %rdi	# j, D.15472
	addl	%eax, %edx	# j, D.15471
	addl	%ecx, %eax	# j, D.15471
	movl	(%rsi,%rdi,4), %edi	# *_158, *_158
	movslq	%edx, %rdx	# D.15471, D.15472
	cltq
	sall	$2, %edi	#, p
	addl	%edi, %r8d	# p, tmp317
	movl	%edi, (%rsi,%rdx,4)	# p, *_164
	movl	%r8d, (%rsi,%rax,4)	# tmp317, *_169
.L139:
	sarl	$2, %r14d	#, nw
	movl	%ecx, %edx	# j, j
	cmpl	$32, %r14d	#, nw
	jle	.L158	#,
.L149:
	leal	(%rdx,%rdx), %ecx	#, j
	movl	%edx, %r8d	# j, q
	sall	$4, %r8d	#, q
	cmpl	%edx, %ecx	# j, j
	jle	.L139	#,
	movslq	%edx, %rdi	# j, D.15472
	movslq	%ecx, %r10	# j, D.15472
	movl	%ecx, %r9d	# j, D.15475
	leaq	4(%rdi,%r10), %r15	#, D.15474
	subl	%edx, %r9d	# j, D.15475
	leaq	0(,%rdi,4), %rax	#, D.15472
	salq	$2, %r15	#, D.15470
	leaq	(%r10,%rdi), %r12	#, D.15472
	cmpq	%r15, %rax	# D.15470, D.15472
	leaq	16(%rax), %r13	#, D.15470
	setge	%bl	#, D.15469
	leaq	0(,%r12,4), %rbp	#, D.15470
	cmpq	%r13, %rbp	# D.15470, D.15470
	setge	%r11b	#, D.15469
	orl	%ebx, %r11d	# D.15469, D.15469
	leaq	0(,%rdi,8), %rbx	#, D.15472
	cmpq	%r15, %rbx	# D.15470, D.15472
	leaq	16(%rbx), %r15	#, D.15474
	setge	-9(%rsp)	#, %sfp
	cmpq	%rbp, %r15	# D.15470, D.15474
	setle	%bpl	#, D.15469
	orb	-9(%rsp), %bpl	# %sfp, D.15469
	cmpq	%rax, %r15	# D.15472, D.15474
	setle	%r15b	#, D.15469
	cmpq	%rbx, %r13	# D.15472, D.15470
	setle	%bl	#, D.15469
	orl	%r15d, %ebx	# D.15469, D.15469
	cmpl	$8, %r9d	#, D.15475
	seta	%r13b	#, D.15469
	andl	%r13d, %ebx	# D.15469, D.15469
	testb	%r11b, %bl	# D.15469, D.15469
	jne	.L161	#,
.L132:
	subl	$1, %r9d	#, D.15474
	addq	%rsi, %rax	# ip, ivtmp.281
	leaq	1(%rdi,%r9), %rdx	#, D.15474
	leaq	(%rsi,%rdx,4), %r9	#, D.15476
	.p2align 4,,10
	.p2align 3
.L140:
	movl	(%rax), %ebx	# MEM[base: _267, offset: 0B], tmp370
	leal	0(,%rbx,4), %edx	#, p
	movl	%edx, (%rax,%rdi,4)	# p, MEM[base: _267, index: _69, step: 4, offset: 0B]
	addl	%r8d, %edx	# q, tmp338
	movl	%edx, (%rax,%r10,4)	# tmp338, MEM[base: _267, index: _70, step: 4, offset: 0B]
	addq	$4, %rax	#, ivtmp.281
	cmpq	%r9, %rax	# D.15476, ivtmp.281
	jne	.L140	#,
	sarl	$2, %r14d	#, nw
	movl	%ecx, %edx	# j, j
	cmpl	$32, %r14d	#, nw
	jg	.L149	#,
	.p2align 4,,10
	.p2align 3
.L158:
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.size	makeipt, .-makeipt
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	makect
	.type	makect, @function
makect:
.LFB56:
	.cfi_startproc
	movl	%edi, 4(%rsi)	# nc, MEM[(int *)ip_4(D) + 4B]
	cmpl	$1, %edi	#, nc
	jle	.L173	#,
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edi, %r13d	# nc, nch
	vxorpd	%xmm0, %xmm0, %xmm0	# D.15500
	sarl	%r13d	# nch
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	vcvtsi2sd	%r13d, %xmm0, %xmm0	# nch, D.15500, D.15500
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdx, %rbp	# c, c
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%edi, %ebx	# nc, nc
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 80
	vmovsd	.LC16(%rip), %xmm1	#, tmp114
	vdivsd	%xmm0, %xmm1, %xmm3	# D.15500, tmp114, delta
	vmulsd	%xmm3, %xmm0, %xmm0	# delta, D.15500, D.15500
	vmovsd	%xmm3, 8(%rsp)	# delta, %sfp
	call	cos	#
	movslq	%r13d, %rax	# nch, D.15501
	vmovsd	.LC2(%rip), %xmm1	#, tmp129
	vmovsd	%xmm0, 0(%rbp)	# D.15500, *c_13(D)
	vmulsd	%xmm1, %xmm0, %xmm0	# tmp129, D.15500, D.15500
	vmovsd	%xmm0, 0(%rbp,%rax,8)	# D.15500, *_17
	cmpl	$1, %r13d	#, nch
	je	.L170	#,
	leaq	8(%rbp), %r12	#, ivtmp.301
	movslq	%ebx, %rdi	# nc, D.15501
	movl	$1, %ebx	#, j
	leaq	0(%rbp,%rdi,8), %rbp	#, ivtmp.306
	.p2align 4,,10
	.p2align 3
.L165:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.15500
	vcvtsi2sd	%ebx, %xmm0, %xmm0	# j, D.15500, D.15500
	vmovsd	%xmm1, (%rsp)	# tmp129, %sfp
	addl	$1, %ebx	#, j
	vmulsd	8(%rsp), %xmm0, %xmm0	# %sfp, D.15500, D.15500
	addq	$8, %r12	#, ivtmp.301
	subq	$8, %rbp	#, ivtmp.306
	leaq	16(%rsp), %rsi	#,
	leaq	24(%rsp), %rdi	#, tmp138
	call	sincos	#
	vmovsd	(%rsp), %xmm1	# %sfp, tmp129
	vmulsd	16(%rsp), %xmm1, %xmm0	#, tmp129, D.15500
	vmovsd	%xmm0, -8(%r12)	# D.15500, MEM[base: _51, offset: 0B]
	vmulsd	24(%rsp), %xmm1, %xmm0	#, tmp129, D.15500
	vmovsd	%xmm0, 0(%rbp)	# D.15500, MEM[base: _50, offset: -8B]
	cmpl	%r13d, %ebx	# nch, j
	jne	.L165	#,
.L170:
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.L173:
	ret
	.cfi_endproc
.LFE56:
	.size	makect, .-makect
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.section	.text.unlikely
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.globl	bitrv2
	.type	bitrv2, @function
bitrv2:
.LFB59:
	.cfi_startproc
	movl	%edi, %eax	# n, l
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15	# a, a
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	sarl	$2, %eax	#, l
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$64, %rsp	#,
	.cfi_def_cfa_offset 120
	cmpl	$8, %eax	#, l
	jle	.L175	#,
	movl	$1, %edx	#, m
	.p2align 4,,10
	.p2align 3
.L176:
	sarl	$2, %eax	#, l
	addl	%edx, %edx	# m
	cmpl	$8, %eax	#, l
	jg	.L176	#,
	movl	%edx, 32(%rsp)	# m, %sfp
	leal	0(,%rdx,4), %r12d	#, nm
	sarl	%edi	# nh
	movl	%edi, -100(%rsp)	# nh, %sfp
	cmpl	$8, %eax	#, l
	je	.L177	#,
	testl	%edx, %edx	# m
	jle	.L192	#,
.L187:
	movq	$4, -120(%rsp)	#, %sfp
	movl	32(%rsp), %ebx	# %sfp, m
	movq	$0, -88(%rsp)	#, %sfp
	movl	%ebx, %eax	# m, m
	subl	$1, %eax	#, D.15594
	salq	$2, %rax	#, D.15594
	movq	%rax, -80(%rsp)	# D.15594, %sfp
	movslq	%ebx, %rax	# m,
	leaq	(%rsi,%rax,4), %rax	#, D.15595
	movq	%rax, -112(%rsp)	# D.15595, %sfp
	movslq	%r12d, %rax	# nm, D.15590
	movq	%rax, -72(%rsp)	# D.15590, %sfp
	addq	$1, %rax	#, D.15590
	movq	%rax, -64(%rsp)	# D.15590, %sfp
	movslq	-100(%rsp), %rax	# %sfp, D.15590
	movq	%rax, -56(%rsp)	# D.15590, %sfp
	addq	$1, %rax	#, D.15590
	movq	%rax, -48(%rsp)	# D.15590, %sfp
	.p2align 4,,10
	.p2align 3
.L179:
	movq	-88(%rsp), %rbx	# %sfp, ivtmp.384
	movq	-112(%rsp), %r10	# %sfp, D.15595
	movl	-100(%rsp), %r11d	# %sfp, nh
	movl	(%r10,%rbx), %eax	# MEM[base: _636, index: ivtmp.384_916, offset: 0B], k1
	addl	%ebx, %eax	# ivtmp.384, k1
	leal	2(%rax), %edx	#, j1
	addl	%r11d, %eax	# nh, k1
	movslq	%edx, %rcx	# j1, D.15590
	addl	%r12d, %edx	# nm, j1
	salq	$3, %rcx	#, D.15590
	movslq	%edx, %rdx	# j1, D.15590
	leaq	(%r15,%rcx), %r8	#, D.15591
	salq	$3, %rdx	#, D.15590
	leaq	8(%r15,%rcx), %rdi	#, D.15591
	movslq	%eax, %rcx	# k1, D.15590
	addl	%r12d, %eax	# nm, k1
	vmovsd	(%r8), %xmm1	# *_736, xr
	salq	$3, %rcx	#, D.15590
	vmovsd	(%rdi), %xmm0	# *_741, xi
	cltq
	leaq	(%r15,%rcx), %rsi	#, D.15591
	salq	$3, %rax	#, D.15590
	leaq	8(%r15,%rcx), %rcx	#, D.15591
	vmovsd	(%rsi), %xmm3	# *_745, yr
	vmovsd	(%rcx), %xmm2	# *_749, yi
	vmovsd	%xmm3, (%r8)	# yr, *_736
	vmovsd	%xmm2, (%rdi)	# yi, *_741
	vmovsd	%xmm1, (%rsi)	# xr, *_745
	leaq	(%r15,%rax), %rsi	#, D.15591
	vmovsd	%xmm0, (%rcx)	# xi, *_749
	leaq	8(%r15,%rax), %rax	#, D.15591
	vmovsd	(%rsi), %xmm3	# *_770, yr
	leaq	(%r15,%rdx), %rcx	#, D.15591
	vmovsd	(%rax), %xmm2	# *_774, yi
	leaq	8(%r15,%rdx), %rdx	#, D.15591
	vmovsd	(%rcx), %xmm1	# *_762, xr
	vmovsd	(%rdx), %xmm0	# *_766, xi
	vmovsd	%xmm3, (%rcx)	# yr, *_762
	vmovsd	%xmm2, (%rdx)	# yi, *_766
	vmovsd	%xmm1, (%rsi)	# xr, *_770
	vmovsd	%xmm0, (%rax)	# xi, *_774
	cmpq	-80(%rsp), %rbx	# %sfp, ivtmp.384
	je	.L192	#,
	movq	-120(%rsp), %rbx	# %sfp, ivtmp.387
	movq	-56(%rsp), %r13	# %sfp, D.15590
	movq	-72(%rsp), %r14	# %sfp, D.15590
	movslq	(%r10,%rbx), %rdx	# MEM[base: _636, index: ivtmp.387_542, offset: 0B],
	movl	%ebx, -96(%rsp)	# tmp1063, %sfp
	leaq	(%r15,%rdx,8), %r10	#, ivtmp.362
	movq	%rdx, %rax	#,
	addq	-64(%rsp), %rdx	# %sfp, D.15594
	addl	%r12d, %eax	# nm, D.15592
	leaq	(%r15,%rdx,8), %r9	#, ivtmp.366
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r11d, %eax	# nh, D.15592
	leaq	(%rdx,%r13), %rcx	#, D.15590
	addq	-48(%rsp), %rdx	# %sfp, D.15594
	leaq	(%r15,%rcx,8), %rbp	#, ivtmp.367
	leaq	(%r15,%rdx,8), %rbx	#, ivtmp.368
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	%r12d, %eax	# nm, D.15592
	subq	%r14, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %r8	#, ivtmp.369
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	$2, %eax	#, D.15592
	leaq	(%r15,%rdx,8), %rdi	#, ivtmp.372
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r12d, %eax	# nm, D.15592
	addq	%r14, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %rsi	#, ivtmp.374
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	%r11d, %eax	# nh, D.15592
	cltq
	subq	%r13, %rdx	# D.15590, D.15590
	xorl	%r11d, %r11d	# ivtmp.361
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.376
	subq	%r14, %rax	# D.15590, D.15590
	leaq	(%r15,%rax,8), %rdx	#, ivtmp.378
	.p2align 4,,10
	.p2align 3
.L185:
	movl	-96(%rsp), %eax	# %sfp, k1
	addq	$32, %r10	#, ivtmp.362
	addq	$32, %r9	#, ivtmp.366
	addq	$32, %rbp	#, ivtmp.367
	movq	-112(%rsp), %r14	# %sfp, D.15595
	addq	$32, %rbx	#, ivtmp.368
	addq	$32, %r8	#, ivtmp.369
	addq	$32, %rdi	#, ivtmp.372
	vmovsd	-32(%r10), %xmm1	# MEM[base: _217, offset: 0B], xr
	addq	$32, %rsi	#, ivtmp.374
	addq	$32, %rcx	#, ivtmp.376
	addq	$32, %rdx	#, ivtmp.378
	vmovsd	-24(%r10), %xmm0	# MEM[base: _217, offset: 8B], xi
	addl	(%r14,%r11), %eax	# MEM[base: _636, index: ivtmp.361_1887, offset: 0B], k1
	addq	$4, %r11	#, ivtmp.361
	movslq	%eax, %r13	# k1, D.15590
	addl	%r12d, %eax	# nm, k1
	salq	$3, %r13	#, D.15590
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_560, yr
	vmovsd	0(%r13), %xmm2	# *_564, yi
	vmovsd	%xmm3, -32(%r10)	# yr, MEM[base: _217, offset: 0B]
	vmovsd	%xmm2, -24(%r10)	# yi, MEM[base: _217, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_560
	vmovsd	%xmm0, 0(%r13)	# xi, *_564
	movslq	%eax, %r13	# k1, D.15590
	addl	$2, %eax	#, k1
	vmovsd	-40(%r9), %xmm1	# MEM[base: _173, offset: -8B], xr
	salq	$3, %r13	#, D.15590
	vmovsd	-32(%r9), %xmm0	# MEM[base: _173, offset: 0B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_582, yr
	vmovsd	0(%r13), %xmm2	# *_586, yi
	vmovsd	%xmm3, -40(%r9)	# yr, MEM[base: _173, offset: -8B]
	vmovsd	%xmm2, -32(%r9)	# yi, MEM[base: _173, offset: 0B]
	vmovsd	%xmm1, (%r14)	# xr, *_582
	vmovsd	%xmm0, 0(%r13)	# xi, *_586
	movslq	%eax, %r13	# k1, D.15590
	vmovsd	-32(%rbp), %xmm1	# MEM[base: _128, offset: 0B], xr
	subl	%r12d, %eax	# nm, k1
	salq	$3, %r13	#, D.15590
	vmovsd	-32(%rbx), %xmm0	# MEM[base: _110, offset: 0B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_604, yr
	vmovsd	0(%r13), %xmm2	# *_608, yi
	vmovsd	%xmm3, -32(%rbp)	# yr, MEM[base: _128, offset: 0B]
	vmovsd	%xmm2, -32(%rbx)	# yi, MEM[base: _110, offset: 0B]
	vmovsd	%xmm1, (%r14)	# xr, *_604
	vmovsd	%xmm0, 0(%r13)	# xi, *_608
	movslq	%eax, %r13	# k1, D.15590
	vmovsd	-32(%r8), %xmm1	# MEM[base: _84, offset: 0B], xr
	salq	$3, %r13	#, D.15590
	vmovsd	-24(%r8), %xmm0	# MEM[base: _84, offset: 8B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_626, yr
	vmovsd	0(%r13), %xmm2	# *_630, yi
	vmovsd	%xmm3, -32(%r8)	# yr, MEM[base: _84, offset: 0B]
	vmovsd	%xmm2, -24(%r8)	# yi, MEM[base: _84, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_626
	addl	-100(%rsp), %eax	# %sfp, k1
	vmovsd	%xmm0, 0(%r13)	# xi, *_630
	vmovsd	-16(%rdi), %xmm1	# MEM[base: _39, offset: 16B], xr
	vmovsd	-8(%rdi), %xmm0	# MEM[base: _39, offset: 24B], xi
	movslq	%eax, %r13	# k1, D.15590
	addl	%r12d, %eax	# nm, k1
	salq	$3, %r13	#, D.15590
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_648, yr
	vmovsd	0(%r13), %xmm2	# *_652, yi
	vmovsd	%xmm3, -16(%rdi)	# yr, MEM[base: _39, offset: 16B]
	vmovsd	%xmm2, -8(%rdi)	# yi, MEM[base: _39, offset: 24B]
	vmovsd	%xmm1, (%r14)	# xr, *_648
	vmovsd	%xmm0, 0(%r13)	# xi, *_652
	movslq	%eax, %r13	# k1, D.15590
	vmovsd	-32(%rsi), %xmm1	# MEM[base: _1989, offset: 0B], xr
	subl	$2, %eax	#, k1
	salq	$3, %r13	#, D.15590
	vmovsd	-24(%rsi), %xmm0	# MEM[base: _1989, offset: 8B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_670, yr
	vmovsd	0(%r13), %xmm2	# *_674, yi
	vmovsd	%xmm3, -32(%rsi)	# yr, MEM[base: _1989, offset: 0B]
	vmovsd	%xmm2, -24(%rsi)	# yi, MEM[base: _1989, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_670
	vmovsd	%xmm0, 0(%r13)	# xi, *_674
	movslq	%eax, %r13	# k1, D.15590
	subl	%r12d, %eax	# nm, k1
	vmovsd	-32(%rcx), %xmm1	# MEM[base: _1985, offset: 0B], xr
	salq	$3, %r13	#, D.15590
	vmovsd	-24(%rcx), %xmm0	# MEM[base: _1985, offset: 8B], xi
	cltq
	leaq	(%r15,%r13), %r14	#, D.15591
	salq	$3, %rax	#, D.15590
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_692, yr
	vmovsd	0(%r13), %xmm2	# *_696, yi
	vmovsd	%xmm3, -32(%rcx)	# yr, MEM[base: _1985, offset: 0B]
	vmovsd	%xmm2, -24(%rcx)	# yi, MEM[base: _1985, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_692
	vmovsd	%xmm0, 0(%r13)	# xi, *_696
	leaq	(%r15,%rax), %r13	#, D.15591
	vmovsd	-32(%rdx), %xmm1	# MEM[base: _1981, offset: 0B], xr
	leaq	8(%r15,%rax), %rax	#, D.15591
	vmovsd	-24(%rdx), %xmm0	# MEM[base: _1981, offset: 8B], xi
	vmovsd	0(%r13), %xmm3	# *_714, yr
	vmovsd	(%rax), %xmm2	# *_718, yi
	vmovsd	%xmm3, -32(%rdx)	# yr, MEM[base: _1981, offset: 0B]
	vmovsd	%xmm2, -24(%rdx)	# yi, MEM[base: _1981, offset: 8B]
	vmovsd	%xmm1, 0(%r13)	# xr, *_714
	vmovsd	%xmm0, (%rax)	# xi, *_718
	cmpq	-120(%rsp), %r11	# %sfp, ivtmp.361
	jne	.L185	#,
	addq	$4, -88(%rsp)	#, %sfp
	addq	$4, -120(%rsp)	#, %sfp
	jmp	.L179	#
	.p2align 4,,10
	.p2align 3
.L192:
	addq	$64, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L177:
	.cfi_restore_state
	leal	0(,%rdx,8), %ebx	#, D.15592
	movl	%ebx, -80(%rsp)	# D.15592, %sfp
	leal	-2(%r12,%r12), %ebx	#, D.15592
	movl	%ebx, 36(%rsp)	# D.15592, %sfp
	testl	%edx, %edx	# m
	jle	.L192	#,
.L186:
	movl	-100(%rsp), %eax	# %sfp, nh
	movl	%r12d, %ecx	# nm, D.15592
	movl	%r12d, -112(%rsp)	# nm, %sfp
	movl	%r12d, %r11d	# nm, nm
	movq	$4, (%rsp)	#, %sfp
	movl	$0, 20(%rsp)	#, %sfp
	leal	2(%rax), %ebx	#, D.15592
	subl	%eax, %ecx	# nh, D.15592
	movl	%ebx, 40(%rsp)	# D.15592, %sfp
	movl	%eax, %ebx	# nh, nh
	movl	%r12d, %eax	# nm, D.15596
	negl	%eax	# D.15596
	movl	%ecx, 44(%rsp)	# D.15592, %sfp
	addl	%eax, %eax	# tmp778
	movl	%eax, -88(%rsp)	# tmp778, %sfp
	movslq	32(%rsp), %rax	# %sfp, D.15590
	leaq	(%rsi,%rax,4), %rax	#, D.15595
	movq	%rax, 8(%rsp)	# D.15595, %sfp
	movq	%rax, 24(%rsp)	# D.15595, %sfp
	movslq	%r12d, %rax	# nm, D.15590
	movq	%rax, 48(%rsp)	# D.15590, %sfp
	movslq	%ebx, %rax	# nh,
	movq	%rax, 56(%rsp)	# D.15590, %sfp
	.p2align 4,,10
	.p2align 3
.L183:
	movq	24(%rsp), %rdi	# %sfp, ivtmp.351
	movl	20(%rsp), %ebx	# %sfp, k
	movl	-100(%rsp), %r10d	# %sfp, nh
	movl	(%rdi), %eax	# MEM[base: _146, offset: 0B], D.15592
	leal	(%rbx,%rbx), %ecx	#, D.15596
	addl	%ecx, %eax	# D.15596, D.15592
	addl	%eax, %eax	# k1
	leal	2(%rax), %edx	#, j1
	addl	%r10d, %eax	# nh, k1
	movslq	%edx, %rsi	# j1, D.15590
	addl	%r11d, %edx	# nm, j1
	leaq	(%r15,%rsi,8), %r9	#, D.15591
	leaq	8(%r15,%rsi,8), %r8	#, D.15591
	movslq	%eax, %rsi	# k1, D.15590
	vmovsd	(%r9), %xmm1	# *_402, xr
	salq	$3, %rsi	#, D.15590
	vmovsd	(%r8), %xmm0	# *_406, xi
	leaq	(%r15,%rsi), %rdi	#, D.15591
	addl	-80(%rsp), %eax	# %sfp, k1
	vmovsd	(%rdi), %xmm3	# *_410, yr
	leaq	8(%r15,%rsi), %rsi	#, D.15591
	vmovsd	(%rsi), %xmm2	# *_414, yi
	vmovsd	%xmm3, (%r9)	# yr, *_402
	vmovsd	%xmm2, (%r8)	# yi, *_406
	vmovsd	%xmm1, (%rdi)	# xr, *_410
	vmovsd	%xmm0, (%rsi)	# xi, *_414
	movslq	%edx, %rsi	# j1, D.15590
	addl	%r11d, %edx	# nm, j1
	salq	$3, %rsi	#, D.15590
	leaq	(%r15,%rsi), %r9	#, D.15591
	leaq	8(%r15,%rsi), %r8	#, D.15591
	movslq	%eax, %rsi	# k1, D.15590
	vmovsd	(%r9), %xmm1	# *_425, xr
	subl	%r11d, %eax	# nm, k1
	salq	$3, %rsi	#, D.15590
	vmovsd	(%r8), %xmm0	# *_429, xi
	leaq	(%r15,%rsi), %rdi	#, D.15591
	leaq	8(%r15,%rsi), %rsi	#, D.15591
	vmovsd	(%rdi), %xmm3	# *_433, yr
	vmovsd	(%rsi), %xmm2	# *_437, yi
	vmovsd	%xmm3, (%r9)	# yr, *_425
	vmovsd	%xmm2, (%r8)	# yi, *_429
	vmovsd	%xmm1, (%rdi)	# xr, *_433
	vmovsd	%xmm0, (%rsi)	# xi, *_437
	movslq	%edx, %rsi	# j1, D.15590
	subl	$2, %edx	#, j1
	salq	$3, %rsi	#, D.15590
	leaq	(%r15,%rsi), %r9	#, D.15591
	leaq	8(%r15,%rsi), %r8	#, D.15591
	movslq	%eax, %rsi	# k1, D.15590
	vmovsd	(%r9), %xmm1	# *_447, xr
	subl	%r10d, %eax	# nh, k1
	salq	$3, %rsi	#, D.15590
	vmovsd	(%r8), %xmm0	# *_451, xi
	leaq	(%r15,%rsi), %rdi	#, D.15591
	leaq	8(%r15,%rsi), %rsi	#, D.15591
	vmovsd	(%rdi), %xmm3	# *_455, yr
	vmovsd	(%rsi), %xmm2	# *_459, yi
	vmovsd	%xmm3, (%r9)	# yr, *_447
	vmovsd	%xmm2, (%r8)	# yi, *_451
	vmovsd	%xmm1, (%rdi)	# xr, *_455
	vmovsd	%xmm0, (%rsi)	# xi, *_459
	movslq	%edx, %rsi	# j1, D.15590
	salq	$3, %rsi	#, D.15590
	leaq	(%r15,%rsi), %r9	#, D.15591
	leaq	8(%r15,%rsi), %r8	#, D.15591
	movslq	%eax, %rsi	# k1, D.15590
	vmovsd	(%r9), %xmm1	# *_469, xr
	salq	$3, %rsi	#, D.15590
	vmovsd	(%r8), %xmm0	# *_473, xi
	leaq	(%r15,%rsi), %rdi	#, D.15591
	leaq	8(%r15,%rsi), %rsi	#, D.15591
	vmovsd	(%rdi), %xmm3	# *_477, yr
	vmovsd	(%rsi), %xmm2	# *_481, yi
	vmovsd	%xmm3, (%r9)	# yr, *_469
	vmovsd	%xmm2, (%r8)	# yi, *_473
	vmovsd	%xmm1, (%rdi)	# xr, *_477
	vmovsd	%xmm0, (%rsi)	# xi, *_481
	movl	40(%rsp), %esi	# %sfp, D.15592
	addl	%esi, %edx	# D.15592, j1
	addl	%esi, %eax	# D.15592, k1
	movslq	%edx, %rsi	# j1, D.15590
	addl	44(%rsp), %edx	# %sfp, j1
	salq	$3, %rsi	#, D.15590
	leaq	(%r15,%rsi), %r9	#, D.15591
	leaq	8(%r15,%rsi), %r8	#, D.15591
	movslq	%eax, %rsi	# k1, D.15590
	addl	36(%rsp), %eax	# %sfp, k1
	salq	$3, %rsi	#, D.15590
	vmovsd	(%r9), %xmm1	# *_492, xr
	movslq	%edx, %rdx	# j1, D.15590
	leaq	(%r15,%rsi), %rdi	#, D.15591
	vmovsd	(%r8), %xmm0	# *_496, xi
	salq	$3, %rdx	#, D.15590
	leaq	8(%r15,%rsi), %rsi	#, D.15591
	vmovsd	(%rdi), %xmm3	# *_500, yr
	vmovsd	(%rsi), %xmm2	# *_504, yi
	cltq
	salq	$3, %rax	#, D.15590
	vmovsd	%xmm3, (%r9)	# yr, *_492
	vmovsd	%xmm2, (%r8)	# yi, *_496
	vmovsd	%xmm1, (%rdi)	# xr, *_500
	leaq	(%r15,%rax), %rdi	#, D.15591
	vmovsd	%xmm0, (%rsi)	# xi, *_504
	leaq	8(%r15,%rax), %rax	#, D.15591
	vmovsd	(%rdi), %xmm3	# *_525, yr
	leaq	(%r15,%rdx), %rsi	#, D.15591
	vmovsd	(%rax), %xmm2	# *_529, yi
	leaq	8(%r15,%rdx), %rdx	#, D.15591
	vmovsd	(%rsi), %xmm1	# *_517, xr
	vmovsd	(%rdx), %xmm0	# *_521, xi
	vmovsd	%xmm3, (%rsi)	# yr, *_517
	vmovsd	%xmm2, (%rdx)	# yi, *_521
	vmovsd	%xmm1, (%rdi)	# xr, *_525
	vmovsd	%xmm0, (%rax)	# xi, *_529
	movl	%ebx, %eax	# k, k
	addl	$1, %eax	#, k
	movl	%eax, 20(%rsp)	# k, %sfp
	cmpl	32(%rsp), %eax	# %sfp, k
	jge	.L192	#,
	movl	20(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L184	#,
	leal	2(%rcx), %eax	#, D.15592
	movl	-112(%rsp), %r13d	# %sfp, nm
	movq	$0, -96(%rsp)	#, %sfp
	movl	%eax, 16(%rsp)	# D.15592, %sfp
	movq	24(%rsp), %rax	# %sfp, ivtmp.351
	movq	56(%rsp), %r14	# %sfp, D.15590
	movl	4(%rax), %eax	# MEM[base: _146, offset: 4B], MEM[base: _146, offset: 4B]
	addl	%eax, %eax	# D.15592
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r13d, %eax	# nm, D.15592
	leaq	(%r15,%rdx,8), %rbx	#, ivtmp.314
	movq	%rbx, -72(%rsp)	# ivtmp.314, %sfp
	movq	48(%rsp), %rbx	# %sfp, D.15590
	addq	%rbx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %r12	#, ivtmp.317
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r13d, %eax	# nm, D.15592
	addq	%rbx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.319
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r13d, %eax	# nm, D.15592
	addq	%rbx, %rdx	# D.15590, D.15590
	movq	%rcx, -48(%rsp)	# ivtmp.319, %sfp
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.321
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	-100(%rsp), %eax	# %sfp, D.15592
	addq	%r14, %rdx	# D.15590, D.15590
	movq	%rcx, -40(%rsp)	# ivtmp.321, %sfp
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.323
	movq	%rcx, -24(%rsp)	# ivtmp.323, %sfp
	movq	%rbx, %rcx	# D.15590, D.15590
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	%r13d, %eax	# nm, D.15592
	subq	%rbx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %rdx	#, ivtmp.325
	movq	%rdx, -32(%rsp)	# ivtmp.325, %sfp
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	%r13d, %eax	# nm, D.15592
	subq	%rbx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %rbp	#, ivtmp.327
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	%r13d, %eax	# nm, D.15592
	subq	%rbx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %rbx	#, ivtmp.329
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	$2, %eax	#, D.15592
	leaq	(%r15,%rdx,8), %r11	#, ivtmp.332
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r13d, %eax	# nm, D.15592
	addq	%rcx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %r10	#, ivtmp.334
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r13d, %eax	# nm, D.15592
	addq	%rcx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %r9	#, ivtmp.336
	movslq	%eax, %rdx	# D.15592, D.15590
	addl	%r13d, %eax	# nm, D.15592
	addq	%rcx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %r8	#, ivtmp.338
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	-100(%rsp), %eax	# %sfp, D.15592
	subq	%r14, %rdx	# D.15590, D.15590
	movq	%rcx, %r14	# D.15590, D.15590
	movq	%r8, -120(%rsp)	# ivtmp.338, %sfp
	leaq	(%r15,%rdx,8), %rdi	#, ivtmp.340
	movq	%rdi, -56(%rsp)	# ivtmp.340, %sfp
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	%r13d, %eax	# nm, D.15592
	subq	%rcx, %rdx	# D.15590, D.15590
	leaq	(%r15,%rdx,8), %rsi	#, ivtmp.342
	movslq	%eax, %rdx	# D.15592, D.15590
	subl	%r13d, %eax	# nm, D.15592
	cltq
	subq	%rcx, %rdx	# D.15590, D.15590
	movq	%rsi, -64(%rsp)	# ivtmp.342, %sfp
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.344
	subq	%r14, %rax	# D.15590, D.15590
	leaq	(%r15,%rax,8), %rdx	#, ivtmp.346
	movq	%rcx, -8(%rsp)	# ivtmp.344, %sfp
	movq	%rdx, -16(%rsp)	# ivtmp.346, %sfp
	movq	-48(%rsp), %rdx	# %sfp, ivtmp.319
	.p2align 4,,10
	.p2align 3
.L181:
	movq	8(%rsp), %rsi	# %sfp, D.15595
	movq	-96(%rsp), %rdi	# %sfp, ivtmp.313
	movl	16(%rsp), %eax	# %sfp, D.15592
	movq	-72(%rsp), %r14	# %sfp, ivtmp.314
	movl	-80(%rsp), %ecx	# %sfp, D.15592
	addl	(%rsi,%rdi), %eax	# MEM[base: _80, index: ivtmp.313_2299, offset: 0B], D.15592
	vmovsd	(%r14), %xmm1	# MEM[base: _2059, offset: 0B], xr
	vmovsd	8(%r14), %xmm0	# MEM[base: _2059, offset: 8B], xi
	addl	%eax, %eax	# k1
	movslq	%eax, %r13	# k1, D.15590
	addl	%ecx, %eax	# D.15592, k1
	leaq	(%r15,%r13,8), %rsi	#, D.15591
	leaq	8(%r15,%r13,8), %r13	#, D.15591
	vmovsd	(%rsi), %xmm3	# *_47, yr
	vmovsd	0(%r13), %xmm2	# *_51, yi
	vmovsd	%xmm3, (%r14)	# yr, MEM[base: _2059, offset: 0B]
	vmovsd	%xmm2, 8(%r14)	# yi, MEM[base: _2059, offset: 8B]
	vmovsd	%xmm1, (%rsi)	# xr, *_47
	vmovsd	%xmm0, 0(%r13)	# xi, *_51
	movslq	%eax, %r13	# k1, D.15590
	subl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15590
	vmovsd	(%r12), %xmm1	# MEM[base: _2055, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	8(%r12), %xmm0	# MEM[base: _2055, offset: 8B], xi
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_70, yr
	vmovsd	0(%r13), %xmm2	# *_74, yi
	vmovsd	%xmm3, (%r12)	# yr, MEM[base: _2055, offset: 0B]
	vmovsd	%xmm2, 8(%r12)	# yi, MEM[base: _2055, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_70
	vmovsd	%xmm0, 0(%r13)	# xi, *_74
	movslq	%eax, %r13	# k1, D.15590
	vmovsd	(%rdx), %xmm1	# MEM[base: _2051, offset: 0B], xr
	addl	%ecx, %eax	# D.15592, k1
	salq	$3, %r13	#, D.15590
	vmovsd	8(%rdx), %xmm0	# MEM[base: _2051, offset: 8B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	movq	-40(%rsp), %rcx	# %sfp, ivtmp.321
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_92, yr
	vmovsd	0(%r13), %xmm2	# *_96, yi
	vmovsd	%xmm3, (%rdx)	# yr, MEM[base: _2051, offset: 0B]
	vmovsd	%xmm2, 8(%rdx)	# yi, MEM[base: _2051, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_92
	vmovsd	%xmm0, 0(%r13)	# xi, *_96
	movslq	%eax, %r13	# k1, D.15590
	vmovsd	(%rcx), %xmm1	# MEM[base: _2047, offset: 0B], xr
	addl	$2, %eax	#, k1
	salq	$3, %r13	#, D.15590
	vmovsd	8(%rcx), %xmm0	# MEM[base: _2047, offset: 8B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	movq	-24(%rsp), %rsi	# %sfp, ivtmp.323
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_114, yr
	vmovsd	0(%r13), %xmm2	# *_118, yi
	movl	-88(%rsp), %r8d	# %sfp, tmp778
	vmovsd	%xmm3, (%rcx)	# yr, MEM[base: _2047, offset: 0B]
	vmovsd	%xmm2, 8(%rcx)	# yi, MEM[base: _2047, offset: 8B]
	movq	-32(%rsp), %rdi	# %sfp, ivtmp.325
	vmovsd	%xmm1, (%r14)	# xr, *_114
	vmovsd	%xmm0, 0(%r13)	# xi, *_118
	movslq	%eax, %r13	# k1, D.15590
	vmovsd	(%rsi), %xmm1	# MEM[base: _2043, offset: 0B], xr
	salq	$3, %r13	#, D.15590
	vmovsd	8(%rsi), %xmm0	# MEM[base: _2043, offset: 8B], xi
	addl	%r8d, %eax	# tmp778, k1
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_136, yr
	vmovsd	0(%r13), %xmm2	# *_140, yi
	vmovsd	%xmm3, (%rsi)	# yr, MEM[base: _2043, offset: 0B]
	vmovsd	%xmm2, 8(%rsi)	# yi, MEM[base: _2043, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_136
	vmovsd	%xmm0, 0(%r13)	# xi, *_140
	movslq	%eax, %r13	# k1, D.15590
	addl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15590
	vmovsd	(%rdi), %xmm1	# MEM[base: _2039, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	8(%rdi), %xmm0	# MEM[base: _2039, offset: 8B], xi
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_159, yr
	vmovsd	0(%r13), %xmm2	# *_163, yi
	vmovsd	%xmm3, (%rdi)	# yr, MEM[base: _2039, offset: 0B]
	vmovsd	%xmm2, 8(%rdi)	# yi, MEM[base: _2039, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_159
	vmovsd	%xmm0, 0(%r13)	# xi, *_163
	movslq	%eax, %r13	# k1, D.15590
	vmovsd	8(%rbp), %xmm0	# MEM[base: _2035, offset: 8B], xi
	addl	%r8d, %eax	# tmp778, k1
	salq	$3, %r13	#, D.15590
	vmovsd	0(%rbp), %xmm1	# MEM[base: _2035, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_181, yr
	vmovsd	0(%r13), %xmm2	# *_185, yi
	vmovsd	%xmm3, 0(%rbp)	# yr, MEM[base: _2035, offset: 0B]
	vmovsd	%xmm2, 8(%rbp)	# yi, MEM[base: _2035, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_181
	movl	-80(%rsp), %r8d	# %sfp, D.15592
	vmovsd	%xmm0, 0(%r13)	# xi, *_185
	movslq	%eax, %r13	# k1, D.15590
	addl	-100(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15590
	vmovsd	(%rbx), %xmm1	# MEM[base: _2031, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	8(%rbx), %xmm0	# MEM[base: _2031, offset: 8B], xi
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_203, yr
	vmovsd	0(%r13), %xmm2	# *_207, yi
	vmovsd	%xmm3, (%rbx)	# yr, MEM[base: _2031, offset: 0B]
	vmovsd	%xmm2, 8(%rbx)	# yi, MEM[base: _2031, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_203
	vmovsd	%xmm0, 0(%r13)	# xi, *_207
	movslq	%eax, %r13	# k1, D.15590
	addl	%r8d, %eax	# D.15592, k1
	vmovsd	16(%r11), %xmm1	# MEM[base: _2027, offset: 16B], xr
	salq	$3, %r13	#, D.15590
	vmovsd	24(%r11), %xmm0	# MEM[base: _2027, offset: 24B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_225, yr
	vmovsd	0(%r13), %xmm2	# *_229, yi
	vmovsd	%xmm3, 16(%r11)	# yr, MEM[base: _2027, offset: 16B]
	vmovsd	%xmm2, 24(%r11)	# yi, MEM[base: _2027, offset: 24B]
	vmovsd	%xmm1, (%r14)	# xr, *_225
	vmovsd	%xmm0, 0(%r13)	# xi, *_229
	movslq	%eax, %r13	# k1, D.15590
	subl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15590
	vmovsd	(%r10), %xmm1	# MEM[base: _2023, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	8(%r10), %xmm0	# MEM[base: _2023, offset: 8B], xi
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_247, yr
	vmovsd	0(%r13), %xmm2	# *_251, yi
	vmovsd	%xmm3, (%r10)	# yr, MEM[base: _2023, offset: 0B]
	vmovsd	%xmm2, 8(%r10)	# yi, MEM[base: _2023, offset: 8B]
	vmovsd	%xmm1, (%r14)	# xr, *_247
	vmovsd	%xmm0, 0(%r13)	# xi, *_251
	movslq	%eax, %r13	# k1, D.15590
	addl	%r8d, %eax	# D.15592, k1
	vmovsd	(%r9), %xmm1	# MEM[base: _2019, offset: 0B], xr
	salq	$3, %r13	#, D.15590
	vmovsd	8(%r9), %xmm0	# MEM[base: _2019, offset: 8B], xi
	leaq	(%r15,%r13), %r14	#, D.15591
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_269, yr
	vmovsd	0(%r13), %xmm2	# *_273, yi
	vmovsd	%xmm3, (%r9)	# yr, MEM[base: _2019, offset: 0B]
	vmovsd	%xmm2, 8(%r9)	# yi, MEM[base: _2019, offset: 8B]
	movq	-120(%rsp), %r8	# %sfp, ivtmp.338
	vmovsd	%xmm1, (%r14)	# xr, *_269
	vmovsd	%xmm0, 0(%r13)	# xi, *_273
	movslq	%eax, %r13	# k1, D.15590
	subl	$2, %eax	#, k1
	salq	$3, %r13	#, D.15590
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	(%r8), %xmm1	# MEM[base: _2015, offset: 0B], xr
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_291, yr
	vmovsd	0(%r13), %xmm2	# *_295, yi
	vmovsd	8(%r8), %xmm0	# MEM[base: _2015, offset: 8B], xi
	vmovsd	%xmm3, (%r8)	# yr, MEM[base: _2015, offset: 0B]
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2015, offset: 8B]
	movq	-56(%rsp), %r8	# %sfp, ivtmp.340
	vmovsd	%xmm1, (%r14)	# xr, *_291
	vmovsd	%xmm0, 0(%r13)	# xi, *_295
	movslq	%eax, %r13	# k1, D.15590
	addl	-88(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15590
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	(%r8), %xmm1	# MEM[base: _2011, offset: 0B], xr
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_313, yr
	vmovsd	0(%r13), %xmm2	# *_317, yi
	vmovsd	8(%r8), %xmm0	# MEM[base: _2011, offset: 8B], xi
	vmovsd	%xmm3, (%r8)	# yr, MEM[base: _2011, offset: 0B]
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2011, offset: 8B]
	movq	-64(%rsp), %r8	# %sfp, ivtmp.342
	vmovsd	%xmm1, (%r14)	# xr, *_313
	vmovsd	%xmm0, 0(%r13)	# xi, *_317
	movslq	%eax, %r13	# k1, D.15590
	addl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15590
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	(%r8), %xmm1	# MEM[base: _2007, offset: 0B], xr
	leaq	8(%r15,%r13), %r13	#, D.15591
	vmovsd	(%r14), %xmm3	# *_335, yr
	vmovsd	0(%r13), %xmm2	# *_339, yi
	vmovsd	8(%r8), %xmm0	# MEM[base: _2007, offset: 8B], xi
	vmovsd	%xmm3, (%r8)	# yr, MEM[base: _2007, offset: 0B]
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2007, offset: 8B]
	movq	-8(%rsp), %r8	# %sfp, ivtmp.344
	vmovsd	%xmm1, (%r14)	# xr, *_335
	vmovsd	%xmm0, 0(%r13)	# xi, *_339
	movslq	%eax, %r13	# k1, D.15590
	salq	$3, %r13	#, D.15590
	vmovsd	(%r8), %xmm1	# MEM[base: _2003, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15591
	vmovsd	8(%r8), %xmm0	# MEM[base: _2003, offset: 8B], xi
	leaq	8(%r15,%r13), %r13	#, D.15591
	addl	-88(%rsp), %eax	# %sfp, k1
	vmovsd	0(%r13), %xmm2	# *_361, yi
	vmovsd	(%r14), %xmm3	# *_357, yr
	addq	$4, -96(%rsp)	#, %sfp
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2003, offset: 8B]
	vmovsd	%xmm3, (%r8)	# yr, MEM[base: _2003, offset: 0B]
	cltq
	salq	$3, %rax	#, D.15590
	addq	$32, -72(%rsp)	#, %sfp
	vmovsd	%xmm1, (%r14)	# xr, *_357
	addq	$32, %rdi	#, ivtmp.325
	addq	$32, %rdx	#, ivtmp.319
	movq	-16(%rsp), %r14	# %sfp, ivtmp.346
	movq	%rdi, -32(%rsp)	# ivtmp.325, %sfp
	movq	%r8, %rdi	# ivtmp.344, ivtmp.344
	addq	$32, %rcx	#, ivtmp.321
	addq	$32, %rdi	#, ivtmp.344
	addq	$32, %rsi	#, ivtmp.323
	addq	$32, %r12	#, ivtmp.317
	vmovsd	%xmm0, 0(%r13)	# xi, *_361
	leaq	(%r15,%rax), %r13	#, D.15591
	addq	$32, %rbp	#, ivtmp.327
	addq	$32, %rbx	#, ivtmp.329
	leaq	8(%r15,%rax), %rax	#, D.15591
	vmovsd	0(%r13), %xmm3	# *_379, yr
	movq	%rdi, -8(%rsp)	# ivtmp.344, %sfp
	addq	$32, %r11	#, ivtmp.332
	vmovsd	(%rax), %xmm2	# *_383, yi
	movq	%r14, %rdi	# ivtmp.346, ivtmp.346
	movq	%rdx, -48(%rsp)	# ivtmp.319, %sfp
	addq	$32, %r10	#, ivtmp.334
	vmovsd	(%r14), %xmm1	# MEM[base: _1999, offset: 0B], xr
	addq	$32, %rdi	#, ivtmp.346
	vmovsd	%xmm3, (%r14)	# yr, MEM[base: _1999, offset: 0B]
	addq	$32, %r9	#, ivtmp.336
	vmovsd	8(%r14), %xmm0	# MEM[base: _1999, offset: 8B], xi
	movq	%rcx, -40(%rsp)	# ivtmp.321, %sfp
	addq	$32, -120(%rsp)	#, %sfp
	vmovsd	%xmm2, 8(%r14)	# yi, MEM[base: _1999, offset: 8B]
	addq	$32, -56(%rsp)	#, %sfp
	vmovsd	%xmm1, 0(%r13)	# xr, *_379
	addq	$32, -64(%rsp)	#, %sfp
	vmovsd	%xmm0, (%rax)	# xi, *_383
	movq	-96(%rsp), %rax	# %sfp, ivtmp.313
	movq	%rsi, -24(%rsp)	# ivtmp.323, %sfp
	movq	%rdi, -16(%rsp)	# ivtmp.346, %sfp
	cmpq	%rax, (%rsp)	# ivtmp.313, %sfp
	jne	.L181	#,
.L184:
	addq	$4, 24(%rsp)	#, %sfp
	addq	$4, (%rsp)	#, %sfp
	movl	-112(%rsp), %r11d	# %sfp, nm
	jmp	.L183	#
.L175:
	sarl	%edi	# nh
	movl	%edi, -100(%rsp)	# nh, %sfp
	cmpl	$8, %eax	#, l
	je	.L188	#,
	movl	$4, %r12d	#, nm
	movl	$1, 32(%rsp)	#, %sfp
	jmp	.L187	#
.L188:
	movl	$6, 36(%rsp)	#, %sfp
	movl	$4, %r12d	#, nm
	movl	$8, -80(%rsp)	#, %sfp
	movl	$1, 32(%rsp)	#, %sfp
	jmp	.L186	#
	.cfi_endproc
.LFE59:
	.size	bitrv2, .-bitrv2
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.p2align 4,,15
	.globl	bitrv2conj
	.type	bitrv2conj, @function
bitrv2conj:
.LFB60:
	.cfi_startproc
	movl	%edi, %eax	# n, l
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15	# a, a
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	sarl	$2, %eax	#, l
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$64, %rsp	#,
	.cfi_def_cfa_offset 120
	cmpl	$8, %eax	#, l
	jle	.L195	#,
	movl	$1, %edx	#, m
	.p2align 4,,10
	.p2align 3
.L196:
	sarl	$2, %eax	#, l
	addl	%edx, %edx	# m
	cmpl	$8, %eax	#, l
	jg	.L196	#,
	movl	%edx, 32(%rsp)	# m, %sfp
	leal	0(,%rdx,4), %r12d	#, nm
	sarl	%edi	# nh
	movl	%edi, -100(%rsp)	# nh, %sfp
	cmpl	$8, %eax	#, l
	je	.L197	#,
	testl	%edx, %edx	# m
	jle	.L212	#,
.L207:
	movq	$4, -120(%rsp)	#, %sfp
	movl	32(%rsp), %ebx	# %sfp, m
	vmovsd	.LC13(%rip), %xmm0	#, tmp1138
	movq	$0, -88(%rsp)	#, %sfp
	movl	%ebx, %eax	# m, m
	subl	$1, %eax	#, D.15684
	salq	$2, %rax	#, D.15684
	movq	%rax, -80(%rsp)	# D.15684, %sfp
	movslq	%ebx, %rax	# m,
	leaq	(%rsi,%rax,4), %rax	#, D.15685
	movq	%rax, -112(%rsp)	# D.15685, %sfp
	movslq	%r12d, %rax	# nm, D.15679
	movq	%rax, -72(%rsp)	# D.15679, %sfp
	addq	$1, %rax	#, D.15679
	movq	%rax, -64(%rsp)	# D.15679, %sfp
	movslq	-100(%rsp), %rax	# %sfp, D.15679
	movq	%rax, -56(%rsp)	# D.15679, %sfp
	addq	$1, %rax	#, D.15679
	movq	%rax, -48(%rsp)	# D.15679, %sfp
	.p2align 4,,10
	.p2align 3
.L199:
	movq	-88(%rsp), %rbx	# %sfp, ivtmp.466
	movq	-112(%rsp), %r10	# %sfp, D.15685
	movl	-100(%rsp), %r11d	# %sfp, nh
	movl	(%r10,%rbx), %eax	# MEM[base: _710, index: ivtmp.466_1031, offset: 0B], k1
	addl	%ebx, %eax	# ivtmp.466, k1
	leal	2(%rax), %edx	#, j1
	addl	%r11d, %eax	# nh, k1
	movslq	%edx, %rcx	# j1, D.15679
	addl	%r12d, %edx	# nm, j1
	leaq	0(,%rcx,8), %rsi	#, D.15679
	movslq	%edx, %rdx	# j1, D.15679
	leaq	-8(%r15,%rsi), %rdi	#, D.15680
	addq	%r15, %rsi	# a, D.15680
	vmovsd	(%rdi), %xmm1	# *_819, *_819
	leaq	8(%r15,%rcx,8), %r9	#, D.15680
	movslq	%eax, %rcx	# k1, D.15679
	addl	%r12d, %eax	# nm, k1
	salq	$3, %rcx	#, D.15679
	cltq
	leaq	(%r15,%rcx), %r8	#, D.15680
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_819, D.15683
	vmovsd	%xmm1, (%rdi)	# D.15683, *_819
	vmovsd	(%rsi), %xmm3	# *_824, xr
	leaq	8(%r15,%rcx), %rdi	#, D.15680
	vmovsd	(%r9), %xmm1	# *_829, *_829
	salq	$3, %rax	#, D.15679
	vmovsd	(%rdi), %xmm2	# *_838, *_838
	leaq	24(%r15,%rcx), %rcx	#, D.15680
	vmovsd	(%r8), %xmm4	# *_834, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_829, xi
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_838, yi
	vmovsd	%xmm4, (%rsi)	# yr, *_824
	vmovsd	%xmm2, (%r9)	# yi, *_829
	vmovsd	%xmm3, (%r8)	# xr, *_834
	vmovsd	%xmm1, (%rdi)	# xi, *_838
	vmovsd	(%rcx), %xmm1	# *_849, *_849
	leaq	(%r15,%rax), %rdi	#, D.15680
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_849, D.15683
	vmovsd	%xmm1, (%rcx)	# D.15683, *_849
	leaq	0(,%rdx,8), %rcx	#, D.15679
	leaq	-8(%r15,%rcx), %rsi	#, D.15680
	addq	%r15, %rcx	# a, D.15680
	vmovsd	(%rsi), %xmm1	# *_858, *_858
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_858, D.15683
	vmovsd	%xmm1, (%rsi)	# D.15683, *_858
	leaq	8(%r15,%rdx,8), %rsi	#, D.15680
	vmovsd	(%rcx), %xmm3	# *_862, xr
	leaq	8(%r15,%rax), %rdx	#, D.15680
	vmovsd	(%rsi), %xmm1	# *_866, *_866
	vmovsd	(%rdx), %xmm2	# *_875, *_875
	leaq	24(%r15,%rax), %rax	#, D.15680
	vmovsd	(%rdi), %xmm4	# *_871, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_866, xi
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_875, yi
	vmovsd	%xmm4, (%rcx)	# yr, *_862
	vmovsd	%xmm2, (%rsi)	# yi, *_866
	vmovsd	%xmm3, (%rdi)	# xr, *_871
	vmovsd	%xmm1, (%rdx)	# xi, *_875
	vmovsd	(%rax), %xmm1	# *_884, *_884
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_884, D.15683
	vmovsd	%xmm1, (%rax)	# D.15683, *_884
	cmpq	-80(%rsp), %rbx	# %sfp, ivtmp.466
	je	.L212	#,
	movq	-120(%rsp), %rbx	# %sfp, ivtmp.469
	movq	-56(%rsp), %r13	# %sfp, D.15679
	movq	-72(%rsp), %r14	# %sfp, D.15679
	movslq	(%r10,%rbx), %rdx	# MEM[base: _710, index: ivtmp.469_608, offset: 0B],
	movl	%ebx, -96(%rsp)	# tmp1322, %sfp
	leaq	(%r15,%rdx,8), %r10	#, ivtmp.444
	movq	%rdx, %rax	#,
	addq	-64(%rsp), %rdx	# %sfp, D.15684
	addl	%r12d, %eax	# nm, D.15681
	leaq	(%r15,%rdx,8), %r9	#, ivtmp.448
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r11d, %eax	# nh, D.15681
	leaq	(%rdx,%r13), %rcx	#, D.15679
	addq	-48(%rsp), %rdx	# %sfp, D.15684
	leaq	(%r15,%rcx,8), %rbp	#, ivtmp.449
	leaq	(%r15,%rdx,8), %rbx	#, ivtmp.450
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	%r12d, %eax	# nm, D.15681
	subq	%r14, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %r8	#, ivtmp.451
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	$2, %eax	#, D.15681
	leaq	(%r15,%rdx,8), %rdi	#, ivtmp.454
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r12d, %eax	# nm, D.15681
	addq	%r14, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %rsi	#, ivtmp.456
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	%r11d, %eax	# nh, D.15681
	cltq
	subq	%r13, %rdx	# D.15679, D.15679
	xorl	%r11d, %r11d	# ivtmp.443
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.458
	subq	%r14, %rax	# D.15679, D.15679
	leaq	(%r15,%rax,8), %rdx	#, ivtmp.460
	.p2align 4,,10
	.p2align 3
.L205:
	movl	-96(%rsp), %eax	# %sfp, k1
	addq	$32, %r10	#, ivtmp.444
	addq	$32, %r9	#, ivtmp.448
	addq	$32, %rbp	#, ivtmp.449
	movq	-112(%rsp), %r14	# %sfp, D.15685
	addq	$32, %rbx	#, ivtmp.450
	addq	$32, %r8	#, ivtmp.451
	addq	$32, %rdi	#, ivtmp.454
	vmovsd	-32(%r10), %xmm3	# MEM[base: _233, offset: 0B], xr
	addq	$32, %rsi	#, ivtmp.456
	addq	$32, %rcx	#, ivtmp.458
	addq	$32, %rdx	#, ivtmp.460
	vmovsd	-24(%r10), %xmm1	# MEM[base: _233, offset: 8B], MEM[base: _233, offset: 8B]
	addl	(%r14,%r11), %eax	# MEM[base: _710, index: ivtmp.443_2037, offset: 0B], k1
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _233, offset: 8B], xi
	addq	$4, %r11	#, ivtmp.443
	movslq	%eax, %r13	# k1, D.15679
	addl	%r12d, %eax	# nm, k1
	salq	$3, %r13	#, D.15679
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_627, yr
	vmovsd	0(%r13), %xmm2	# *_631, *_631
	vmovsd	%xmm4, -32(%r10)	# yr, MEM[base: _233, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_631, yi
	vmovsd	%xmm2, -24(%r10)	# yi, MEM[base: _233, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_627
	vmovsd	%xmm1, 0(%r13)	# xi, *_631
	movslq	%eax, %r13	# k1, D.15679
	addl	$2, %eax	#, k1
	vmovsd	-40(%r9), %xmm3	# MEM[base: _185, offset: -8B], xr
	salq	$3, %r13	#, D.15679
	vmovsd	-32(%r9), %xmm1	# MEM[base: _185, offset: 0B], MEM[base: _185, offset: 0B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_651, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _185, offset: 0B], xi
	vmovsd	0(%r13), %xmm2	# *_655, *_655
	vmovsd	%xmm4, -40(%r9)	# yr, MEM[base: _185, offset: -8B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_655, yi
	vmovsd	%xmm2, -32(%r9)	# yi, MEM[base: _185, offset: 0B]
	vmovsd	%xmm3, (%r14)	# xr, *_651
	vmovsd	%xmm1, 0(%r13)	# xi, *_655
	movslq	%eax, %r13	# k1, D.15679
	vmovsd	-32(%rbp), %xmm3	# MEM[base: _136, offset: 0B], xr
	subl	%r12d, %eax	# nm, k1
	salq	$3, %r13	#, D.15679
	vmovsd	-32(%rbx), %xmm1	# MEM[base: _116, offset: 0B], MEM[base: _116, offset: 0B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_675, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _116, offset: 0B], xi
	vmovsd	0(%r13), %xmm2	# *_679, *_679
	vmovsd	%xmm4, -32(%rbp)	# yr, MEM[base: _136, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_679, yi
	vmovsd	%xmm2, -32(%rbx)	# yi, MEM[base: _116, offset: 0B]
	vmovsd	%xmm3, (%r14)	# xr, *_675
	vmovsd	%xmm1, 0(%r13)	# xi, *_679
	movslq	%eax, %r13	# k1, D.15679
	vmovsd	-32(%r8), %xmm3	# MEM[base: _88, offset: 0B], xr
	salq	$3, %r13	#, D.15679
	vmovsd	-24(%r8), %xmm1	# MEM[base: _88, offset: 8B], MEM[base: _88, offset: 8B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_699, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _88, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_703, *_703
	vmovsd	%xmm4, -32(%r8)	# yr, MEM[base: _88, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_703, yi
	vmovsd	%xmm2, -24(%r8)	# yi, MEM[base: _88, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_699
	addl	-100(%rsp), %eax	# %sfp, k1
	vmovsd	%xmm1, 0(%r13)	# xi, *_703
	vmovsd	-16(%rdi), %xmm3	# MEM[base: _39, offset: 16B], xr
	vmovsd	-8(%rdi), %xmm1	# MEM[base: _39, offset: 24B], MEM[base: _39, offset: 24B]
	movslq	%eax, %r13	# k1, D.15679
	addl	%r12d, %eax	# nm, k1
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _39, offset: 24B], xi
	salq	$3, %r13	#, D.15679
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_723, yr
	vmovsd	0(%r13), %xmm2	# *_727, *_727
	vmovsd	%xmm4, -16(%rdi)	# yr, MEM[base: _39, offset: 16B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_727, yi
	vmovsd	%xmm2, -8(%rdi)	# yi, MEM[base: _39, offset: 24B]
	vmovsd	%xmm3, (%r14)	# xr, *_723
	vmovsd	%xmm1, 0(%r13)	# xi, *_727
	movslq	%eax, %r13	# k1, D.15679
	vmovsd	-32(%rsi), %xmm3	# MEM[base: _2149, offset: 0B], xr
	subl	$2, %eax	#, k1
	salq	$3, %r13	#, D.15679
	vmovsd	-24(%rsi), %xmm1	# MEM[base: _2149, offset: 8B], MEM[base: _2149, offset: 8B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_747, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2149, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_751, *_751
	vmovsd	%xmm4, -32(%rsi)	# yr, MEM[base: _2149, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_751, yi
	vmovsd	%xmm2, -24(%rsi)	# yi, MEM[base: _2149, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_747
	vmovsd	%xmm1, 0(%r13)	# xi, *_751
	movslq	%eax, %r13	# k1, D.15679
	subl	%r12d, %eax	# nm, k1
	vmovsd	-32(%rcx), %xmm3	# MEM[base: _2145, offset: 0B], xr
	salq	$3, %r13	#, D.15679
	vmovsd	-24(%rcx), %xmm1	# MEM[base: _2145, offset: 8B], MEM[base: _2145, offset: 8B]
	cltq
	leaq	(%r15,%r13), %r14	#, D.15680
	salq	$3, %rax	#, D.15679
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_771, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2145, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_775, *_775
	vmovsd	%xmm4, -32(%rcx)	# yr, MEM[base: _2145, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_775, yi
	vmovsd	%xmm2, -24(%rcx)	# yi, MEM[base: _2145, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_771
	vmovsd	%xmm1, 0(%r13)	# xi, *_775
	leaq	(%r15,%rax), %r13	#, D.15680
	vmovsd	-24(%rdx), %xmm1	# MEM[base: _2141, offset: 8B], MEM[base: _2141, offset: 8B]
	leaq	8(%r15,%rax), %rax	#, D.15680
	vmovsd	-32(%rdx), %xmm3	# MEM[base: _2141, offset: 0B], xr
	vmovsd	(%rax), %xmm2	# *_799, *_799
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2141, offset: 8B], xi
	vmovsd	0(%r13), %xmm4	# *_795, yr
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_799, yi
	vmovsd	%xmm2, -24(%rdx)	# yi, MEM[base: _2141, offset: 8B]
	vmovsd	%xmm4, -32(%rdx)	# yr, MEM[base: _2141, offset: 0B]
	vmovsd	%xmm3, 0(%r13)	# xr, *_795
	vmovsd	%xmm1, (%rax)	# xi, *_799
	cmpq	-120(%rsp), %r11	# %sfp, ivtmp.443
	jne	.L205	#,
	addq	$4, -88(%rsp)	#, %sfp
	addq	$4, -120(%rsp)	#, %sfp
	jmp	.L199	#
	.p2align 4,,10
	.p2align 3
.L212:
	addq	$64, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L197:
	.cfi_restore_state
	leal	0(,%rdx,8), %ebx	#, D.15681
	movl	%ebx, -80(%rsp)	# D.15681, %sfp
	leal	-2(%r12,%r12), %ebx	#, D.15681
	movl	%ebx, 36(%rsp)	# D.15681, %sfp
	testl	%edx, %edx	# m
	jle	.L212	#,
.L206:
	movl	-100(%rsp), %eax	# %sfp, nh
	movl	%r12d, %ecx	# nm, D.15681
	movl	%r12d, -112(%rsp)	# nm, %sfp
	movl	%r12d, %r11d	# nm, nm
	vmovsd	.LC13(%rip), %xmm0	#, tmp1138
	movq	$4, (%rsp)	#, %sfp
	movl	$0, 20(%rsp)	#, %sfp
	leal	2(%rax), %ebx	#, D.15681
	subl	%eax, %ecx	# nh, D.15681
	movl	%ebx, 40(%rsp)	# D.15681, %sfp
	movl	%eax, %ebx	# nh, nh
	movl	%r12d, %eax	# nm, D.15686
	negl	%eax	# D.15686
	movl	%ecx, 44(%rsp)	# D.15681, %sfp
	addl	%eax, %eax	# tmp980
	movl	%eax, -88(%rsp)	# tmp980, %sfp
	movslq	32(%rsp), %rax	# %sfp, D.15679
	leaq	(%rsi,%rax,4), %rax	#, D.15685
	movq	%rax, 8(%rsp)	# D.15685, %sfp
	movq	%rax, 24(%rsp)	# D.15685, %sfp
	movslq	%r12d, %rax	# nm, D.15679
	movq	%rax, 48(%rsp)	# D.15679, %sfp
	movslq	%ebx, %rax	# nh,
	movq	%rax, 56(%rsp)	# D.15679, %sfp
	.p2align 4,,10
	.p2align 3
.L203:
	movq	24(%rsp), %rdi	# %sfp, ivtmp.433
	movl	20(%rsp), %ebx	# %sfp, k
	movl	-100(%rsp), %r14d	# %sfp, nh
	movl	(%rdi), %eax	# MEM[base: _156, offset: 0B], D.15681
	leal	(%rbx,%rbx), %r10d	#, D.15686
	addl	%r10d, %eax	# D.15686, D.15681
	addl	%eax, %eax	# k1
	leal	2(%rax), %edx	#, j1
	addl	%r14d, %eax	# nh, k1
	movslq	%edx, %rcx	# j1, D.15679
	addl	%r11d, %edx	# nm, j1
	leaq	0(,%rcx,8), %rsi	#, D.15679
	leaq	-8(%r15,%rsi), %rdi	#, D.15680
	addq	%r15, %rsi	# a, D.15680
	vmovsd	(%rdi), %xmm1	# *_435, *_435
	leaq	8(%r15,%rcx,8), %r9	#, D.15680
	movslq	%eax, %rcx	# k1, D.15679
	salq	$3, %rcx	#, D.15679
	addl	-80(%rsp), %eax	# %sfp, k1
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_435, D.15683
	vmovsd	%xmm1, (%rdi)	# D.15683, *_435
	vmovsd	(%rsi), %xmm3	# *_439, xr
	leaq	(%r15,%rcx), %r8	#, D.15680
	vmovsd	(%r9), %xmm1	# *_443, *_443
	leaq	8(%r15,%rcx), %rdi	#, D.15680
	vmovsd	(%r8), %xmm4	# *_448, yr
	vmovsd	(%rdi), %xmm2	# *_452, *_452
	leaq	24(%r15,%rcx), %rcx	#, D.15680
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_443, xi
	vmovsd	%xmm4, (%rsi)	# yr, *_439
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_452, yi
	vmovsd	%xmm2, (%r9)	# yi, *_443
	vmovsd	%xmm3, (%r8)	# xr, *_448
	vmovsd	%xmm1, (%rdi)	# xi, *_452
	vmovsd	(%rcx), %xmm1	# *_461, *_461
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_461, D.15683
	vmovsd	%xmm1, (%rcx)	# D.15683, *_461
	movslq	%edx, %rcx	# j1, D.15679
	addl	%r11d, %edx	# nm, j1
	salq	$3, %rcx	#, D.15679
	leaq	(%r15,%rcx), %r8	#, D.15680
	leaq	8(%r15,%rcx), %rdi	#, D.15680
	movslq	%eax, %rcx	# k1, D.15679
	vmovsd	(%r8), %xmm3	# *_470, xr
	subl	%r11d, %eax	# nm, k1
	salq	$3, %rcx	#, D.15679
	vmovsd	(%rdi), %xmm1	# *_474, *_474
	leaq	(%r15,%rcx), %rsi	#, D.15680
	leaq	8(%r15,%rcx), %rcx	#, D.15680
	vmovsd	(%rsi), %xmm4	# *_479, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_474, xi
	vmovsd	(%rcx), %xmm2	# *_483, *_483
	vmovsd	%xmm4, (%r8)	# yr, *_470
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_483, yi
	vmovsd	%xmm2, (%rdi)	# yi, *_474
	vmovsd	%xmm3, (%rsi)	# xr, *_479
	vmovsd	%xmm1, (%rcx)	# xi, *_483
	movslq	%edx, %rcx	# j1, D.15679
	subl	$2, %edx	#, j1
	salq	$3, %rcx	#, D.15679
	leaq	(%r15,%rcx), %r8	#, D.15680
	leaq	8(%r15,%rcx), %rdi	#, D.15680
	movslq	%eax, %rcx	# k1, D.15679
	vmovsd	(%r8), %xmm3	# *_494, xr
	subl	%r14d, %eax	# nh, k1
	salq	$3, %rcx	#, D.15679
	vmovsd	(%rdi), %xmm1	# *_498, *_498
	leaq	(%r15,%rcx), %rsi	#, D.15680
	leaq	8(%r15,%rcx), %rcx	#, D.15680
	vmovsd	(%rsi), %xmm4	# *_503, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_498, xi
	vmovsd	(%rcx), %xmm2	# *_507, *_507
	vmovsd	%xmm4, (%r8)	# yr, *_494
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_507, yi
	vmovsd	%xmm2, (%rdi)	# yi, *_498
	vmovsd	%xmm3, (%rsi)	# xr, *_503
	vmovsd	%xmm1, (%rcx)	# xi, *_507
	movslq	%edx, %rcx	# j1, D.15679
	salq	$3, %rcx	#, D.15679
	leaq	(%r15,%rcx), %r8	#, D.15680
	leaq	8(%r15,%rcx), %rdi	#, D.15680
	movslq	%eax, %rcx	# k1, D.15679
	vmovsd	(%r8), %xmm3	# *_518, xr
	salq	$3, %rcx	#, D.15679
	vmovsd	(%rdi), %xmm1	# *_522, *_522
	leaq	(%r15,%rcx), %rsi	#, D.15680
	leaq	8(%r15,%rcx), %rcx	#, D.15680
	vmovsd	(%rsi), %xmm4	# *_527, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_522, xi
	vmovsd	(%rcx), %xmm2	# *_531, *_531
	vmovsd	%xmm4, (%r8)	# yr, *_518
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_531, yi
	vmovsd	%xmm2, (%rdi)	# yi, *_522
	vmovsd	%xmm3, (%rsi)	# xr, *_527
	movl	40(%rsp), %esi	# %sfp, D.15681
	vmovsd	%xmm1, (%rcx)	# xi, *_531
	addl	%esi, %edx	# D.15681, j1
	addl	%esi, %eax	# D.15681, k1
	movslq	%edx, %rcx	# j1, D.15679
	addl	44(%rsp), %edx	# %sfp, j1
	salq	$3, %rcx	#, D.15679
	leaq	8(%r15,%rcx), %rdi	#, D.15680
	leaq	(%r15,%rcx), %r8	#, D.15680
	movslq	%eax, %rcx	# k1, D.15679
	vmovsd	(%rdi), %xmm1	# *_547, *_547
	salq	$3, %rcx	#, D.15679
	vmovsd	(%r8), %xmm3	# *_543, xr
	movslq	%edx, %rdx	# j1, D.15679
	leaq	(%r15,%rcx), %rsi	#, D.15680
	addl	36(%rsp), %eax	# %sfp, k1
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_547, xi
	vmovsd	(%rsi), %xmm4	# *_552, yr
	leaq	8(%r15,%rcx), %rcx	#, D.15680
	vmovsd	(%rcx), %xmm2	# *_556, *_556
	vmovsd	%xmm4, (%r8)	# yr, *_543
	cltq
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_556, yi
	vmovsd	%xmm2, (%rdi)	# yi, *_547
	salq	$3, %rax	#, D.15679
	vmovsd	%xmm3, (%rsi)	# xr, *_552
	leaq	(%r15,%rax), %rdi	#, D.15680
	vmovsd	%xmm1, (%rcx)	# xi, *_556
	leaq	0(,%rdx,8), %rcx	#, D.15679
	leaq	-8(%r15,%rcx), %rsi	#, D.15680
	addq	%r15, %rcx	# a, D.15680
	vmovsd	(%rsi), %xmm1	# *_571, *_571
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_571, D.15683
	vmovsd	%xmm1, (%rsi)	# D.15683, *_571
	leaq	8(%r15,%rdx,8), %rsi	#, D.15680
	vmovsd	(%rcx), %xmm3	# *_575, xr
	leaq	8(%r15,%rax), %rdx	#, D.15680
	vmovsd	(%rsi), %xmm1	# *_579, *_579
	vmovsd	(%rdx), %xmm2	# *_588, *_588
	leaq	24(%r15,%rax), %rax	#, D.15680
	vmovsd	(%rdi), %xmm4	# *_584, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_579, xi
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_588, yi
	vmovsd	%xmm4, (%rcx)	# yr, *_575
	vmovsd	%xmm2, (%rsi)	# yi, *_579
	vmovsd	%xmm3, (%rdi)	# xr, *_584
	vmovsd	%xmm1, (%rdx)	# xi, *_588
	vmovsd	(%rax), %xmm1	# *_597, *_597
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, *_597, D.15683
	vmovsd	%xmm1, (%rax)	# D.15683, *_597
	movl	%ebx, %eax	# k, k
	addl	$1, %eax	#, k
	movl	%eax, 20(%rsp)	# k, %sfp
	cmpl	32(%rsp), %eax	# %sfp, k
	jge	.L212	#,
	movl	20(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L204	#,
	leal	2(%r10), %eax	#, D.15681
	movl	-112(%rsp), %r13d	# %sfp, nm
	movq	$0, -96(%rsp)	#, %sfp
	movl	%eax, 16(%rsp)	# D.15681, %sfp
	movq	24(%rsp), %rax	# %sfp, ivtmp.433
	movq	56(%rsp), %r14	# %sfp, D.15679
	movl	4(%rax), %eax	# MEM[base: _156, offset: 4B], MEM[base: _156, offset: 4B]
	addl	%eax, %eax	# D.15681
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r13d, %eax	# nm, D.15681
	leaq	(%r15,%rdx,8), %rbx	#, ivtmp.396
	movq	%rbx, -72(%rsp)	# ivtmp.396, %sfp
	movq	48(%rsp), %rbx	# %sfp, D.15679
	addq	%rbx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.399
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r13d, %eax	# nm, D.15681
	addq	%rbx, %rdx	# D.15679, D.15679
	movq	%rcx, -48(%rsp)	# ivtmp.399, %sfp
	movq	%rbx, %rcx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %r12	#, ivtmp.401
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r13d, %eax	# nm, D.15681
	addq	%rbx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %rsi	#, ivtmp.403
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	-100(%rsp), %eax	# %sfp, D.15681
	addq	%r14, %rdx	# D.15679, D.15679
	movq	%rsi, -40(%rsp)	# ivtmp.403, %sfp
	leaq	(%r15,%rdx,8), %rdx	#, ivtmp.405
	movq	%rdx, -24(%rsp)	# ivtmp.405, %sfp
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	%r13d, %eax	# nm, D.15681
	subq	%rbx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %rdx	#, ivtmp.407
	movq	%rdx, -32(%rsp)	# ivtmp.407, %sfp
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	%r13d, %eax	# nm, D.15681
	subq	%rbx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %rbp	#, ivtmp.409
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	%r13d, %eax	# nm, D.15681
	subq	%rbx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %rbx	#, ivtmp.411
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	$2, %eax	#, D.15681
	leaq	(%r15,%rdx,8), %r11	#, ivtmp.414
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r13d, %eax	# nm, D.15681
	addq	%rcx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %r10	#, ivtmp.416
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r13d, %eax	# nm, D.15681
	addq	%rcx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %r9	#, ivtmp.418
	movslq	%eax, %rdx	# D.15681, D.15679
	addl	%r13d, %eax	# nm, D.15681
	addq	%rcx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %r8	#, ivtmp.420
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	-100(%rsp), %eax	# %sfp, D.15681
	subq	%r14, %rdx	# D.15679, D.15679
	movq	%rcx, %r14	# D.15679, D.15679
	movq	%r8, -120(%rsp)	# ivtmp.420, %sfp
	leaq	(%r15,%rdx,8), %rdi	#, ivtmp.422
	movq	%rdi, -56(%rsp)	# ivtmp.422, %sfp
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	%r13d, %eax	# nm, D.15681
	subq	%rcx, %rdx	# D.15679, D.15679
	leaq	(%r15,%rdx,8), %rsi	#, ivtmp.424
	movslq	%eax, %rdx	# D.15681, D.15679
	subl	%r13d, %eax	# nm, D.15681
	cltq
	subq	%rcx, %rdx	# D.15679, D.15679
	movq	%rsi, -64(%rsp)	# ivtmp.424, %sfp
	leaq	(%r15,%rdx,8), %rcx	#, ivtmp.426
	subq	%r14, %rax	# D.15679, D.15679
	leaq	(%r15,%rax,8), %rdx	#, ivtmp.428
	movq	%rcx, -8(%rsp)	# ivtmp.426, %sfp
	movq	-40(%rsp), %rcx	# %sfp, ivtmp.403
	movq	%rdx, -16(%rsp)	# ivtmp.428, %sfp
	movq	-48(%rsp), %rdx	# %sfp, ivtmp.399
	.p2align 4,,10
	.p2align 3
.L201:
	movq	8(%rsp), %rsi	# %sfp, D.15685
	movq	-96(%rsp), %rdi	# %sfp, ivtmp.395
	movl	16(%rsp), %eax	# %sfp, D.15681
	movq	-72(%rsp), %r14	# %sfp, ivtmp.396
	addl	(%rsi,%rdi), %eax	# MEM[base: _84, index: ivtmp.395_2459, offset: 0B], D.15681
	vmovsd	(%r14), %xmm3	# MEM[base: _2231, offset: 0B], xr
	vmovsd	8(%r14), %xmm1	# MEM[base: _2231, offset: 8B], MEM[base: _2231, offset: 8B]
	addl	%eax, %eax	# k1
	movslq	%eax, %r13	# k1, D.15679
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2231, offset: 8B], xi
	leaq	(%r15,%r13,8), %rsi	#, D.15680
	leaq	8(%r15,%r13,8), %r13	#, D.15680
	vmovsd	(%rsi), %xmm4	# *_48, yr
	vmovsd	0(%r13), %xmm2	# *_52, *_52
	vmovsd	%xmm4, (%r14)	# yr, MEM[base: _2231, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_52, yi
	vmovsd	%xmm2, 8(%r14)	# yi, MEM[base: _2231, offset: 8B]
	vmovsd	%xmm3, (%rsi)	# xr, *_48
	movl	-80(%rsp), %esi	# %sfp, D.15681
	vmovsd	%xmm1, 0(%r13)	# xi, *_52
	vmovsd	(%rdx), %xmm3	# MEM[base: _2227, offset: 0B], xr
	vmovsd	8(%rdx), %xmm1	# MEM[base: _2227, offset: 8B], MEM[base: _2227, offset: 8B]
	addl	%esi, %eax	# D.15681, k1
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2227, offset: 8B], xi
	movslq	%eax, %r13	# k1, D.15679
	subl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15679
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_73, yr
	vmovsd	0(%r13), %xmm2	# *_77, *_77
	vmovsd	%xmm4, (%rdx)	# yr, MEM[base: _2227, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_77, yi
	vmovsd	%xmm2, 8(%rdx)	# yi, MEM[base: _2227, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_73
	vmovsd	%xmm1, 0(%r13)	# xi, *_77
	movslq	%eax, %r13	# k1, D.15679
	addl	%esi, %eax	# D.15681, k1
	vmovsd	(%r12), %xmm3	# MEM[base: _2211, offset: 0B], xr
	salq	$3, %r13	#, D.15679
	vmovsd	8(%r12), %xmm1	# MEM[base: _2211, offset: 8B], MEM[base: _2211, offset: 8B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_97, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2211, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_101, *_101
	vmovsd	%xmm4, (%r12)	# yr, MEM[base: _2211, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_101, yi
	vmovsd	%xmm2, 8(%r12)	# yi, MEM[base: _2211, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_97
	vmovsd	%xmm1, 0(%r13)	# xi, *_101
	movslq	%eax, %r13	# k1, D.15679
	vmovsd	(%rcx), %xmm3	# MEM[base: _2207, offset: 0B], xr
	addl	$2, %eax	#, k1
	salq	$3, %r13	#, D.15679
	vmovsd	8(%rcx), %xmm1	# MEM[base: _2207, offset: 8B], MEM[base: _2207, offset: 8B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_121, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2207, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_125, *_125
	movq	-24(%rsp), %rsi	# %sfp, ivtmp.405
	vmovsd	%xmm4, (%rcx)	# yr, MEM[base: _2207, offset: 0B]
	movl	-88(%rsp), %r8d	# %sfp, tmp980
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_125, yi
	vmovsd	%xmm2, 8(%rcx)	# yi, MEM[base: _2207, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_121
	movq	-32(%rsp), %rdi	# %sfp, ivtmp.407
	vmovsd	%xmm1, 0(%r13)	# xi, *_125
	movslq	%eax, %r13	# k1, D.15679
	salq	$3, %r13	#, D.15679
	vmovsd	(%rsi), %xmm3	# MEM[base: _2203, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15680
	vmovsd	8(%rsi), %xmm1	# MEM[base: _2203, offset: 8B], MEM[base: _2203, offset: 8B]
	addl	%r8d, %eax	# tmp980, k1
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_145, yr
	vmovsd	0(%r13), %xmm2	# *_149, *_149
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2203, offset: 8B], xi
	vmovsd	%xmm4, (%rsi)	# yr, MEM[base: _2203, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_149, yi
	vmovsd	%xmm2, 8(%rsi)	# yi, MEM[base: _2203, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_145
	vmovsd	%xmm1, 0(%r13)	# xi, *_149
	movslq	%eax, %r13	# k1, D.15679
	addl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15679
	vmovsd	(%rdi), %xmm3	# MEM[base: _2199, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15680
	vmovsd	8(%rdi), %xmm1	# MEM[base: _2199, offset: 8B], MEM[base: _2199, offset: 8B]
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_170, yr
	vmovsd	0(%r13), %xmm2	# *_174, *_174
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2199, offset: 8B], xi
	vmovsd	%xmm4, (%rdi)	# yr, MEM[base: _2199, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_174, yi
	vmovsd	%xmm2, 8(%rdi)	# yi, MEM[base: _2199, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_170
	vmovsd	%xmm1, 0(%r13)	# xi, *_174
	movslq	%eax, %r13	# k1, D.15679
	vmovsd	0(%rbp), %xmm3	# MEM[base: _2195, offset: 0B], xr
	addl	%r8d, %eax	# tmp980, k1
	salq	$3, %r13	#, D.15679
	vmovsd	8(%rbp), %xmm1	# MEM[base: _2195, offset: 8B], MEM[base: _2195, offset: 8B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_194, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2195, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_198, *_198
	vmovsd	%xmm4, 0(%rbp)	# yr, MEM[base: _2195, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_198, yi
	vmovsd	%xmm2, 8(%rbp)	# yi, MEM[base: _2195, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_194
	vmovsd	%xmm1, 0(%r13)	# xi, *_198
	movslq	%eax, %r13	# k1, D.15679
	addl	-100(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15679
	vmovsd	(%rbx), %xmm3	# MEM[base: _2191, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15680
	vmovsd	8(%rbx), %xmm1	# MEM[base: _2191, offset: 8B], MEM[base: _2191, offset: 8B]
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_218, yr
	vmovsd	0(%r13), %xmm2	# *_222, *_222
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2191, offset: 8B], xi
	vmovsd	%xmm4, (%rbx)	# yr, MEM[base: _2191, offset: 0B]
	movl	-80(%rsp), %r8d	# %sfp, D.15681
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_222, yi
	vmovsd	%xmm2, 8(%rbx)	# yi, MEM[base: _2191, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_218
	vmovsd	%xmm1, 0(%r13)	# xi, *_222
	movslq	%eax, %r13	# k1, D.15679
	vmovsd	16(%r11), %xmm3	# MEM[base: _2187, offset: 16B], xr
	salq	$3, %r13	#, D.15679
	vmovsd	24(%r11), %xmm1	# MEM[base: _2187, offset: 24B], MEM[base: _2187, offset: 24B]
	addl	%r8d, %eax	# D.15681, k1
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_242, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2187, offset: 24B], xi
	vmovsd	0(%r13), %xmm2	# *_246, *_246
	vmovsd	%xmm4, 16(%r11)	# yr, MEM[base: _2187, offset: 16B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_246, yi
	vmovsd	%xmm2, 24(%r11)	# yi, MEM[base: _2187, offset: 24B]
	vmovsd	%xmm3, (%r14)	# xr, *_242
	vmovsd	%xmm1, 0(%r13)	# xi, *_246
	movslq	%eax, %r13	# k1, D.15679
	subl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15679
	vmovsd	(%r10), %xmm3	# MEM[base: _2183, offset: 0B], xr
	leaq	(%r15,%r13), %r14	#, D.15680
	vmovsd	8(%r10), %xmm1	# MEM[base: _2183, offset: 8B], MEM[base: _2183, offset: 8B]
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_266, yr
	vmovsd	0(%r13), %xmm2	# *_270, *_270
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2183, offset: 8B], xi
	vmovsd	%xmm4, (%r10)	# yr, MEM[base: _2183, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_270, yi
	vmovsd	%xmm2, 8(%r10)	# yi, MEM[base: _2183, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_266
	vmovsd	%xmm1, 0(%r13)	# xi, *_270
	movslq	%eax, %r13	# k1, D.15679
	addl	%r8d, %eax	# D.15681, k1
	vmovsd	(%r9), %xmm3	# MEM[base: _2179, offset: 0B], xr
	salq	$3, %r13	#, D.15679
	vmovsd	8(%r9), %xmm1	# MEM[base: _2179, offset: 8B], MEM[base: _2179, offset: 8B]
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_290, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2179, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_294, *_294
	vmovsd	%xmm4, (%r9)	# yr, MEM[base: _2179, offset: 0B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_294, yi
	vmovsd	%xmm2, 8(%r9)	# yi, MEM[base: _2179, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_290
	movq	-120(%rsp), %r8	# %sfp, ivtmp.420
	vmovsd	%xmm1, 0(%r13)	# xi, *_294
	movslq	%eax, %r13	# k1, D.15679
	subl	$2, %eax	#, k1
	salq	$3, %r13	#, D.15679
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_314, yr
	vmovsd	0(%r13), %xmm2	# *_318, *_318
	vmovsd	(%r8), %xmm3	# MEM[base: _2175, offset: 0B], xr
	vmovsd	%xmm4, (%r8)	# yr, MEM[base: _2175, offset: 0B]
	vmovsd	8(%r8), %xmm1	# MEM[base: _2175, offset: 8B], MEM[base: _2175, offset: 8B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_318, yi
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2175, offset: 8B]
	movq	-56(%rsp), %r8	# %sfp, ivtmp.422
	vmovsd	%xmm3, (%r14)	# xr, *_314
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2175, offset: 8B], xi
	vmovsd	%xmm1, 0(%r13)	# xi, *_318
	movslq	%eax, %r13	# k1, D.15679
	addl	-88(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15679
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_338, yr
	vmovsd	0(%r13), %xmm2	# *_342, *_342
	vmovsd	(%r8), %xmm3	# MEM[base: _2171, offset: 0B], xr
	vmovsd	%xmm4, (%r8)	# yr, MEM[base: _2171, offset: 0B]
	vmovsd	8(%r8), %xmm1	# MEM[base: _2171, offset: 8B], MEM[base: _2171, offset: 8B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_342, yi
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2171, offset: 8B]
	vmovsd	%xmm3, (%r14)	# xr, *_338
	movq	-64(%rsp), %r8	# %sfp, ivtmp.424
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2171, offset: 8B], xi
	vmovsd	%xmm1, 0(%r13)	# xi, *_342
	movslq	%eax, %r13	# k1, D.15679
	addl	-112(%rsp), %eax	# %sfp, k1
	salq	$3, %r13	#, D.15679
	leaq	(%r15,%r13), %r14	#, D.15680
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	(%r14), %xmm4	# *_362, yr
	vmovsd	0(%r13), %xmm2	# *_366, *_366
	vmovsd	(%r8), %xmm3	# MEM[base: _2167, offset: 0B], xr
	vmovsd	%xmm4, (%r8)	# yr, MEM[base: _2167, offset: 0B]
	vmovsd	8(%r8), %xmm1	# MEM[base: _2167, offset: 8B], MEM[base: _2167, offset: 8B]
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_366, yi
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2167, offset: 8B]
	movq	-8(%rsp), %r8	# %sfp, ivtmp.426
	vmovsd	%xmm3, (%r14)	# xr, *_362
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2167, offset: 8B], xi
	vmovsd	%xmm1, 0(%r13)	# xi, *_366
	movslq	%eax, %r13	# k1, D.15679
	salq	$3, %r13	#, D.15679
	leaq	(%r15,%r13), %r14	#, D.15680
	vmovsd	(%r8), %xmm3	# MEM[base: _2163, offset: 0B], xr
	leaq	8(%r15,%r13), %r13	#, D.15680
	vmovsd	8(%r8), %xmm1	# MEM[base: _2163, offset: 8B], MEM[base: _2163, offset: 8B]
	vmovsd	(%r14), %xmm4	# *_386, yr
	addl	-88(%rsp), %eax	# %sfp, k1
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2163, offset: 8B], xi
	vmovsd	0(%r13), %xmm2	# *_390, *_390
	vmovsd	%xmm4, (%r8)	# yr, MEM[base: _2163, offset: 0B]
	addq	$4, -96(%rsp)	#, %sfp
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_390, yi
	vmovsd	%xmm2, 8(%r8)	# yi, MEM[base: _2163, offset: 8B]
	cltq
	vmovsd	%xmm3, (%r14)	# xr, *_386
	movq	-16(%rsp), %r14	# %sfp, ivtmp.428
	salq	$3, %rax	#, D.15679
	addq	$32, -72(%rsp)	#, %sfp
	addq	$32, %rdi	#, ivtmp.407
	vmovsd	%xmm1, 0(%r13)	# xi, *_390
	addq	$32, %rdx	#, ivtmp.399
	movq	%rdi, -32(%rsp)	# ivtmp.407, %sfp
	movq	%r8, %rdi	# ivtmp.426, ivtmp.426
	addq	$32, %rcx	#, ivtmp.403
	leaq	(%r15,%rax), %r13	#, D.15680
	addq	$32, %rdi	#, ivtmp.426
	addq	$32, %rsi	#, ivtmp.405
	leaq	8(%r15,%rax), %rax	#, D.15680
	vmovsd	8(%r14), %xmm1	# MEM[base: _2159, offset: 8B], MEM[base: _2159, offset: 8B]
	movq	%rdi, -8(%rsp)	# ivtmp.426, %sfp
	movq	%r14, %rdi	# ivtmp.428, ivtmp.428
	vmovsd	(%rax), %xmm2	# *_414, *_414
	addq	$32, %rdi	#, ivtmp.428
	addq	$32, %r12	#, ivtmp.401
	addq	$32, %rbp	#, ivtmp.409
	vmovsd	0(%r13), %xmm4	# *_410, yr
	vxorpd	%xmm0, %xmm1, %xmm1	# tmp1138, MEM[base: _2159, offset: 8B], xi
	movq	%rdx, -48(%rsp)	# ivtmp.399, %sfp
	addq	$32, %rbx	#, ivtmp.411
	vxorpd	%xmm0, %xmm2, %xmm2	# tmp1138, *_414, yi
	vmovsd	(%r14), %xmm3	# MEM[base: _2159, offset: 0B], xr
	vmovsd	%xmm2, 8(%r14)	# yi, MEM[base: _2159, offset: 8B]
	addq	$32, %r11	#, ivtmp.414
	vmovsd	%xmm4, (%r14)	# yr, MEM[base: _2159, offset: 0B]
	addq	$32, %r10	#, ivtmp.416
	addq	$32, %r9	#, ivtmp.418
	addq	$32, -120(%rsp)	#, %sfp
	vmovsd	%xmm3, 0(%r13)	# xr, *_410
	addq	$32, -56(%rsp)	#, %sfp
	vmovsd	%xmm1, (%rax)	# xi, *_414
	addq	$32, -64(%rsp)	#, %sfp
	movq	-96(%rsp), %rax	# %sfp, ivtmp.395
	movq	%rcx, -40(%rsp)	# ivtmp.403, %sfp
	movq	%rsi, -24(%rsp)	# ivtmp.405, %sfp
	movq	%rdi, -16(%rsp)	# ivtmp.428, %sfp
	cmpq	%rax, (%rsp)	# ivtmp.395, %sfp
	jne	.L201	#,
.L204:
	addq	$4, 24(%rsp)	#, %sfp
	addq	$4, (%rsp)	#, %sfp
	movl	-112(%rsp), %r11d	# %sfp, nm
	jmp	.L203	#
.L195:
	sarl	%edi	# nh
	movl	%edi, -100(%rsp)	# nh, %sfp
	cmpl	$8, %eax	#, l
	je	.L208	#,
	movl	$4, %r12d	#, nm
	movl	$1, 32(%rsp)	#, %sfp
	jmp	.L207	#
.L208:
	movl	$6, 36(%rsp)	#, %sfp
	movl	$4, %r12d	#, nm
	movl	$8, -80(%rsp)	#, %sfp
	movl	$1, 32(%rsp)	#, %sfp
	jmp	.L206	#
	.cfi_endproc
.LFE60:
	.size	bitrv2conj, .-bitrv2conj
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.text.unlikely
.LCOLDB25:
	.text
.LHOTB25:
	.p2align 4,,15
	.globl	bitrv216
	.type	bitrv216, @function
bitrv216:
.LFB61:
	.cfi_startproc
	vmovsd	32(%rdi), %xmm11	# MEM[(double *)a_2(D) + 32B], x2r
	vmovsd	40(%rdi), %xmm10	# MEM[(double *)a_2(D) + 40B], x2i
	vmovsd	64(%rdi), %xmm13	# MEM[(double *)a_2(D) + 64B], x4r
	vmovsd	%xmm11, 64(%rdi)	# x2r, MEM[(double *)a_2(D) + 64B]
	vmovsd	72(%rdi), %xmm12	# MEM[(double *)a_2(D) + 72B], x4i
	vmovsd	%xmm10, 72(%rdi)	# x2i, MEM[(double *)a_2(D) + 72B]
	vmovsd	136(%rdi), %xmm14	# MEM[(double *)a_2(D) + 136B], x8i
	vmovsd	%xmm13, 32(%rdi)	# x4r, MEM[(double *)a_2(D) + 32B]
	vmovsd	128(%rdi), %xmm15	# MEM[(double *)a_2(D) + 128B], MEM[(double *)a_2(D) + 128B]
	vmovsd	%xmm12, 40(%rdi)	# x4i, MEM[(double *)a_2(D) + 40B]
	vmovsd	80(%rdi), %xmm7	# MEM[(double *)a_2(D) + 80B], x5r
	vmovsd	88(%rdi), %xmm6	# MEM[(double *)a_2(D) + 88B], x5i
	vmovsd	16(%rdi), %xmm9	# MEM[(double *)a_2(D) + 16B], x1r
	vmovsd	%xmm15, 16(%rdi)	# MEM[(double *)a_2(D) + 128B], MEM[(double *)a_2(D) + 16B]
	vmovsd	24(%rdi), %xmm8	# MEM[(double *)a_2(D) + 24B], x1i
	vmovsd	%xmm14, 24(%rdi)	# x8i, MEM[(double *)a_2(D) + 24B]
	vmovsd	192(%rdi), %xmm12	# MEM[(double *)a_2(D) + 192B], tmp109
	vmovsd	200(%rdi), %xmm13	# MEM[(double *)a_2(D) + 200B], tmp110
	vmovsd	160(%rdi), %xmm10	# MEM[(double *)a_2(D) + 160B], tmp111
	vmovsd	168(%rdi), %xmm11	# MEM[(double *)a_2(D) + 168B], tmp112
	vmovsd	224(%rdi), %xmm14	# MEM[(double *)a_2(D) + 224B], tmp113
	vmovsd	%xmm10, 80(%rdi)	# tmp111, MEM[(double *)a_2(D) + 80B]
	vmovsd	232(%rdi), %xmm15	# MEM[(double *)a_2(D) + 232B], tmp114
	vmovsd	%xmm11, 88(%rdi)	# tmp112, MEM[(double *)a_2(D) + 88B]
	vmovsd	48(%rdi), %xmm5	# MEM[(double *)a_2(D) + 48B], x3r
	vmovsd	%xmm12, 48(%rdi)	# tmp109, MEM[(double *)a_2(D) + 48B]
	vmovsd	56(%rdi), %xmm4	# MEM[(double *)a_2(D) + 56B], x3i
	vmovsd	%xmm13, 56(%rdi)	# tmp110, MEM[(double *)a_2(D) + 56B]
	vmovsd	112(%rdi), %xmm1	# MEM[(double *)a_2(D) + 112B], x7r
	vmovsd	%xmm14, 112(%rdi)	# tmp113, MEM[(double *)a_2(D) + 112B]
	vmovsd	120(%rdi), %xmm0	# MEM[(double *)a_2(D) + 120B], x7i
	vmovsd	176(%rdi), %xmm3	# MEM[(double *)a_2(D) + 176B], x11r
	vmovsd	184(%rdi), %xmm2	# MEM[(double *)a_2(D) + 184B], x11i
	vmovsd	%xmm15, 120(%rdi)	# tmp114, MEM[(double *)a_2(D) + 120B]
	vmovsd	%xmm7, 160(%rdi)	# x5r, MEM[(double *)a_2(D) + 160B]
	vmovsd	216(%rdi), %xmm7	# MEM[(double *)a_2(D) + 216B], tmp116
	vmovsd	%xmm6, 168(%rdi)	# x5i, MEM[(double *)a_2(D) + 168B]
	vmovsd	208(%rdi), %xmm6	# MEM[(double *)a_2(D) + 208B], tmp115
	vmovsd	%xmm9, 128(%rdi)	# x1r, MEM[(double *)a_2(D) + 128B]
	vmovsd	%xmm8, 136(%rdi)	# x1i, MEM[(double *)a_2(D) + 136B]
	vmovsd	%xmm6, 176(%rdi)	# tmp115, MEM[(double *)a_2(D) + 176B]
	vmovsd	%xmm7, 184(%rdi)	# tmp116, MEM[(double *)a_2(D) + 184B]
	vmovsd	%xmm5, 192(%rdi)	# x3r, MEM[(double *)a_2(D) + 192B]
	vmovsd	%xmm4, 200(%rdi)	# x3i, MEM[(double *)a_2(D) + 200B]
	vmovsd	%xmm3, 208(%rdi)	# x11r, MEM[(double *)a_2(D) + 208B]
	vmovsd	%xmm2, 216(%rdi)	# x11i, MEM[(double *)a_2(D) + 216B]
	vmovsd	%xmm1, 224(%rdi)	# x7r, MEM[(double *)a_2(D) + 224B]
	vmovsd	%xmm0, 232(%rdi)	# x7i, MEM[(double *)a_2(D) + 232B]
	ret
	.cfi_endproc
.LFE61:
	.size	bitrv216, .-bitrv216
	.section	.text.unlikely
.LCOLDE25:
	.text
.LHOTE25:
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4,,15
	.globl	bitrv216neg
	.type	bitrv216neg, @function
bitrv216neg:
.LFB62:
	.cfi_startproc
	vmovsd	240(%rdi), %xmm2	# MEM[(double *)a_2(D) + 240B], tmp117
	vmovsd	16(%rdi), %xmm13	# MEM[(double *)a_2(D) + 16B], x1r
	vmovsd	%xmm2, 16(%rdi)	# tmp117, MEM[(double *)a_2(D) + 16B]
	vmovsd	248(%rdi), %xmm2	# MEM[(double *)a_2(D) + 248B], tmp118
	vmovsd	24(%rdi), %xmm12	# MEM[(double *)a_2(D) + 24B], x1i
	vmovsd	%xmm2, 24(%rdi)	# tmp118, MEM[(double *)a_2(D) + 24B]
	vmovsd	112(%rdi), %xmm2	# MEM[(double *)a_2(D) + 112B], tmp119
	vmovsd	32(%rdi), %xmm7	# MEM[(double *)a_2(D) + 32B], x2r
	vmovsd	%xmm2, 32(%rdi)	# tmp119, MEM[(double *)a_2(D) + 32B]
	vmovsd	120(%rdi), %xmm2	# MEM[(double *)a_2(D) + 120B], tmp120
	vmovsd	48(%rdi), %xmm0	# MEM[(double *)a_2(D) + 48B], x3r
	vmovsd	56(%rdi), %xmm1	# MEM[(double *)a_2(D) + 56B], x3i
	vmovsd	40(%rdi), %xmm6	# MEM[(double *)a_2(D) + 40B], x2i
	vmovsd	%xmm2, 40(%rdi)	# tmp120, MEM[(double *)a_2(D) + 40B]
	vmovsd	176(%rdi), %xmm2	# MEM[(double *)a_2(D) + 176B], tmp121
	vmovsd	%xmm1, -8(%rsp)	# x3i, %sfp
	vmovsd	64(%rdi), %xmm3	# MEM[(double *)a_2(D) + 64B], x4r
	vmovsd	%xmm0, 64(%rdi)	# x3r, MEM[(double *)a_2(D) + 64B]
	vmovsd	%xmm2, 48(%rdi)	# tmp121, MEM[(double *)a_2(D) + 48B]
	vmovsd	-8(%rsp), %xmm0	# %sfp, x3i
	vmovsd	184(%rdi), %xmm2	# MEM[(double *)a_2(D) + 184B], tmp122
	movq	72(%rdi), %rax	# MEM[(double *)a_2(D) + 72B], x4i
	vmovsd	80(%rdi), %xmm15	# MEM[(double *)a_2(D) + 80B], x5r
	vmovsd	%xmm2, 56(%rdi)	# tmp122, MEM[(double *)a_2(D) + 56B]
	vmovsd	88(%rdi), %xmm14	# MEM[(double *)a_2(D) + 88B], x5i
	vmovsd	96(%rdi), %xmm11	# MEM[(double *)a_2(D) + 96B], x6r
	vmovsd	104(%rdi), %xmm10	# MEM[(double *)a_2(D) + 104B], x6i
	vmovsd	128(%rdi), %xmm1	# MEM[(double *)a_2(D) + 128B], x8r
	movq	136(%rdi), %rdx	# MEM[(double *)a_2(D) + 136B], x8i
	vmovsd	160(%rdi), %xmm9	# MEM[(double *)a_2(D) + 160B], x10r
	vmovsd	168(%rdi), %xmm8	# MEM[(double *)a_2(D) + 168B], x10i
	vmovsd	192(%rdi), %xmm5	# MEM[(double *)a_2(D) + 192B], x12r
	vmovsd	200(%rdi), %xmm4	# MEM[(double *)a_2(D) + 200B], x12i
	vmovsd	%xmm0, 72(%rdi)	# x3i, MEM[(double *)a_2(D) + 72B]
	vmovsd	208(%rdi), %xmm0	# MEM[(double *)a_2(D) + 208B], tmp125
	vmovsd	%xmm15, 96(%rdi)	# x5r, MEM[(double *)a_2(D) + 96B]
	vmovsd	152(%rdi), %xmm2	# MEM[(double *)a_2(D) + 152B], tmp128
	vmovsd	%xmm14, 104(%rdi)	# x5i, MEM[(double *)a_2(D) + 104B]
	vmovsd	%xmm0, 80(%rdi)	# tmp125, MEM[(double *)a_2(D) + 80B]
	vmovsd	216(%rdi), %xmm0	# MEM[(double *)a_2(D) + 216B], tmp126
	vmovsd	%xmm2, 120(%rdi)	# tmp128, MEM[(double *)a_2(D) + 120B]
	vmovsd	232(%rdi), %xmm2	# MEM[(double *)a_2(D) + 232B], tmp130
	vmovsd	%xmm0, 88(%rdi)	# tmp126, MEM[(double *)a_2(D) + 88B]
	vmovsd	144(%rdi), %xmm0	# MEM[(double *)a_2(D) + 144B], tmp127
	vmovsd	%xmm13, 128(%rdi)	# x1r, MEM[(double *)a_2(D) + 128B]
	vmovsd	%xmm0, 112(%rdi)	# tmp127, MEM[(double *)a_2(D) + 112B]
	vmovsd	224(%rdi), %xmm0	# MEM[(double *)a_2(D) + 224B], tmp129
	vmovsd	%xmm12, 136(%rdi)	# x1i, MEM[(double *)a_2(D) + 136B]
	vmovsd	%xmm0, 144(%rdi)	# tmp129, MEM[(double *)a_2(D) + 144B]
	vmovsd	%xmm2, 152(%rdi)	# tmp130, MEM[(double *)a_2(D) + 152B]
	vmovsd	%xmm11, 160(%rdi)	# x6r, MEM[(double *)a_2(D) + 160B]
	vmovsd	%xmm10, 168(%rdi)	# x6i, MEM[(double *)a_2(D) + 168B]
	vmovsd	%xmm9, 176(%rdi)	# x10r, MEM[(double *)a_2(D) + 176B]
	vmovsd	%xmm8, 184(%rdi)	# x10i, MEM[(double *)a_2(D) + 184B]
	vmovsd	%xmm7, 192(%rdi)	# x2r, MEM[(double *)a_2(D) + 192B]
	vmovsd	%xmm6, 200(%rdi)	# x2i, MEM[(double *)a_2(D) + 200B]
	vmovsd	%xmm5, 208(%rdi)	# x12r, MEM[(double *)a_2(D) + 208B]
	vmovsd	%xmm4, 216(%rdi)	# x12i, MEM[(double *)a_2(D) + 216B]
	vmovsd	%xmm3, 224(%rdi)	# x4r, MEM[(double *)a_2(D) + 224B]
	movq	%rax, 232(%rdi)	# x4i, MEM[(double *)a_2(D) + 232B]
	vmovsd	%xmm1, 240(%rdi)	# x8r, MEM[(double *)a_2(D) + 240B]
	movq	%rdx, 248(%rdi)	# x8i, MEM[(double *)a_2(D) + 248B]
	ret
	.cfi_endproc
.LFE62:
	.size	bitrv216neg, .-bitrv216neg
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
.LCOLDB27:
	.text
.LHOTB27:
	.p2align 4,,15
	.globl	bitrv208
	.type	bitrv208, @function
bitrv208:
.LFB63:
	.cfi_startproc
	vmovsd	16(%rdi), %xmm3	# MEM[(double *)a_2(D) + 16B], x1r
	vmovsd	24(%rdi), %xmm2	# MEM[(double *)a_2(D) + 24B], x1i
	vmovsd	48(%rdi), %xmm1	# MEM[(double *)a_2(D) + 48B], x3r
	vmovsd	56(%rdi), %xmm0	# MEM[(double *)a_2(D) + 56B], x3i
	vmovsd	72(%rdi), %xmm6	# MEM[(double *)a_2(D) + 72B], x4i
	vmovsd	%xmm2, 72(%rdi)	# x1i, MEM[(double *)a_2(D) + 72B]
	vmovsd	96(%rdi), %xmm5	# MEM[(double *)a_2(D) + 96B], x6r
	vmovsd	%xmm1, 96(%rdi)	# x3r, MEM[(double *)a_2(D) + 96B]
	vmovsd	104(%rdi), %xmm4	# MEM[(double *)a_2(D) + 104B], x6i
	vmovsd	%xmm6, 24(%rdi)	# x4i, MEM[(double *)a_2(D) + 24B]
	vmovsd	64(%rdi), %xmm7	# MEM[(double *)a_2(D) + 64B], MEM[(double *)a_2(D) + 64B]
	vmovsd	%xmm5, 48(%rdi)	# x6r, MEM[(double *)a_2(D) + 48B]
	vmovsd	%xmm4, 56(%rdi)	# x6i, MEM[(double *)a_2(D) + 56B]
	vmovsd	%xmm7, 16(%rdi)	# MEM[(double *)a_2(D) + 64B], MEM[(double *)a_2(D) + 16B]
	vmovsd	%xmm3, 64(%rdi)	# x1r, MEM[(double *)a_2(D) + 64B]
	vmovsd	%xmm0, 104(%rdi)	# x3i, MEM[(double *)a_2(D) + 104B]
	ret
	.cfi_endproc
.LFE63:
	.size	bitrv208, .-bitrv208
	.section	.text.unlikely
.LCOLDE27:
	.text
.LHOTE27:
	.section	.text.unlikely
.LCOLDB28:
	.text
.LHOTB28:
	.p2align 4,,15
	.globl	bitrv208neg
	.type	bitrv208neg, @function
bitrv208neg:
.LFB64:
	.cfi_startproc
	vmovsd	16(%rdi), %xmm7	# MEM[(double *)a_2(D) + 16B], x1r
	vmovsd	24(%rdi), %xmm6	# MEM[(double *)a_2(D) + 24B], x1i
	vmovsd	32(%rdi), %xmm3	# MEM[(double *)a_2(D) + 32B], x2r
	vmovsd	40(%rdi), %xmm2	# MEM[(double *)a_2(D) + 40B], x2i
	vmovsd	48(%rdi), %xmm11	# MEM[(double *)a_2(D) + 48B], x3r
	vmovsd	56(%rdi), %xmm10	# MEM[(double *)a_2(D) + 56B], x3i
	vmovsd	64(%rdi), %xmm1	# MEM[(double *)a_2(D) + 64B], x4r
	vmovsd	%xmm11, 32(%rdi)	# x3r, MEM[(double *)a_2(D) + 32B]
	vmovsd	72(%rdi), %xmm0	# MEM[(double *)a_2(D) + 72B], x4i
	vmovsd	%xmm10, 40(%rdi)	# x3i, MEM[(double *)a_2(D) + 40B]
	vmovsd	80(%rdi), %xmm9	# MEM[(double *)a_2(D) + 80B], x5r
	vmovsd	%xmm7, 64(%rdi)	# x1r, MEM[(double *)a_2(D) + 64B]
	vmovsd	88(%rdi), %xmm8	# MEM[(double *)a_2(D) + 88B], x5i
	vmovsd	%xmm6, 72(%rdi)	# x1i, MEM[(double *)a_2(D) + 72B]
	vmovsd	96(%rdi), %xmm5	# MEM[(double *)a_2(D) + 96B], x6r
	vmovsd	%xmm9, 48(%rdi)	# x5r, MEM[(double *)a_2(D) + 48B]
	vmovsd	104(%rdi), %xmm4	# MEM[(double *)a_2(D) + 104B], x6i
	vmovsd	%xmm8, 56(%rdi)	# x5i, MEM[(double *)a_2(D) + 56B]
	vmovsd	120(%rdi), %xmm12	# MEM[(double *)a_2(D) + 120B], x7i
	vmovsd	%xmm5, 80(%rdi)	# x6r, MEM[(double *)a_2(D) + 80B]
	vmovsd	112(%rdi), %xmm13	# MEM[(double *)a_2(D) + 112B], MEM[(double *)a_2(D) + 112B]
	vmovsd	%xmm4, 88(%rdi)	# x6i, MEM[(double *)a_2(D) + 88B]
	vmovsd	%xmm12, 24(%rdi)	# x7i, MEM[(double *)a_2(D) + 24B]
	vmovsd	%xmm13, 16(%rdi)	# MEM[(double *)a_2(D) + 112B], MEM[(double *)a_2(D) + 16B]
	vmovsd	%xmm3, 96(%rdi)	# x2r, MEM[(double *)a_2(D) + 96B]
	vmovsd	%xmm2, 104(%rdi)	# x2i, MEM[(double *)a_2(D) + 104B]
	vmovsd	%xmm1, 112(%rdi)	# x4r, MEM[(double *)a_2(D) + 112B]
	vmovsd	%xmm0, 120(%rdi)	# x4i, MEM[(double *)a_2(D) + 120B]
	ret
	.cfi_endproc
.LFE64:
	.size	bitrv208neg, .-bitrv208neg
	.section	.text.unlikely
.LCOLDE28:
	.text
.LHOTE28:
	.section	.text.unlikely
.LCOLDB29:
	.text
.LHOTB29:
	.p2align 4,,15
	.globl	cftf1st
	.type	cftf1st, @function
cftf1st:
.LFB65:
	.cfi_startproc
	sarl	$3, %edi	#, j0
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vmovsd	8(%rsi), %xmm3	# MEM[(double *)a_14(D) + 8B], D.15827
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leal	0(,%rdi,4), %r14d	#, j2
	vmovsd	(%rsi), %xmm9	# *a_14(D), D.15827
	leal	(%rdi,%rdi), %r15d	#, j1
	movslq	%r14d, %rcx	# j2, D.15828
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leal	(%r14,%r15), %r8d	#, j3
	salq	$3, %rcx	#, D.15828
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%r15d, %r9	# j1, D.15828
	leaq	8(%rsi,%rcx), %r10	#, D.15829
	movslq	%r8d, %r8	# j3, D.15828
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	vmovsd	(%r10), %xmm0	# *_24, D.15827
	leaq	(%rsi,%rcx), %rax	#, D.15829
	salq	$3, %r8	#, D.15828
	leaq	(%rsi,%r8), %r11	#, D.15829
	vmovsd	(%rax), %xmm1	# *_18, D.15827
	leaq	(%rsi,%r9,8), %rcx	#, D.15829
	vaddsd	%xmm3, %xmm0, %xmm10	# D.15827, D.15827, x0i
	vmovsd	(%rcx), %xmm7	# *_31, D.15827
	vsubsd	%xmm0, %xmm3, %xmm0	# D.15827, D.15827, x1i
	leaq	8(%rsi,%r9,8), %rbx	#, D.15829
	vmovsd	(%r11), %xmm3	# *_35, D.15827
	vaddsd	%xmm9, %xmm1, %xmm8	# D.15827, D.15827, x0r
	leaq	8(%rsi,%r8), %r8	#, D.15829
	vmovsd	(%rbx), %xmm2	# *_40, D.15827
	vsubsd	%xmm1, %xmm9, %xmm9	# D.15827, D.15827, x1r
	vaddsd	%xmm7, %xmm3, %xmm4	# D.15827, D.15827, x2r
	vmovsd	(%r8), %xmm6	# *_44, D.15827
	vsubsd	%xmm3, %xmm7, %xmm3	# D.15827, D.15827, x3r
	vaddsd	%xmm2, %xmm6, %xmm5	# D.15827, D.15827, x2i
	vsubsd	%xmm6, %xmm2, %xmm1	# D.15827, D.15827, x3i
	vaddsd	%xmm8, %xmm4, %xmm2	# x0r, x2r, D.15827
	vsubsd	%xmm4, %xmm8, %xmm4	# x2r, x0r, D.15827
	vmovsd	%xmm2, (%rsi)	# D.15827, *a_14(D)
	vaddsd	%xmm10, %xmm5, %xmm2	# x0i, x2i, D.15827
	vmovsd	%xmm2, 8(%rsi)	# D.15827, MEM[(double *)a_14(D) + 8B]
	vsubsd	%xmm5, %xmm10, %xmm2	# x2i, x0i, D.15827
	vmovsd	%xmm4, (%rcx)	# D.15827, *_31
	vmovsd	%xmm2, (%rbx)	# D.15827, *_40
	vsubsd	%xmm1, %xmm9, %xmm2	# x3i, x1r, D.15827
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, D.15827
	vmovsd	%xmm2, (%rax)	# D.15827, *_18
	vaddsd	%xmm0, %xmm3, %xmm2	# x1i, x3r, D.15827
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, D.15827
	vmovsd	%xmm2, (%r10)	# D.15827, *_24
	vmovsd	%xmm1, (%r11)	# D.15827, *_35
	vmovsd	%xmm0, (%r8)	# D.15827, *_44
	vmovsd	8(%rdx), %xmm2	# MEM[(double *)w_65(D) + 8B], wn4r
	vmovsd	%xmm2, -8(%rsp)	# wn4r, %sfp
	vmovsd	16(%rdx), %xmm2	# MEM[(double *)w_65(D) + 16B], csc1
	vmovsd	%xmm2, -24(%rsp)	# csc1, %sfp
	vmovsd	24(%rdx), %xmm2	# MEM[(double *)w_65(D) + 24B], csc3
	vmovsd	%xmm2, -16(%rsp)	# csc3, %sfp
	cmpl	$4, %edi	#, j0
	jle	.L221	#,
	leal	2(%r14), %r8d	#, D.15833
	vxorpd	%xmm1, %xmm1, %xmm1	# wd3i
	movq	%rsi, %rbp	# a, ivtmp.494
	xorl	%r12d, %r12d	# ivtmp.488
	leal	-5(%rdi), %r13d	#, D.15831
	movslq	%r8d, %r8	# D.15833, D.15828
	vmovapd	%xmm1, %xmm6	# wd3i, wd1i
	vmovsd	.LC0(%rip), %xmm0	#, wd3r
	addq	%r9, %r8	# D.15828, D.15828
	shrl	$2, %r13d	#,
	leaq	(%rsi,%r8,8), %rbx	#, ivtmp.505
	addq	$1, %r13	#, D.15830
	vmovapd	%xmm0, %xmm7	# wd3r, wd1r
	leal	-2(%r14), %r8d	#, D.15833
	salq	$5, %r13	#, D.15830
	movslq	%r8d, %r10	# D.15833, D.15828
	addl	%r15d, %r8d	# j1, D.15833
	movslq	%r8d, %r8	# D.15833, D.15828
	addq	%r9, %r10	# D.15828, D.15828
	leaq	(%rsi,%r10,8), %r11	#, ivtmp.515
	addq	%r9, %r8	# D.15828, D.15828
	movq	%rcx, %r9	# ivtmp.514, ivtmp.504
	leaq	(%rsi,%r8,8), %r10	#, ivtmp.524
	movq	%rax, %r8	# ivtmp.523, ivtmp.496
	.p2align 4,,10
	.p2align 3
.L220:
	vmovsd	32(%rdx,%r12), %xmm2	# MEM[base: w_65(D), index: ivtmp.488_1036, offset: 32B], wd1r
	addq	$32, %rbp	#, ivtmp.494
	addq	$32, %r8	#, ivtmp.496
	addq	$32, %r9	#, ivtmp.504
	vmovsd	-24(%rsp), %xmm5	# %sfp, csc1
	addq	$32, %rbx	#, ivtmp.505
	subq	$32, %rcx	#, ivtmp.514
	subq	$32, %r11	#, ivtmp.515
	vaddsd	%xmm2, %xmm7, %xmm7	# wd1r, wd1r, D.15827
	vmovsd	-16(%rsp), %xmm15	# %sfp, csc3
	subq	$32, %rax	#, ivtmp.523
	subq	$32, %r10	#, ivtmp.524
	vmovsd	56(%rdx,%r12), %xmm13	# MEM[base: w_65(D), index: ivtmp.488_1036, offset: 56B], wd3i
	vmovsd	40(%rdx,%r12), %xmm3	# MEM[base: w_65(D), index: ivtmp.488_1036, offset: 40B], wd1i
	vmulsd	%xmm5, %xmm7, %xmm4	# csc1, D.15827, wk1r
	vaddsd	%xmm13, %xmm1, %xmm1	# wd3i, wd3i, D.15827
	vmovsd	-16(%rbp), %xmm7	# MEM[base: _956, offset: 16B], D.15827
	vaddsd	%xmm3, %xmm6, %xmm6	# wd1i, wd1i, D.15827
	vmovsd	-8(%rbp), %xmm11	# MEM[base: _956, offset: 24B], D.15827
	vmovsd	(%r8), %xmm8	# MEM[base: _955, offset: 32B], D.15827
	vmulsd	%xmm15, %xmm1, %xmm1	# csc3, D.15827, wk3i
	vmovsd	8(%rbp), %xmm14	# MEM[base: _956, offset: 40B], D.15827
	vmulsd	%xmm5, %xmm6, %xmm6	# csc1, D.15827, wk1i
	vmovsd	-16(%r9), %xmm12	# MEM[base: _948, offset: 16B], D.15827
	vmovsd	%xmm4, -96(%rsp)	# wk1r, %sfp
	vmovsd	48(%rdx,%r12), %xmm4	# MEM[base: w_65(D), index: ivtmp.488_1036, offset: 48B], wd3r
	addq	$32, %r12	#, ivtmp.488
	vaddsd	%xmm4, %xmm0, %xmm0	# wd3r, wd3r, D.15827
	vmovsd	%xmm1, -72(%rsp)	# wk3i, %sfp
	vmovsd	-16(%r8), %xmm1	# MEM[base: _955, offset: 16B], D.15827
	vmovsd	%xmm6, -88(%rsp)	# wk1i, %sfp
	vmulsd	%xmm15, %xmm0, %xmm5	# csc3, D.15827, wk3r
	vmovsd	-8(%r8), %xmm0	# MEM[base: _955, offset: 24B], D.15827
	vsubsd	%xmm1, %xmm7, %xmm10	# D.15827, D.15827, x1r
	vaddsd	%xmm7, %xmm1, %xmm6	# D.15827, D.15827, x0r
	vmovsd	8(%r8), %xmm7	# MEM[base: _955, offset: 40B], D.15827
	vsubsd	%xmm0, %xmm11, %xmm15	# D.15827, D.15827, x1i
	vsubsd	%xmm7, %xmm14, %xmm9	# D.15827, D.15827, y1i
	vmovsd	%xmm10, -32(%rsp)	# x1r, %sfp
	vmovsd	%xmm5, -80(%rsp)	# wk3r, %sfp
	vaddsd	%xmm11, %xmm0, %xmm5	# D.15827, D.15827, x0i
	vmovsd	0(%rbp), %xmm11	# MEM[base: _956, offset: 32B], D.15827
	vaddsd	%xmm14, %xmm7, %xmm0	# D.15827, D.15827, y0i
	vmovsd	-24(%rbx), %xmm7	# MEM[base: _947, offset: 8B], D.15827
	vmovsd	%xmm15, -64(%rsp)	# x1i, %sfp
	vsubsd	%xmm8, %xmm11, %xmm10	# D.15827, D.15827, y1r
	vaddsd	%xmm11, %xmm8, %xmm1	# D.15827, D.15827, y0r
	vmovsd	-32(%rbx), %xmm11	# MEM[base: _947, offset: 0B], D.15827
	vmovsd	-8(%r9), %xmm8	# MEM[base: _948, offset: 24B], D.15827
	vaddsd	%xmm12, %xmm11, %xmm14	# D.15827, D.15827, x2r
	vaddsd	%xmm8, %xmm7, %xmm15	# D.15827, D.15827, x2i
	vsubsd	%xmm7, %xmm8, %xmm7	# D.15827, D.15827, x3i
	vmovsd	%xmm14, -56(%rsp)	# x2r, %sfp
	vmovsd	-16(%rbx), %xmm14	# MEM[base: _947, offset: 16B], D.15827
	vsubsd	%xmm11, %xmm12, %xmm12	# D.15827, D.15827, x3r
	vmovsd	%xmm15, -48(%rsp)	# x2i, %sfp
	vmovsd	(%r9), %xmm15	# MEM[base: _948, offset: 32B], D.15827
	vmovsd	8(%r9), %xmm11	# MEM[base: _948, offset: 40B], D.15827
	vmovsd	%xmm7, -40(%rsp)	# x3i, %sfp
	vaddsd	%xmm15, %xmm14, %xmm8	# D.15827, D.15827, y2r
	vaddsd	-8(%rbx), %xmm11, %xmm7	# MEM[base: _947, offset: 24B], D.15827, y2i
	vsubsd	%xmm14, %xmm15, %xmm15	# D.15827, D.15827, y3r
	vsubsd	-8(%rbx), %xmm11, %xmm14	# MEM[base: _947, offset: 24B], D.15827, y3i
	vaddsd	-56(%rsp), %xmm6, %xmm11	# %sfp, x0r, D.15827
	vmovsd	%xmm11, -16(%rbp)	# D.15827, MEM[base: _956, offset: 16B]
	vaddsd	-48(%rsp), %xmm5, %xmm11	# %sfp, x0i, D.15827
	vsubsd	-56(%rsp), %xmm6, %xmm6	# %sfp, x0r, D.15827
	vsubsd	-48(%rsp), %xmm5, %xmm5	# %sfp, x0i, D.15827
	vmovsd	%xmm11, -8(%rbp)	# D.15827, MEM[base: _956, offset: 24B]
	vaddsd	%xmm1, %xmm8, %xmm11	# y0r, y2r, D.15827
	vsubsd	%xmm8, %xmm1, %xmm1	# y2r, y0r, D.15827
	vmovsd	-88(%rsp), %xmm8	# %sfp, wk1i
	vmovsd	%xmm11, 0(%rbp)	# D.15827, MEM[base: _956, offset: 32B]
	vaddsd	%xmm0, %xmm7, %xmm11	# y0i, y2i, D.15827
	vsubsd	%xmm7, %xmm0, %xmm0	# y2i, y0i, D.15827
	vmovsd	-96(%rsp), %xmm7	# %sfp, wk1r
	vmovsd	%xmm11, 8(%rbp)	# D.15827, MEM[base: _956, offset: 40B]
	vmovsd	-32(%rsp), %xmm11	# %sfp, x1r
	vmovsd	%xmm1, (%r9)	# D.15827, MEM[base: _948, offset: 32B]
	vaddsd	-64(%rsp), %xmm12, %xmm1	# %sfp, x3r, x0i
	vmovsd	%xmm0, 8(%r9)	# D.15827, MEM[base: _948, offset: 40B]
	vsubsd	-40(%rsp), %xmm11, %xmm0	# %sfp, x1r, x0r
	vmovsd	%xmm6, -16(%r9)	# D.15827, MEM[base: _948, offset: 16B]
	vmovsd	%xmm5, -8(%r9)	# D.15827, MEM[base: _948, offset: 24B]
	vmulsd	%xmm8, %xmm1, %xmm5	# wk1i, x0i, D.15827
	vmulsd	%xmm7, %xmm0, %xmm6	# wk1r, x0r, D.15827
	vmulsd	%xmm7, %xmm1, %xmm1	# wk1r, x0i, D.15827
	vmulsd	%xmm8, %xmm0, %xmm0	# wk1i, x0r, D.15827
	vmovsd	-40(%rsp), %xmm8	# %sfp, x3i
	vaddsd	%xmm11, %xmm8, %xmm7	# x1r, x3i, x0r
	vmovsd	-72(%rsp), %xmm8	# %sfp, wk3i
	vsubsd	%xmm5, %xmm6, %xmm5	# D.15827, D.15827, D.15827
	vaddsd	%xmm1, %xmm0, %xmm0	# D.15827, D.15827, D.15827
	vaddsd	%xmm9, %xmm15, %xmm1	# y1i, y3r, x0i
	vmovsd	%xmm5, -16(%r8)	# D.15827, MEM[base: _955, offset: 16B]
	vsubsd	%xmm15, %xmm9, %xmm15	# y3r, y1i, x0i
	vmovsd	%xmm0, -8(%r8)	# D.15827, MEM[base: _955, offset: 24B]
	vsubsd	%xmm14, %xmm10, %xmm0	# y3i, y1r, x0r
	vmulsd	%xmm3, %xmm1, %xmm5	# wd1i, x0i, D.15827
	vmulsd	%xmm2, %xmm1, %xmm1	# wd1r, x0i, D.15827
	vmulsd	%xmm2, %xmm0, %xmm6	# wd1r, x0r, D.15827
	vmulsd	%xmm3, %xmm0, %xmm0	# wd1i, x0r, D.15827
	vsubsd	%xmm5, %xmm6, %xmm5	# D.15827, D.15827, D.15827
	vaddsd	%xmm1, %xmm0, %xmm0	# D.15827, D.15827, D.15827
	vmovsd	%xmm5, (%r8)	# D.15827, MEM[base: _955, offset: 32B]
	vmovsd	%xmm0, 8(%r8)	# D.15827, MEM[base: _955, offset: 40B]
	vmovsd	-64(%rsp), %xmm0	# %sfp, x1i
	vsubsd	%xmm12, %xmm0, %xmm11	# x3r, x1i, x0i
	vmovsd	-80(%rsp), %xmm12	# %sfp, wk3r
	vmulsd	%xmm12, %xmm7, %xmm1	# wk3r, x0r, D.15827
	vmulsd	%xmm8, %xmm11, %xmm0	# wk3i, x0i, D.15827
	vmulsd	%xmm8, %xmm7, %xmm7	# wk3i, x0r, D.15827
	vmulsd	%xmm12, %xmm11, %xmm11	# wk3r, x0i, D.15827
	vaddsd	%xmm1, %xmm0, %xmm0	# D.15827, D.15827, D.15827
	vsubsd	%xmm7, %xmm11, %xmm11	# D.15827, D.15827, D.15827
	vmovsd	%xmm0, -32(%rbx)	# D.15827, MEM[base: _947, offset: 0B]
	vmulsd	%xmm13, %xmm15, %xmm0	# wd3i, x0i, D.15827
	vmulsd	%xmm4, %xmm15, %xmm15	# wd3r, x0i, D.15827
	vmovsd	%xmm11, -24(%rbx)	# D.15827, MEM[base: _947, offset: 8B]
	vaddsd	%xmm10, %xmm14, %xmm11	# y1r, y3i, x0r
	vmulsd	%xmm4, %xmm11, %xmm1	# wd3r, x0r, D.15827
	vmulsd	%xmm13, %xmm11, %xmm11	# wd3i, x0r, D.15827
	vaddsd	%xmm1, %xmm0, %xmm0	# D.15827, D.15827, D.15827
	vsubsd	%xmm11, %xmm15, %xmm15	# D.15827, D.15827, D.15827
	vmovsd	%xmm0, -16(%rbx)	# D.15827, MEM[base: _947, offset: 16B]
	vmovsd	%xmm15, -8(%rbx)	# D.15827, MEM[base: _947, offset: 24B]
	vmovsd	16(%rcx), %xmm1	# MEM[base: _924, offset: -16B], D.15827
	vmovsd	32(%r11), %xmm0	# MEM[base: _923, offset: 0B], D.15827
	vmovsd	24(%rcx), %xmm9	# MEM[base: _924, offset: -8B], D.15827
	vsubsd	%xmm0, %xmm1, %xmm12	# D.15827, D.15827, x1r
	vmovsd	40(%r11), %xmm5	# MEM[base: _923, offset: 8B], D.15827
	vmovsd	(%rcx), %xmm14	# MEM[base: _924, offset: -32B], D.15827
	vaddsd	%xmm1, %xmm0, %xmm8	# D.15827, D.15827, x0r
	vaddsd	%xmm9, %xmm5, %xmm7	# D.15827, D.15827, x0i
	vmovsd	%xmm12, -32(%rsp)	# x1r, %sfp
	vmovsd	16(%r11), %xmm0	# MEM[base: _923, offset: -16B], D.15827
	vsubsd	%xmm5, %xmm9, %xmm12	# D.15827, D.15827, x1i
	vmovsd	16(%rax), %xmm10	# MEM[base: _916, offset: -16B], D.15827
	vmovsd	32(%r10), %xmm9	# MEM[base: _915, offset: 0B], D.15827
	vaddsd	%xmm14, %xmm0, %xmm6	# D.15827, D.15827, y0r
	vmovsd	24(%r11), %xmm1	# MEM[base: _923, offset: -8B], D.15827
	vsubsd	%xmm0, %xmm14, %xmm11	# D.15827, D.15827, y1r
	vmovsd	8(%rcx), %xmm15	# MEM[base: _924, offset: -24B], D.15827
	vaddsd	%xmm10, %xmm9, %xmm14	# D.15827, D.15827, x2r
	vmovsd	40(%r10), %xmm0	# MEM[base: _915, offset: 8B], D.15827
	vsubsd	%xmm9, %xmm10, %xmm9	# D.15827, D.15827, x3r
	vaddsd	%xmm15, %xmm1, %xmm5	# D.15827, D.15827, y0i
	vsubsd	%xmm1, %xmm15, %xmm15	# D.15827, D.15827, y1i
	vmovsd	24(%rax), %xmm1	# MEM[base: _916, offset: -8B], D.15827
	vmovsd	%xmm14, -64(%rsp)	# x2r, %sfp
	vmovsd	%xmm9, -48(%rsp)	# x3r, %sfp
	vaddsd	%xmm1, %xmm0, %xmm14	# D.15827, D.15827, x2i
	vsubsd	%xmm0, %xmm1, %xmm0	# D.15827, D.15827, x3i
	vmovsd	(%rax), %xmm1	# MEM[base: _916, offset: -32B], D.15827
	vaddsd	16(%r10), %xmm1, %xmm10	# MEM[base: _915, offset: -16B], D.15827, y2r
	vmovsd	%xmm14, -56(%rsp)	# x2i, %sfp
	vmovsd	24(%r10), %xmm14	# MEM[base: _915, offset: -8B], D.15827
	vmovsd	%xmm0, -40(%rsp)	# x3i, %sfp
	vmovsd	8(%rax), %xmm0	# MEM[base: _916, offset: -24B], D.15827
	vsubsd	16(%r10), %xmm1, %xmm1	# MEM[base: _915, offset: -16B], D.15827, y3r
	vaddsd	%xmm0, %xmm14, %xmm9	# D.15827, D.15827, y2i
	vsubsd	%xmm14, %xmm0, %xmm0	# D.15827, D.15827, y3i
	vaddsd	-64(%rsp), %xmm8, %xmm14	# %sfp, x0r, D.15827
	vsubsd	-64(%rsp), %xmm8, %xmm8	# %sfp, x0r, D.15827
	vmovsd	%xmm14, 16(%rcx)	# D.15827, MEM[base: _924, offset: -16B]
	vaddsd	-56(%rsp), %xmm7, %xmm14	# %sfp, x0i, D.15827
	vsubsd	-56(%rsp), %xmm7, %xmm7	# %sfp, x0i, D.15827
	vmovsd	%xmm14, 24(%rcx)	# D.15827, MEM[base: _924, offset: -8B]
	vaddsd	%xmm6, %xmm10, %xmm14	# y0r, y2r, D.15827
	vsubsd	%xmm10, %xmm6, %xmm6	# y2r, y0r, D.15827
	vmovsd	-96(%rsp), %xmm10	# %sfp, wk1r
	vmovsd	%xmm14, (%rcx)	# D.15827, MEM[base: _924, offset: -32B]
	vaddsd	%xmm5, %xmm9, %xmm14	# y0i, y2i, D.15827
	vsubsd	%xmm9, %xmm5, %xmm5	# y2i, y0i, D.15827
	vmovsd	-88(%rsp), %xmm9	# %sfp, wk1i
	vmovsd	%xmm14, 8(%rcx)	# D.15827, MEM[base: _924, offset: -24B]
	vmovsd	-32(%rsp), %xmm14	# %sfp, x1r
	vmovsd	%xmm6, (%rax)	# D.15827, MEM[base: _916, offset: -32B]
	vaddsd	-48(%rsp), %xmm12, %xmm6	# %sfp, x1i, x0i
	vmovsd	%xmm5, 8(%rax)	# D.15827, MEM[base: _916, offset: -24B]
	vsubsd	-40(%rsp), %xmm14, %xmm5	# %sfp, x1r, x0r
	vmovsd	%xmm8, 16(%rax)	# D.15827, MEM[base: _916, offset: -16B]
	vmovsd	%xmm7, 24(%rax)	# D.15827, MEM[base: _916, offset: -8B]
	vmulsd	%xmm10, %xmm6, %xmm7	# wk1r, x0i, D.15827
	vmulsd	%xmm9, %xmm5, %xmm8	# wk1i, x0r, D.15827
	vmulsd	%xmm9, %xmm6, %xmm6	# wk1i, x0i, D.15827
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x0r, D.15827
	vsubsd	%xmm7, %xmm8, %xmm7	# D.15827, D.15827, D.15827
	vaddsd	%xmm6, %xmm5, %xmm5	# D.15827, D.15827, D.15827
	vmovsd	%xmm7, 32(%r11)	# D.15827, MEM[base: _923, offset: 0B]
	vaddsd	%xmm15, %xmm1, %xmm6	# y1i, y3r, x0i
	vmovsd	-72(%rsp), %xmm10	# %sfp, wk3i
	vsubsd	-48(%rsp), %xmm12, %xmm9	# %sfp, x1i, x0i
	vmovsd	%xmm5, 40(%r11)	# D.15827, MEM[base: _923, offset: 8B]
	vsubsd	%xmm0, %xmm11, %xmm5	# y3i, y1r, x0r
	vmovsd	-80(%rsp), %xmm12	# %sfp, wk3r
	vmulsd	%xmm2, %xmm6, %xmm7	# wd1r, x0i, D.15827
	vaddsd	%xmm11, %xmm0, %xmm0	# y1r, y3i, x0r
	vmulsd	%xmm3, %xmm6, %xmm6	# wd1i, x0i, D.15827
	vsubsd	%xmm1, %xmm15, %xmm1	# y3r, y1i, x0i
	vmulsd	%xmm3, %xmm5, %xmm8	# wd1i, x0r, D.15827
	vmulsd	%xmm2, %xmm5, %xmm5	# wd1r, x0r, D.15827
	vsubsd	%xmm7, %xmm8, %xmm7	# D.15827, D.15827, D.15827
	vmovsd	-40(%rsp), %xmm8	# %sfp, x3i
	vaddsd	%xmm6, %xmm5, %xmm5	# D.15827, D.15827, D.15827
	vmulsd	%xmm12, %xmm9, %xmm6	# wk3r, x0i, D.15827
	vmulsd	%xmm10, %xmm9, %xmm9	# wk3i, x0i, D.15827
	vmovsd	%xmm7, 16(%r11)	# D.15827, MEM[base: _923, offset: -16B]
	vmovsd	%xmm5, 24(%r11)	# D.15827, MEM[base: _923, offset: -8B]
	vaddsd	%xmm14, %xmm8, %xmm5	# x1r, x3i, x0r
	vmulsd	%xmm10, %xmm5, %xmm7	# wk3i, x0r, D.15827
	vmulsd	%xmm12, %xmm5, %xmm5	# wk3r, x0r, D.15827
	vaddsd	%xmm7, %xmm6, %xmm6	# D.15827, D.15827, D.15827
	vmovapd	%xmm2, %xmm7	# wd1r, wd1r
	vsubsd	%xmm5, %xmm9, %xmm9	# D.15827, D.15827, D.15827
	vmulsd	%xmm4, %xmm1, %xmm5	# wd3r, x0i, D.15827
	vmulsd	%xmm13, %xmm1, %xmm1	# wd3i, x0i, D.15827
	vmovsd	%xmm6, 32(%r10)	# D.15827, MEM[base: _915, offset: 0B]
	vmulsd	%xmm13, %xmm0, %xmm6	# wd3i, x0r, D.15827
	vmulsd	%xmm4, %xmm0, %xmm0	# wd3r, x0r, D.15827
	vmovsd	%xmm9, 40(%r10)	# D.15827, MEM[base: _915, offset: 8B]
	vaddsd	%xmm6, %xmm5, %xmm5	# D.15827, D.15827, D.15827
	vmovapd	%xmm3, %xmm6	# wd1i, wd1i
	vsubsd	%xmm0, %xmm1, %xmm1	# D.15827, D.15827, D.15827
	vmovapd	%xmm4, %xmm0	# wd3r, wd3r
	vmovsd	%xmm5, 16(%r10)	# D.15827, MEM[base: _915, offset: -16B]
	vmovsd	%xmm1, 24(%r10)	# D.15827, MEM[base: _915, offset: -8B]
	vmovapd	%xmm13, %xmm1	# wd3i, wd3i
	cmpq	%r13, %r12	# D.15830, ivtmp.488
	jne	.L220	#,
	vmovapd	%xmm4, %xmm7	# wd3r, wd3r
.L219:
	vmovsd	-8(%rsp), %xmm15	# %sfp, wn4r
	vmovapd	%xmm2, %xmm4	# wd1r, wd1r
	movl	%r14d, %ecx	# j2, j1
	subl	%edi, %ecx	# j0, j1
	movslq	%edi, %rdi	# j0, D.15828
	vaddsd	%xmm15, %xmm4, %xmm1	# wn4r, wd1r, D.15827
	vmovsd	-24(%rsp), %xmm4	# %sfp, csc1
	leal	(%rcx,%r15), %eax	#, j2
	movslq	%ecx, %rcx	# j1, D.15828
	vaddsd	%xmm3, %xmm15, %xmm2	# wd1i, wn4r, D.15827
	leaq	0(,%rdi,8), %r8	#, D.15828
	movslq	%eax, %r9	# j2, D.15828
	movq	%rcx, -88(%rsp)	# D.15828, %sfp
	vsubsd	%xmm15, %xmm7, %xmm0	# wn4r, wd3r, D.15827
	leaq	-16(%rsi,%r8), %rdx	#, D.15829
	addl	%r15d, %eax	# j1, j3
	vmulsd	%xmm4, %xmm1, %xmm1	# csc1, D.15827, wk1r
	vmovsd	(%rdx), %xmm9	# *_381, D.15827
	movq	%rdx, -96(%rsp)	# D.15829, %sfp
	cltq
	vmulsd	%xmm4, %xmm2, %xmm2	# csc1, D.15827, wk1i
	vmovsd	-16(%rsp), %xmm4	# %sfp, csc3
	movq	%rax, -80(%rsp)	# D.15828, %sfp
	salq	$3, %rcx	#, D.15828
	leaq	-8(%rsi,%r8), %r14	#, D.15829
	salq	$3, %rax	#, D.15828
	movq	-96(%rsp), %r15	# %sfp, D.15829
	addq	%rsi, %r8	# a, D.15829
	vmulsd	%xmm4, %xmm0, %xmm5	# csc3, D.15827, wk3r
	vsubsd	%xmm15, %xmm13, %xmm0	# wn4r, wd3i, D.15827
	vmovsd	(%r14), %xmm3	# *_390, D.15827
	leaq	0(,%r9,8), %rdx	#, D.15828
	leaq	-8(%rsi,%rdx), %rbx	#, D.15829
	vmulsd	%xmm4, %xmm0, %xmm0	# csc3, D.15827, wk3i
	vmovsd	(%rbx), %xmm4	# *_393, D.15827
	leaq	-16(%rsi,%rdx), %rbp	#, D.15829
	addq	%rsi, %rdx	# a, D.15829
	leaq	-16(%rsi,%rcx), %r13	#, D.15829
	vmovsd	0(%rbp), %xmm6	# *_386, D.15827
	vaddsd	%xmm3, %xmm4, %xmm7	# D.15827, D.15827, x0i
	leaq	-16(%rsi,%rax), %r11	#, D.15829
	vmovsd	0(%r13), %xmm13	# *_401, D.15827
	vsubsd	%xmm4, %xmm3, %xmm4	# D.15827, D.15827, x1i
	vmovsd	(%r11), %xmm3	# *_406, D.15827
	vaddsd	%xmm9, %xmm6, %xmm8	# D.15827, D.15827, x0r
	leaq	-8(%rsi,%rcx), %r12	#, D.15829
	addq	%rsi, %rcx	# a, D.15829
	leaq	-8(%rsi,%rax), %r10	#, D.15829
	vmovsd	(%r12), %xmm12	# *_410, D.15827
	vsubsd	%xmm6, %xmm9, %xmm9	# D.15827, D.15827, x1r
	addq	%rsi, %rax	# a, D.15829
	vaddsd	%xmm13, %xmm3, %xmm11	# D.15827, D.15827, x2r
	vmovsd	(%r10), %xmm6	# *_413, D.15827
	vsubsd	%xmm3, %xmm13, %xmm3	# D.15827, D.15827, x3r
	vaddsd	%xmm12, %xmm6, %xmm10	# D.15827, D.15827, x2i
	vsubsd	%xmm6, %xmm12, %xmm6	# D.15827, D.15827, x3i
	vaddsd	%xmm8, %xmm11, %xmm12	# x0r, x2r, D.15827
	vsubsd	%xmm11, %xmm8, %xmm8	# x2r, x0r, D.15827
	vmovsd	%xmm12, (%r15)	# D.15827, *_381
	vaddsd	%xmm7, %xmm10, %xmm12	# x0i, x2i, D.15827
	vsubsd	%xmm10, %xmm7, %xmm7	# x2i, x0i, D.15827
	vmovsd	%xmm12, (%r14)	# D.15827, *_390
	vmovsd	%xmm8, 0(%r13)	# D.15827, *_401
	vaddsd	%xmm4, %xmm3, %xmm8	# x1i, x3r, x0i
	vmovsd	%xmm7, (%r12)	# D.15827, *_410
	vsubsd	%xmm6, %xmm9, %xmm7	# x3i, x1r, x0r
	vsubsd	%xmm3, %xmm4, %xmm3	# x3r, x1i, x0i
	vmulsd	%xmm8, %xmm2, %xmm11	# x0i, wk1i, D.15827
	vaddsd	%xmm9, %xmm6, %xmm6	# x1r, x3i, x0r
	vmulsd	%xmm7, %xmm1, %xmm10	# x0r, wk1r, D.15827
	vmulsd	%xmm8, %xmm1, %xmm8	# x0i, wk1r, D.15827
	vmulsd	%xmm7, %xmm2, %xmm7	# x0r, wk1i, D.15827
	vmulsd	%xmm3, %xmm0, %xmm4	# x0i, wk3i, D.15827
	vmulsd	%xmm3, %xmm5, %xmm3	# x0i, wk3r, D.15827
	vsubsd	%xmm11, %xmm10, %xmm10	# D.15827, D.15827, D.15827
	vaddsd	%xmm8, %xmm7, %xmm7	# D.15827, D.15827, D.15827
	vmovsd	%xmm10, 0(%rbp)	# D.15827, *_386
	vmovsd	%xmm7, (%rbx)	# D.15827, *_393
	vmulsd	%xmm6, %xmm5, %xmm7	# x0r, wk3r, D.15827
	vmulsd	%xmm6, %xmm0, %xmm6	# x0r, wk3i, D.15827
	vaddsd	%xmm7, %xmm4, %xmm4	# D.15827, D.15827, D.15827
	vsubsd	%xmm6, %xmm3, %xmm3	# D.15827, D.15827, D.15827
	vmovsd	%xmm4, (%r11)	# D.15827, *_406
	leaq	8(,%rdi,8), %r11	#, D.15830
	movq	-88(%rsp), %rdi	# %sfp, D.15828
	vmovsd	%xmm3, (%r10)	# D.15827, *_413
	leaq	(%rsi,%r11), %r12	#, D.15829
	vmovsd	(%rdx), %xmm3	# *_448, D.15827
	leaq	8(,%r9,8), %r10	#, D.15830
	vmovsd	(%r12), %xmm7	# *_453, D.15827
	leaq	(%rsi,%r10), %rbp	#, D.15829
	vmovsd	(%r8), %xmm10	# *_446, D.15827
	leaq	8(,%rdi,8), %r9	#, D.15830
	movq	-80(%rsp), %rdi	# %sfp, D.15828
	vmovsd	0(%rbp), %xmm4	# *_457, D.15827
	vaddsd	%xmm10, %xmm3, %xmm8	# D.15827, D.15827, x0r
	leaq	(%rsi,%r9), %r13	#, D.15829
	vmovsd	(%rcx), %xmm9	# *_462, D.15827
	vsubsd	%xmm3, %xmm10, %xmm10	# D.15827, D.15827, x1r
	vaddsd	%xmm7, %xmm4, %xmm6	# D.15827, D.15827, x0i
	vmovsd	0(%r13), %xmm3	# *_469, D.15827
	vsubsd	%xmm4, %xmm7, %xmm7	# D.15827, D.15827, x1i
	vmovsd	(%rax), %xmm4	# *_464, D.15827
	leaq	8(,%rdi,8), %rdi	#, D.15830
	leaq	(%rsi,%rdi), %rbx	#, D.15829
	vaddsd	%xmm9, %xmm4, %xmm12	# D.15827, D.15827, x2r
	vmovsd	(%rbx), %xmm13	# *_473, D.15827
	vsubsd	%xmm4, %xmm9, %xmm9	# D.15827, D.15827, x3r
	vaddsd	%xmm3, %xmm13, %xmm11	# D.15827, D.15827, x2i
	vsubsd	%xmm13, %xmm3, %xmm4	# D.15827, D.15827, x3i
	vmovapd	%xmm15, %xmm13	# wn4r, wn4r
	vaddsd	%xmm8, %xmm12, %xmm3	# x0r, x2r, D.15827
	vsubsd	%xmm12, %xmm8, %xmm8	# x2r, x0r, D.15827
	vmovsd	%xmm3, (%r8)	# D.15827, *_446
	vaddsd	%xmm6, %xmm11, %xmm3	# x0i, x2i, D.15827
	leaq	8(%rsi,%r10), %r8	#, D.15829
	vsubsd	%xmm11, %xmm6, %xmm6	# x2i, x0i, D.15827
	vmovsd	%xmm3, (%r12)	# D.15827, *_453
	vmovsd	%xmm8, (%rcx)	# D.15827, *_462
	vaddsd	%xmm7, %xmm9, %xmm8	# x1i, x3r, x0i
	leaq	16(%rsi,%r10), %rcx	#, D.15829
	vmovsd	%xmm6, 0(%r13)	# D.15827, *_469
	vsubsd	%xmm4, %xmm10, %xmm6	# x3i, x1r, x0r
	leaq	8(%rsi,%r9), %r10	#, D.15829
	leaq	16(%rsi,%r9), %r9	#, D.15829
	vsubsd	%xmm8, %xmm6, %xmm3	# x0i, x0r, D.15827
	vaddsd	%xmm8, %xmm6, %xmm6	# x0i, x0r, D.15827
	vmulsd	%xmm15, %xmm3, %xmm3	# wn4r, D.15827, D.15827
	vmulsd	%xmm15, %xmm6, %xmm6	# wn4r, D.15827, D.15827
	vmovsd	%xmm3, (%rdx)	# D.15827, *_448
	vaddsd	%xmm10, %xmm4, %xmm3	# x1r, x3i, x0r
	leaq	8(%rsi,%rdi), %rdx	#, D.15829
	vsubsd	%xmm9, %xmm7, %xmm4	# x3r, x1i, x0i
	vmovsd	%xmm6, 0(%rbp)	# D.15827, *_457
	vmovsd	.LC13(%rip), %xmm7	#, tmp647
	vxorpd	%xmm13, %xmm7, %xmm7	# wn4r, tmp647, D.15827
	vaddsd	%xmm4, %xmm3, %xmm6	# x0i, x0r, D.15827
	vsubsd	%xmm4, %xmm3, %xmm3	# x0i, x0r, D.15827
	vmulsd	%xmm7, %xmm6, %xmm6	# D.15827, D.15827, D.15827
	vmulsd	%xmm15, %xmm3, %xmm3	# wn4r, D.15827, D.15827
	vmovsd	%xmm6, (%rax)	# D.15827, *_464
	leaq	16(%rsi,%rdi), %rax	#, D.15829
	vmovsd	%xmm3, (%rbx)	# D.15827, *_473
	leaq	8(%rsi,%r11), %rbx	#, D.15829
	vmovsd	(%r8), %xmm8	# *_509, D.15827
	vmovsd	(%rbx), %xmm9	# *_505, D.15827
	leaq	16(%rsi,%r11), %r11	#, D.15829
	vmovsd	(%r10), %xmm11	# *_525, D.15827
	vaddsd	%xmm9, %xmm8, %xmm7	# D.15827, D.15827, x0r
	vmovsd	(%rcx), %xmm3	# *_518, D.15827
	vsubsd	%xmm8, %xmm9, %xmm9	# D.15827, D.15827, x1r
	vmovsd	(%rdx), %xmm8	# *_529, D.15827
	vmovsd	(%r11), %xmm4	# *_514, D.15827
	vaddsd	%xmm11, %xmm8, %xmm13	# D.15827, D.15827, x2r
	vmovsd	(%r9), %xmm10	# *_534, D.15827
	vaddsd	%xmm4, %xmm3, %xmm6	# D.15827, D.15827, x0i
	vsubsd	%xmm3, %xmm4, %xmm4	# D.15827, D.15827, x1i
	vmovsd	(%rax), %xmm3	# *_538, D.15827
	vsubsd	%xmm8, %xmm11, %xmm8	# D.15827, D.15827, x3r
	vaddsd	%xmm10, %xmm3, %xmm12	# D.15827, D.15827, x2i
	vsubsd	%xmm3, %xmm10, %xmm3	# D.15827, D.15827, x3i
	vaddsd	%xmm7, %xmm13, %xmm10	# x0r, x2r, D.15827
	vsubsd	%xmm13, %xmm7, %xmm7	# x2r, x0r, D.15827
	vmovsd	%xmm10, (%rbx)	# D.15827, *_505
	vaddsd	%xmm6, %xmm12, %xmm10	# x0i, x2i, D.15827
	vsubsd	%xmm12, %xmm6, %xmm6	# x2i, x0i, D.15827
	vmovsd	%xmm10, (%r11)	# D.15827, *_514
	vsubsd	%xmm3, %xmm9, %xmm10	# x3i, x1r, x0r
	vmovsd	%xmm7, (%r10)	# D.15827, *_525
	vaddsd	%xmm4, %xmm8, %xmm7	# x1i, x3r, x0i
	vmovsd	%xmm6, (%r9)	# D.15827, *_534
	vmulsd	%xmm10, %xmm2, %xmm6	# x0r, wk1i, D.15827
	vmulsd	%xmm7, %xmm1, %xmm11	# x0i, wk1r, D.15827
	vmulsd	%xmm7, %xmm2, %xmm2	# x0i, wk1i, D.15827
	vmulsd	%xmm10, %xmm1, %xmm1	# x0r, wk1r, D.15827
	vsubsd	%xmm11, %xmm6, %xmm6	# D.15827, D.15827, D.15827
	vaddsd	%xmm2, %xmm1, %xmm1	# D.15827, D.15827, D.15827
	vmovsd	%xmm6, (%r8)	# D.15827, *_509
	vsubsd	%xmm8, %xmm4, %xmm2	# x3r, x1i, x0i
	vmovsd	%xmm1, (%rcx)	# D.15827, *_518
	vaddsd	%xmm9, %xmm3, %xmm1	# x1r, x3i, x0r
	vmulsd	%xmm2, %xmm5, %xmm3	# x0i, wk3r, D.15827
	vmulsd	%xmm1, %xmm0, %xmm4	# x0r, wk3i, D.15827
	vmulsd	%xmm1, %xmm5, %xmm5	# x0r, wk3r, D.15827
	vmulsd	%xmm2, %xmm0, %xmm0	# x0i, wk3i, D.15827
	vaddsd	%xmm4, %xmm3, %xmm3	# D.15827, D.15827, D.15827
	vsubsd	%xmm5, %xmm0, %xmm0	# D.15827, D.15827, D.15827
	vmovsd	%xmm3, (%rdx)	# D.15827, *_529
	vmovsd	%xmm0, (%rax)	# D.15827, *_538
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L221:
	.cfi_restore_state
	vmovsd	.LC0(%rip), %xmm2	#, wd3r
	vxorpd	%xmm13, %xmm13, %xmm13	# wd3i
	vmovapd	%xmm13, %xmm3	# wd3i, wd1i
	vmovapd	%xmm2, %xmm7	# wd3r, wd3r
	jmp	.L219	#
	.cfi_endproc
.LFE65:
	.size	cftf1st, .-cftf1st
	.section	.text.unlikely
.LCOLDE29:
	.text
.LHOTE29:
	.section	.text.unlikely
.LCOLDB30:
	.text
.LHOTB30:
	.p2align 4,,15
	.globl	cftb1st
	.type	cftb1st, @function
cftb1st:
.LFB66:
	.cfi_startproc
	sarl	$3, %edi	#, j0
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vmovsd	8(%rsi), %xmm0	# MEM[(double *)a_14(D) + 8B], D.15886
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leal	0(,%rdi,4), %r14d	#, j2
	vmovsd	(%rsi), %xmm3	# *a_14(D), D.15886
	leal	(%rdi,%rdi), %r15d	#, j1
	movslq	%r14d, %rcx	# j2, D.15887
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leal	(%r14,%r15), %r9d	#, j3
	salq	$3, %rcx	#, D.15887
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%r15d, %r10	# j1, D.15887
	leaq	8(%rsi,%rcx), %r11	#, D.15888
	movslq	%r9d, %r9	# j3, D.15887
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	salq	$3, %r9	#, D.15887
	vmovsd	(%r11), %xmm2	# *_25, D.15886
	leaq	(%rsi,%rcx), %rax	#, D.15888
	leaq	(%rsi,%r9), %rbx	#, D.15888
	vmovsd	(%rax), %xmm1	# *_18, D.15886
	vaddsd	%xmm0, %xmm2, %xmm9	# D.15886, D.15886, D.15886
	leaq	(%rsi,%r10,8), %rcx	#, D.15888
	vsubsd	%xmm0, %xmm2, %xmm0	# D.15886, D.15886, x1i
	vmovsd	(%rbx), %xmm2	# *_36, D.15886
	vmovsd	(%rcx), %xmm7	# *_32, D.15886
	vaddsd	%xmm3, %xmm1, %xmm8	# D.15886, D.15886, x0r
	leaq	8(%rsi,%r10,8), %rbp	#, D.15888
	leaq	8(%rsi,%r9), %r8	#, D.15888
	vsubsd	%xmm1, %xmm3, %xmm1	# D.15886, D.15886, x1r
	vmovsd	0(%rbp), %xmm3	# *_41, D.15886
	vaddsd	%xmm7, %xmm2, %xmm5	# D.15886, D.15886, x2r
	vmovsd	(%r8), %xmm6	# *_45, D.15886
	vsubsd	%xmm2, %xmm7, %xmm2	# D.15886, D.15886, x3r
	vaddsd	%xmm3, %xmm6, %xmm4	# D.15886, D.15886, x2i
	vsubsd	%xmm6, %xmm3, %xmm3	# D.15886, D.15886, x3i
	vaddsd	%xmm8, %xmm5, %xmm6	# x0r, x2r, D.15886
	vsubsd	%xmm5, %xmm8, %xmm5	# x2r, x0r, D.15886
	vmovsd	%xmm6, (%rsi)	# D.15886, *a_14(D)
	vaddsd	%xmm4, %xmm9, %xmm6	# x2i, D.15886, D.15886
	vxorpd	.LC13(%rip), %xmm6, %xmm6	#, D.15886, D.15886
	vsubsd	%xmm9, %xmm4, %xmm4	# D.15886, x2i, D.15886
	vmovsd	%xmm6, 8(%rsi)	# D.15886, MEM[(double *)a_14(D) + 8B]
	vmovsd	%xmm5, (%rcx)	# D.15886, *_32
	vmovsd	%xmm4, 0(%rbp)	# D.15886, *_41
	vaddsd	%xmm1, %xmm3, %xmm4	# x1r, x3i, D.15886
	vsubsd	%xmm3, %xmm1, %xmm1	# x3i, x1r, D.15886
	vmovsd	%xmm4, (%rax)	# D.15886, *_18
	vaddsd	%xmm0, %xmm2, %xmm4	# x1i, x3r, D.15886
	vsubsd	%xmm2, %xmm0, %xmm0	# x3r, x1i, D.15886
	vmovsd	%xmm4, (%r11)	# D.15886, *_25
	vmovsd	%xmm1, (%rbx)	# D.15886, *_36
	vmovsd	%xmm0, (%r8)	# D.15886, *_45
	vmovsd	8(%rdx), %xmm2	# MEM[(double *)w_66(D) + 8B], wn4r
	vmovsd	%xmm2, -8(%rsp)	# wn4r, %sfp
	vmovsd	16(%rdx), %xmm2	# MEM[(double *)w_66(D) + 16B], csc1
	vmovsd	%xmm2, -24(%rsp)	# csc1, %sfp
	vmovsd	24(%rdx), %xmm2	# MEM[(double *)w_66(D) + 24B], csc3
	vmovsd	%xmm2, -16(%rsp)	# csc3, %sfp
	cmpl	$4, %edi	#, j0
	jle	.L227	#,
	leal	2(%r14), %r8d	#, D.15892
	vxorpd	%xmm1, %xmm1, %xmm1	# wd3i
	movq	%rsi, %rbp	# a, ivtmp.546
	xorl	%r12d, %r12d	# ivtmp.540
	leal	-5(%rdi), %r13d	#, D.15890
	movslq	%r8d, %r8	# D.15892, D.15887
	vmovapd	%xmm1, %xmm6	# wd3i, wd1i
	vmovsd	.LC0(%rip), %xmm0	#, wd3r
	addq	%r10, %r8	# D.15887, D.15887
	shrl	$2, %r13d	#,
	leaq	(%rsi,%r8,8), %rbx	#, ivtmp.557
	addq	$1, %r13	#, D.15889
	vmovapd	%xmm0, %xmm7	# wd3r, wd1r
	leal	-2(%r14), %r8d	#, D.15892
	salq	$5, %r13	#, D.15889
	movslq	%r8d, %r9	# D.15892, D.15887
	addl	%r15d, %r8d	# j1, D.15892
	movslq	%r8d, %r8	# D.15892, D.15887
	addq	%r10, %r9	# D.15887, D.15887
	leaq	(%rsi,%r9,8), %r11	#, ivtmp.567
	addq	%r10, %r8	# D.15887, D.15887
	movq	%rcx, %r9	# ivtmp.566, ivtmp.556
	leaq	(%rsi,%r8,8), %r10	#, ivtmp.576
	movq	%rax, %r8	# ivtmp.575, ivtmp.548
	.p2align 4,,10
	.p2align 3
.L226:
	vmovsd	32(%rdx,%r12), %xmm15	# MEM[base: w_66(D), index: ivtmp.540_1050, offset: 32B], wd1r
	addq	$32, %rbp	#, ivtmp.546
	addq	$32, %r8	#, ivtmp.548
	addq	$32, %r9	#, ivtmp.556
	vmovsd	56(%rdx,%r12), %xmm13	# MEM[base: w_66(D), index: ivtmp.540_1050, offset: 56B], wd3i
	addq	$32, %rbx	#, ivtmp.557
	subq	$32, %rcx	#, ivtmp.566
	subq	$32, %r11	#, ivtmp.567
	vaddsd	%xmm15, %xmm7, %xmm7	# wd1r, wd1r, D.15886
	vmovsd	-24(%rsp), %xmm5	# %sfp, csc1
	subq	$32, %rax	#, ivtmp.575
	subq	$32, %r10	#, ivtmp.576
	vmovsd	40(%rdx,%r12), %xmm10	# MEM[base: w_66(D), index: ivtmp.540_1050, offset: 40B], wd1i
	vaddsd	%xmm13, %xmm1, %xmm1	# wd3i, wd3i, D.15886
	vmovsd	-16(%rsp), %xmm3	# %sfp, csc3
	vmulsd	%xmm5, %xmm7, %xmm2	# csc1, D.15886, wk1r
	vmovsd	48(%rdx,%r12), %xmm7	# MEM[base: w_66(D), index: ivtmp.540_1050, offset: 48B], wd3r
	vaddsd	%xmm10, %xmm6, %xmm6	# wd1i, wd1i, D.15886
	addq	$32, %r12	#, ivtmp.540
	vmulsd	%xmm3, %xmm1, %xmm1	# csc3, D.15886, wk3i
	vmovsd	8(%r8), %xmm14	# MEM[base: _969, offset: 40B], D.15886
	vaddsd	%xmm7, %xmm0, %xmm0	# wd3r, wd3r, D.15886
	vmovsd	0(%rbp), %xmm11	# MEM[base: _970, offset: 32B], D.15886
	vmovsd	%xmm7, -96(%rsp)	# wd3r, %sfp
	vmulsd	%xmm5, %xmm6, %xmm5	# csc1, D.15886, wk1i
	vmovsd	-32(%rbx), %xmm8	# MEM[base: _961, offset: 0B], D.15886
	vmovsd	8(%r9), %xmm12	# MEM[base: _962, offset: 40B], D.15886
	vmulsd	%xmm3, %xmm0, %xmm6	# csc3, D.15886, wk3r
	vmovsd	-8(%r8), %xmm3	# MEM[base: _969, offset: 24B], D.15886
	vmovsd	%xmm2, -88(%rsp)	# wk1r, %sfp
	vmovsd	-8(%rbp), %xmm0	# MEM[base: _970, offset: 24B], D.15886
	vmovsd	%xmm1, -64(%rsp)	# wk3i, %sfp
	vmovsd	-16(%rbp), %xmm2	# MEM[base: _970, offset: 16B], D.15886
	vmovsd	-16(%r8), %xmm1	# MEM[base: _969, offset: 16B], D.15886
	vaddsd	%xmm0, %xmm3, %xmm9	# D.15886, D.15886, D.15886
	vmovsd	%xmm5, -80(%rsp)	# wk1i, %sfp
	vsubsd	%xmm0, %xmm3, %xmm0	# D.15886, D.15886, x1i
	vmovsd	(%r8), %xmm3	# MEM[base: _969, offset: 32B], D.15886
	vmovsd	%xmm6, -72(%rsp)	# wk3r, %sfp
	vaddsd	%xmm2, %xmm1, %xmm6	# D.15886, D.15886, x0r
	vsubsd	%xmm1, %xmm2, %xmm2	# D.15886, D.15886, x1r
	vmovsd	8(%rbp), %xmm1	# MEM[base: _970, offset: 40B], D.15886
	vmovsd	%xmm9, -56(%rsp)	# D.15886, %sfp
	vaddsd	%xmm11, %xmm3, %xmm4	# D.15886, D.15886, y0r
	vaddsd	%xmm1, %xmm14, %xmm9	# D.15886, D.15886, D.15886
	vsubsd	%xmm1, %xmm14, %xmm7	# D.15886, D.15886, y1i
	vmovsd	-24(%rbx), %xmm1	# MEM[base: _961, offset: 8B], D.15886
	vmovsd	-16(%rbx), %xmm14	# MEM[base: _961, offset: 16B], D.15886
	vmovsd	%xmm9, -48(%rsp)	# D.15886, %sfp
	vsubsd	%xmm3, %xmm11, %xmm9	# D.15886, D.15886, y1r
	vmovsd	-16(%r9), %xmm11	# MEM[base: _962, offset: 16B], D.15886
	vaddsd	%xmm11, %xmm8, %xmm3	# D.15886, D.15886, x2r
	vsubsd	%xmm8, %xmm11, %xmm11	# D.15886, D.15886, x3r
	vmovsd	%xmm3, -40(%rsp)	# x2r, %sfp
	vmovsd	-8(%r9), %xmm3	# MEM[base: _962, offset: 24B], D.15886
	vmovsd	%xmm11, -32(%rsp)	# x3r, %sfp
	vmovsd	(%r9), %xmm11	# MEM[base: _962, offset: 32B], D.15886
	vaddsd	%xmm3, %xmm1, %xmm5	# D.15886, D.15886, x2i
	vaddsd	%xmm11, %xmm14, %xmm8	# D.15886, D.15886, y2r
	vsubsd	%xmm1, %xmm3, %xmm1	# D.15886, D.15886, x3i
	vsubsd	%xmm14, %xmm11, %xmm14	# D.15886, D.15886, y3r
	vaddsd	-8(%rbx), %xmm12, %xmm3	# MEM[base: _961, offset: 24B], D.15886, y2i
	vsubsd	-8(%rbx), %xmm12, %xmm11	# MEM[base: _961, offset: 24B], D.15886, y3i
	vaddsd	-40(%rsp), %xmm6, %xmm12	# %sfp, x0r, D.15886
	vmovsd	%xmm12, -16(%rbp)	# D.15886, MEM[base: _970, offset: 16B]
	vaddsd	-56(%rsp), %xmm5, %xmm12	# %sfp, x2i, D.15886
	vxorpd	.LC13(%rip), %xmm12, %xmm12	#, D.15886, D.15886
	vmovsd	%xmm12, -8(%rbp)	# D.15886, MEM[base: _970, offset: 24B]
	vaddsd	%xmm4, %xmm8, %xmm12	# y0r, y2r, D.15886
	vsubsd	%xmm8, %xmm4, %xmm4	# y2r, y0r, D.15886
	vmovsd	-88(%rsp), %xmm8	# %sfp, wk1r
	vsubsd	-40(%rsp), %xmm6, %xmm6	# %sfp, x0r, D.15886
	vmovsd	%xmm12, 0(%rbp)	# D.15886, MEM[base: _970, offset: 32B]
	vaddsd	-48(%rsp), %xmm3, %xmm12	# %sfp, y2i, D.15886
	vxorpd	.LC13(%rip), %xmm12, %xmm12	#, D.15886, D.15886
	vsubsd	-48(%rsp), %xmm3, %xmm3	# %sfp, y2i, D.15886
	vmovsd	%xmm12, 8(%rbp)	# D.15886, MEM[base: _970, offset: 40B]
	vsubsd	-56(%rsp), %xmm5, %xmm5	# %sfp, x2i, D.15886
	vmovsd	%xmm4, (%r9)	# D.15886, MEM[base: _962, offset: 32B]
	vaddsd	-32(%rsp), %xmm0, %xmm4	# %sfp, x1i, x0i
	vmovsd	%xmm6, -16(%r9)	# D.15886, MEM[base: _962, offset: 16B]
	vmovsd	%xmm3, 8(%r9)	# D.15886, MEM[base: _962, offset: 40B]
	vaddsd	%xmm2, %xmm1, %xmm3	# x1r, x3i, x0r
	vmovsd	-80(%rsp), %xmm12	# %sfp, wk1i
	vmovsd	%xmm5, -8(%r9)	# D.15886, MEM[base: _962, offset: 24B]
	vsubsd	%xmm1, %xmm2, %xmm1	# x3i, x1r, x0r
	vmulsd	%xmm12, %xmm4, %xmm5	# wk1i, x0i, D.15886
	vsubsd	-32(%rsp), %xmm0, %xmm0	# %sfp, x1i, x0i
	vmulsd	%xmm8, %xmm3, %xmm6	# wk1r, x0r, D.15886
	vmulsd	%xmm8, %xmm4, %xmm4	# wk1r, x0i, D.15886
	vmovsd	-64(%rsp), %xmm8	# %sfp, wk3i
	vmulsd	%xmm12, %xmm3, %xmm3	# wk1i, x0r, D.15886
	vmulsd	%xmm8, %xmm0, %xmm2	# wk3i, x0i, D.15886
	vsubsd	%xmm5, %xmm6, %xmm5	# D.15886, D.15886, D.15886
	vaddsd	%xmm4, %xmm3, %xmm3	# D.15886, D.15886, D.15886
	vaddsd	%xmm7, %xmm14, %xmm4	# y1i, y3r, x0i
	vmovsd	%xmm5, -16(%r8)	# D.15886, MEM[base: _969, offset: 16B]
	vsubsd	%xmm14, %xmm7, %xmm14	# y3r, y1i, x0i
	vmovsd	-96(%rsp), %xmm7	# %sfp, wd3r
	vmovsd	%xmm3, -8(%r8)	# D.15886, MEM[base: _969, offset: 24B]
	vaddsd	%xmm9, %xmm11, %xmm3	# y1r, y3i, x0r
	vmulsd	%xmm10, %xmm4, %xmm5	# wd1i, x0i, D.15886
	vsubsd	%xmm11, %xmm9, %xmm11	# y3i, y1r, x0r
	vmulsd	%xmm15, %xmm4, %xmm4	# wd1r, x0i, D.15886
	vmulsd	%xmm15, %xmm3, %xmm6	# wd1r, x0r, D.15886
	vmulsd	%xmm10, %xmm3, %xmm3	# wd1i, x0r, D.15886
	vsubsd	%xmm5, %xmm6, %xmm5	# D.15886, D.15886, D.15886
	vaddsd	%xmm4, %xmm3, %xmm3	# D.15886, D.15886, D.15886
	vmovsd	-72(%rsp), %xmm4	# %sfp, wk3r
	vmulsd	%xmm4, %xmm0, %xmm0	# wk3r, x0i, D.15886
	vmovsd	%xmm5, (%r8)	# D.15886, MEM[base: _969, offset: 32B]
	vmovsd	%xmm3, 8(%r8)	# D.15886, MEM[base: _969, offset: 40B]
	vmulsd	%xmm4, %xmm1, %xmm3	# wk3r, x0r, D.15886
	vmulsd	%xmm8, %xmm1, %xmm1	# wk3i, x0r, D.15886
	vaddsd	%xmm3, %xmm2, %xmm2	# D.15886, D.15886, D.15886
	vsubsd	%xmm1, %xmm0, %xmm0	# D.15886, D.15886, D.15886
	vmulsd	%xmm7, %xmm11, %xmm1	# wd3r, x0r, D.15886
	vmulsd	%xmm13, %xmm11, %xmm11	# wd3i, x0r, D.15886
	vmovsd	%xmm2, -32(%rbx)	# D.15886, MEM[base: _961, offset: 0B]
	vmovsd	%xmm0, -24(%rbx)	# D.15886, MEM[base: _961, offset: 8B]
	vmulsd	%xmm13, %xmm14, %xmm0	# wd3i, x0i, D.15886
	vmulsd	%xmm7, %xmm14, %xmm14	# wd3r, x0i, D.15886
	vaddsd	%xmm1, %xmm0, %xmm0	# D.15886, D.15886, D.15886
	vsubsd	%xmm11, %xmm14, %xmm14	# D.15886, D.15886, D.15886
	vmovsd	%xmm0, -16(%rbx)	# D.15886, MEM[base: _961, offset: 16B]
	vmovsd	%xmm14, -8(%rbx)	# D.15886, MEM[base: _961, offset: 24B]
	vmovsd	40(%r11), %xmm1	# MEM[base: _937, offset: 8B], D.15886
	vmovsd	24(%rcx), %xmm0	# MEM[base: _938, offset: -8B], D.15886
	vmovsd	16(%rcx), %xmm3	# MEM[base: _938, offset: -16B], D.15886
	vaddsd	%xmm0, %xmm1, %xmm8	# D.15886, D.15886, D.15886
	vmovsd	32(%r11), %xmm2	# MEM[base: _937, offset: 0B], D.15886
	vsubsd	%xmm0, %xmm1, %xmm0	# D.15886, D.15886, x1i
	vaddsd	%xmm3, %xmm2, %xmm7	# D.15886, D.15886, x0r
	vmovsd	%xmm8, -56(%rsp)	# D.15886, %sfp
	vsubsd	%xmm2, %xmm3, %xmm2	# D.15886, D.15886, x1r
	vmovsd	8(%rcx), %xmm3	# MEM[base: _938, offset: -24B], D.15886
	vmovsd	24(%r11), %xmm14	# MEM[base: _937, offset: -8B], D.15886
	vmovsd	32(%r10), %xmm9	# MEM[base: _929, offset: 0B], D.15886
	vaddsd	%xmm3, %xmm14, %xmm8	# D.15886, D.15886, D.15886
	vmovsd	16(%rax), %xmm12	# MEM[base: _930, offset: -16B], D.15886
	vmovsd	16(%r11), %xmm1	# MEM[base: _937, offset: -16B], D.15886
	vmovsd	(%rcx), %xmm4	# MEM[base: _938, offset: -32B], D.15886
	vaddsd	%xmm12, %xmm9, %xmm11	# D.15886, D.15886, x2r
	vmovsd	%xmm8, -48(%rsp)	# D.15886, %sfp
	vsubsd	%xmm3, %xmm14, %xmm8	# D.15886, D.15886, y1i
	vmovsd	40(%r10), %xmm3	# MEM[base: _929, offset: 8B], D.15886
	vsubsd	%xmm9, %xmm12, %xmm14	# D.15886, D.15886, x3r
	vmovsd	(%rax), %xmm12	# MEM[base: _930, offset: -32B], D.15886
	vaddsd	%xmm4, %xmm1, %xmm5	# D.15886, D.15886, y0r
	vsubsd	%xmm1, %xmm4, %xmm1	# D.15886, D.15886, y1r
	vmovsd	24(%rax), %xmm4	# MEM[base: _930, offset: -8B], D.15886
	vmovsd	%xmm14, -32(%rsp)	# x3r, %sfp
	vmovsd	16(%r10), %xmm14	# MEM[base: _929, offset: -16B], D.15886
	vaddsd	%xmm4, %xmm3, %xmm6	# D.15886, D.15886, x2i
	vaddsd	%xmm12, %xmm14, %xmm9	# D.15886, D.15886, y2r
	vsubsd	%xmm3, %xmm4, %xmm3	# D.15886, D.15886, x3i
	vsubsd	%xmm14, %xmm12, %xmm14	# D.15886, D.15886, y3r
	vaddsd	%xmm7, %xmm11, %xmm12	# x0r, x2r, D.15886
	vmovsd	%xmm3, -40(%rsp)	# x3i, %sfp
	vmovsd	8(%rax), %xmm3	# MEM[base: _930, offset: -24B], D.15886
	vsubsd	%xmm11, %xmm7, %xmm7	# x2r, x0r, D.15886
	vaddsd	24(%r10), %xmm3, %xmm4	# MEM[base: _929, offset: -8B], D.15886, y2i
	vsubsd	24(%r10), %xmm3, %xmm3	# MEM[base: _929, offset: -8B], D.15886, y3i
	vmovsd	%xmm12, 16(%rcx)	# D.15886, MEM[base: _938, offset: -16B]
	vaddsd	-56(%rsp), %xmm6, %xmm12	# %sfp, x2i, D.15886
	vxorpd	.LC13(%rip), %xmm12, %xmm12	#, D.15886, D.15886
	vmovsd	%xmm12, 24(%rcx)	# D.15886, MEM[base: _938, offset: -8B]
	vaddsd	%xmm5, %xmm9, %xmm12	# y0r, y2r, D.15886
	vmovsd	-80(%rsp), %xmm11	# %sfp, wk1i
	vsubsd	%xmm9, %xmm5, %xmm5	# y2r, y0r, D.15886
	vsubsd	-56(%rsp), %xmm6, %xmm6	# %sfp, x2i, D.15886
	vmovsd	%xmm12, (%rcx)	# D.15886, MEM[base: _938, offset: -32B]
	vaddsd	-48(%rsp), %xmm4, %xmm12	# %sfp, y2i, D.15886
	vxorpd	.LC13(%rip), %xmm12, %xmm12	#, D.15886, D.15886
	vsubsd	-48(%rsp), %xmm4, %xmm4	# %sfp, y2i, D.15886
	vmovsd	%xmm12, 8(%rcx)	# D.15886, MEM[base: _938, offset: -24B]
	vmovsd	-32(%rsp), %xmm12	# %sfp, x3r
	vmovsd	%xmm5, (%rax)	# D.15886, MEM[base: _930, offset: -32B]
	vmovsd	%xmm7, 16(%rax)	# D.15886, MEM[base: _930, offset: -16B]
	vmovsd	%xmm4, 8(%rax)	# D.15886, MEM[base: _930, offset: -24B]
	vaddsd	%xmm12, %xmm0, %xmm5	# x3r, x1i, x0i
	vaddsd	-40(%rsp), %xmm2, %xmm4	# %sfp, x1r, x0r
	vmovsd	%xmm6, 24(%rax)	# D.15886, MEM[base: _930, offset: -8B]
	vmovsd	-88(%rsp), %xmm9	# %sfp, wk1r
	vsubsd	%xmm12, %xmm0, %xmm0	# x3r, x1i, x0i
	vsubsd	-40(%rsp), %xmm2, %xmm2	# %sfp, x1r, x0r
	vmulsd	%xmm11, %xmm4, %xmm7	# wk1i, x0r, D.15886
	vmulsd	%xmm9, %xmm5, %xmm6	# wk1r, x0i, D.15886
	vmulsd	%xmm9, %xmm4, %xmm4	# wk1r, x0r, D.15886
	vmovsd	-64(%rsp), %xmm9	# %sfp, wk3i
	vmulsd	%xmm11, %xmm5, %xmm5	# wk1i, x0i, D.15886
	vsubsd	%xmm6, %xmm7, %xmm6	# D.15886, D.15886, D.15886
	vaddsd	%xmm5, %xmm4, %xmm4	# D.15886, D.15886, D.15886
	vaddsd	%xmm8, %xmm14, %xmm5	# y1i, y3r, x0i
	vmovsd	%xmm6, 32(%r11)	# D.15886, MEM[base: _937, offset: 0B]
	vsubsd	%xmm14, %xmm8, %xmm14	# y3r, y1i, x0i
	vmovsd	%xmm4, 40(%r11)	# D.15886, MEM[base: _937, offset: 8B]
	vaddsd	%xmm1, %xmm3, %xmm4	# y1r, y3i, x0r
	vmulsd	%xmm15, %xmm5, %xmm6	# wd1r, x0i, D.15886
	vsubsd	%xmm3, %xmm1, %xmm3	# y3i, y1r, x0r
	vmulsd	%xmm10, %xmm5, %xmm5	# wd1i, x0i, D.15886
	vmulsd	%xmm10, %xmm4, %xmm7	# wd1i, x0r, D.15886
	vmulsd	%xmm15, %xmm4, %xmm4	# wd1r, x0r, D.15886
	vmulsd	%xmm13, %xmm3, %xmm1	# wd3i, x0r, D.15886
	vsubsd	%xmm6, %xmm7, %xmm6	# D.15886, D.15886, D.15886
	vmovsd	-96(%rsp), %xmm7	# %sfp, wd3r
	vaddsd	%xmm5, %xmm4, %xmm4	# D.15886, D.15886, D.15886
	vmulsd	%xmm9, %xmm2, %xmm5	# wk3i, x0r, D.15886
	vmulsd	%xmm7, %xmm3, %xmm3	# wd3r, x0r, D.15886
	vmovsd	%xmm6, 16(%r11)	# D.15886, MEM[base: _937, offset: -16B]
	vmovsd	-72(%rsp), %xmm6	# %sfp, wk3r
	vmovsd	%xmm4, 24(%r11)	# D.15886, MEM[base: _937, offset: -8B]
	vmulsd	%xmm6, %xmm2, %xmm2	# wk3r, x0r, D.15886
	vmulsd	%xmm6, %xmm0, %xmm4	# wk3r, x0i, D.15886
	vmovapd	%xmm10, %xmm6	# wd1i, wd1i
	vmulsd	%xmm9, %xmm0, %xmm0	# wk3i, x0i, D.15886
	vaddsd	%xmm5, %xmm4, %xmm4	# D.15886, D.15886, D.15886
	vsubsd	%xmm2, %xmm0, %xmm0	# D.15886, D.15886, D.15886
	vmovsd	%xmm4, 32(%r10)	# D.15886, MEM[base: _929, offset: 0B]
	vmovsd	%xmm0, 40(%r10)	# D.15886, MEM[base: _929, offset: 8B]
	vmulsd	%xmm7, %xmm14, %xmm0	# wd3r, x0i, D.15886
	vmulsd	%xmm13, %xmm14, %xmm14	# wd3i, x0i, D.15886
	vaddsd	%xmm1, %xmm0, %xmm0	# D.15886, D.15886, D.15886
	vmovapd	%xmm13, %xmm1	# wd3i, wd3i
	vsubsd	%xmm3, %xmm14, %xmm14	# D.15886, D.15886, D.15886
	vmovsd	%xmm0, 16(%r10)	# D.15886, MEM[base: _929, offset: -16B]
	vmovapd	%xmm7, %xmm0	# wd3r, wd3r
	vmovapd	%xmm15, %xmm7	# wd1r, wd1r
	vmovsd	%xmm14, 24(%r10)	# D.15886, MEM[base: _929, offset: -8B]
	cmpq	%r13, %r12	# D.15889, ivtmp.540
	jne	.L226	#,
	vmovapd	%xmm15, %xmm2	# wd1r, wd1r
	vmovapd	%xmm10, %xmm0	# wd1i, wd1i
.L225:
	vmovsd	-8(%rsp), %xmm15	# %sfp, wn4r
	vmovapd	%xmm2, %xmm1	# wd1r, wd1r
	movl	%r14d, %ecx	# j2, j1
	vmovsd	-24(%rsp), %xmm7	# %sfp, csc1
	subl	%edi, %ecx	# j0, j1
	movslq	%edi, %rdi	# j0, D.15887
	vaddsd	%xmm0, %xmm15, %xmm3	# wd1i, wn4r, D.15886
	leal	(%rcx,%r15), %eax	#, j2
	vmovsd	-16(%rsp), %xmm5	# %sfp, csc3
	movslq	%ecx, %rcx	# j1, D.15887
	vaddsd	%xmm15, %xmm1, %xmm1	# wn4r, wd1r, D.15886
	leaq	0(,%rdi,8), %r8	#, D.15887
	movslq	%eax, %r9	# j2, D.15887
	movq	%rcx, -88(%rsp)	# D.15887, %sfp
	leaq	-16(%rsi,%r8), %rdx	#, D.15888
	vsubsd	%xmm15, %xmm13, %xmm0	# wn4r, wd3i, D.15886
	addl	%r15d, %eax	# j1, j3
	vmulsd	%xmm7, %xmm3, %xmm3	# csc1, D.15886, wk1i
	cltq
	salq	$3, %rcx	#, D.15887
	vmulsd	%xmm7, %xmm1, %xmm1	# csc1, D.15886, wk1r
	vmovsd	-96(%rsp), %xmm7	# %sfp, wd3r
	movq	%rdx, -96(%rsp)	# D.15888, %sfp
	leaq	-8(%rsi,%r8), %r14	#, D.15888
	movq	%rax, -80(%rsp)	# D.15887, %sfp
	salq	$3, %rax	#, D.15887
	addq	%rsi, %r8	# a, D.15888
	vsubsd	%xmm15, %xmm7, %xmm2	# wn4r, wd3r, D.15886
	vmovsd	(%rdx), %xmm7	# *_386, D.15886
	vmulsd	%xmm5, %xmm0, %xmm0	# csc3, D.15886, wk3i
	leaq	0(,%r9,8), %rdx	#, D.15887
	movq	-96(%rsp), %r15	# %sfp, D.15888
	leaq	-8(%rsi,%rdx), %rbx	#, D.15888
	vmovsd	(%rbx), %xmm4	# *_399, D.15886
	vmulsd	%xmm5, %xmm2, %xmm2	# csc3, D.15886, wk3r
	vmovsd	(%r14), %xmm5	# *_395, D.15886
	leaq	-16(%rsi,%rdx), %rbp	#, D.15888
	addq	%rsi, %rdx	# a, D.15888
	leaq	-16(%rsi,%rcx), %r13	#, D.15888
	vmovsd	0(%rbp), %xmm6	# *_391, D.15886
	leaq	-16(%rsi,%rax), %r11	#, D.15888
	vmovsd	0(%r13), %xmm13	# *_407, D.15886
	vaddsd	%xmm5, %xmm4, %xmm11	# D.15886, D.15886, D.15886
	vsubsd	%xmm5, %xmm4, %xmm5	# D.15886, D.15886, x1i
	vmovsd	(%r11), %xmm4	# *_412, D.15886
	leaq	-8(%rsi,%rcx), %r12	#, D.15888
	addq	%rsi, %rcx	# a, D.15888
	vaddsd	%xmm7, %xmm6, %xmm9	# D.15886, D.15886, x0r
	leaq	-8(%rsi,%rax), %r10	#, D.15888
	vmovsd	(%r12), %xmm10	# *_416, D.15886
	addq	%rsi, %rax	# a, D.15888
	vaddsd	%xmm13, %xmm4, %xmm12	# D.15886, D.15886, x2r
	vsubsd	%xmm6, %xmm7, %xmm7	# D.15886, D.15886, x1r
	vmovsd	(%r10), %xmm6	# *_419, D.15886
	vsubsd	%xmm4, %xmm13, %xmm4	# D.15886, D.15886, x3r
	vaddsd	%xmm10, %xmm6, %xmm8	# D.15886, D.15886, x2i
	vsubsd	%xmm6, %xmm10, %xmm6	# D.15886, D.15886, x3i
	vaddsd	%xmm9, %xmm12, %xmm10	# x0r, x2r, D.15886
	vsubsd	%xmm12, %xmm9, %xmm9	# x2r, x0r, D.15886
	vmovsd	%xmm10, (%r15)	# D.15886, *_386
	vaddsd	%xmm8, %xmm11, %xmm10	# x2i, D.15886, D.15886
	vxorpd	.LC13(%rip), %xmm10, %xmm10	#, D.15886, D.15886
	vsubsd	%xmm11, %xmm8, %xmm8	# D.15886, x2i, D.15886
	vmovsd	%xmm10, (%r14)	# D.15886, *_395
	vmovsd	%xmm9, 0(%r13)	# D.15886, *_407
	vaddsd	%xmm5, %xmm4, %xmm9	# x1i, x3r, x0i
	vsubsd	%xmm4, %xmm5, %xmm4	# x3r, x1i, x0i
	vmovsd	%xmm8, (%r12)	# D.15886, *_416
	vaddsd	%xmm7, %xmm6, %xmm8	# x1r, x3i, x0r
	vsubsd	%xmm6, %xmm7, %xmm6	# x3i, x1r, x0r
	vmulsd	%xmm9, %xmm3, %xmm11	# x0i, wk1i, D.15886
	vmulsd	%xmm4, %xmm0, %xmm5	# x0i, wk3i, D.15886
	vmulsd	%xmm8, %xmm1, %xmm10	# x0r, wk1r, D.15886
	vmulsd	%xmm6, %xmm2, %xmm7	# x0r, wk3r, D.15886
	vmulsd	%xmm9, %xmm1, %xmm9	# x0i, wk1r, D.15886
	vmulsd	%xmm8, %xmm3, %xmm8	# x0r, wk1i, D.15886
	vmulsd	%xmm6, %xmm0, %xmm6	# x0r, wk3i, D.15886
	vmulsd	%xmm4, %xmm2, %xmm4	# x0i, wk3r, D.15886
	vsubsd	%xmm11, %xmm10, %xmm10	# D.15886, D.15886, D.15886
	vaddsd	%xmm7, %xmm5, %xmm5	# D.15886, D.15886, D.15886
	vaddsd	%xmm9, %xmm8, %xmm8	# D.15886, D.15886, D.15886
	vmovsd	%xmm10, 0(%rbp)	# D.15886, *_391
	vsubsd	%xmm6, %xmm4, %xmm4	# D.15886, D.15886, D.15886
	vmovsd	%xmm8, (%rbx)	# D.15886, *_399
	vmovsd	%xmm5, (%r11)	# D.15886, *_412
	leaq	8(,%rdi,8), %r11	#, D.15889
	movq	-88(%rsp), %rdi	# %sfp, D.15887
	vmovsd	%xmm4, (%r10)	# D.15886, *_419
	vmovsd	(%rdx), %xmm4	# *_454, D.15886
	leaq	(%rsi,%r11), %r12	#, D.15888
	leaq	8(,%r9,8), %r10	#, D.15889
	vmovsd	(%r8), %xmm5	# *_452, D.15886
	leaq	(%rsi,%r10), %rbp	#, D.15888
	vmovsd	(%r12), %xmm6	# *_459, D.15886
	leaq	8(,%rdi,8), %r9	#, D.15889
	vmovsd	(%rcx), %xmm13	# *_469, D.15886
	vaddsd	%xmm5, %xmm4, %xmm8	# D.15886, D.15886, x0r
	leaq	(%rsi,%r9), %r13	#, D.15888
	vmovsd	0(%rbp), %xmm7	# *_464, D.15886
	vsubsd	%xmm4, %xmm5, %xmm5	# D.15886, D.15886, x1r
	vmovsd	(%rax), %xmm9	# *_471, D.15886
	vmovsd	0(%r13), %xmm4	# *_476, D.15886
	vaddsd	%xmm6, %xmm7, %xmm11	# D.15886, D.15886, D.15886
	movq	-80(%rsp), %rdi	# %sfp, D.15887
	vaddsd	%xmm13, %xmm9, %xmm12	# D.15886, D.15886, x2r
	vsubsd	%xmm6, %xmm7, %xmm7	# D.15886, D.15886, x1i
	vsubsd	%xmm9, %xmm13, %xmm9	# D.15886, D.15886, x3r
	leaq	8(,%rdi,8), %rdi	#, D.15889
	leaq	(%rsi,%rdi), %rbx	#, D.15888
	vmovsd	(%rbx), %xmm10	# *_480, D.15886
	vaddsd	%xmm4, %xmm10, %xmm6	# D.15886, D.15886, x2i
	vsubsd	%xmm10, %xmm4, %xmm4	# D.15886, D.15886, x3i
	vaddsd	%xmm8, %xmm12, %xmm10	# x0r, x2r, D.15886
	vsubsd	%xmm12, %xmm8, %xmm8	# x2r, x0r, D.15886
	vmovsd	%xmm10, (%r8)	# D.15886, *_452
	vaddsd	%xmm6, %xmm11, %xmm10	# x2i, D.15886, D.15886
	leaq	8(%rsi,%r10), %r8	#, D.15888
	vxorpd	.LC13(%rip), %xmm10, %xmm10	#, D.15886, D.15886
	vsubsd	%xmm11, %xmm6, %xmm6	# D.15886, x2i, D.15886
	vmovsd	%xmm10, (%r12)	# D.15886, *_459
	vmovsd	%xmm8, (%rcx)	# D.15886, *_469
	vaddsd	%xmm7, %xmm9, %xmm10	# x1i, x3r, x0i
	leaq	16(%rsi,%r10), %rcx	#, D.15888
	leaq	8(%rsi,%r9), %r10	#, D.15888
	vmovsd	%xmm6, 0(%r13)	# D.15886, *_476
	vaddsd	%xmm5, %xmm4, %xmm6	# x1r, x3i, x0r
	leaq	16(%rsi,%r9), %r9	#, D.15888
	vsubsd	%xmm4, %xmm5, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm9, %xmm7, %xmm5	# x3r, x1i, x0i
	vmovapd	%xmm15, %xmm7	# wn4r, D.15886
	vxorpd	.LC13(%rip), %xmm7, %xmm7	#, D.15886, D.15886
	vsubsd	%xmm10, %xmm6, %xmm8	# x0i, x0r, D.15886
	vaddsd	%xmm10, %xmm6, %xmm6	# x0i, x0r, D.15886
	vmulsd	%xmm15, %xmm8, %xmm8	# wn4r, D.15886, D.15886
	vmulsd	%xmm15, %xmm6, %xmm6	# wn4r, D.15886, D.15886
	vmovsd	%xmm8, (%rdx)	# D.15886, *_454
	leaq	8(%rsi,%rdi), %rdx	#, D.15888
	vmovsd	%xmm6, 0(%rbp)	# D.15886, *_464
	vaddsd	%xmm5, %xmm4, %xmm6	# x0i, x0r, D.15886
	vsubsd	%xmm5, %xmm4, %xmm4	# x0i, x0r, D.15886
	vmulsd	%xmm7, %xmm6, %xmm6	# D.15886, D.15886, D.15886
	vmulsd	%xmm15, %xmm4, %xmm4	# wn4r, D.15886, D.15886
	vmovsd	%xmm6, (%rax)	# D.15886, *_471
	leaq	16(%rsi,%rdi), %rax	#, D.15888
	vmovsd	%xmm4, (%rbx)	# D.15886, *_480
	leaq	8(%rsi,%r11), %rbx	#, D.15888
	vmovsd	(%r8), %xmm4	# *_516, D.15886
	vmovsd	(%rbx), %xmm8	# *_512, D.15886
	leaq	16(%rsi,%r11), %r11	#, D.15888
	vmovsd	(%r10), %xmm13	# *_533, D.15886
	vaddsd	%xmm8, %xmm4, %xmm7	# D.15886, D.15886, x0r
	vmovsd	(%rcx), %xmm6	# *_526, D.15886
	vsubsd	%xmm4, %xmm8, %xmm4	# D.15886, D.15886, x1r
	vmovsd	(%rdx), %xmm8	# *_537, D.15886
	vmovsd	(%r9), %xmm10	# *_542, D.15886
	vaddsd	%xmm13, %xmm8, %xmm12	# D.15886, D.15886, x2r
	vmovsd	(%r11), %xmm5	# *_521, D.15886
	vmovsd	(%rax), %xmm9	# *_546, D.15886
	vsubsd	%xmm8, %xmm13, %xmm8	# D.15886, D.15886, x3r
	vaddsd	%xmm5, %xmm6, %xmm11	# D.15886, D.15886, D.15886
	vsubsd	%xmm5, %xmm6, %xmm5	# D.15886, D.15886, x1i
	vaddsd	%xmm10, %xmm9, %xmm6	# D.15886, D.15886, x2i
	vsubsd	%xmm9, %xmm10, %xmm9	# D.15886, D.15886, x3i
	vaddsd	%xmm7, %xmm12, %xmm10	# x0r, x2r, D.15886
	vsubsd	%xmm12, %xmm7, %xmm7	# x2r, x0r, D.15886
	vmovsd	%xmm10, (%rbx)	# D.15886, *_512
	vaddsd	%xmm6, %xmm11, %xmm10	# x2i, D.15886, D.15886
	vxorpd	.LC13(%rip), %xmm10, %xmm10	#, D.15886, D.15886
	vsubsd	%xmm11, %xmm6, %xmm6	# D.15886, x2i, D.15886
	vmovsd	%xmm10, (%r11)	# D.15886, *_521
	vmovsd	%xmm7, (%r10)	# D.15886, *_533
	vaddsd	%xmm4, %xmm9, %xmm10	# x1r, x3i, x0r
	vaddsd	%xmm5, %xmm8, %xmm7	# x1i, x3r, x0i
	vmovsd	%xmm6, (%r9)	# D.15886, *_542
	vmulsd	%xmm10, %xmm3, %xmm6	# x0r, wk1i, D.15886
	vmulsd	%xmm7, %xmm1, %xmm11	# x0i, wk1r, D.15886
	vmulsd	%xmm7, %xmm3, %xmm3	# x0i, wk1i, D.15886
	vmulsd	%xmm10, %xmm1, %xmm1	# x0r, wk1r, D.15886
	vsubsd	%xmm11, %xmm6, %xmm6	# D.15886, D.15886, D.15886
	vaddsd	%xmm3, %xmm1, %xmm1	# D.15886, D.15886, D.15886
	vmovsd	%xmm6, (%r8)	# D.15886, *_516
	vsubsd	%xmm8, %xmm5, %xmm3	# x3r, x1i, x0i
	vmovsd	%xmm1, (%rcx)	# D.15886, *_526
	vsubsd	%xmm9, %xmm4, %xmm1	# x3i, x1r, x0r
	vmulsd	%xmm3, %xmm2, %xmm4	# x0i, wk3r, D.15886
	vmulsd	%xmm1, %xmm0, %xmm5	# x0r, wk3i, D.15886
	vmulsd	%xmm1, %xmm2, %xmm2	# x0r, wk3r, D.15886
	vmulsd	%xmm3, %xmm0, %xmm0	# x0i, wk3i, D.15886
	vaddsd	%xmm5, %xmm4, %xmm4	# D.15886, D.15886, D.15886
	vsubsd	%xmm2, %xmm0, %xmm0	# D.15886, D.15886, D.15886
	vmovsd	%xmm4, (%rdx)	# D.15886, *_537
	vmovsd	%xmm0, (%rax)	# D.15886, *_546
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L227:
	.cfi_restore_state
	vmovsd	.LC0(%rip), %xmm2	#, wd3r
	vxorpd	%xmm13, %xmm13, %xmm13	# wd3i
	vmovapd	%xmm13, %xmm0	# wd3i, wd1i
	vmovsd	%xmm2, -96(%rsp)	# wd3r, %sfp
	jmp	.L225	#
	.cfi_endproc
.LFE66:
	.size	cftb1st, .-cftb1st
	.section	.text.unlikely
.LCOLDE30:
	.text
.LHOTE30:
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.p2align 4,,15
	.globl	cftmdl1
	.type	cftmdl1, @function
cftmdl1:
.LFB70:
	.cfi_startproc
	sarl	$3, %edi	#, j0
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leal	0(,%rdi,4), %r13d	#, j2
	leal	(%rdi,%rdi), %r14d	#, j1
	movslq	%r13d, %rax	# j2, D.15957
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leal	0(%r13,%r14), %r9d	#, j3
	salq	$3, %rax	#, D.15957
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movslq	%r14d, %r10	# j1, D.15957
	leaq	8(%rsi,%rax), %r11	#, D.15958
	movslq	%r9d, %r9	# j3, D.15957
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	vmovsd	8(%rsi), %xmm3	# MEM[(double *)a_10(D) + 8B], D.15956
	vmovsd	(%r11), %xmm0	# *_20, D.15956
	leaq	(%rsi,%rax), %rcx	#, D.15958
	salq	$3, %r9	#, D.15957
	leaq	(%rsi,%r10,8), %r8	#, D.15958
	vmovsd	(%rcx), %xmm1	# *_14, D.15956
	leaq	(%rsi,%r9), %rbx	#, D.15958
	vmovsd	(%r8), %xmm7	# *_27, D.15956
	vaddsd	%xmm3, %xmm0, %xmm10	# D.15956, D.15956, x0i
	vmovsd	(%rsi), %xmm9	# *a_10(D), D.15956
	vsubsd	%xmm0, %xmm3, %xmm0	# D.15956, D.15956, x1i
	leaq	8(%rsi,%r10,8), %rbp	#, D.15958
	vmovsd	(%rbx), %xmm3	# *_31, D.15956
	leaq	8(%rsi,%r9), %rax	#, D.15958
	vaddsd	%xmm9, %xmm1, %xmm8	# D.15956, D.15956, x0r
	vmovsd	0(%rbp), %xmm2	# *_36, D.15956
	vaddsd	%xmm7, %xmm3, %xmm4	# D.15956, D.15956, x2r
	vmovsd	(%rax), %xmm6	# *_40, D.15956
	vsubsd	%xmm1, %xmm9, %xmm9	# D.15956, D.15956, x1r
	vaddsd	%xmm2, %xmm6, %xmm5	# D.15956, D.15956, x2i
	vsubsd	%xmm6, %xmm2, %xmm1	# D.15956, D.15956, x3i
	vaddsd	%xmm8, %xmm4, %xmm2	# x0r, x2r, D.15956
	vsubsd	%xmm4, %xmm8, %xmm4	# x2r, x0r, D.15956
	vsubsd	%xmm3, %xmm7, %xmm3	# D.15956, D.15956, x3r
	vmovsd	%xmm2, (%rsi)	# D.15956, *a_10(D)
	vaddsd	%xmm10, %xmm5, %xmm2	# x0i, x2i, D.15956
	vmovsd	%xmm2, 8(%rsi)	# D.15956, MEM[(double *)a_10(D) + 8B]
	vsubsd	%xmm5, %xmm10, %xmm2	# x2i, x0i, D.15956
	vmovsd	%xmm4, (%r8)	# D.15956, *_27
	vmovsd	%xmm2, 0(%rbp)	# D.15956, *_36
	vsubsd	%xmm1, %xmm9, %xmm2	# x3i, x1r, D.15956
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, D.15956
	vmovsd	%xmm2, (%rcx)	# D.15956, *_14
	vaddsd	%xmm0, %xmm3, %xmm2	# x1i, x3r, D.15956
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, D.15956
	vmovsd	%xmm2, (%r11)	# D.15956, *_20
	vmovsd	%xmm1, (%rbx)	# D.15956, *_31
	vmovsd	%xmm0, (%rax)	# D.15956, *_40
	vmovsd	8(%rdx), %xmm5	# MEM[(double *)w_61(D) + 8B], wn4r
	cmpl	$2, %edi	#, j0
	jle	.L233	#,
	leal	2(%r13), %eax	#, D.15962
	leal	-3(%rdi), %r12d	#, D.15960
	cltq
	addq	%r10, %rax	# D.15957, D.15957
	shrl	%r12d	#
	leaq	(%rsi,%rax,8), %rbp	#, ivtmp.607
	addq	$1, %r12	#, D.15959
	leal	-2(%r13), %eax	#, D.15962
	salq	$4, %r12	#, D.15959
	movslq	%eax, %r9	# D.15962, D.15957
	addl	%r14d, %eax	# j1, D.15962
	cltq
	addq	%r10, %r9	# D.15957, D.15957
	leaq	(%rsi,%r9,8), %rbx	#, ivtmp.613
	addq	%r10, %rax	# D.15957, D.15957
	movq	%rcx, %r9	# ivtmp.617, ivtmp.602
	leaq	(%rsi,%rax,8), %r11	#, ivtmp.618
	movq	%r8, %r10	# ivtmp.612, ivtmp.606
	xorl	%eax, %eax	# ivtmp.599
	.p2align 4,,10
	.p2align 3
.L232:
	vmovsd	24(%rsi,%rax), %xmm1	# MEM[base: a_10(D), index: ivtmp.599_319, offset: 24B], D.15956
	addq	$16, %r9	#, ivtmp.602
	addq	$16, %r10	#, ivtmp.606
	addq	$16, %rbp	#, ivtmp.607
	vmovsd	8(%r9), %xmm2	# MEM[base: _494, offset: 24B], D.15956
	subq	$16, %r8	#, ivtmp.612
	subq	$16, %rbx	#, ivtmp.613
	subq	$16, %rcx	#, ivtmp.617
	vmovsd	(%r9), %xmm3	# MEM[base: _494, offset: 16B], D.15956
	subq	$16, %r11	#, ivtmp.618
	vmovsd	(%r10), %xmm14	# MEM[base: _492, offset: 16B], D.15956
	vaddsd	%xmm1, %xmm2, %xmm0	# D.15956, D.15956, x0i
	vmovsd	16(%rsi,%rax), %xmm4	# MEM[base: a_10(D), index: ivtmp.599_319, offset: 16B], D.15956
	vsubsd	%xmm2, %xmm1, %xmm2	# D.15956, D.15956, x1i
	vmovsd	-16(%rbp), %xmm1	# MEM[base: _491, offset: 0B], D.15956
	vaddsd	%xmm4, %xmm3, %xmm10	# D.15956, D.15956, x0r
	vmovsd	8(%r10), %xmm13	# MEM[base: _492, offset: 24B], D.15956
	vaddsd	%xmm14, %xmm1, %xmm12	# D.15956, D.15956, x2r
	vmovsd	32(%rdx,%rax,2), %xmm9	# MEM[base: w_61(D), index: ivtmp.599_319, step: 2, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.15956, D.15956, x1r
	vmovsd	-8(%rbp), %xmm3	# MEM[base: _491, offset: 8B], D.15956
	vmovsd	40(%rdx,%rax,2), %xmm8	# MEM[base: w_61(D), index: ivtmp.599_319, step: 2, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm14, %xmm1	# D.15956, D.15956, x3r
	vaddsd	%xmm13, %xmm3, %xmm11	# D.15956, D.15956, x2i
	vmovsd	48(%rdx,%rax,2), %xmm6	# MEM[base: w_61(D), index: ivtmp.599_319, step: 2, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm13, %xmm3	# D.15956, D.15956, x3i
	vmovsd	56(%rdx,%rax,2), %xmm7	# MEM[base: w_61(D), index: ivtmp.599_319, step: 2, offset: 56B], wk3i
	vaddsd	%xmm10, %xmm12, %xmm13	# x0r, x2r, D.15956
	vsubsd	%xmm12, %xmm10, %xmm10	# x2r, x0r, D.15956
	vmovsd	%xmm13, 16(%rsi,%rax)	# D.15956, MEM[base: a_10(D), index: ivtmp.599_319, offset: 16B]
	vaddsd	%xmm0, %xmm11, %xmm13	# x0i, x2i, D.15956
	vsubsd	%xmm11, %xmm0, %xmm0	# x2i, x0i, D.15956
	vmovsd	%xmm13, 24(%rsi,%rax)	# D.15956, MEM[base: a_10(D), index: ivtmp.599_319, offset: 24B]
	addq	$16, %rax	#, ivtmp.599
	vmovsd	%xmm10, (%r10)	# D.15956, MEM[base: _492, offset: 16B]
	vaddsd	%xmm2, %xmm1, %xmm10	# x1i, x3r, x0i
	vmovsd	%xmm0, 8(%r10)	# D.15956, MEM[base: _492, offset: 24B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmulsd	%xmm8, %xmm10, %xmm12	# wk1i, x0i, D.15956
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm9, %xmm0, %xmm11	# wk1r, x0r, D.15956
	vmulsd	%xmm9, %xmm10, %xmm10	# wk1r, x0i, D.15956
	vmulsd	%xmm8, %xmm0, %xmm0	# wk1i, x0r, D.15956
	vmulsd	%xmm6, %xmm3, %xmm2	# wk3r, x0r, D.15956
	vmulsd	%xmm7, %xmm3, %xmm3	# wk3i, x0r, D.15956
	vsubsd	%xmm12, %xmm11, %xmm11	# D.15956, D.15956, D.15956
	vaddsd	%xmm10, %xmm0, %xmm0	# D.15956, D.15956, D.15956
	vmovsd	%xmm11, (%r9)	# D.15956, MEM[base: _494, offset: 16B]
	vmovsd	%xmm0, 8(%r9)	# D.15956, MEM[base: _494, offset: 24B]
	vmulsd	%xmm7, %xmm1, %xmm0	# wk3i, x0i, D.15956
	vmulsd	%xmm6, %xmm1, %xmm1	# wk3r, x0i, D.15956
	vaddsd	%xmm2, %xmm0, %xmm0	# D.15956, D.15956, D.15956
	vsubsd	%xmm3, %xmm1, %xmm1	# D.15956, D.15956, D.15956
	vmovsd	%xmm0, -16(%rbp)	# D.15956, MEM[base: _491, offset: 0B]
	vmovsd	%xmm1, -8(%rbp)	# D.15956, MEM[base: _491, offset: 8B]
	vmovsd	8(%r8), %xmm0	# MEM[base: _482, offset: -8B], D.15956
	vmovsd	24(%rbx), %xmm1	# MEM[base: _481, offset: 8B], D.15956
	vmovsd	16(%rbx), %xmm2	# MEM[base: _481, offset: 0B], D.15956
	vmovsd	(%r8), %xmm10	# MEM[base: _482, offset: -16B], D.15956
	vaddsd	%xmm0, %xmm1, %xmm4	# D.15956, D.15956, x0i
	vmovsd	(%rcx), %xmm14	# MEM[base: _478, offset: -16B], D.15956
	vsubsd	%xmm1, %xmm0, %xmm1	# D.15956, D.15956, x1i
	vmovsd	16(%r11), %xmm0	# MEM[base: _477, offset: 0B], D.15956
	vaddsd	%xmm10, %xmm2, %xmm11	# D.15956, D.15956, x0r
	vmovsd	8(%rcx), %xmm3	# MEM[base: _478, offset: -8B], D.15956
	vsubsd	%xmm2, %xmm10, %xmm10	# D.15956, D.15956, x1r
	vaddsd	%xmm14, %xmm0, %xmm13	# D.15956, D.15956, x2r
	vmovsd	24(%r11), %xmm2	# MEM[base: _477, offset: 8B], D.15956
	vsubsd	%xmm0, %xmm14, %xmm0	# D.15956, D.15956, x3r
	vaddsd	%xmm3, %xmm2, %xmm12	# D.15956, D.15956, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.15956, D.15956, x3i
	vaddsd	%xmm11, %xmm13, %xmm2	# x0r, x2r, D.15956
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.15956
	vmovsd	%xmm2, (%r8)	# D.15956, MEM[base: _482, offset: -16B]
	vaddsd	%xmm4, %xmm12, %xmm2	# x0i, x2i, D.15956
	vsubsd	%xmm12, %xmm4, %xmm4	# x2i, x0i, D.15956
	vmovsd	%xmm2, 8(%r8)	# D.15956, MEM[base: _482, offset: -8B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 8(%rcx)	# D.15956, MEM[base: _478, offset: -8B]
	vsubsd	%xmm3, %xmm10, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm11, (%rcx)	# D.15956, MEM[base: _478, offset: -16B]
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm9, %xmm2, %xmm12	# wk1r, x0i, D.15956
	vmulsd	%xmm8, %xmm4, %xmm11	# wk1i, x0r, D.15956
	vmulsd	%xmm8, %xmm2, %xmm8	# wk1i, x0i, D.15956
	vaddsd	%xmm10, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm6, %xmm0, %xmm1	# wk3r, x0i, D.15956
	vmulsd	%xmm9, %xmm4, %xmm4	# wk1r, x0r, D.15956
	vmulsd	%xmm7, %xmm2, %xmm3	# wk3i, x0r, D.15956
	vmulsd	%xmm7, %xmm0, %xmm0	# wk3i, x0i, D.15956
	vsubsd	%xmm12, %xmm11, %xmm11	# D.15956, D.15956, D.15956
	vmulsd	%xmm6, %xmm2, %xmm2	# wk3r, x0r, D.15956
	vaddsd	%xmm8, %xmm4, %xmm4	# D.15956, D.15956, D.15956
	vmovsd	%xmm11, 16(%rbx)	# D.15956, MEM[base: _481, offset: 0B]
	vaddsd	%xmm3, %xmm1, %xmm1	# D.15956, D.15956, D.15956
	vsubsd	%xmm2, %xmm0, %xmm0	# D.15956, D.15956, D.15956
	vmovsd	%xmm4, 24(%rbx)	# D.15956, MEM[base: _481, offset: 8B]
	vmovsd	%xmm1, 16(%r11)	# D.15956, MEM[base: _477, offset: 0B]
	vmovsd	%xmm0, 24(%r11)	# D.15956, MEM[base: _477, offset: 8B]
	cmpq	%r12, %rax	# D.15959, ivtmp.599
	jne	.L232	#,
.L233:
	subl	%edi, %r13d	# j0, j1
	movslq	%edi, %rdi	# j0, D.15957
	leal	0(%r13,%r14), %eax	#, j2
	salq	$3, %rdi	#, D.15957
	movslq	%r13d, %r13	# j1, D.15957
	movslq	%eax, %rdx	# j2, D.15957
	addl	%eax, %r14d	# j2, j3
	salq	$3, %r13	#, D.15957
	leaq	(%rsi,%rdi), %r8	#, D.15958
	salq	$3, %rdx	#, D.15957
	movslq	%r14d, %r14	# j3, D.15957
	leaq	(%rsi,%rdx), %rcx	#, D.15958
	salq	$3, %r14	#, D.15957
	vmovsd	(%r8), %xmm7	# *_229, D.15956
	leaq	8(%rsi,%rdi), %rdi	#, D.15958
	vmovsd	(%rcx), %xmm0	# *_233, D.15956
	leaq	8(%rsi,%rdx), %rdx	#, D.15958
	vmovsd	(%rdi), %xmm3	# *_238, D.15956
	vmovsd	(%rdx), %xmm1	# *_242, D.15956
	leaq	(%rsi,%r13), %r10	#, D.15958
	vaddsd	%xmm7, %xmm0, %xmm4	# D.15956, D.15956, x0r
	leaq	(%rsi,%r14), %r9	#, D.15958
	vmovsd	(%r10), %xmm6	# *_249, D.15956
	vsubsd	%xmm0, %xmm7, %xmm7	# D.15956, D.15956, x1r
	vaddsd	%xmm3, %xmm1, %xmm2	# D.15956, D.15956, x0i
	leaq	8(%rsi,%r13), %rax	#, D.15958
	vsubsd	%xmm1, %xmm3, %xmm3	# D.15956, D.15956, x1i
	vmovsd	(%r9), %xmm1	# *_253, D.15956
	leaq	8(%rsi,%r14), %rsi	#, D.15958
	vmovsd	(%rax), %xmm0	# *_258, D.15956
	vaddsd	%xmm6, %xmm1, %xmm9	# D.15956, D.15956, x2r
	vmovsd	(%rsi), %xmm10	# *_262, D.15956
	vsubsd	%xmm1, %xmm6, %xmm6	# D.15956, D.15956, x3r
	vaddsd	%xmm0, %xmm10, %xmm8	# D.15956, D.15956, x2i
	vsubsd	%xmm10, %xmm0, %xmm1	# D.15956, D.15956, x3i
	vaddsd	%xmm4, %xmm9, %xmm0	# x0r, x2r, D.15956
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.15956
	vmovsd	%xmm0, (%r8)	# D.15956, *_229
	vaddsd	%xmm2, %xmm8, %xmm0	# x0i, x2i, D.15956
	vsubsd	%xmm8, %xmm2, %xmm2	# x2i, x0i, D.15956
	vmovsd	%xmm0, (%rdi)	# D.15956, *_238
	vmovsd	%xmm4, (%r10)	# D.15956, *_249
	vaddsd	%xmm3, %xmm6, %xmm4	# x1i, x3r, x0i
	vmovsd	%xmm2, (%rax)	# D.15956, *_258
	vsubsd	%xmm1, %xmm7, %xmm2	# x3i, x1r, x0r
	vsubsd	%xmm4, %xmm2, %xmm0	# x0i, x0r, D.15956
	vaddsd	%xmm4, %xmm2, %xmm2	# x0i, x0r, D.15956
	vmulsd	%xmm5, %xmm0, %xmm0	# wn4r, D.15956, D.15956
	vmulsd	%xmm5, %xmm2, %xmm2	# wn4r, D.15956, D.15956
	vmovsd	%xmm0, (%rcx)	# D.15956, *_233
	vaddsd	%xmm7, %xmm1, %xmm0	# x1r, x3i, x0r
	vsubsd	%xmm6, %xmm3, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm2, (%rdx)	# D.15956, *_242
	vmovsd	.LC13(%rip), %xmm3	#, tmp336
	vxorpd	%xmm5, %xmm3, %xmm3	# wn4r, tmp336, D.15956
	vaddsd	%xmm1, %xmm0, %xmm2	# x0i, x0r, D.15956
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.15956
	vmulsd	%xmm3, %xmm2, %xmm2	# D.15956, D.15956, D.15956
	vmulsd	%xmm5, %xmm0, %xmm0	# wn4r, D.15956, D.15956
	vmovsd	%xmm2, (%r9)	# D.15956, *_253
	vmovsd	%xmm0, (%rsi)	# D.15956, *_262
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE70:
	.size	cftmdl1, .-cftmdl1
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
.LCOLDB32:
	.text
.LHOTB32:
	.p2align 4,,15
	.globl	cftmdl2
	.type	cftmdl2, @function
cftmdl2:
.LFB71:
	.cfi_startproc
	sarl	$3, %edi	#, j0
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vmovsd	(%rsi), %xmm0	# *a_13(D), D.16044
	movslq	%edi, %r15	# j0,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	vmovsd	8(%rsi), %xmm4	# MEM[(double *)a_13(D) + 8B], D.16044
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leal	(%r15,%r15), %eax	#, j1
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%eax, %r11d	# j1, j1
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movslq	%r11d, %r14	# j1,
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	(%rsi,%r14,8), %rdi	#, D.16046
	vmovsd	8(%rdx), %xmm6	# MEM[(double *)w_9(D) + 8B], wn4r
	movl	%eax, -16(%rsp)	# j1, %sfp
	leal	0(,%r15,4), %eax	#, j2
	movslq	%eax, %rcx	# j2, D.16045
	movl	%eax, %ebx	# j2, j2
	movl	%eax, -12(%rsp)	# j2, %sfp
	leaq	8(,%rcx,8), %rax	#, D.16045
	leaq	(%rsi,%rax), %r9	#, D.16046
	leaq	-8(%rsi,%rax), %r10	#, D.16046
	movl	%ebx, %eax	# j2, j3
	vmovsd	(%r9), %xmm5	# *_18, D.16044
	vmovsd	(%r10), %xmm1	# *_23, D.16044
	leaq	1(%r14), %rbx	#, D.16045
	addl	%r11d, %eax	# j1, j3
	leaq	(%rsi,%rbx,8), %r11	#, D.16046
	vsubsd	%xmm5, %xmm0, %xmm8	# D.16044, D.16044, x0r
	cltq
	movq	%rbx, -8(%rsp)	# D.16045, %sfp
	leaq	8(,%rax,8), %r8	#, D.16045
	vaddsd	%xmm4, %xmm1, %xmm7	# D.16044, D.16044, x0i
	leaq	(%rsi,%r8), %rax	#, D.16046
	vaddsd	%xmm0, %xmm5, %xmm5	# D.16044, D.16044, x1r
	vmovsd	(%r11), %xmm0	# *_40, D.16044
	leaq	-8(%rsi,%r8), %r8	#, D.16046
	vmovsd	(%rax), %xmm10	# *_35, D.16044
	vsubsd	%xmm1, %xmm4, %xmm4	# D.16044, D.16044, x1i
	vmovsd	(%r8), %xmm9	# *_43, D.16044
	vmovsd	(%rdi), %xmm1	# *_30, D.16044
	vaddsd	%xmm0, %xmm9, %xmm2	# D.16044, D.16044, x2i
	vsubsd	%xmm10, %xmm1, %xmm3	# D.16044, D.16044, x2r
	vsubsd	%xmm9, %xmm0, %xmm0	# D.16044, D.16044, x3i
	vaddsd	%xmm1, %xmm10, %xmm1	# D.16044, D.16044, x3r
	vsubsd	%xmm2, %xmm3, %xmm9	# x2i, x2r, D.16044
	vaddsd	%xmm2, %xmm3, %xmm3	# x2i, x2r, D.16044
	vmulsd	%xmm6, %xmm9, %xmm9	# wn4r, D.16044, y0r
	vmulsd	%xmm6, %xmm3, %xmm2	# wn4r, D.16044, y0i
	vaddsd	%xmm8, %xmm9, %xmm3	# x0r, y0r, D.16044
	vsubsd	%xmm9, %xmm8, %xmm8	# y0r, x0r, D.16044
	vmovsd	%xmm3, (%rsi)	# D.16044, *a_13(D)
	vaddsd	%xmm7, %xmm2, %xmm3	# x0i, y0i, D.16044
	vsubsd	%xmm2, %xmm7, %xmm2	# y0i, x0i, D.16044
	vmovsd	%xmm3, 8(%rsi)	# D.16044, MEM[(double *)a_13(D) + 8B]
	vmovsd	%xmm8, (%rdi)	# D.16044, *_30
	vmovsd	%xmm2, (%r11)	# D.16044, *_40
	vsubsd	%xmm0, %xmm1, %xmm2	# x3i, x3r, D.16044
	vaddsd	%xmm0, %xmm1, %xmm1	# x3i, x3r, D.16044
	vmulsd	%xmm6, %xmm2, %xmm2	# wn4r, D.16044, y0r
	vmulsd	%xmm6, %xmm1, %xmm0	# wn4r, D.16044, y0i
	vsubsd	%xmm0, %xmm5, %xmm1	# y0i, x1r, D.16044
	vaddsd	%xmm5, %xmm0, %xmm0	# x1r, y0i, D.16044
	vmovsd	%xmm1, (%r10)	# D.16044, *_23
	vaddsd	%xmm4, %xmm2, %xmm1	# x1i, y0r, D.16044
	vsubsd	%xmm2, %xmm4, %xmm4	# y0r, x1i, D.16044
	vmovsd	%xmm1, (%r9)	# D.16044, *_18
	vmovsd	%xmm0, (%r8)	# D.16044, *_43
	vmovsd	%xmm4, (%rax)	# D.16044, *_35
	cmpl	$2, %r15d	#, j0
	jle	.L241	#,
	movl	-12(%rsp), %r9d	# %sfp, j2
	leal	-3(%r15), %r13d	#, D.16048
	salq	$3, %rcx	#, D.16047
	movq	%rdx, %r12	# w, ivtmp.635
	leaq	(%rdx,%rcx), %rbp	#, ivtmp.641
	shrl	%r13d	#
	addq	%rsi, %rcx	# a, ivtmp.664
	addq	$1, %r13	#, D.16045
	salq	$4, %r13	#, D.16045
	movl	%r9d, %eax	# j2, j2
	addl	$2, %eax	#, D.16050
	cltq
	addq	%r14, %rax	# D.16047, D.16045
	leaq	(%rsi,%rax,8), %rbx	#, ivtmp.655
	movl	%r9d, %eax	# j2, j2
	movq	%rdi, %r9	# ivtmp.659, ivtmp.653
	subl	$2, %eax	#, D.16050
	movslq	%eax, %r8	# D.16050, D.16045
	addl	-16(%rsp), %eax	# %sfp, D.16050
	addq	%r14, %r8	# D.16047, D.16045
	leaq	(%rsi,%r8,8), %r11	#, ivtmp.661
	movq	%rcx, %r8	# ivtmp.664, ivtmp.649
	cltq
	addq	%r14, %rax	# D.16047, D.16045
	leaq	(%rsi,%rax,8), %r10	#, ivtmp.666
	xorl	%eax, %eax	# ivtmp.646
	.p2align 4,,10
	.p2align 3
.L240:
	vmovsd	16(%rsi,%rax), %xmm2	# MEM[base: a_13(D), index: ivtmp.646_731, offset: 16B], D.16044
	addq	$32, %r12	#, ivtmp.635
	subq	$32, %rbp	#, ivtmp.641
	addq	$16, %r8	#, ivtmp.649
	vmovsd	(%r8), %xmm0	# MEM[base: _650, offset: 16B], D.16044
	addq	$16, %r9	#, ivtmp.653
	addq	$16, %rbx	#, ivtmp.655
	subq	$16, %rdi	#, ivtmp.659
	vmovsd	8(%r8), %xmm15	# MEM[base: _650, offset: 24B], D.16044
	subq	$16, %r11	#, ivtmp.661
	subq	$16, %rcx	#, ivtmp.664
	subq	$16, %r10	#, ivtmp.666
	vmovsd	24(%rsi,%rax), %xmm14	# MEM[base: a_13(D), index: ivtmp.646_731, offset: 24B], D.16044
	vsubsd	%xmm15, %xmm2, %xmm1	# D.16044, D.16044, x0r
	vmovsd	(%r12), %xmm10	# MEM[base: _658, offset: 32B], wk1r
	vaddsd	%xmm14, %xmm0, %xmm5	# D.16044, D.16044, x0i
	vmovsd	8(%r12), %xmm9	# MEM[base: _658, offset: 40B], wk1i
	vmovsd	-8(%rbx), %xmm11	# MEM[base: _647, offset: 8B], D.16044
	vaddsd	%xmm2, %xmm15, %xmm15	# D.16044, D.16044, x1r
	vmovsd	8(%r9), %xmm8	# MEM[base: _648, offset: 24B], D.16044
	vsubsd	%xmm0, %xmm14, %xmm14	# D.16044, D.16044, x1i
	vmovsd	(%r9), %xmm2	# MEM[base: _648, offset: 16B], D.16044
	vmovsd	-16(%rbx), %xmm0	# MEM[base: _647, offset: 0B], D.16044
	vsubsd	%xmm11, %xmm2, %xmm4	# D.16044, D.16044, x2r
	vmovsd	0(%rbp), %xmm12	# MEM[base: _654, offset: -32B], wd1i
	vaddsd	%xmm8, %xmm0, %xmm3	# D.16044, D.16044, x2i
	vmovsd	8(%rbp), %xmm13	# MEM[base: _654, offset: -24B], wd1r
	vaddsd	%xmm2, %xmm11, %xmm2	# D.16044, D.16044, x3r
	vmulsd	%xmm9, %xmm5, %xmm11	# wk1i, x0i, D.16044
	vmovsd	16(%r12), %xmm7	# MEM[base: _658, offset: 48B], wk3r
	vsubsd	%xmm0, %xmm8, %xmm0	# D.16044, D.16044, x3i
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x0i, D.16044
	vmovsd	24(%r12), %xmm6	# MEM[base: _658, offset: 56B], wk3i
	vmulsd	%xmm10, %xmm1, %xmm8	# wk1r, x0r, D.16044
	vmovsd	%xmm7, -32(%rsp)	# wk3r, %sfp
	vmovsd	16(%rbp), %xmm7	# MEM[base: _654, offset: -16B], wd3i
	vmulsd	%xmm9, %xmm1, %xmm1	# wk1i, x0r, D.16044
	vmovsd	%xmm6, -24(%rsp)	# wk3i, %sfp
	vmovsd	24(%rbp), %xmm6	# MEM[base: _654, offset: -8B], wd3r
	vsubsd	%xmm11, %xmm8, %xmm8	# D.16044, D.16044, y0r
	vmulsd	%xmm13, %xmm4, %xmm11	# wd1r, x2r, D.16044
	vaddsd	%xmm5, %xmm1, %xmm1	# D.16044, D.16044, y0i
	vmulsd	%xmm12, %xmm3, %xmm5	# wd1i, x2i, D.16044
	vmulsd	%xmm12, %xmm4, %xmm4	# wd1i, x2r, D.16044
	vmulsd	%xmm13, %xmm3, %xmm3	# wd1r, x2i, D.16044
	vsubsd	%xmm5, %xmm11, %xmm11	# D.16044, D.16044, y2r
	vmovsd	-32(%rsp), %xmm5	# %sfp, wk3r
	vaddsd	%xmm3, %xmm4, %xmm4	# D.16044, D.16044, y2i
	vaddsd	%xmm8, %xmm11, %xmm3	# y0r, y2r, D.16044
	vsubsd	%xmm11, %xmm8, %xmm8	# y2r, y0r, D.16044
	vmovsd	%xmm3, 16(%rsi,%rax)	# D.16044, MEM[base: a_13(D), index: ivtmp.646_731, offset: 16B]
	vaddsd	%xmm1, %xmm4, %xmm3	# y0i, y2i, D.16044
	vsubsd	%xmm4, %xmm1, %xmm4	# y2i, y0i, D.16044
	vmulsd	%xmm5, %xmm15, %xmm1	# wk3r, x1r, D.16044
	vmovsd	%xmm3, 24(%rsi,%rax)	# D.16044, MEM[base: a_13(D), index: ivtmp.646_731, offset: 24B]
	addq	$16, %rax	#, ivtmp.646
	vmovsd	%xmm4, 8(%r9)	# D.16044, MEM[base: _648, offset: 24B]
	vmovsd	-24(%rsp), %xmm4	# %sfp, wk3i
	vmovsd	%xmm8, (%r9)	# D.16044, MEM[base: _648, offset: 16B]
	vmulsd	%xmm4, %xmm14, %xmm3	# wk3i, x1i, D.16044
	vmulsd	%xmm5, %xmm14, %xmm14	# wk3r, x1i, D.16044
	vaddsd	%xmm1, %xmm3, %xmm1	# D.16044, D.16044, y0r
	vmulsd	%xmm4, %xmm15, %xmm3	# wk3i, x1r, D.16044
	vmulsd	%xmm7, %xmm0, %xmm4	# wd3i, x3i, D.16044
	vmulsd	%xmm6, %xmm0, %xmm0	# wd3r, x3i, D.16044
	vsubsd	%xmm3, %xmm14, %xmm14	# D.16044, D.16044, y0i
	vmulsd	%xmm6, %xmm2, %xmm3	# wd3r, x3r, D.16044
	vmulsd	%xmm7, %xmm2, %xmm2	# wd3i, x3r, D.16044
	vaddsd	%xmm3, %xmm4, %xmm3	# D.16044, D.16044, y2r
	vsubsd	%xmm2, %xmm0, %xmm0	# D.16044, D.16044, y2i
	vaddsd	%xmm1, %xmm3, %xmm2	# y0r, y2r, D.16044
	vsubsd	%xmm3, %xmm1, %xmm1	# y2r, y0r, D.16044
	vmovsd	%xmm2, (%r8)	# D.16044, MEM[base: _650, offset: 16B]
	vaddsd	%xmm14, %xmm0, %xmm2	# y0i, y2i, D.16044
	vsubsd	%xmm0, %xmm14, %xmm14	# y2i, y0i, D.16044
	vmovsd	%xmm2, 8(%r8)	# D.16044, MEM[base: _650, offset: 24B]
	vmovsd	%xmm14, -8(%rbx)	# D.16044, MEM[base: _647, offset: 8B]
	vmovsd	%xmm1, -16(%rbx)	# D.16044, MEM[base: _647, offset: 0B]
	vmovsd	(%rdi), %xmm3	# MEM[base: _638, offset: -16B], D.16044
	vmovsd	16(%r11), %xmm1	# MEM[base: _637, offset: 0B], D.16044
	vmovsd	24(%r11), %xmm4	# MEM[base: _637, offset: 8B], D.16044
	vmovsd	8(%rdi), %xmm0	# MEM[base: _638, offset: -8B], D.16044
	vsubsd	%xmm4, %xmm3, %xmm2	# D.16044, D.16044, x0r
	vaddsd	%xmm0, %xmm1, %xmm11	# D.16044, D.16044, x0i
	vaddsd	%xmm3, %xmm4, %xmm4	# D.16044, D.16044, x1r
	vmovsd	(%rcx), %xmm3	# MEM[base: _634, offset: -16B], D.16044
	vsubsd	%xmm1, %xmm0, %xmm0	# D.16044, D.16044, x1i
	vmovsd	24(%r10), %xmm15	# MEM[base: _633, offset: 8B], D.16044
	vmovsd	8(%rcx), %xmm14	# MEM[base: _634, offset: -8B], D.16044
	vmovsd	16(%r10), %xmm1	# MEM[base: _633, offset: 0B], D.16044
	vsubsd	%xmm15, %xmm3, %xmm5	# D.16044, D.16044, x2r
	vaddsd	%xmm3, %xmm15, %xmm3	# D.16044, D.16044, x3r
	vmulsd	%xmm13, %xmm11, %xmm15	# wd1r, x0i, D.16044
	vaddsd	%xmm14, %xmm1, %xmm8	# D.16044, D.16044, x2i
	vmulsd	%xmm12, %xmm11, %xmm11	# wd1i, x0i, D.16044
	vsubsd	%xmm1, %xmm14, %xmm1	# D.16044, D.16044, x3i
	vmulsd	%xmm12, %xmm2, %xmm14	# wd1i, x0r, D.16044
	vmulsd	%xmm13, %xmm2, %xmm2	# wd1r, x0r, D.16044
	vsubsd	%xmm15, %xmm14, %xmm14	# D.16044, D.16044, y0r
	vmulsd	%xmm9, %xmm5, %xmm15	# wk1i, x2r, D.16044
	vaddsd	%xmm11, %xmm2, %xmm11	# D.16044, D.16044, y0i
	vmulsd	%xmm10, %xmm8, %xmm2	# wk1r, x2i, D.16044
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x2r, D.16044
	vmulsd	%xmm9, %xmm8, %xmm8	# wk1i, x2i, D.16044
	vsubsd	%xmm2, %xmm15, %xmm15	# D.16044, D.16044, y2r
	vaddsd	%xmm8, %xmm5, %xmm8	# D.16044, D.16044, y2i
	vmulsd	%xmm6, %xmm0, %xmm5	# wd3r, x1i, D.16044
	vaddsd	%xmm14, %xmm15, %xmm2	# y0r, y2r, D.16044
	vmulsd	%xmm7, %xmm0, %xmm0	# wd3i, x1i, D.16044
	vsubsd	%xmm15, %xmm14, %xmm14	# y2r, y0r, D.16044
	vmovsd	%xmm2, (%rdi)	# D.16044, MEM[base: _638, offset: -16B]
	vaddsd	%xmm11, %xmm8, %xmm2	# y0i, y2i, D.16044
	vsubsd	%xmm8, %xmm11, %xmm8	# y2i, y0i, D.16044
	vmovsd	%xmm2, 8(%rdi)	# D.16044, MEM[base: _638, offset: -8B]
	vmulsd	%xmm7, %xmm4, %xmm2	# wd3i, x1r, D.16044
	vmovsd	-32(%rsp), %xmm7	# %sfp, wk3r
	vmulsd	%xmm6, %xmm4, %xmm4	# wd3r, x1r, D.16044
	vmovsd	-24(%rsp), %xmm6	# %sfp, wk3i
	vmovsd	%xmm14, (%rcx)	# D.16044, MEM[base: _634, offset: -16B]
	vmovsd	%xmm8, 8(%rcx)	# D.16044, MEM[base: _634, offset: -8B]
	vaddsd	%xmm2, %xmm5, %xmm2	# D.16044, D.16044, y0r
	vmulsd	%xmm6, %xmm3, %xmm5	# wk3i, x3r, D.16044
	vsubsd	%xmm4, %xmm0, %xmm0	# D.16044, D.16044, y0i
	vmulsd	%xmm7, %xmm1, %xmm4	# wk3r, x3i, D.16044
	vmulsd	%xmm7, %xmm3, %xmm3	# wk3r, x3r, D.16044
	vmulsd	%xmm6, %xmm1, %xmm1	# wk3i, x3i, D.16044
	vaddsd	%xmm5, %xmm4, %xmm5	# D.16044, D.16044, y2r
	vsubsd	%xmm3, %xmm1, %xmm1	# D.16044, D.16044, y2i
	vaddsd	%xmm2, %xmm5, %xmm3	# y0r, y2r, D.16044
	vsubsd	%xmm5, %xmm2, %xmm2	# y2r, y0r, D.16044
	vmovsd	%xmm3, 16(%r11)	# D.16044, MEM[base: _637, offset: 0B]
	vaddsd	%xmm0, %xmm1, %xmm3	# y0i, y2i, D.16044
	vsubsd	%xmm1, %xmm0, %xmm0	# y2i, y0i, D.16044
	vmovsd	%xmm3, 24(%r11)	# D.16044, MEM[base: _637, offset: 8B]
	vmovsd	%xmm2, 16(%r10)	# D.16044, MEM[base: _633, offset: 0B]
	vmovsd	%xmm0, 24(%r10)	# D.16044, MEM[base: _633, offset: 8B]
	cmpq	%r13, %rax	# D.16045, ivtmp.646
	jne	.L240	#,
.L241:
	movq	-8(%rsp), %rax	# %sfp, D.16045
	movl	-16(%rsp), %ebx	# %sfp, j1
	vmovsd	(%rdx,%r14,8), %xmm6	# *_275, wk1r
	vmovsd	(%rdx,%rax,8), %xmm7	# *_277, wk1i
	movl	-12(%rsp), %eax	# %sfp, j1
	movl	%ebx, %edx	# j1, j1
	subl	%r15d, %eax	# j0, j1
	salq	$3, %r15	#, D.16047
	leaq	(%rsi,%r15), %r8	#, D.16046
	addl	%eax, %edx	# j1, j2
	cltq
	movslq	%edx, %rcx	# j2, D.16045
	addl	%ebx, %edx	# j1, j3
	vmovsd	(%r8), %xmm0	# *_284, D.16044
	salq	$3, %rax	#, D.16047
	leaq	8(,%rcx,8), %rdi	#, D.16045
	movslq	%edx, %rdx	# j3, D.16045
	leaq	(%rsi,%rdi), %rcx	#, D.16046
	leaq	8(%rsi,%r15), %r9	#, D.16046
	vmovsd	(%rcx), %xmm3	# *_289, D.16044
	leaq	-8(%rsi,%rdi), %rdi	#, D.16046
	vmovsd	(%r9), %xmm8	# *_294, D.16044
	vmovsd	(%rdi), %xmm1	# *_297, D.16044
	leaq	8(,%rdx,8), %rbx	#, D.16045
	vsubsd	%xmm3, %xmm0, %xmm2	# D.16044, D.16044, x0r
	leaq	(%rsi,%rax), %r10	#, D.16046
	vaddsd	%xmm0, %xmm3, %xmm3	# D.16044, D.16044, x1r
	vaddsd	%xmm8, %xmm1, %xmm9	# D.16044, D.16044, x0i
	leaq	8(%rsi,%rax), %r11	#, D.16046
	leaq	-8(%rsi,%rbx), %rax	#, D.16046
	vmovsd	(%r11), %xmm0	# *_314, D.16044
	vsubsd	%xmm1, %xmm8, %xmm8	# D.16044, D.16044, x1i
	vmovsd	(%rax), %xmm5	# *_317, D.16044
	leaq	(%rsi,%rbx), %rdx	#, D.16046
	vmovsd	(%rdx), %xmm10	# *_309, D.16044
	vmulsd	%xmm7, %xmm9, %xmm12	# wk1i, x0i, D.16044
	vmovsd	(%r10), %xmm1	# *_304, D.16044
	vaddsd	%xmm0, %xmm5, %xmm4	# D.16044, D.16044, x2i
	vmulsd	%xmm6, %xmm9, %xmm9	# wk1r, x0i, D.16044
	vsubsd	%xmm5, %xmm0, %xmm0	# D.16044, D.16044, x3i
	vmulsd	%xmm6, %xmm2, %xmm5	# wk1r, x0r, D.16044
	vmulsd	%xmm7, %xmm2, %xmm2	# wk1i, x0r, D.16044
	vsubsd	%xmm10, %xmm1, %xmm11	# D.16044, D.16044, x2r
	vaddsd	%xmm1, %xmm10, %xmm1	# D.16044, D.16044, x3r
	vsubsd	%xmm12, %xmm5, %xmm10	# D.16044, D.16044, y0r
	vmulsd	%xmm6, %xmm4, %xmm5	# wk1r, x2i, D.16044
	vaddsd	%xmm9, %xmm2, %xmm2	# D.16044, D.16044, y0i
	vmulsd	%xmm7, %xmm11, %xmm9	# wk1i, x2r, D.16044
	vmulsd	%xmm7, %xmm4, %xmm4	# wk1i, x2i, D.16044
	vsubsd	%xmm5, %xmm9, %xmm9	# D.16044, D.16044, y2r
	vmulsd	%xmm6, %xmm11, %xmm5	# wk1r, x2r, D.16044
	vaddsd	%xmm4, %xmm5, %xmm4	# D.16044, D.16044, y2i
	vaddsd	%xmm10, %xmm9, %xmm5	# y0r, y2r, D.16044
	vmovsd	%xmm5, (%r8)	# D.16044, *_284
	vaddsd	%xmm2, %xmm4, %xmm5	# y0i, y2i, D.16044
	vsubsd	%xmm4, %xmm2, %xmm4	# y2i, y0i, D.16044
	vmulsd	%xmm6, %xmm8, %xmm2	# wk1r, x1i, D.16044
	vmovsd	%xmm5, (%r9)	# D.16044, *_294
	vsubsd	%xmm9, %xmm10, %xmm5	# y2r, y0r, D.16044
	vmovsd	%xmm5, (%r10)	# D.16044, *_304
	vmulsd	%xmm7, %xmm0, %xmm5	# wk1i, x3i, D.16044
	vmovsd	%xmm4, (%r11)	# D.16044, *_314
	vmulsd	%xmm7, %xmm3, %xmm4	# wk1i, x1r, D.16044
	vmulsd	%xmm6, %xmm3, %xmm3	# wk1r, x1r, D.16044
	vmulsd	%xmm6, %xmm0, %xmm0	# wk1r, x3i, D.16044
	vsubsd	%xmm2, %xmm4, %xmm4	# D.16044, D.16044, y0r
	vmulsd	%xmm7, %xmm8, %xmm2	# wk1i, x1i, D.16044
	vaddsd	%xmm2, %xmm3, %xmm2	# D.16044, D.16044, y0i
	vmulsd	%xmm6, %xmm1, %xmm3	# wk1r, x3r, D.16044
	vmulsd	%xmm7, %xmm1, %xmm1	# wk1i, x3r, D.16044
	vsubsd	%xmm5, %xmm3, %xmm3	# D.16044, D.16044, y2r
	vaddsd	%xmm0, %xmm1, %xmm0	# D.16044, D.16044, y2i
	vsubsd	%xmm3, %xmm4, %xmm1	# y2r, y0r, D.16044
	vaddsd	%xmm4, %xmm3, %xmm3	# y0r, y2r, D.16044
	vmovsd	%xmm1, (%rdi)	# D.16044, *_297
	vsubsd	%xmm0, %xmm2, %xmm1	# y2i, y0i, D.16044
	vaddsd	%xmm2, %xmm0, %xmm0	# y0i, y2i, D.16044
	vmovsd	%xmm1, (%rcx)	# D.16044, *_289
	vmovsd	%xmm3, (%rax)	# D.16044, *_317
	vmovsd	%xmm0, (%rdx)	# D.16044, *_309
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	cftmdl2, .-cftmdl2
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.text.unlikely
.LCOLDB33:
	.text
.LHOTB33:
	.p2align 4,,15
	.globl	cfttree
	.type	cfttree, @function
cfttree:
.LFB68:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14	# w, w
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13	# a, a
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d	# nw, nw
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp	# j, j
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx	# n, n
	testb	$3, %dl	#, k
	je	.L248	#,
	andl	$1, %edx	#, isplt
	movl	%edx, %r15d	# isplt, isplt
	je	.L257	#,
	movl	%edi, %eax	# n, D.16063
	subl	%edi, %ebp	# n, D.16063
	movl	$1, %r15d	#, isplt
	sarl	%eax	# D.16063
	movslq	%ebp, %rbp	# D.16063, D.16064
	leaq	(%rcx,%rbp,8), %rsi	#, D.16065
	subl	%eax, %r12d	# D.16063, D.16063
	movslq	%r12d, %r12	# D.16063, D.16064
	leaq	(%r9,%r12,8), %rdx	#, D.16065
	call	cftmdl1	#
.L264:
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	%r15d, %eax	# isplt,
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L248:
	.cfi_restore_state
	sarl	$2, %edx	#, k
	sall	$2, %ebx	#, n
	testb	$3, %dl	#, k
	je	.L248	#,
	andl	$1, %edx	#, isplt
	movl	%edx, %r15d	# isplt, isplt
	jne	.L266	#,
	jmp	.L267	#
	.p2align 4,,10
	.p2align 3
.L259:
	movl	%ebx, %eax	# n, D.16063
	movl	%r12d, %ecx	# nw, D.16063
	movl	%ebx, %edi	# n,
	sarl	%eax	# D.16063
	subl	%eax, %ecx	# D.16063, D.16063
	movslq	%ecx, %rax	# D.16063,
	leaq	(%r14,%rax,8), %rdx	#, D.16065
	movl	%ebp, %eax	# j, D.16063
	subl	%ebx, %eax	# n, D.16063
	sarl	$2, %ebx	#, n
	cltq
	leaq	0(%r13,%rax,8), %rsi	#, D.16065
	call	cftmdl1	#
.L266:
	cmpl	$128, %ebx	#, n
	jg	.L259	#,
	movl	$1, %r15d	#, isplt
	jmp	.L264	#
	.p2align 4,,10
	.p2align 3
.L260:
	movl	%r12d, %eax	# nw, D.16063
	movl	%ebx, %edi	# n,
	subl	%ebx, %eax	# n, D.16063
	cltq
	leaq	(%r14,%rax,8), %rdx	#, D.16065
	movl	%ebp, %eax	# j, D.16063
	subl	%ebx, %eax	# n, D.16063
	sarl	$2, %ebx	#, n
	cltq
	leaq	0(%r13,%rax,8), %rsi	#, D.16065
	call	cftmdl2	#
.L267:
	cmpl	$128, %ebx	#, n
	jg	.L260	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	%r15d, %eax	# isplt,
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L257:
	.cfi_restore_state
	subl	%edi, %r12d	# n, D.16063
	subl	%edi, %ebp	# n, D.16063
	movslq	%r12d, %r12	# D.16063, D.16064
	movslq	%ebp, %rbp	# D.16063, D.16064
	leaq	(%r9,%r12,8), %rdx	#, D.16065
	leaq	(%rcx,%rbp,8), %rsi	#, D.16065
	call	cftmdl2	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	movl	%r15d, %eax	# isplt,
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	cfttree, .-cfttree
	.section	.text.unlikely
.LCOLDE33:
	.text
.LHOTE33:
	.section	.text.unlikely
.LCOLDB34:
	.text
.LHOTB34:
	.p2align 4,,15
	.globl	cftf161
	.type	cftf161, @function
cftf161:
.LFB73:
	.cfi_startproc
	subq	$64, %rsp	#,
	.cfi_def_cfa_offset 72
	vmovsd	(%rdi), %xmm8	# *a_6(D), D.16068
	vmovsd	136(%rdi), %xmm0	# MEM[(double *)a_6(D) + 136B], D.16068
	vmovsd	128(%rdi), %xmm2	# MEM[(double *)a_6(D) + 128B], D.16068
	vmovsd	8(%rdi), %xmm1	# MEM[(double *)a_6(D) + 8B], D.16068
	vaddsd	%xmm8, %xmm2, %xmm10	# D.16068, D.16068, x0r
	vmovsd	64(%rdi), %xmm11	# MEM[(double *)a_6(D) + 64B], D.16068
	vaddsd	%xmm1, %xmm0, %xmm12	# D.16068, D.16068, x0i
	vmovsd	72(%rdi), %xmm9	# MEM[(double *)a_6(D) + 72B], D.16068
	vsubsd	%xmm0, %xmm1, %xmm1	# D.16068, D.16068, x1i
	vmovsd	192(%rdi), %xmm0	# MEM[(double *)a_6(D) + 192B], D.16068
	vsubsd	%xmm2, %xmm8, %xmm2	# D.16068, D.16068, x1r
	vmovsd	200(%rdi), %xmm8	# MEM[(double *)a_6(D) + 200B], D.16068
	vaddsd	%xmm11, %xmm0, %xmm7	# D.16068, D.16068, x2r
	vmovsd	24(%rsi), %xmm6	# MEM[(double *)w_2(D) + 24B], wk1i
	vaddsd	%xmm9, %xmm8, %xmm4	# D.16068, D.16068, x2i
	vmovsd	16(%rsi), %xmm5	# MEM[(double *)w_2(D) + 16B], wk1r
	vsubsd	%xmm8, %xmm9, %xmm8	# D.16068, D.16068, x3i
	vmovsd	16(%rdi), %xmm9	# MEM[(double *)a_6(D) + 16B], D.16068
	vsubsd	%xmm0, %xmm11, %xmm0	# D.16068, D.16068, x3r
	vmovsd	8(%rsi), %xmm3	# MEM[(double *)w_2(D) + 8B], wn4r
	vaddsd	%xmm10, %xmm7, %xmm14	# x0r, x2r, y0r
	vsubsd	%xmm8, %xmm2, %xmm13	# x3i, x1r, y8r
	vsubsd	%xmm7, %xmm10, %xmm7	# x2r, x0r, y4r
	vaddsd	%xmm2, %xmm8, %xmm2	# x1r, x3i, y12r
	vmovsd	24(%rdi), %xmm8	# MEM[(double *)a_6(D) + 24B], D.16068
	vmovsd	%xmm14, -120(%rsp)	# y0r, %sfp
	vaddsd	%xmm1, %xmm0, %xmm10	# x1i, x3r, y8i
	vmovsd	%xmm13, -88(%rsp)	# y8r, %sfp
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, y12i
	vmovsd	144(%rdi), %xmm1	# MEM[(double *)a_6(D) + 144B], D.16068
	vmovsd	%xmm7, -104(%rsp)	# y4r, %sfp
	vaddsd	%xmm12, %xmm4, %xmm15	# x0i, x2i, y0i
	vmovsd	%xmm2, -72(%rsp)	# y12r, %sfp
	vmovsd	88(%rdi), %xmm2	# MEM[(double *)a_6(D) + 88B], D.16068
	vaddsd	%xmm9, %xmm1, %xmm11	# D.16068, D.16068, x0r
	vmovsd	%xmm10, -80(%rsp)	# y8i, %sfp
	vmovsd	80(%rdi), %xmm10	# MEM[(double *)a_6(D) + 80B], D.16068
	vsubsd	%xmm1, %xmm9, %xmm9	# D.16068, D.16068, x1r
	vmovsd	%xmm0, -64(%rsp)	# y12i, %sfp
	vmovsd	216(%rdi), %xmm1	# MEM[(double *)a_6(D) + 216B], D.16068
	vmovsd	152(%rdi), %xmm0	# MEM[(double *)a_6(D) + 152B], D.16068
	vmovsd	%xmm15, -112(%rsp)	# y0i, %sfp
	vsubsd	%xmm4, %xmm12, %xmm4	# x2i, x0i, y4i
	vaddsd	%xmm2, %xmm1, %xmm7	# D.16068, D.16068, x2i
	vaddsd	%xmm8, %xmm0, %xmm15	# D.16068, D.16068, x0i
	vsubsd	%xmm0, %xmm8, %xmm8	# D.16068, D.16068, x1i
	vmovsd	208(%rdi), %xmm0	# MEM[(double *)a_6(D) + 208B], D.16068
	vmovsd	%xmm4, -96(%rsp)	# y4i, %sfp
	vsubsd	%xmm1, %xmm2, %xmm1	# D.16068, D.16068, x3i
	vaddsd	%xmm10, %xmm0, %xmm4	# D.16068, D.16068, x2r
	vaddsd	%xmm15, %xmm7, %xmm2	# x0i, x2i, y1i
	vsubsd	%xmm0, %xmm10, %xmm0	# D.16068, D.16068, x3r
	vaddsd	%xmm11, %xmm4, %xmm12	# x0r, x2r, y1r
	vmovsd	%xmm2, -48(%rsp)	# y1i, %sfp
	vsubsd	%xmm4, %xmm11, %xmm11	# x2r, x0r, y5r
	vaddsd	%xmm8, %xmm0, %xmm2	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm9, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm12, -56(%rsp)	# y1r, %sfp
	vmovsd	%xmm11, -40(%rsp)	# y5r, %sfp
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, x0r
	vmulsd	%xmm6, %xmm2, %xmm10	# wk1i, x0i, D.16068
	vsubsd	%xmm0, %xmm8, %xmm8	# x3r, x1i, x0i
	vmulsd	%xmm5, %xmm4, %xmm11	# wk1r, x0r, D.16068
	vsubsd	%xmm7, %xmm15, %xmm7	# x2i, x0i, y5i
	vmulsd	%xmm5, %xmm2, %xmm2	# wk1r, x0i, D.16068
	vmulsd	%xmm6, %xmm4, %xmm4	# wk1i, x0r, D.16068
	vmulsd	%xmm6, %xmm1, %xmm13	# wk1i, x0r, D.16068
	vmovsd	%xmm7, -32(%rsp)	# y5i, %sfp
	vmulsd	%xmm5, %xmm1, %xmm1	# wk1r, x0r, D.16068
	vsubsd	%xmm10, %xmm11, %xmm14	# D.16068, D.16068, y9r
	vaddsd	%xmm2, %xmm4, %xmm4	# D.16068, D.16068, y9i
	vmulsd	%xmm5, %xmm8, %xmm2	# wk1r, x0i, D.16068
	vmulsd	%xmm6, %xmm8, %xmm8	# wk1i, x0i, D.16068
	vmovsd	%xmm14, -24(%rsp)	# y9r, %sfp
	vmovsd	%xmm4, -16(%rsp)	# y9i, %sfp
	vmovsd	160(%rdi), %xmm0	# MEM[(double *)a_6(D) + 160B], D.16068
	vmovsd	168(%rdi), %xmm4	# MEM[(double *)a_6(D) + 168B], D.16068
	vsubsd	%xmm2, %xmm13, %xmm9	# D.16068, D.16068, y13r
	vmovsd	232(%rdi), %xmm2	# MEM[(double *)a_6(D) + 232B], D.16068
	vaddsd	%xmm8, %xmm1, %xmm1	# D.16068, D.16068, y13i
	vmovsd	40(%rdi), %xmm8	# MEM[(double *)a_6(D) + 40B], D.16068
	vmovsd	120(%rdi), %xmm14	# MEM[(double *)a_6(D) + 120B], D.16068
	vmovsd	%xmm9, -8(%rsp)	# y13r, %sfp
	vmovsd	32(%rdi), %xmm9	# MEM[(double *)a_6(D) + 32B], D.16068
	vaddsd	%xmm8, %xmm4, %xmm10	# D.16068, D.16068, x0i
	vmovsd	%xmm1, (%rsp)	# y13i, %sfp
	vmovsd	96(%rdi), %xmm1	# MEM[(double *)a_6(D) + 96B], D.16068
	vsubsd	%xmm4, %xmm8, %xmm8	# D.16068, D.16068, x1i
	vaddsd	%xmm9, %xmm0, %xmm12	# D.16068, D.16068, x0r
	vmovsd	104(%rdi), %xmm4	# MEM[(double *)a_6(D) + 104B], D.16068
	vsubsd	%xmm0, %xmm9, %xmm9	# D.16068, D.16068, x1r
	vmovsd	224(%rdi), %xmm0	# MEM[(double *)a_6(D) + 224B], D.16068
	vaddsd	%xmm4, %xmm2, %xmm7	# D.16068, D.16068, x2i
	vaddsd	%xmm1, %xmm0, %xmm11	# D.16068, D.16068, x2r
	vsubsd	%xmm0, %xmm1, %xmm1	# D.16068, D.16068, x3r
	vsubsd	%xmm2, %xmm4, %xmm2	# D.16068, D.16068, x3i
	vaddsd	%xmm12, %xmm11, %xmm0	# x0r, x2r, y2r
	vsubsd	%xmm11, %xmm12, %xmm15	# x2r, x0r, y6r
	vsubsd	%xmm7, %xmm10, %xmm11	# x2i, x0i, y6i
	vmovsd	%xmm0, 8(%rsp)	# y2r, %sfp
	vaddsd	%xmm10, %xmm7, %xmm0	# x0i, x2i, y2i
	vmovsd	48(%rdi), %xmm10	# MEM[(double *)a_6(D) + 48B], D.16068
	vsubsd	%xmm2, %xmm9, %xmm7	# x3i, x1r, x0r
	vmovsd	%xmm15, 24(%rsp)	# y6r, %sfp
	vmovsd	240(%rdi), %xmm15	# MEM[(double *)a_6(D) + 240B], D.16068
	vaddsd	%xmm9, %xmm2, %xmm2	# x1r, x3i, x0r
	vmovsd	56(%rdi), %xmm9	# MEM[(double *)a_6(D) + 56B], D.16068
	vmovsd	%xmm11, 32(%rsp)	# y6i, %sfp
	vmovsd	%xmm0, 16(%rsp)	# y2i, %sfp
	vaddsd	%xmm8, %xmm1, %xmm0	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm8, %xmm1	# x3r, x1i, x0i
	vsubsd	%xmm0, %xmm7, %xmm4	# x0i, x0r, D.16068
	vaddsd	%xmm2, %xmm1, %xmm8	# x0r, x0i, D.16068
	vsubsd	%xmm2, %xmm1, %xmm2	# x0r, x0i, D.16068
	vmovsd	176(%rdi), %xmm1	# MEM[(double *)a_6(D) + 176B], D.16068
	vmulsd	%xmm3, %xmm4, %xmm12	# wn4r, D.16068, y10r
	vaddsd	%xmm7, %xmm0, %xmm7	# x0r, x0i, D.16068
	vaddsd	%xmm10, %xmm1, %xmm13	# D.16068, D.16068, x0r
	vmulsd	%xmm3, %xmm8, %xmm8	# wn4r, D.16068, y14r
	vmulsd	%xmm3, %xmm2, %xmm0	# wn4r, D.16068, y14i
	vsubsd	%xmm1, %xmm10, %xmm10	# D.16068, D.16068, x1r
	vmovsd	184(%rdi), %xmm2	# MEM[(double *)a_6(D) + 184B], D.16068
	vmovsd	248(%rdi), %xmm1	# MEM[(double *)a_6(D) + 248B], D.16068
	vmulsd	%xmm3, %xmm7, %xmm7	# wn4r, D.16068, y10i
	vaddsd	%xmm9, %xmm2, %xmm11	# D.16068, D.16068, x0i
	vaddsd	%xmm14, %xmm1, %xmm4	# D.16068, D.16068, x2i
	vmovsd	%xmm12, 40(%rsp)	# y10r, %sfp
	vsubsd	%xmm2, %xmm9, %xmm9	# D.16068, D.16068, x1i
	vmovsd	112(%rdi), %xmm2	# MEM[(double *)a_6(D) + 112B], D.16068
	vsubsd	%xmm1, %xmm14, %xmm1	# D.16068, D.16068, x3i
	vaddsd	%xmm2, %xmm15, %xmm12	# D.16068, D.16068, x2r
	vsubsd	%xmm15, %xmm2, %xmm2	# D.16068, D.16068, x3r
	vaddsd	%xmm11, %xmm4, %xmm15	# x0i, x2i, y3i
	vaddsd	%xmm13, %xmm12, %xmm14	# x0r, x2r, y3r
	vsubsd	%xmm4, %xmm11, %xmm4	# x2i, x0i, y7i
	vmovsd	%xmm15, 56(%rsp)	# y3i, %sfp
	vsubsd	%xmm12, %xmm13, %xmm15	# x2r, x0r, y7r
	vsubsd	%xmm1, %xmm10, %xmm13	# x3i, x1r, x0r
	vmovsd	%xmm14, 48(%rsp)	# y3r, %sfp
	vaddsd	%xmm9, %xmm2, %xmm12	# x1i, x3r, x0i
	vaddsd	%xmm10, %xmm1, %xmm1	# x1r, x3i, x0r
	vmulsd	%xmm6, %xmm13, %xmm11	# wk1i, x0r, D.16068
	vsubsd	%xmm2, %xmm9, %xmm2	# x3r, x1i, x0i
	vmulsd	%xmm5, %xmm12, %xmm14	# wk1r, x0i, D.16068
	vmulsd	%xmm5, %xmm13, %xmm13	# wk1r, x0r, D.16068
	vmulsd	%xmm6, %xmm12, %xmm12	# wk1i, x0i, D.16068
	vmulsd	%xmm6, %xmm2, %xmm9	# wk1i, x0i, D.16068
	vsubsd	%xmm14, %xmm11, %xmm11	# D.16068, D.16068, y11r
	vaddsd	%xmm12, %xmm13, %xmm12	# D.16068, D.16068, y11i
	vmulsd	%xmm5, %xmm1, %xmm13	# wk1r, x0r, D.16068
	vmulsd	%xmm6, %xmm1, %xmm1	# wk1i, x0r, D.16068
	vmovsd	-64(%rsp), %xmm6	# %sfp, y12i
	vmulsd	%xmm5, %xmm2, %xmm5	# wk1r, x0i, D.16068
	vmovsd	-72(%rsp), %xmm2	# %sfp, y12r
	vsubsd	%xmm0, %xmm6, %xmm14	# y14i, y12i, x0i
	vaddsd	%xmm6, %xmm0, %xmm0	# y12i, y14i, x1i
	vmovsd	(%rsp), %xmm6	# %sfp, y13i
	vsubsd	%xmm9, %xmm13, %xmm13	# D.16068, D.16068, y15r
	vsubsd	%xmm8, %xmm2, %xmm9	# y14r, y12r, x0r
	vaddsd	%xmm2, %xmm8, %xmm8	# y12r, y14r, x1r
	vmovsd	-8(%rsp), %xmm2	# %sfp, y13r
	vaddsd	%xmm5, %xmm1, %xmm5	# D.16068, D.16068, y15i
	vsubsd	%xmm13, %xmm2, %xmm1	# y15r, y13r, x2r
	vaddsd	%xmm2, %xmm13, %xmm13	# y13r, y15r, x3r
	vsubsd	%xmm5, %xmm6, %xmm10	# y15i, y13i, x2i
	vaddsd	%xmm9, %xmm1, %xmm2	# x0r, x2r, D.16068
	vaddsd	%xmm6, %xmm5, %xmm5	# y13i, y15i, x3i
	vsubsd	%xmm1, %xmm9, %xmm9	# x2r, x0r, D.16068
	vmovsd	%xmm2, 192(%rdi)	# D.16068, MEM[(double *)a_6(D) + 192B]
	vaddsd	%xmm10, %xmm14, %xmm2	# x2i, x0i, D.16068
	vsubsd	%xmm5, %xmm8, %xmm1	# x3i, x1r, D.16068
	vsubsd	%xmm10, %xmm14, %xmm14	# x2i, x0i, D.16068
	vmovsd	%xmm9, 208(%rdi)	# D.16068, MEM[(double *)a_6(D) + 208B]
	vaddsd	%xmm8, %xmm5, %xmm8	# x1r, x3i, D.16068
	vmovsd	%xmm2, 200(%rdi)	# D.16068, MEM[(double *)a_6(D) + 200B]
	vmovsd	%xmm14, 216(%rdi)	# D.16068, MEM[(double *)a_6(D) + 216B]
	vmovsd	%xmm1, 224(%rdi)	# D.16068, MEM[(double *)a_6(D) + 224B]
	vaddsd	%xmm13, %xmm0, %xmm1	# x3r, x1i, D.16068
	vmovsd	-80(%rsp), %xmm10	# %sfp, y8i
	vsubsd	%xmm13, %xmm0, %xmm0	# x3r, x1i, D.16068
	vmovsd	%xmm8, 240(%rdi)	# D.16068, MEM[(double *)a_6(D) + 240B]
	vmovsd	-88(%rsp), %xmm13	# %sfp, y8r
	vmovsd	40(%rsp), %xmm8	# %sfp, y10r
	vmovsd	-16(%rsp), %xmm9	# %sfp, y9i
	vmovsd	%xmm1, 232(%rdi)	# D.16068, MEM[(double *)a_6(D) + 232B]
	vaddsd	%xmm10, %xmm7, %xmm1	# y8i, y10i, x0i
	vaddsd	%xmm13, %xmm8, %xmm2	# y8r, y10r, x0r
	vmovsd	%xmm0, 248(%rdi)	# D.16068, MEM[(double *)a_6(D) + 248B]
	vmovsd	-120(%rsp), %xmm14	# %sfp, y0r
	vsubsd	%xmm8, %xmm13, %xmm0	# y10r, y8r, x1r
	vmovsd	-24(%rsp), %xmm13	# %sfp, y9r
	vaddsd	%xmm9, %xmm12, %xmm5	# y9i, y11i, x2i
	vaddsd	%xmm13, %xmm11, %xmm6	# y9r, y11r, x2r
	vsubsd	%xmm12, %xmm9, %xmm12	# y11i, y9i, x3i
	vsubsd	%xmm7, %xmm10, %xmm7	# y10i, y8i, x1i
	vmovsd	24(%rsp), %xmm10	# %sfp, y6r
	vaddsd	%xmm6, %xmm2, %xmm8	# x2r, x0r, D.16068
	vsubsd	%xmm11, %xmm13, %xmm11	# y11r, y9r, x3r
	vsubsd	%xmm6, %xmm2, %xmm2	# x2r, x0r, D.16068
	vmovsd	-32(%rsp), %xmm6	# %sfp, y5i
	vmovsd	%xmm8, 128(%rdi)	# D.16068, MEM[(double *)a_6(D) + 128B]
	vaddsd	%xmm1, %xmm5, %xmm8	# x0i, x2i, D.16068
	vsubsd	%xmm5, %xmm1, %xmm1	# x2i, x0i, D.16068
	vmovsd	%xmm2, 144(%rdi)	# D.16068, MEM[(double *)a_6(D) + 144B]
	vmovsd	%xmm8, 136(%rdi)	# D.16068, MEM[(double *)a_6(D) + 136B]
	vmovsd	%xmm1, 152(%rdi)	# D.16068, MEM[(double *)a_6(D) + 152B]
	vsubsd	%xmm12, %xmm0, %xmm1	# x3i, x1r, D.16068
	vaddsd	%xmm12, %xmm0, %xmm12	# x3i, x1r, D.16068
	vaddsd	%xmm6, %xmm15, %xmm0	# y5i, y7r, x0i
	vmovsd	%xmm1, 160(%rdi)	# D.16068, MEM[(double *)a_6(D) + 160B]
	vaddsd	%xmm7, %xmm11, %xmm1	# x1i, x3r, D.16068
	vsubsd	%xmm11, %xmm7, %xmm7	# x3r, x1i, D.16068
	vmovsd	-40(%rsp), %xmm11	# %sfp, y5r
	vmovsd	%xmm12, 176(%rdi)	# D.16068, MEM[(double *)a_6(D) + 176B]
	vsubsd	%xmm15, %xmm6, %xmm15	# y7r, y5i, x0i
	vsubsd	%xmm4, %xmm11, %xmm2	# y7i, y5r, x0r
	vmovsd	%xmm1, 168(%rdi)	# D.16068, MEM[(double *)a_6(D) + 168B]
	vaddsd	%xmm11, %xmm4, %xmm4	# y5r, y7i, x0r
	vmovsd	%xmm7, 184(%rdi)	# D.16068, MEM[(double *)a_6(D) + 184B]
	vmovsd	32(%rsp), %xmm11	# %sfp, y6i
	vmovsd	-104(%rsp), %xmm7	# %sfp, y4r
	vsubsd	%xmm0, %xmm2, %xmm1	# x0i, x0r, D.16068
	vsubsd	%xmm15, %xmm4, %xmm5	# x0i, x0r, D.16068
	vaddsd	%xmm2, %xmm0, %xmm0	# x0r, x0i, D.16068
	vmulsd	%xmm3, %xmm1, %xmm1	# wn4r, D.16068, x2r
	vaddsd	%xmm4, %xmm15, %xmm4	# x0r, x0i, D.16068
	vsubsd	%xmm11, %xmm7, %xmm6	# y6i, y4r, x0r
	vmulsd	%xmm3, %xmm5, %xmm5	# wn4r, D.16068, x3r
	vmulsd	%xmm3, %xmm0, %xmm0	# wn4r, D.16068, x2i
	vaddsd	%xmm7, %xmm11, %xmm7	# y4r, y6i, x1r
	vmulsd	%xmm3, %xmm4, %xmm3	# wn4r, D.16068, x3i
	vmovsd	-96(%rsp), %xmm4	# %sfp, y4i
	vaddsd	%xmm4, %xmm10, %xmm2	# y4i, y6r, x0i
	vsubsd	%xmm10, %xmm4, %xmm12	# y6r, y4i, x1i
	vaddsd	%xmm6, %xmm1, %xmm4	# x0r, x2r, D.16068
	vsubsd	%xmm1, %xmm6, %xmm1	# x2r, x0r, D.16068
	vmovsd	16(%rsp), %xmm6	# %sfp, y2i
	vmovsd	%xmm4, 64(%rdi)	# D.16068, MEM[(double *)a_6(D) + 64B]
	vaddsd	%xmm2, %xmm0, %xmm4	# x0i, x2i, D.16068
	vsubsd	%xmm0, %xmm2, %xmm0	# x2i, x0i, D.16068
	vmovsd	%xmm1, 80(%rdi)	# D.16068, MEM[(double *)a_6(D) + 80B]
	vmovsd	%xmm4, 72(%rdi)	# D.16068, MEM[(double *)a_6(D) + 72B]
	vmovsd	%xmm0, 88(%rdi)	# D.16068, MEM[(double *)a_6(D) + 88B]
	vsubsd	%xmm3, %xmm7, %xmm0	# x3i, x1r, D.16068
	vaddsd	%xmm7, %xmm3, %xmm3	# x1r, x3i, D.16068
	vmovsd	%xmm0, 96(%rdi)	# D.16068, MEM[(double *)a_6(D) + 96B]
	vaddsd	%xmm12, %xmm5, %xmm0	# x1i, x3r, D.16068
	vsubsd	%xmm5, %xmm12, %xmm12	# x3r, x1i, D.16068
	vmovsd	8(%rsp), %xmm5	# %sfp, y2r
	vmovsd	%xmm3, 112(%rdi)	# D.16068, MEM[(double *)a_6(D) + 112B]
	vmovsd	%xmm0, 104(%rdi)	# D.16068, MEM[(double *)a_6(D) + 104B]
	vaddsd	%xmm14, %xmm5, %xmm3	# y0r, y2r, x0r
	vmovsd	%xmm12, 120(%rdi)	# D.16068, MEM[(double *)a_6(D) + 120B]
	vsubsd	%xmm5, %xmm14, %xmm5	# y2r, y0r, x1r
	vmovsd	-112(%rsp), %xmm15	# %sfp, y0i
	vmovsd	48(%rsp), %xmm14	# %sfp, y3r
	vmovsd	-56(%rsp), %xmm12	# %sfp, y1r
	vaddsd	%xmm15, %xmm6, %xmm2	# y0i, y2i, x0i
	vsubsd	%xmm6, %xmm15, %xmm1	# y2i, y0i, x1i
	vmovsd	-48(%rsp), %xmm0	# %sfp, y1i
	vaddsd	%xmm12, %xmm14, %xmm7	# y1r, y3r, x2r
	vmovsd	56(%rsp), %xmm15	# %sfp, y3i
	vsubsd	%xmm14, %xmm12, %xmm4	# y3r, y1r, x3r
	vaddsd	%xmm0, %xmm15, %xmm6	# y1i, y3i, x2i
	vaddsd	%xmm3, %xmm7, %xmm8	# x0r, x2r, D.16068
	vsubsd	%xmm15, %xmm0, %xmm0	# y3i, y1i, x3i
	vsubsd	%xmm7, %xmm3, %xmm3	# x2r, x0r, D.16068
	vmovsd	%xmm8, (%rdi)	# D.16068, *a_6(D)
	vaddsd	%xmm2, %xmm6, %xmm8	# x0i, x2i, D.16068
	vsubsd	%xmm6, %xmm2, %xmm2	# x2i, x0i, D.16068
	vmovsd	%xmm3, 16(%rdi)	# D.16068, MEM[(double *)a_6(D) + 16B]
	vmovsd	%xmm8, 8(%rdi)	# D.16068, MEM[(double *)a_6(D) + 8B]
	vmovsd	%xmm2, 24(%rdi)	# D.16068, MEM[(double *)a_6(D) + 24B]
	vsubsd	%xmm0, %xmm5, %xmm2	# x3i, x1r, D.16068
	vaddsd	%xmm5, %xmm0, %xmm0	# x1r, x3i, D.16068
	vmovsd	%xmm2, 32(%rdi)	# D.16068, MEM[(double *)a_6(D) + 32B]
	vaddsd	%xmm1, %xmm4, %xmm2	# x1i, x3r, D.16068
	vsubsd	%xmm4, %xmm1, %xmm1	# x3r, x1i, D.16068
	vmovsd	%xmm0, 48(%rdi)	# D.16068, MEM[(double *)a_6(D) + 48B]
	vmovsd	%xmm2, 40(%rdi)	# D.16068, MEM[(double *)a_6(D) + 40B]
	vmovsd	%xmm1, 56(%rdi)	# D.16068, MEM[(double *)a_6(D) + 56B]
	addq	$64, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE73:
	.size	cftf161, .-cftf161
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.text.unlikely
.LCOLDB35:
	.text
.LHOTB35:
	.p2align 4,,15
	.globl	cftf162
	.type	cftf162, @function
cftf162:
.LFB74:
	.cfi_startproc
	subq	$80, %rsp	#,
	.cfi_def_cfa_offset 88
	vmovsd	200(%rdi), %xmm10	# MEM[(double *)a_11(D) + 200B], D.16071
	vmovsd	64(%rdi), %xmm7	# MEM[(double *)a_11(D) + 64B], D.16071
	vmovsd	72(%rdi), %xmm9	# MEM[(double *)a_11(D) + 72B], D.16071
	vsubsd	%xmm10, %xmm7, %xmm6	# D.16071, D.16071, x0r
	vmovsd	8(%rsi), %xmm15	# MEM[(double *)w_2(D) + 8B], wn4r
	vmovsd	.LC13(%rip), %xmm2	#, tmp350
	vaddsd	%xmm7, %xmm10, %xmm7	# D.16071, D.16071, x0r
	vaddsd	192(%rdi), %xmm9, %xmm4	# MEM[(double *)a_11(D) + 192B], D.16071, x0i
	vmovsd	56(%rsi), %xmm0	# MEM[(double *)w_2(D) + 56B], MEM[(double *)w_2(D) + 56B]
	vmovsd	128(%rdi), %xmm11	# MEM[(double *)a_11(D) + 128B], D.16071
	vsubsd	%xmm4, %xmm6, %xmm8	# x0i, x0r, D.16071
	vxorpd	%xmm2, %xmm0, %xmm0	# tmp350, wk3i, wk3i
	vmovsd	%xmm0, -112(%rsp)	# wk3i, %sfp
	vmovsd	(%rdi), %xmm0	# *a_11(D), D.16071
	vaddsd	%xmm6, %xmm4, %xmm4	# x0r, x0i, D.16071
	vmovsd	8(%rdi), %xmm5	# MEM[(double *)a_11(D) + 8B], D.16071
	vsubsd	136(%rdi), %xmm0, %xmm14	# MEM[(double *)a_11(D) + 136B], D.16071, x1r
	vmulsd	%xmm15, %xmm8, %xmm8	# wn4r, D.16071, x2r
	vaddsd	%xmm5, %xmm11, %xmm13	# D.16071, D.16071, x1i
	vmovsd	32(%rsi), %xmm3	# MEM[(double *)w_2(D) + 32B], wk1r
	vmulsd	%xmm15, %xmm4, %xmm4	# wn4r, D.16071, x2i
	vsubsd	%xmm11, %xmm5, %xmm5	# D.16071, D.16071, x1i
	vmovsd	40(%rsi), %xmm1	# MEM[(double *)w_2(D) + 40B], wk1i
	vmovsd	48(%rsi), %xmm12	# MEM[(double *)w_2(D) + 48B], wk3r
	vmovsd	%xmm3, -120(%rsp)	# wk1r, %sfp
	vmovsd	64(%rsi), %xmm2	# MEM[(double *)w_2(D) + 64B], wk2r
	vmovsd	72(%rsi), %xmm3	# MEM[(double *)w_2(D) + 72B], wk2i
	vaddsd	%xmm14, %xmm8, %xmm6	# x1r, x2r, y0r
	vsubsd	%xmm8, %xmm14, %xmm14	# x2r, x1r, y4r
	vmovsd	%xmm6, -48(%rsp)	# y0r, %sfp
	vaddsd	%xmm13, %xmm4, %xmm6	# x1i, x2i, y0i
	vsubsd	%xmm4, %xmm13, %xmm4	# x2i, x1i, y4i
	vmovsd	%xmm14, -40(%rsp)	# y4r, %sfp
	vmovsd	16(%rdi), %xmm14	# MEM[(double *)a_11(D) + 16B], D.16071
	vmovsd	%xmm6, -104(%rsp)	# y0i, %sfp
	vaddsd	136(%rdi), %xmm0, %xmm6	# MEM[(double *)a_11(D) + 136B], D.16071, x1r
	vsubsd	192(%rdi), %xmm9, %xmm0	# MEM[(double *)a_11(D) + 192B], D.16071, x0i
	vmovsd	%xmm4, -32(%rsp)	# y4i, %sfp
	vsubsd	%xmm0, %xmm7, %xmm4	# x0i, x0r, D.16071
	vaddsd	%xmm7, %xmm0, %xmm7	# x0r, x0i, D.16071
	vmulsd	%xmm15, %xmm4, %xmm4	# wn4r, D.16071, x2r
	vmulsd	%xmm15, %xmm7, %xmm7	# wn4r, D.16071, x2i
	vaddsd	%xmm5, %xmm4, %xmm9	# x1i, x2r, y8i
	vsubsd	%xmm7, %xmm6, %xmm11	# x2i, x1r, y8r
	vaddsd	%xmm6, %xmm7, %xmm8	# x1r, x2i, y12r
	vsubsd	%xmm4, %xmm5, %xmm5	# x2r, x1i, y12i
	vmovsd	24(%rdi), %xmm4	# MEM[(double *)a_11(D) + 24B], D.16071
	vmovsd	%xmm9, -16(%rsp)	# y8i, %sfp
	vsubsd	152(%rdi), %xmm14, %xmm7	# MEM[(double *)a_11(D) + 152B], D.16071, x0r
	vmovsd	%xmm11, -24(%rsp)	# y8r, %sfp
	vaddsd	144(%rdi), %xmm4, %xmm0	# MEM[(double *)a_11(D) + 144B], D.16071, x0i
	vmovsd	%xmm8, -8(%rsp)	# y12r, %sfp
	vmovsd	%xmm5, (%rsp)	# y12i, %sfp
	vmovsd	-120(%rsp), %xmm6	# %sfp, wk1r
	vmovsd	208(%rdi), %xmm11	# MEM[(double *)a_11(D) + 208B], D.16071
	vmulsd	%xmm1, %xmm0, %xmm5	# wk1i, x0i, D.16071
	vaddsd	152(%rdi), %xmm14, %xmm14	# MEM[(double *)a_11(D) + 152B], D.16071, x0r
	vmulsd	%xmm6, %xmm7, %xmm9	# wk1r, x0r, D.16071
	vsubsd	144(%rdi), %xmm4, %xmm4	# MEM[(double *)a_11(D) + 144B], D.16071, x0i
	vsubsd	%xmm5, %xmm9, %xmm9	# D.16071, D.16071, x1r
	vmulsd	%xmm1, %xmm7, %xmm5	# wk1i, x0r, D.16071
	vmulsd	%xmm6, %xmm0, %xmm7	# wk1r, x0i, D.16071
	vmovsd	88(%rdi), %xmm0	# MEM[(double *)a_11(D) + 88B], D.16071
	vaddsd	%xmm0, %xmm11, %xmm6	# D.16071, D.16071, x0i
	vsubsd	%xmm11, %xmm0, %xmm0	# D.16071, D.16071, x0i
	vmovsd	-120(%rsp), %xmm11	# %sfp, wk1r
	vaddsd	%xmm7, %xmm5, %xmm7	# D.16071, D.16071, x1i
	vmulsd	%xmm12, %xmm6, %xmm13	# wk3r, x0i, D.16071
	vmovsd	80(%rdi), %xmm5	# MEM[(double *)a_11(D) + 80B], D.16071
	vsubsd	216(%rdi), %xmm5, %xmm10	# MEM[(double *)a_11(D) + 216B], D.16071, x0r
	vmulsd	-112(%rsp), %xmm10, %xmm8	# %sfp, x0r, D.16071
	vaddsd	216(%rdi), %xmm5, %xmm5	# MEM[(double *)a_11(D) + 216B], D.16071, x0r
	vmulsd	%xmm12, %xmm10, %xmm10	# wk3r, x0r, D.16071
	vsubsd	%xmm13, %xmm8, %xmm8	# D.16071, D.16071, x2r
	vmovsd	-112(%rsp), %xmm13	# %sfp, wk3i
	vmulsd	%xmm13, %xmm6, %xmm6	# wk3i, x0i, D.16071
	vaddsd	%xmm10, %xmm6, %xmm10	# D.16071, D.16071, x2i
	vaddsd	%xmm9, %xmm8, %xmm6	# x1r, x2r, y1r
	vsubsd	%xmm8, %xmm9, %xmm8	# x2r, x1r, y5r
	vmovsd	%xmm6, -96(%rsp)	# y1r, %sfp
	vaddsd	%xmm7, %xmm10, %xmm6	# x1i, x2i, y1i
	vsubsd	%xmm10, %xmm7, %xmm10	# x2i, x1i, y5i
	vmulsd	%xmm13, %xmm4, %xmm7	# wk3i, x0i, D.16071
	vmovsd	%xmm8, -80(%rsp)	# y5r, %sfp
	vmulsd	%xmm12, %xmm4, %xmm4	# wk3r, x0i, D.16071
	vmovsd	%xmm6, -88(%rsp)	# y1i, %sfp
	vmulsd	%xmm12, %xmm14, %xmm6	# wk3r, x0r, D.16071
	vmulsd	%xmm13, %xmm14, %xmm14	# wk3i, x0r, D.16071
	vmovsd	32(%rdi), %xmm13	# MEM[(double *)a_11(D) + 32B], D.16071
	vmovsd	%xmm10, -72(%rsp)	# y5i, %sfp
	vsubsd	168(%rdi), %xmm13, %xmm8	# MEM[(double *)a_11(D) + 168B], D.16071, x0r
	vaddsd	168(%rdi), %xmm13, %xmm13	# MEM[(double *)a_11(D) + 168B], D.16071, x0r
	vsubsd	%xmm7, %xmm6, %xmm6	# D.16071, D.16071, x1r
	vmulsd	%xmm11, %xmm5, %xmm7	# wk1r, x0r, D.16071
	vaddsd	%xmm4, %xmm14, %xmm14	# D.16071, D.16071, x1i
	vmulsd	%xmm1, %xmm0, %xmm4	# wk1i, x0i, D.16071
	vmulsd	%xmm11, %xmm0, %xmm0	# wk1r, x0i, D.16071
	vmulsd	%xmm2, %xmm8, %xmm9	# wk2r, x0r, D.16071
	vaddsd	%xmm7, %xmm4, %xmm7	# D.16071, D.16071, x2r
	vmulsd	%xmm1, %xmm5, %xmm4	# wk1i, x0r, D.16071
	vsubsd	%xmm7, %xmm6, %xmm5	# x2r, x1r, y9r
	vaddsd	%xmm7, %xmm6, %xmm11	# x2r, x1r, y13r
	vmovsd	40(%rdi), %xmm6	# MEM[(double *)a_11(D) + 40B], D.16071
	vsubsd	%xmm4, %xmm0, %xmm0	# D.16071, D.16071, x2i
	vmulsd	%xmm3, %xmm8, %xmm4	# wk2i, x0r, D.16071
	vmovsd	%xmm5, 8(%rsp)	# y9r, %sfp
	vmovsd	%xmm11, 24(%rsp)	# y13r, %sfp
	vmovsd	104(%rdi), %xmm11	# MEM[(double *)a_11(D) + 104B], D.16071
	vsubsd	%xmm0, %xmm14, %xmm5	# x2i, x1i, y9i
	vaddsd	%xmm0, %xmm14, %xmm0	# x2i, x1i, y13i
	vmovsd	%xmm5, 16(%rsp)	# y9i, %sfp
	vmovsd	%xmm0, 32(%rsp)	# y13i, %sfp
	vaddsd	160(%rdi), %xmm6, %xmm0	# MEM[(double *)a_11(D) + 160B], D.16071, x0i
	vsubsd	160(%rdi), %xmm6, %xmm6	# MEM[(double *)a_11(D) + 160B], D.16071, x0i
	vmulsd	%xmm3, %xmm0, %xmm5	# wk2i, x0i, D.16071
	vmulsd	%xmm2, %xmm0, %xmm8	# wk2r, x0i, D.16071
	vmovsd	96(%rdi), %xmm0	# MEM[(double *)a_11(D) + 96B], D.16071
	vsubsd	232(%rdi), %xmm0, %xmm7	# MEM[(double *)a_11(D) + 232B], D.16071, x0r
	vaddsd	232(%rdi), %xmm0, %xmm0	# MEM[(double *)a_11(D) + 232B], D.16071, x0r
	vsubsd	%xmm5, %xmm9, %xmm9	# D.16071, D.16071, x1r
	vmovsd	224(%rdi), %xmm5	# MEM[(double *)a_11(D) + 224B], D.16071
	vaddsd	%xmm8, %xmm4, %xmm8	# D.16071, D.16071, x1i
	vmulsd	%xmm3, %xmm7, %xmm4	# wk2i, x0r, D.16071
	vaddsd	%xmm11, %xmm5, %xmm10	# D.16071, D.16071, x0i
	vmulsd	%xmm2, %xmm7, %xmm7	# wk2r, x0r, D.16071
	vsubsd	%xmm5, %xmm11, %xmm5	# D.16071, D.16071, x0i
	vmulsd	%xmm2, %xmm10, %xmm14	# wk2r, x0i, D.16071
	vmulsd	%xmm3, %xmm10, %xmm10	# wk2i, x0i, D.16071
	vsubsd	%xmm14, %xmm4, %xmm4	# D.16071, D.16071, x2r
	vaddsd	%xmm10, %xmm7, %xmm10	# D.16071, D.16071, x2i
	vmulsd	%xmm2, %xmm6, %xmm7	# wk2r, x0i, D.16071
	vmulsd	%xmm3, %xmm6, %xmm6	# wk2i, x0i, D.16071
	vaddsd	%xmm9, %xmm4, %xmm14	# x1r, x2r, y2r
	vmovsd	%xmm14, -64(%rsp)	# y2r, %sfp
	vaddsd	%xmm8, %xmm10, %xmm14	# x1i, x2i, y2i
	vmovsd	%xmm14, -56(%rsp)	# y2i, %sfp
	vsubsd	%xmm4, %xmm9, %xmm14	# x2r, x1r, y6r
	vmulsd	%xmm3, %xmm13, %xmm4	# wk2i, x0r, D.16071
	vmulsd	%xmm2, %xmm13, %xmm13	# wk2r, x0r, D.16071
	vmovsd	%xmm14, 40(%rsp)	# y6r, %sfp
	vsubsd	%xmm10, %xmm8, %xmm14	# x2i, x1i, y6i
	vsubsd	%xmm7, %xmm4, %xmm4	# D.16071, D.16071, x1r
	vmulsd	%xmm2, %xmm0, %xmm7	# wk2r, x0r, D.16071
	vaddsd	%xmm6, %xmm13, %xmm13	# D.16071, D.16071, x1i
	vmulsd	%xmm3, %xmm0, %xmm0	# wk2i, x0r, D.16071
	vmulsd	%xmm3, %xmm5, %xmm6	# wk2i, x0i, D.16071
	vmulsd	%xmm2, %xmm5, %xmm5	# wk2r, x0i, D.16071
	vsubsd	%xmm6, %xmm7, %xmm7	# D.16071, D.16071, x2r
	vaddsd	%xmm5, %xmm0, %xmm6	# D.16071, D.16071, x2i
	vsubsd	%xmm7, %xmm4, %xmm3	# x2r, x1r, y10r
	vsubsd	%xmm6, %xmm13, %xmm2	# x2i, x1i, y10i
	vmovsd	%xmm3, 48(%rsp)	# y10r, %sfp
	vaddsd	%xmm4, %xmm7, %xmm3	# x1r, x2r, y14r
	vmovsd	184(%rdi), %xmm9	# MEM[(double *)a_11(D) + 184B], D.16071
	vmovsd	%xmm2, 56(%rsp)	# y10i, %sfp
	vaddsd	%xmm13, %xmm6, %xmm2	# x1i, x2i, y14i
	vmovsd	48(%rdi), %xmm6	# MEM[(double *)a_11(D) + 48B], D.16071
	vmovsd	-112(%rsp), %xmm13	# %sfp, wk3i
	vsubsd	%xmm9, %xmm6, %xmm4	# D.16071, D.16071, x0r
	vmovsd	%xmm3, 64(%rsp)	# y14r, %sfp
	vmovsd	-120(%rsp), %xmm10	# %sfp, wk1r
	vmovsd	%xmm2, 72(%rsp)	# y14i, %sfp
	vmovsd	56(%rdi), %xmm2	# MEM[(double *)a_11(D) + 56B], D.16071
	vaddsd	%xmm6, %xmm9, %xmm6	# D.16071, D.16071, x0r
	vaddsd	176(%rdi), %xmm2, %xmm3	# MEM[(double *)a_11(D) + 176B], D.16071, x0i
	vmulsd	%xmm13, %xmm4, %xmm5	# wk3i, x0r, D.16071
	vsubsd	176(%rdi), %xmm2, %xmm2	# MEM[(double *)a_11(D) + 176B], D.16071, x0i
	vmulsd	%xmm12, %xmm4, %xmm11	# wk3r, x0r, D.16071
	vmovsd	-120(%rsp), %xmm9	# %sfp, wk1r
	vmulsd	%xmm13, %xmm3, %xmm0	# wk3i, x0i, D.16071
	vmovsd	112(%rdi), %xmm13	# MEM[(double *)a_11(D) + 112B], D.16071
	vmulsd	%xmm12, %xmm3, %xmm4	# wk3r, x0i, D.16071
	vmovsd	120(%rdi), %xmm3	# MEM[(double *)a_11(D) + 120B], D.16071
	vsubsd	%xmm0, %xmm11, %xmm11	# D.16071, D.16071, x1r
	vaddsd	%xmm4, %xmm5, %xmm4	# D.16071, D.16071, x1i
	vsubsd	248(%rdi), %xmm13, %xmm0	# MEM[(double *)a_11(D) + 248B], D.16071, x0r
	vaddsd	240(%rdi), %xmm3, %xmm5	# MEM[(double *)a_11(D) + 240B], D.16071, x0i
	vaddsd	248(%rdi), %xmm13, %xmm13	# MEM[(double *)a_11(D) + 248B], D.16071, x0r
	vmulsd	%xmm1, %xmm0, %xmm7	# wk1i, x0r, D.16071
	vmulsd	%xmm10, %xmm5, %xmm8	# wk1r, x0i, D.16071
	vsubsd	%xmm8, %xmm7, %xmm7	# D.16071, D.16071, x2r
	vmulsd	%xmm10, %xmm0, %xmm8	# wk1r, x0r, D.16071
	vmulsd	%xmm1, %xmm5, %xmm0	# wk1i, x0i, D.16071
	vaddsd	%xmm7, %xmm11, %xmm5	# x2r, x1r, y3r
	vsubsd	%xmm7, %xmm11, %xmm11	# x2r, x1r, y7r
	vmulsd	%xmm1, %xmm6, %xmm7	# wk1i, x0r, D.16071
	vaddsd	%xmm0, %xmm8, %xmm0	# D.16071, D.16071, x2i
	vaddsd	-96(%rsp), %xmm5, %xmm8	# %sfp, y3r, x2r
	vaddsd	%xmm0, %xmm4, %xmm10	# x2i, x1i, y3i
	vsubsd	%xmm0, %xmm4, %xmm0	# x2i, x1i, y7i
	vmulsd	%xmm9, %xmm2, %xmm4	# wk1r, x0i, D.16071
	vmulsd	%xmm9, %xmm6, %xmm9	# wk1r, x0r, D.16071
	vsubsd	240(%rdi), %xmm3, %xmm6	# MEM[(double *)a_11(D) + 240B], D.16071, x0i
	vmulsd	%xmm1, %xmm2, %xmm2	# wk1i, x0i, D.16071
	vmulsd	%xmm12, %xmm6, %xmm1	# wk3r, x0i, D.16071
	vaddsd	%xmm7, %xmm4, %xmm4	# D.16071, D.16071, x1r
	vsubsd	%xmm9, %xmm2, %xmm2	# D.16071, D.16071, x1i
	vmovsd	-112(%rsp), %xmm9	# %sfp, wk3i
	vmulsd	%xmm9, %xmm13, %xmm3	# wk3i, x0r, D.16071
	vmulsd	%xmm9, %xmm6, %xmm6	# wk3i, x0i, D.16071
	vmovsd	-56(%rsp), %xmm9	# %sfp, y2i
	vmulsd	%xmm12, %xmm13, %xmm13	# wk3r, x0r, D.16071
	vsubsd	%xmm1, %xmm3, %xmm7	# D.16071, D.16071, x2r
	vaddsd	%xmm13, %xmm6, %xmm13	# D.16071, D.16071, x2i
	vaddsd	%xmm4, %xmm7, %xmm12	# x1r, x2r, y11r
	vsubsd	%xmm7, %xmm4, %xmm3	# x2r, x1r, y15r
	vmovsd	-64(%rsp), %xmm4	# %sfp, y2r
	vaddsd	%xmm2, %xmm13, %xmm1	# x1i, x2i, y11i
	vsubsd	%xmm13, %xmm2, %xmm2	# x2i, x1i, y15i
	vmovsd	-48(%rsp), %xmm13	# %sfp, y0r
	vaddsd	-88(%rsp), %xmm10, %xmm7	# %sfp, y3i, x2i
	vaddsd	%xmm13, %xmm4, %xmm6	# y0r, y2r, x1r
	vaddsd	-104(%rsp), %xmm9, %xmm4	# %sfp, y2i, x1i
	vaddsd	%xmm6, %xmm8, %xmm9	# x1r, x2r, D.16071
	vsubsd	%xmm8, %xmm6, %xmm6	# x2r, x1r, D.16071
	vmovsd	%xmm9, (%rdi)	# D.16071, *a_11(D)
	vaddsd	%xmm4, %xmm7, %xmm9	# x1i, x2i, D.16071
	vmovsd	%xmm6, 16(%rdi)	# D.16071, MEM[(double *)a_11(D) + 16B]
	vsubsd	%xmm7, %xmm4, %xmm4	# x2i, x1i, D.16071
	vmovsd	-104(%rsp), %xmm7	# %sfp, y0i
	vsubsd	-56(%rsp), %xmm7, %xmm6	# %sfp, y0i, x1i
	vmovsd	-96(%rsp), %xmm7	# %sfp, y1r
	vmovsd	%xmm9, 8(%rdi)	# D.16071, MEM[(double *)a_11(D) + 8B]
	vmovsd	%xmm4, 24(%rdi)	# D.16071, MEM[(double *)a_11(D) + 24B]
	vsubsd	-64(%rsp), %xmm13, %xmm4	# %sfp, y0r, x1r
	vsubsd	%xmm5, %xmm7, %xmm5	# y3r, y1r, x2r
	vmovsd	-88(%rsp), %xmm7	# %sfp, y1i
	vsubsd	%xmm10, %xmm7, %xmm10	# y3i, y1i, x2i
	vsubsd	%xmm10, %xmm4, %xmm7	# x2i, x1r, D.16071
	vaddsd	%xmm4, %xmm10, %xmm10	# x1r, x2i, D.16071
	vmovsd	%xmm7, 32(%rdi)	# D.16071, MEM[(double *)a_11(D) + 32B]
	vaddsd	%xmm6, %xmm5, %xmm7	# x1i, x2r, D.16071
	vmovsd	-40(%rsp), %xmm9	# %sfp, y4r
	vsubsd	%xmm5, %xmm6, %xmm5	# x2r, x1i, D.16071
	vmovsd	40(%rsp), %xmm13	# %sfp, y6r
	vmovsd	%xmm10, 48(%rdi)	# D.16071, MEM[(double *)a_11(D) + 48B]
	vaddsd	-72(%rsp), %xmm11, %xmm4	# %sfp, y7r, x0i
	vmovsd	%xmm7, 40(%rdi)	# D.16071, MEM[(double *)a_11(D) + 40B]
	vmovsd	-80(%rsp), %xmm7	# %sfp, y5r
	vsubsd	%xmm14, %xmm9, %xmm6	# y6i, y4r, x1r
	vmovsd	-32(%rsp), %xmm10	# %sfp, y4i
	vmovsd	%xmm5, 56(%rdi)	# D.16071, MEM[(double *)a_11(D) + 56B]
	vaddsd	%xmm9, %xmm14, %xmm14	# y4r, y6i, x1r
	vsubsd	%xmm0, %xmm7, %xmm8	# y7i, y5r, x0r
	vmovsd	-16(%rsp), %xmm9	# %sfp, y8i
	vaddsd	%xmm10, %xmm13, %xmm5	# y4i, y6r, x1i
	vaddsd	-80(%rsp), %xmm0, %xmm0	# %sfp, y7i, x0r
	vsubsd	%xmm4, %xmm8, %xmm7	# x0i, x0r, D.16071
	vaddsd	%xmm8, %xmm4, %xmm4	# x0r, x0i, D.16071
	vsubsd	%xmm13, %xmm10, %xmm13	# y6r, y4i, x1i
	vmovsd	16(%rsp), %xmm10	# %sfp, y9i
	vmulsd	%xmm15, %xmm7, %xmm7	# wn4r, D.16071, x2r
	vmulsd	%xmm15, %xmm4, %xmm4	# wn4r, D.16071, x2i
	vaddsd	%xmm6, %xmm7, %xmm8	# x1r, x2r, D.16071
	vsubsd	%xmm7, %xmm6, %xmm6	# x2r, x1r, D.16071
	vmovsd	%xmm8, 64(%rdi)	# D.16071, MEM[(double *)a_11(D) + 64B]
	vaddsd	%xmm5, %xmm4, %xmm8	# x1i, x2i, D.16071
	vsubsd	%xmm4, %xmm5, %xmm4	# x2i, x1i, D.16071
	vmovsd	%xmm6, 80(%rdi)	# D.16071, MEM[(double *)a_11(D) + 80B]
	vmovsd	%xmm8, 72(%rdi)	# D.16071, MEM[(double *)a_11(D) + 72B]
	vmovsd	56(%rsp), %xmm8	# %sfp, y10i
	vmovsd	%xmm4, 88(%rdi)	# D.16071, MEM[(double *)a_11(D) + 88B]
	vmovsd	-72(%rsp), %xmm4	# %sfp, y5i
	vsubsd	%xmm11, %xmm4, %xmm7	# y7r, y5i, x0i
	vmovsd	-24(%rsp), %xmm11	# %sfp, y8r
	vsubsd	%xmm7, %xmm0, %xmm5	# x0i, x0r, D.16071
	vaddsd	%xmm0, %xmm7, %xmm0	# x0r, x0i, D.16071
	vmulsd	%xmm15, %xmm5, %xmm5	# wn4r, D.16071, x2r
	vmulsd	%xmm15, %xmm0, %xmm0	# wn4r, D.16071, x2i
	vsubsd	%xmm0, %xmm14, %xmm4	# x2i, x1r, D.16071
	vaddsd	%xmm14, %xmm0, %xmm14	# x1r, x2i, D.16071
	vaddsd	%xmm9, %xmm8, %xmm0	# y8i, y10i, x1i
	vmovsd	%xmm4, 96(%rdi)	# D.16071, MEM[(double *)a_11(D) + 96B]
	vaddsd	%xmm13, %xmm5, %xmm4	# x1i, x2r, D.16071
	vsubsd	%xmm5, %xmm13, %xmm13	# x2r, x1i, D.16071
	vmovsd	%xmm14, 112(%rdi)	# D.16071, MEM[(double *)a_11(D) + 112B]
	vmovsd	8(%rsp), %xmm14	# %sfp, y9r
	vsubsd	%xmm1, %xmm10, %xmm5	# y11i, y9i, x2i
	vsubsd	%xmm12, %xmm14, %xmm6	# y11r, y9r, x2r
	vmovsd	%xmm4, 104(%rdi)	# D.16071, MEM[(double *)a_11(D) + 104B]
	vmovsd	%xmm13, 120(%rdi)	# D.16071, MEM[(double *)a_11(D) + 120B]
	vmovsd	48(%rsp), %xmm13	# %sfp, y10r
	vaddsd	%xmm10, %xmm1, %xmm1	# y9i, y11i, x2i
	vaddsd	%xmm14, %xmm12, %xmm12	# y9r, y11r, x2r
	vaddsd	%xmm11, %xmm13, %xmm4	# y8r, y10r, x1r
	vaddsd	%xmm4, %xmm6, %xmm7	# x1r, x2r, D.16071
	vsubsd	%xmm6, %xmm4, %xmm4	# x2r, x1r, D.16071
	vmovsd	%xmm7, 128(%rdi)	# D.16071, MEM[(double *)a_11(D) + 128B]
	vaddsd	%xmm0, %xmm5, %xmm7	# x1i, x2i, D.16071
	vsubsd	%xmm5, %xmm0, %xmm0	# x2i, x1i, D.16071
	vmovsd	%xmm4, 144(%rdi)	# D.16071, MEM[(double *)a_11(D) + 144B]
	vsubsd	%xmm8, %xmm9, %xmm4	# y10i, y8i, x1i
	vmovsd	-8(%rsp), %xmm8	# %sfp, y12r
	vmovsd	%xmm7, 136(%rdi)	# D.16071, MEM[(double *)a_11(D) + 136B]
	vmovsd	%xmm0, 152(%rdi)	# D.16071, MEM[(double *)a_11(D) + 152B]
	vsubsd	%xmm13, %xmm11, %xmm0	# y10r, y8r, x1r
	vsubsd	%xmm1, %xmm0, %xmm5	# x2i, x1r, D.16071
	vaddsd	%xmm0, %xmm1, %xmm1	# x1r, x2i, D.16071
	vmovsd	%xmm5, 160(%rdi)	# D.16071, MEM[(double *)a_11(D) + 160B]
	vaddsd	%xmm4, %xmm12, %xmm5	# x1i, x2r, D.16071
	vsubsd	%xmm12, %xmm4, %xmm4	# x2r, x1i, D.16071
	vmovsd	%xmm1, 176(%rdi)	# D.16071, MEM[(double *)a_11(D) + 176B]
	vmovsd	%xmm5, 168(%rdi)	# D.16071, MEM[(double *)a_11(D) + 168B]
	vmovsd	%xmm4, 184(%rdi)	# D.16071, MEM[(double *)a_11(D) + 184B]
	vmovsd	72(%rsp), %xmm10	# %sfp, y14i
	vmovsd	24(%rsp), %xmm11	# %sfp, y13r
	vmovsd	32(%rsp), %xmm12	# %sfp, y13i
	vsubsd	%xmm10, %xmm8, %xmm5	# y14i, y12r, x1r
	vaddsd	%xmm11, %xmm2, %xmm0	# y13r, y15i, x0r
	vmovsd	64(%rsp), %xmm14	# %sfp, y14r
	vsubsd	%xmm3, %xmm12, %xmm1	# y15r, y13i, x0i
	vmovsd	(%rsp), %xmm7	# %sfp, y12i
	vsubsd	%xmm2, %xmm11, %xmm2	# y15i, y13r, x0r
	vaddsd	%xmm7, %xmm14, %xmm4	# y12i, y14r, x1i
	vsubsd	%xmm1, %xmm0, %xmm6	# x0i, x0r, D.16071
	vaddsd	%xmm0, %xmm1, %xmm1	# x0r, x0i, D.16071
	vmulsd	%xmm15, %xmm6, %xmm6	# wn4r, D.16071, x2r
	vmulsd	%xmm15, %xmm1, %xmm0	# wn4r, D.16071, x2i
	vaddsd	%xmm5, %xmm6, %xmm1	# x1r, x2r, D.16071
	vsubsd	%xmm6, %xmm5, %xmm5	# x2r, x1r, D.16071
	vaddsd	%xmm8, %xmm10, %xmm6	# y12r, y14i, x1r
	vmovsd	%xmm1, 192(%rdi)	# D.16071, MEM[(double *)a_11(D) + 192B]
	vaddsd	%xmm4, %xmm0, %xmm1	# x1i, x2i, D.16071
	vsubsd	%xmm0, %xmm4, %xmm0	# x2i, x1i, D.16071
	vmovsd	%xmm5, 208(%rdi)	# D.16071, MEM[(double *)a_11(D) + 208B]
	vsubsd	%xmm14, %xmm7, %xmm4	# y14r, y12i, x1i
	vaddsd	%xmm12, %xmm3, %xmm14	# y13i, y15r, x0i
	vmovsd	%xmm1, 200(%rdi)	# D.16071, MEM[(double *)a_11(D) + 200B]
	vmovsd	%xmm0, 216(%rdi)	# D.16071, MEM[(double *)a_11(D) + 216B]
	vaddsd	%xmm2, %xmm14, %xmm0	# x0r, x0i, D.16071
	vsubsd	%xmm14, %xmm2, %xmm5	# x0i, x0r, D.16071
	vmulsd	%xmm15, %xmm0, %xmm0	# wn4r, D.16071, x2i
	vmulsd	%xmm15, %xmm5, %xmm5	# wn4r, D.16071, x2r
	vsubsd	%xmm0, %xmm6, %xmm1	# x2i, x1r, D.16071
	vaddsd	%xmm6, %xmm0, %xmm0	# x1r, x2i, D.16071
	vmovsd	%xmm1, 224(%rdi)	# D.16071, MEM[(double *)a_11(D) + 224B]
	vaddsd	%xmm4, %xmm5, %xmm1	# x1i, x2r, D.16071
	vsubsd	%xmm5, %xmm4, %xmm4	# x2r, x1i, D.16071
	vmovsd	%xmm0, 240(%rdi)	# D.16071, MEM[(double *)a_11(D) + 240B]
	vmovsd	%xmm1, 232(%rdi)	# D.16071, MEM[(double *)a_11(D) + 232B]
	vmovsd	%xmm4, 248(%rdi)	# D.16071, MEM[(double *)a_11(D) + 248B]
	addq	$80, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE74:
	.size	cftf162, .-cftf162
	.section	.text.unlikely
.LCOLDE35:
	.text
.LHOTE35:
	.section	.text.unlikely
.LCOLDB36:
	.text
.LHOTB36:
	.p2align 4,,15
	.globl	cftf081
	.type	cftf081, @function
cftf081:
.LFB75:
	.cfi_startproc
	vmovsd	64(%rdi), %xmm2	# MEM[(double *)a_4(D) + 64B], D.16104
	vmovsd	(%rdi), %xmm5	# *a_4(D), D.16104
	vmovsd	8(%rdi), %xmm1	# MEM[(double *)a_4(D) + 8B], D.16104
	vaddsd	%xmm5, %xmm2, %xmm8	# D.16104, D.16104, x0r
	vmovsd	72(%rdi), %xmm0	# MEM[(double *)a_4(D) + 72B], D.16104
	vmovsd	104(%rdi), %xmm9	# MEM[(double *)a_4(D) + 104B], D.16104
	vsubsd	%xmm2, %xmm5, %xmm5	# D.16104, D.16104, x1r
	vmovsd	40(%rdi), %xmm2	# MEM[(double *)a_4(D) + 40B], D.16104
	vaddsd	%xmm1, %xmm0, %xmm7	# D.16104, D.16104, x0i
	vsubsd	%xmm0, %xmm1, %xmm3	# D.16104, D.16104, x1i
	vmovsd	32(%rdi), %xmm1	# MEM[(double *)a_4(D) + 32B], D.16104
	vaddsd	%xmm2, %xmm9, %xmm6	# D.16104, D.16104, x2i
	vmovsd	96(%rdi), %xmm0	# MEM[(double *)a_4(D) + 96B], D.16104
	vsubsd	%xmm9, %xmm2, %xmm2	# D.16104, D.16104, x3i
	vmovsd	48(%rdi), %xmm14	# MEM[(double *)a_4(D) + 48B], D.16104
	vaddsd	%xmm1, %xmm0, %xmm4	# D.16104, D.16104, x2r
	vmovsd	56(%rdi), %xmm13	# MEM[(double *)a_4(D) + 56B], D.16104
	vsubsd	%xmm0, %xmm1, %xmm0	# D.16104, D.16104, x3r
	vmovsd	8(%rsi), %xmm12	# MEM[(double *)w_2(D) + 8B], wn4r
	vaddsd	%xmm7, %xmm6, %xmm1	# x0i, x2i, y0i
	vaddsd	%xmm8, %xmm4, %xmm9	# x0r, x2r, y0r
	vaddsd	%xmm3, %xmm0, %xmm10	# x1i, x3r, y1i
	vmovsd	%xmm1, -24(%rsp)	# y0i, %sfp
	vsubsd	%xmm4, %xmm8, %xmm4	# x2r, x0r, y2r
	vmovsd	16(%rdi), %xmm8	# MEM[(double *)a_4(D) + 16B], D.16104
	vsubsd	%xmm0, %xmm3, %xmm1	# x3r, x1i, y3i
	vmovsd	80(%rdi), %xmm0	# MEM[(double *)a_4(D) + 80B], D.16104
	vsubsd	%xmm6, %xmm7, %xmm6	# x2i, x0i, y2i
	vmovsd	120(%rdi), %xmm3	# MEM[(double *)a_4(D) + 120B], D.16104
	vaddsd	%xmm8, %xmm0, %xmm15	# D.16104, D.16104, x0r
	vmovsd	24(%rdi), %xmm7	# MEM[(double *)a_4(D) + 24B], D.16104
	vmovsd	%xmm4, -16(%rsp)	# y2r, %sfp
	vsubsd	%xmm2, %xmm5, %xmm11	# x3i, x1r, y1r
	vsubsd	%xmm0, %xmm8, %xmm8	# D.16104, D.16104, x1r
	vmovsd	112(%rdi), %xmm0	# MEM[(double *)a_4(D) + 112B], D.16104
	vmovsd	%xmm6, -8(%rsp)	# y2i, %sfp
	vaddsd	%xmm5, %xmm2, %xmm2	# x1r, x3i, y3r
	vmovsd	88(%rdi), %xmm5	# MEM[(double *)a_4(D) + 88B], D.16104
	vaddsd	%xmm14, %xmm0, %xmm6	# D.16104, D.16104, x2r
	vaddsd	%xmm7, %xmm5, %xmm4	# D.16104, D.16104, x0i
	vsubsd	%xmm0, %xmm14, %xmm0	# D.16104, D.16104, x3r
	vsubsd	%xmm5, %xmm7, %xmm7	# D.16104, D.16104, x1i
	vaddsd	%xmm13, %xmm3, %xmm5	# D.16104, D.16104, x2i
	vsubsd	%xmm3, %xmm13, %xmm3	# D.16104, D.16104, x3i
	vaddsd	%xmm15, %xmm6, %xmm14	# x0r, x2r, y4r
	vaddsd	%xmm4, %xmm5, %xmm13	# x0i, x2i, y4i
	vsubsd	%xmm6, %xmm15, %xmm6	# x2r, x0r, y6r
	vsubsd	%xmm5, %xmm4, %xmm4	# x2i, x0i, y6i
	vsubsd	%xmm3, %xmm8, %xmm15	# x3i, x1r, x0r
	vaddsd	%xmm7, %xmm0, %xmm5	# x1i, x3r, x0i
	vsubsd	%xmm0, %xmm7, %xmm0	# x3r, x1i, x2i
	vaddsd	%xmm8, %xmm3, %xmm3	# x1r, x3i, x2r
	vsubsd	%xmm5, %xmm15, %xmm7	# x0i, x0r, D.16104
	vaddsd	%xmm15, %xmm5, %xmm5	# x0r, x0i, D.16104
	vsubsd	%xmm0, %xmm3, %xmm8	# x2i, x2r, D.16104
	vmulsd	%xmm12, %xmm7, %xmm7	# wn4r, D.16104, y5r
	vaddsd	%xmm3, %xmm0, %xmm3	# x2r, x2i, D.16104
	vmulsd	%xmm12, %xmm5, %xmm5	# wn4r, D.16104, y5i
	vmulsd	%xmm12, %xmm8, %xmm8	# wn4r, D.16104, y7r
	vmulsd	%xmm12, %xmm3, %xmm3	# wn4r, D.16104, y7i
	vaddsd	%xmm11, %xmm7, %xmm0	# y1r, y5r, D.16104
	vsubsd	%xmm7, %xmm11, %xmm11	# y5r, y1r, D.16104
	vmovsd	%xmm0, 64(%rdi)	# D.16104, MEM[(double *)a_4(D) + 64B]
	vaddsd	%xmm10, %xmm5, %xmm0	# y1i, y5i, D.16104
	vsubsd	%xmm5, %xmm10, %xmm5	# y5i, y1i, D.16104
	vmovsd	%xmm11, 80(%rdi)	# D.16104, MEM[(double *)a_4(D) + 80B]
	vmovsd	%xmm0, 72(%rdi)	# D.16104, MEM[(double *)a_4(D) + 72B]
	vsubsd	%xmm3, %xmm2, %xmm0	# y7i, y3r, D.16104
	vaddsd	%xmm2, %xmm3, %xmm3	# y3r, y7i, D.16104
	vmovsd	%xmm5, 88(%rdi)	# D.16104, MEM[(double *)a_4(D) + 88B]
	vmovsd	%xmm0, 96(%rdi)	# D.16104, MEM[(double *)a_4(D) + 96B]
	vaddsd	%xmm1, %xmm8, %xmm0	# y3i, y7r, D.16104
	vsubsd	%xmm8, %xmm1, %xmm1	# y7r, y3i, D.16104
	vmovsd	%xmm3, 112(%rdi)	# D.16104, MEM[(double *)a_4(D) + 112B]
	vmovsd	%xmm0, 104(%rdi)	# D.16104, MEM[(double *)a_4(D) + 104B]
	vaddsd	%xmm9, %xmm14, %xmm0	# y0r, y4r, D.16104
	vmovsd	%xmm1, 120(%rdi)	# D.16104, MEM[(double *)a_4(D) + 120B]
	vmovsd	-24(%rsp), %xmm1	# %sfp, y0i
	vsubsd	%xmm14, %xmm9, %xmm9	# y4r, y0r, D.16104
	vmovsd	%xmm0, (%rdi)	# D.16104, *a_4(D)
	vaddsd	%xmm1, %xmm13, %xmm0	# y0i, y4i, D.16104
	vsubsd	%xmm13, %xmm1, %xmm13	# y4i, y0i, D.16104
	vmovsd	%xmm9, 16(%rdi)	# D.16104, MEM[(double *)a_4(D) + 16B]
	vmovsd	%xmm0, 8(%rdi)	# D.16104, MEM[(double *)a_4(D) + 8B]
	vmovsd	%xmm13, 24(%rdi)	# D.16104, MEM[(double *)a_4(D) + 24B]
	vmovsd	-16(%rsp), %xmm2	# %sfp, y2r
	vmovsd	-8(%rsp), %xmm7	# %sfp, y2i
	vsubsd	%xmm4, %xmm2, %xmm0	# y6i, y2r, D.16104
	vaddsd	%xmm2, %xmm4, %xmm4	# y2r, y6i, D.16104
	vmovsd	%xmm0, 32(%rdi)	# D.16104, MEM[(double *)a_4(D) + 32B]
	vaddsd	%xmm7, %xmm6, %xmm0	# y2i, y6r, D.16104
	vsubsd	%xmm6, %xmm7, %xmm6	# y6r, y2i, D.16104
	vmovsd	%xmm4, 48(%rdi)	# D.16104, MEM[(double *)a_4(D) + 48B]
	vmovsd	%xmm0, 40(%rdi)	# D.16104, MEM[(double *)a_4(D) + 40B]
	vmovsd	%xmm6, 56(%rdi)	# D.16104, MEM[(double *)a_4(D) + 56B]
	ret
	.cfi_endproc
.LFE75:
	.size	cftf081, .-cftf081
	.section	.text.unlikely
.LCOLDE36:
	.text
.LHOTE36:
	.section	.text.unlikely
.LCOLDB37:
	.text
.LHOTB37:
	.p2align 4,,15
	.globl	cftfx41
	.type	cftfx41, @function
cftfx41:
.LFB72:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movslq	%edx, %rdx	# nw, D.16170
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx	# a, a
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 72
	cmpl	$128, %edi	#, n
	je	.L277	#,
	leaq	-64(%rcx,%rdx,8), %rbp	#, D.16172
	movq	%rbx, %rdi	# a,
	movq	%rbp, %rsi	# D.16172,
	call	cftf081	#
	vmovsd	128(%rbx), %xmm2	# MEM[(double *)a_7(D) + 128B], D.16173
	movq	%rbp, %rsi	# D.16172,
	vmovsd	136(%rbx), %xmm11	# MEM[(double *)a_7(D) + 136B], D.16173
	leaq	384(%rbx), %rdi	#, D.16172
	vmovsd	192(%rbx), %xmm1	# MEM[(double *)a_7(D) + 192B], D.16173
	vmovsd	200(%rbx), %xmm7	# MEM[(double *)a_7(D) + 200B], D.16173
	vmovsd	232(%rbx), %xmm10	# MEM[(double *)a_7(D) + 232B], D.16173
	vaddsd	%xmm11, %xmm1, %xmm4	# D.16173, D.16173, y0i
	vsubsd	%xmm7, %xmm2, %xmm8	# D.16173, D.16173, y0r
	vmovsd	168(%rbx), %xmm9	# MEM[(double *)a_7(D) + 168B], D.16173
	vaddsd	%xmm2, %xmm7, %xmm7	# D.16173, D.16173, y1r
	vmovsd	8(%rbp), %xmm13	# MEM[(double *)_11 + 8B], wn4r
	vsubsd	%xmm1, %xmm11, %xmm2	# D.16173, D.16173, y1i
	vmovsd	160(%rbx), %xmm1	# MEM[(double *)a_7(D) + 160B], D.16173
	vmovsd	224(%rbx), %xmm11	# MEM[(double *)a_7(D) + 224B], D.16173
	vsubsd	%xmm10, %xmm1, %xmm5	# D.16173, D.16173, x0r
	vmovsd	16(%rbp), %xmm3	# MEM[(double *)_11 + 16B], wk1r
	vmovsd	%xmm2, 16(%rsp)	# y1i, %sfp
	vaddsd	%xmm9, %xmm11, %xmm2	# D.16173, D.16173, x0i
	vmovsd	24(%rbp), %xmm0	# MEM[(double *)_11 + 24B], wk1i
	vmovsd	176(%rbx), %xmm15	# MEM[(double *)a_7(D) + 176B], D.16173
	vmovsd	184(%rbx), %xmm14	# MEM[(double *)a_7(D) + 184B], D.16173
	vsubsd	%xmm2, %xmm5, %xmm6	# x0i, x0r, D.16173
	vaddsd	%xmm5, %xmm2, %xmm2	# x0r, x0i, D.16173
	vmulsd	%xmm6, %xmm13, %xmm6	# D.16173, wn4r, y2r
	vmulsd	%xmm2, %xmm13, %xmm5	# D.16173, wn4r, y2i
	vmovsd	216(%rbx), %xmm2	# MEM[(double *)a_7(D) + 216B], D.16173
	vmovsd	%xmm6, (%rsp)	# y2r, %sfp
	vmovsd	208(%rbx), %xmm6	# MEM[(double *)a_7(D) + 208B], D.16173
	vmovsd	%xmm5, 8(%rsp)	# y2i, %sfp
	vaddsd	%xmm1, %xmm10, %xmm5	# D.16173, D.16173, x0r
	vsubsd	%xmm11, %xmm9, %xmm1	# D.16173, D.16173, x0i
	vmovsd	144(%rbx), %xmm9	# MEM[(double *)a_7(D) + 144B], D.16173
	vsubsd	%xmm1, %xmm5, %xmm11	# x0i, x0r, D.16173
	vaddsd	%xmm5, %xmm1, %xmm1	# x0r, x0i, D.16173
	vmulsd	%xmm11, %xmm13, %xmm12	# D.16173, wn4r, y3r
	vmovsd	152(%rbx), %xmm11	# MEM[(double *)a_7(D) + 152B], D.16173
	vmulsd	%xmm1, %xmm13, %xmm1	# D.16173, wn4r, y3i
	vaddsd	%xmm11, %xmm6, %xmm10	# D.16173, D.16173, x0i
	vsubsd	%xmm6, %xmm11, %xmm6	# D.16173, D.16173, x0i
	vmulsd	%xmm10, %xmm0, %xmm13	# x0i, wk1i, D.16173
	vmovsd	%xmm12, 24(%rsp)	# y3r, %sfp
	vmovsd	%xmm1, 32(%rsp)	# y3i, %sfp
	vsubsd	%xmm2, %xmm9, %xmm1	# D.16173, D.16173, x0r
	vaddsd	%xmm9, %xmm2, %xmm9	# D.16173, D.16173, x0r
	vmulsd	%xmm6, %xmm3, %xmm2	# x0i, wk1r, D.16173
	vmulsd	%xmm6, %xmm0, %xmm6	# x0i, wk1i, D.16173
	vmulsd	%xmm1, %xmm3, %xmm12	# x0r, wk1r, D.16173
	vmulsd	%xmm9, %xmm0, %xmm11	# x0r, wk1i, D.16173
	vmulsd	%xmm1, %xmm0, %xmm5	# x0r, wk1i, D.16173
	vmulsd	%xmm10, %xmm3, %xmm1	# x0i, wk1r, D.16173
	vmovsd	248(%rbx), %xmm10	# MEM[(double *)a_7(D) + 248B], D.16173
	vsubsd	%xmm13, %xmm12, %xmm12	# D.16173, D.16173, y4r
	vsubsd	%xmm2, %xmm11, %xmm11	# D.16173, D.16173, y5r
	vmulsd	%xmm9, %xmm3, %xmm2	# x0r, wk1r, D.16173
	vsubsd	%xmm10, %xmm15, %xmm13	# D.16173, D.16173, x0r
	vaddsd	%xmm1, %xmm5, %xmm1	# D.16173, D.16173, y4i
	vaddsd	%xmm15, %xmm10, %xmm10	# D.16173, D.16173, x0r
	vmulsd	%xmm13, %xmm0, %xmm9	# x0r, wk1i, D.16173
	vaddsd	%xmm6, %xmm2, %xmm2	# D.16173, D.16173, y5i
	vmulsd	%xmm13, %xmm3, %xmm13	# x0r, wk1r, D.16173
	vaddsd	240(%rbx), %xmm14, %xmm6	# MEM[(double *)a_7(D) + 240B], D.16173, x0i
	vmulsd	%xmm6, %xmm3, %xmm5	# x0i, wk1r, D.16173
	vmulsd	%xmm6, %xmm0, %xmm6	# x0i, wk1i, D.16173
	vsubsd	%xmm5, %xmm9, %xmm5	# D.16173, D.16173, y6r
	vsubsd	240(%rbx), %xmm14, %xmm9	# MEM[(double *)a_7(D) + 240B], D.16173, x0i
	vmulsd	%xmm10, %xmm3, %xmm14	# x0r, wk1r, D.16173
	vaddsd	%xmm6, %xmm13, %xmm6	# D.16173, D.16173, y6i
	vmulsd	%xmm10, %xmm0, %xmm10	# x0r, wk1i, D.16173
	vmulsd	%xmm9, %xmm0, %xmm13	# x0i, wk1i, D.16173
	vmulsd	%xmm9, %xmm3, %xmm9	# x0i, wk1r, D.16173
	vaddsd	8(%rsp), %xmm4, %xmm3	# %sfp, y0i, x0i
	vsubsd	8(%rsp), %xmm4, %xmm4	# %sfp, y0i, x0i
	vsubsd	%xmm13, %xmm14, %xmm14	# D.16173, D.16173, y7r
	vaddsd	%xmm9, %xmm10, %xmm0	# D.16173, D.16173, y7i
	vaddsd	%xmm12, %xmm5, %xmm13	# y4r, y6r, x1r
	vaddsd	(%rsp), %xmm8, %xmm9	# %sfp, y0r, x0r
	vaddsd	%xmm1, %xmm6, %xmm10	# y4i, y6i, x1i
	vsubsd	(%rsp), %xmm8, %xmm8	# %sfp, y0r, x0r
	vaddsd	%xmm9, %xmm13, %xmm15	# x0r, x1r, D.16173
	vsubsd	%xmm6, %xmm1, %xmm6	# y6i, y4i, x1i
	vsubsd	%xmm13, %xmm9, %xmm9	# x1r, x0r, D.16173
	vmovsd	%xmm15, 128(%rbx)	# D.16173, MEM[(double *)a_7(D) + 128B]
	vaddsd	%xmm3, %xmm10, %xmm15	# x0i, x1i, D.16173
	vsubsd	%xmm6, %xmm8, %xmm1	# x1i, x0r, D.16173
	vsubsd	%xmm10, %xmm3, %xmm3	# x1i, x0i, D.16173
	vmovsd	%xmm9, 144(%rbx)	# D.16173, MEM[(double *)a_7(D) + 144B]
	vsubsd	%xmm5, %xmm12, %xmm5	# y6r, y4r, x1r
	vmovsd	%xmm15, 136(%rbx)	# D.16173, MEM[(double *)a_7(D) + 136B]
	vaddsd	%xmm8, %xmm6, %xmm6	# x0r, x1i, D.16173
	vmovsd	%xmm3, 152(%rbx)	# D.16173, MEM[(double *)a_7(D) + 152B]
	vmovsd	%xmm1, 160(%rbx)	# D.16173, MEM[(double *)a_7(D) + 160B]
	vmovsd	32(%rsp), %xmm8	# %sfp, y3i
	vaddsd	%xmm4, %xmm5, %xmm1	# x0i, x1r, D.16173
	vsubsd	%xmm5, %xmm4, %xmm4	# x1r, x0i, D.16173
	vmovsd	16(%rsp), %xmm12	# %sfp, y1i
	vmovsd	%xmm6, 176(%rbx)	# D.16173, MEM[(double *)a_7(D) + 176B]
	vsubsd	%xmm14, %xmm11, %xmm5	# y7r, y5r, x1r
	vmovsd	24(%rsp), %xmm15	# %sfp, y3r
	vsubsd	%xmm8, %xmm7, %xmm3	# y3i, y1r, x0r
	vmovsd	%xmm1, 168(%rbx)	# D.16173, MEM[(double *)a_7(D) + 168B]
	vmovsd	360(%rbx), %xmm9	# MEM[(double *)a_7(D) + 360B], D.16173
	vmovsd	%xmm4, 184(%rbx)	# D.16173, MEM[(double *)a_7(D) + 184B]
	vaddsd	%xmm12, %xmm15, %xmm1	# y1i, y3r, x0i
	vmovsd	312(%rbx), %xmm13	# MEM[(double *)a_7(D) + 312B], D.16173
	vsubsd	%xmm0, %xmm2, %xmm4	# y7i, y5i, x1i
	vaddsd	%xmm3, %xmm5, %xmm6	# x0r, x1r, D.16173
	vaddsd	%xmm8, %xmm7, %xmm7	# y3i, y1r, x0r
	vaddsd	%xmm2, %xmm0, %xmm0	# y5i, y7i, x1i
	vmovsd	%xmm6, 192(%rbx)	# D.16173, MEM[(double *)a_7(D) + 192B]
	vaddsd	%xmm1, %xmm4, %xmm6	# x0i, x1i, D.16173
	vsubsd	%xmm4, %xmm1, %xmm1	# x1i, x0i, D.16173
	vaddsd	%xmm11, %xmm14, %xmm11	# y5r, y7r, x1r
	vmovsd	304(%rbx), %xmm14	# MEM[(double *)a_7(D) + 304B], D.16173
	vsubsd	%xmm0, %xmm7, %xmm2	# x1i, x0r, D.16173
	vmovsd	%xmm6, 200(%rbx)	# D.16173, MEM[(double *)a_7(D) + 200B]
	vmovsd	%xmm1, 216(%rbx)	# D.16173, MEM[(double *)a_7(D) + 216B]
	vsubsd	%xmm15, %xmm12, %xmm1	# y3r, y1i, x0i
	vaddsd	%xmm7, %xmm0, %xmm0	# x0r, x1i, D.16173
	vmovsd	%xmm2, 224(%rbx)	# D.16173, MEM[(double *)a_7(D) + 224B]
	vsubsd	%xmm5, %xmm3, %xmm3	# x1r, x0r, D.16173
	vmovsd	256(%rbx), %xmm5	# MEM[(double *)a_7(D) + 256B], D.16173
	vaddsd	%xmm1, %xmm11, %xmm2	# x0i, x1r, D.16173
	vsubsd	%xmm11, %xmm1, %xmm1	# x1r, x0i, D.16173
	vmovsd	%xmm0, 240(%rbx)	# D.16173, MEM[(double *)a_7(D) + 240B]
	vmovsd	328(%rbx), %xmm0	# MEM[(double *)a_7(D) + 328B], D.16173
	vmovsd	%xmm3, 208(%rbx)	# D.16173, MEM[(double *)a_7(D) + 208B]
	vmovsd	%xmm2, 232(%rbx)	# D.16173, MEM[(double *)a_7(D) + 232B]
	vmovsd	320(%rbx), %xmm2	# MEM[(double *)a_7(D) + 320B], D.16173
	vmovsd	%xmm1, 248(%rbx)	# D.16173, MEM[(double *)a_7(D) + 248B]
	vmovsd	264(%rbx), %xmm1	# MEM[(double *)a_7(D) + 264B], D.16173
	vaddsd	%xmm5, %xmm2, %xmm8	# D.16173, D.16173, x0r
	vmovsd	8(%rbp), %xmm12	# MEM[(double *)_11 + 8B], wn4r
	vsubsd	%xmm2, %xmm5, %xmm5	# D.16173, D.16173, x1r
	vmovsd	296(%rbx), %xmm2	# MEM[(double *)a_7(D) + 296B], D.16173
	vaddsd	%xmm1, %xmm0, %xmm7	# D.16173, D.16173, x0i
	vsubsd	%xmm0, %xmm1, %xmm3	# D.16173, D.16173, x1i
	vmovsd	288(%rbx), %xmm1	# MEM[(double *)a_7(D) + 288B], D.16173
	vmovsd	352(%rbx), %xmm0	# MEM[(double *)a_7(D) + 352B], D.16173
	vaddsd	%xmm2, %xmm9, %xmm6	# D.16173, D.16173, x2i
	vsubsd	%xmm9, %xmm2, %xmm2	# D.16173, D.16173, x3i
	vaddsd	%xmm1, %xmm0, %xmm4	# D.16173, D.16173, x2r
	vsubsd	%xmm0, %xmm1, %xmm0	# D.16173, D.16173, x3r
	vaddsd	%xmm7, %xmm6, %xmm1	# x0i, x2i, y0i
	vaddsd	%xmm8, %xmm4, %xmm9	# x0r, x2r, y0r
	vsubsd	%xmm6, %xmm7, %xmm6	# x2i, x0i, y2i
	vmovsd	280(%rbx), %xmm7	# MEM[(double *)a_7(D) + 280B], D.16173
	vsubsd	%xmm4, %xmm8, %xmm4	# x2r, x0r, y2r
	vmovsd	%xmm1, (%rsp)	# y0i, %sfp
	vmovsd	272(%rbx), %xmm8	# MEM[(double *)a_7(D) + 272B], D.16173
	vaddsd	%xmm3, %xmm0, %xmm10	# x1i, x3r, y1i
	vsubsd	%xmm0, %xmm3, %xmm1	# x3r, x1i, y3i
	vmovsd	336(%rbx), %xmm0	# MEM[(double *)a_7(D) + 336B], D.16173
	vmovsd	%xmm6, 16(%rsp)	# y2i, %sfp
	vsubsd	%xmm2, %xmm5, %xmm11	# x3i, x1r, y1r
	vmovsd	%xmm4, 8(%rsp)	# y2r, %sfp
	vaddsd	%xmm8, %xmm0, %xmm15	# D.16173, D.16173, x0r
	vaddsd	%xmm5, %xmm2, %xmm2	# x1r, x3i, y3r
	vmovsd	344(%rbx), %xmm5	# MEM[(double *)a_7(D) + 344B], D.16173
	vsubsd	%xmm0, %xmm8, %xmm8	# D.16173, D.16173, x1r
	vmovsd	368(%rbx), %xmm0	# MEM[(double *)a_7(D) + 368B], D.16173
	vmovsd	376(%rbx), %xmm3	# MEM[(double *)a_7(D) + 376B], D.16173
	vaddsd	%xmm7, %xmm5, %xmm4	# D.16173, D.16173, x0i
	vaddsd	%xmm14, %xmm0, %xmm6	# D.16173, D.16173, x2r
	vsubsd	%xmm5, %xmm7, %xmm7	# D.16173, D.16173, x1i
	vsubsd	%xmm0, %xmm14, %xmm0	# D.16173, D.16173, x3r
	vaddsd	%xmm13, %xmm3, %xmm5	# D.16173, D.16173, x2i
	vsubsd	%xmm3, %xmm13, %xmm3	# D.16173, D.16173, x3i
	vaddsd	%xmm15, %xmm6, %xmm14	# x0r, x2r, y4r
	vaddsd	%xmm4, %xmm5, %xmm13	# x0i, x2i, y4i
	vsubsd	%xmm6, %xmm15, %xmm6	# x2r, x0r, y6r
	vsubsd	%xmm5, %xmm4, %xmm4	# x2i, x0i, y6i
	vsubsd	%xmm3, %xmm8, %xmm15	# x3i, x1r, x0r
	vaddsd	%xmm7, %xmm0, %xmm5	# x1i, x3r, x0i
	vsubsd	%xmm0, %xmm7, %xmm0	# x3r, x1i, x2i
	vaddsd	%xmm8, %xmm3, %xmm3	# x1r, x3i, x2r
	vsubsd	%xmm5, %xmm15, %xmm7	# x0i, x0r, D.16173
	vaddsd	%xmm15, %xmm5, %xmm5	# x0r, x0i, D.16173
	vsubsd	%xmm0, %xmm3, %xmm8	# x2i, x2r, D.16173
	vmulsd	%xmm7, %xmm12, %xmm7	# D.16173, wn4r, y5r
	vaddsd	%xmm3, %xmm0, %xmm3	# x2r, x2i, D.16173
	vmulsd	%xmm5, %xmm12, %xmm5	# D.16173, wn4r, y5i
	vmulsd	%xmm8, %xmm12, %xmm8	# D.16173, wn4r, y7r
	vmulsd	%xmm3, %xmm12, %xmm3	# D.16173, wn4r, y7i
	vaddsd	%xmm11, %xmm7, %xmm0	# y1r, y5r, D.16173
	vsubsd	%xmm7, %xmm11, %xmm11	# y5r, y1r, D.16173
	vmovsd	8(%rsp), %xmm7	# %sfp, y2r
	vmovsd	%xmm0, 320(%rbx)	# D.16173, MEM[(double *)a_7(D) + 320B]
	vaddsd	%xmm10, %xmm5, %xmm0	# y1i, y5i, D.16173
	vsubsd	%xmm5, %xmm10, %xmm5	# y5i, y1i, D.16173
	vmovsd	%xmm11, 336(%rbx)	# D.16173, MEM[(double *)a_7(D) + 336B]
	vmovsd	%xmm0, 328(%rbx)	# D.16173, MEM[(double *)a_7(D) + 328B]
	vsubsd	%xmm3, %xmm2, %xmm0	# y7i, y3r, D.16173
	vaddsd	%xmm2, %xmm3, %xmm3	# y3r, y7i, D.16173
	vmovsd	16(%rsp), %xmm2	# %sfp, y2i
	vmovsd	%xmm5, 344(%rbx)	# D.16173, MEM[(double *)a_7(D) + 344B]
	vmovsd	%xmm0, 352(%rbx)	# D.16173, MEM[(double *)a_7(D) + 352B]
	vaddsd	%xmm1, %xmm8, %xmm0	# y3i, y7r, D.16173
	vsubsd	%xmm8, %xmm1, %xmm1	# y7r, y3i, D.16173
	vmovsd	%xmm3, 368(%rbx)	# D.16173, MEM[(double *)a_7(D) + 368B]
	vmovsd	%xmm0, 360(%rbx)	# D.16173, MEM[(double *)a_7(D) + 360B]
	vaddsd	%xmm9, %xmm14, %xmm0	# y0r, y4r, D.16173
	vmovsd	%xmm1, 376(%rbx)	# D.16173, MEM[(double *)a_7(D) + 376B]
	vmovsd	(%rsp), %xmm1	# %sfp, y0i
	vsubsd	%xmm14, %xmm9, %xmm9	# y4r, y0r, D.16173
	vmovsd	%xmm0, 256(%rbx)	# D.16173, MEM[(double *)a_7(D) + 256B]
	vaddsd	%xmm1, %xmm13, %xmm0	# y0i, y4i, D.16173
	vsubsd	%xmm13, %xmm1, %xmm13	# y4i, y0i, D.16173
	vmovsd	%xmm9, 272(%rbx)	# D.16173, MEM[(double *)a_7(D) + 272B]
	vmovsd	%xmm0, 264(%rbx)	# D.16173, MEM[(double *)a_7(D) + 264B]
	vsubsd	%xmm4, %xmm7, %xmm0	# y6i, y2r, D.16173
	vaddsd	%xmm7, %xmm4, %xmm4	# y2r, y6i, D.16173
	vmovsd	%xmm13, 280(%rbx)	# D.16173, MEM[(double *)a_7(D) + 280B]
	vmovsd	%xmm0, 288(%rbx)	# D.16173, MEM[(double *)a_7(D) + 288B]
	vaddsd	%xmm2, %xmm6, %xmm0	# y2i, y6r, D.16173
	vsubsd	%xmm6, %xmm2, %xmm6	# y6r, y2i, D.16173
	vmovsd	%xmm4, 304(%rbx)	# D.16173, MEM[(double *)a_7(D) + 304B]
	vmovsd	%xmm0, 296(%rbx)	# D.16173, MEM[(double *)a_7(D) + 296B]
	vmovsd	%xmm6, 312(%rbx)	# D.16173, MEM[(double *)a_7(D) + 312B]
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	cftf081	#
	.p2align 4,,10
	.p2align 3
.L277:
	.cfi_restore_state
	leaq	0(,%rdx,8), %rbp	#, D.16170
	movq	%rbx, %rdi	# a,
	movq	%rcx, (%rsp)	# w, %sfp
	leaq	-64(%rcx,%rbp), %r12	#, D.16172
	movq	%r12, %rsi	# D.16172,
	call	cftf161	#
	movq	(%rsp), %rcx	# %sfp, w
	leaq	256(%rbx), %rdi	#, D.16172
	leaq	-256(%rcx,%rbp), %rsi	#, D.16172
	call	cftf162	#
	leaq	512(%rbx), %rdi	#, D.16172
	movq	%r12, %rsi	# D.16172,
	call	cftf161	#
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%r12, %rsi	# D.16172,
	leaq	768(%rbx), %rdi	#, D.16172
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	cftf161	#
	.cfi_endproc
.LFE72:
	.size	cftfx41, .-cftfx41
	.section	.text.unlikely
.LCOLDE37:
	.text
.LHOTE37:
	.section	.text.unlikely
.LCOLDB38:
	.text
.LHOTB38:
	.p2align 4,,15
	.globl	cftf082
	.type	cftf082, @function
cftf082:
.LFB76:
	.cfi_startproc
	vmovsd	8(%rdi), %xmm11	# MEM[(double *)a_6(D) + 8B], D.16176
	vmovsd	64(%rdi), %xmm0	# MEM[(double *)a_6(D) + 64B], D.16176
	vmovsd	(%rdi), %xmm1	# *a_6(D), D.16176
	vsubsd	%xmm0, %xmm11, %xmm6	# D.16176, D.16176, y1i
	vmovsd	40(%rdi), %xmm9	# MEM[(double *)a_6(D) + 40B], D.16176
	vaddsd	%xmm11, %xmm0, %xmm5	# D.16176, D.16176, y0i
	vmovsd	72(%rdi), %xmm10	# MEM[(double *)a_6(D) + 72B], D.16176
	vmovsd	32(%rdi), %xmm0	# MEM[(double *)a_6(D) + 32B], D.16176
	vmovsd	104(%rdi), %xmm11	# MEM[(double *)a_6(D) + 104B], D.16176
	vmovsd	%xmm6, -24(%rsp)	# y1i, %sfp
	vsubsd	%xmm10, %xmm1, %xmm7	# D.16176, D.16176, y0r
	vmovsd	96(%rdi), %xmm6	# MEM[(double *)a_6(D) + 96B], D.16176
	vaddsd	%xmm1, %xmm10, %xmm10	# D.16176, D.16176, y1r
	vsubsd	%xmm11, %xmm0, %xmm12	# D.16176, D.16176, x0r
	vmovsd	8(%rsi), %xmm13	# MEM[(double *)w_2(D) + 8B], wn4r
	vaddsd	%xmm9, %xmm6, %xmm1	# D.16176, D.16176, x0i
	vmovsd	16(%rdi), %xmm8	# MEM[(double *)a_6(D) + 16B], D.16176
	vmovsd	24(%rsi), %xmm4	# MEM[(double *)w_2(D) + 24B], wk1i
	vmovsd	16(%rsi), %xmm3	# MEM[(double *)w_2(D) + 16B], wk1r
	vsubsd	%xmm1, %xmm12, %xmm2	# x0i, x0r, D.16176
	vmovsd	56(%rdi), %xmm14	# MEM[(double *)a_6(D) + 56B], D.16176
	vaddsd	%xmm12, %xmm1, %xmm1	# x0r, x0i, D.16176
	vmulsd	%xmm13, %xmm2, %xmm2	# wn4r, D.16176, y2r
	vmulsd	%xmm13, %xmm1, %xmm1	# wn4r, D.16176, y2i
	vmovsd	%xmm2, -40(%rsp)	# y2r, %sfp
	vaddsd	%xmm0, %xmm11, %xmm2	# D.16176, D.16176, x0r
	vsubsd	%xmm6, %xmm9, %xmm0	# D.16176, D.16176, x0i
	vmovsd	%xmm1, -32(%rsp)	# y2i, %sfp
	vmovsd	88(%rdi), %xmm1	# MEM[(double *)a_6(D) + 88B], D.16176
	vsubsd	%xmm0, %xmm2, %xmm11	# x0i, x0r, D.16176
	vaddsd	%xmm2, %xmm0, %xmm0	# x0r, x0i, D.16176
	vsubsd	%xmm1, %xmm8, %xmm2	# D.16176, D.16176, x0r
	vmulsd	%xmm13, %xmm11, %xmm15	# wn4r, D.16176, y3r
	vmovsd	24(%rdi), %xmm11	# MEM[(double *)a_6(D) + 24B], D.16176
	vaddsd	%xmm8, %xmm1, %xmm8	# D.16176, D.16176, x0r
	vmulsd	%xmm13, %xmm0, %xmm12	# wn4r, D.16176, y3i
	vmovsd	80(%rdi), %xmm0	# MEM[(double *)a_6(D) + 80B], D.16176
	vmulsd	%xmm4, %xmm2, %xmm6	# wk1i, x0r, D.16176
	vaddsd	%xmm11, %xmm0, %xmm9	# D.16176, D.16176, x0i
	vsubsd	%xmm0, %xmm11, %xmm0	# D.16176, D.16176, x0i
	vmulsd	%xmm4, %xmm8, %xmm11	# wk1i, x0r, D.16176
	vmovsd	%xmm15, -16(%rsp)	# y3r, %sfp
	vmovsd	48(%rdi), %xmm15	# MEM[(double *)a_6(D) + 48B], D.16176
	vmulsd	%xmm4, %xmm9, %xmm13	# wk1i, x0i, D.16176
	vmovsd	%xmm12, -8(%rsp)	# y3i, %sfp
	vmulsd	%xmm3, %xmm0, %xmm1	# wk1r, x0i, D.16176
	vmulsd	%xmm3, %xmm2, %xmm12	# wk1r, x0r, D.16176
	vmulsd	%xmm4, %xmm0, %xmm0	# wk1i, x0i, D.16176
	vmulsd	%xmm3, %xmm9, %xmm2	# wk1r, x0i, D.16176
	vmovsd	112(%rdi), %xmm9	# MEM[(double *)a_6(D) + 112B], D.16176
	vsubsd	%xmm1, %xmm11, %xmm11	# D.16176, D.16176, y5r
	vmulsd	%xmm3, %xmm8, %xmm1	# wk1r, x0r, D.16176
	vsubsd	%xmm13, %xmm12, %xmm12	# D.16176, D.16176, y4r
	vaddsd	%xmm14, %xmm9, %xmm8	# D.16176, D.16176, x0i
	vsubsd	120(%rdi), %xmm15, %xmm13	# MEM[(double *)a_6(D) + 120B], D.16176, x0r
	vaddsd	%xmm2, %xmm6, %xmm2	# D.16176, D.16176, y4i
	vaddsd	%xmm0, %xmm1, %xmm1	# D.16176, D.16176, y5i
	vmulsd	%xmm3, %xmm8, %xmm6	# wk1r, x0i, D.16176
	vmulsd	%xmm4, %xmm13, %xmm0	# wk1i, x0r, D.16176
	vsubsd	%xmm9, %xmm14, %xmm9	# D.16176, D.16176, x0i
	vmulsd	%xmm3, %xmm13, %xmm13	# wk1r, x0r, D.16176
	vmulsd	%xmm4, %xmm8, %xmm8	# wk1i, x0i, D.16176
	vsubsd	%xmm6, %xmm0, %xmm6	# D.16176, D.16176, y6r
	vaddsd	120(%rdi), %xmm15, %xmm0	# MEM[(double *)a_6(D) + 120B], D.16176, x0r
	vaddsd	%xmm8, %xmm13, %xmm8	# D.16176, D.16176, y6i
	vmulsd	%xmm4, %xmm9, %xmm13	# wk1i, x0i, D.16176
	vmulsd	%xmm3, %xmm0, %xmm14	# wk1r, x0r, D.16176
	vmulsd	%xmm4, %xmm0, %xmm0	# wk1i, x0r, D.16176
	vaddsd	-40(%rsp), %xmm7, %xmm4	# %sfp, y0r, x0r
	vmulsd	%xmm3, %xmm9, %xmm3	# wk1r, x0i, D.16176
	vaddsd	%xmm2, %xmm8, %xmm9	# y4i, y6i, x1i
	vsubsd	-40(%rsp), %xmm7, %xmm7	# %sfp, y0r, x0r
	vsubsd	%xmm8, %xmm2, %xmm8	# y6i, y4i, x1i
	vsubsd	%xmm13, %xmm14, %xmm14	# D.16176, D.16176, y7r
	vaddsd	%xmm12, %xmm6, %xmm13	# y4r, y6r, x1r
	vaddsd	%xmm3, %xmm0, %xmm3	# D.16176, D.16176, y7i
	vaddsd	-32(%rsp), %xmm5, %xmm0	# %sfp, y0i, x0i
	vaddsd	%xmm13, %xmm4, %xmm15	# x1r, x0r, D.16176
	vsubsd	%xmm6, %xmm12, %xmm6	# y6r, y4r, x1r
	vsubsd	-32(%rsp), %xmm5, %xmm5	# %sfp, y0i, x0i
	vmovsd	%xmm15, (%rdi)	# D.16176, *a_6(D)
	vaddsd	%xmm0, %xmm9, %xmm15	# x0i, x1i, D.16176
	vsubsd	%xmm9, %xmm0, %xmm0	# x1i, x0i, D.16176
	vsubsd	%xmm13, %xmm4, %xmm4	# x1r, x0r, D.16176
	vmovsd	%xmm15, 8(%rdi)	# D.16176, MEM[(double *)a_6(D) + 8B]
	vmovsd	%xmm0, 24(%rdi)	# D.16176, MEM[(double *)a_6(D) + 24B]
	vsubsd	%xmm8, %xmm7, %xmm0	# x1i, x0r, D.16176
	vmovsd	%xmm4, 16(%rdi)	# D.16176, MEM[(double *)a_6(D) + 16B]
	vaddsd	%xmm8, %xmm7, %xmm8	# x1i, x0r, D.16176
	vsubsd	%xmm3, %xmm1, %xmm4	# y7i, y5i, x1i
	vmovsd	%xmm0, 32(%rdi)	# D.16176, MEM[(double *)a_6(D) + 32B]
	vaddsd	%xmm5, %xmm6, %xmm0	# x0i, x1r, D.16176
	vmovsd	-8(%rsp), %xmm12	# %sfp, y3i
	vsubsd	%xmm6, %xmm5, %xmm5	# x1r, x0i, D.16176
	vmovsd	-16(%rsp), %xmm15	# %sfp, y3r
	vmovsd	%xmm8, 48(%rdi)	# D.16176, MEM[(double *)a_6(D) + 48B]
	vsubsd	%xmm12, %xmm10, %xmm2	# y3i, y1r, x0r
	vmovsd	-24(%rsp), %xmm7	# %sfp, y1i
	vmovsd	%xmm0, 40(%rdi)	# D.16176, MEM[(double *)a_6(D) + 40B]
	vaddsd	%xmm12, %xmm10, %xmm10	# y3i, y1r, x0r
	vmovsd	%xmm5, 56(%rdi)	# D.16176, MEM[(double *)a_6(D) + 56B]
	vsubsd	%xmm14, %xmm11, %xmm5	# y7r, y5r, x1r
	vaddsd	%xmm7, %xmm15, %xmm0	# y1i, y3r, x0i
	vaddsd	%xmm1, %xmm3, %xmm3	# y5i, y7i, x1i
	vaddsd	%xmm2, %xmm5, %xmm6	# x0r, x1r, D.16176
	vsubsd	%xmm5, %xmm2, %xmm2	# x1r, x0r, D.16176
	vaddsd	%xmm11, %xmm14, %xmm11	# y5r, y7r, x1r
	vmovsd	%xmm6, 64(%rdi)	# D.16176, MEM[(double *)a_6(D) + 64B]
	vaddsd	%xmm4, %xmm0, %xmm6	# x1i, x0i, D.16176
	vsubsd	%xmm4, %xmm0, %xmm0	# x1i, x0i, D.16176
	vmovsd	%xmm2, 80(%rdi)	# D.16176, MEM[(double *)a_6(D) + 80B]
	vsubsd	%xmm15, %xmm7, %xmm2	# y3r, y1i, x0i
	vmovsd	%xmm6, 72(%rdi)	# D.16176, MEM[(double *)a_6(D) + 72B]
	vmovsd	%xmm0, 88(%rdi)	# D.16176, MEM[(double *)a_6(D) + 88B]
	vsubsd	%xmm3, %xmm10, %xmm0	# x1i, x0r, D.16176
	vaddsd	%xmm10, %xmm3, %xmm3	# x0r, x1i, D.16176
	vmovsd	%xmm0, 96(%rdi)	# D.16176, MEM[(double *)a_6(D) + 96B]
	vaddsd	%xmm11, %xmm2, %xmm0	# x1r, x0i, D.16176
	vsubsd	%xmm11, %xmm2, %xmm2	# x1r, x0i, D.16176
	vmovsd	%xmm3, 112(%rdi)	# D.16176, MEM[(double *)a_6(D) + 112B]
	vmovsd	%xmm0, 104(%rdi)	# D.16176, MEM[(double *)a_6(D) + 104B]
	vmovsd	%xmm2, 120(%rdi)	# D.16176, MEM[(double *)a_6(D) + 120B]
	ret
	.cfi_endproc
.LFE76:
	.size	cftf082, .-cftf082
	.section	.text.unlikely
.LCOLDE38:
	.text
.LHOTE38:
	.section	.text.unlikely
.LCOLDB39:
	.text
.LHOTB39:
	.p2align 4,,15
	.globl	cftleaf
	.type	cftleaf, @function
cftleaf:
.LFB69:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14	# w, w
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13	# a, a
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d	# isplt, isplt
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	cmpl	$512, %edi	#, n
	je	.L294	#,
	movslq	%ecx, %rcx	# nw, D.16455
	movq	%rdx, %rdi	# a,
	leaq	0(,%rcx,8), %r15	#, D.16455
	leaq	-256(%r8,%r15), %rbp	#, D.16457
	leaq	-64(%r14,%r15), %rbx	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	call	cftmdl1.constprop.5	#
	movq	%rbx, %rsi	# D.16457,
	movq	%r13, %rdi	# a,
	call	cftf081	#
	leaq	128(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf082	#
	leaq	256(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf081	#
	leaq	384(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf081	#
	movq	%r13, %rcx	# a, ivtmp.836
	movq	%r13, %rax	# a, ivtmp.826
	xorl	%edx, %edx	# ivtmp.813
	vmovsd	512(%r13), %xmm0	# MEM[(double *)a_12(D) + 512B], D.16458
	leaq	512(%r13), %rdi	#, D.16457
	vmovsd	776(%r13), %xmm6	# MEM[(double *)a_12(D) + 776B], D.16458
	leaq	-512(%r14,%r15), %r15	#, D.16457
	movq	%r13, %r14	# a, ivtmp.791
	vmovsd	768(%r13), %xmm1	# MEM[(double *)a_12(D) + 768B], D.16458
	movq	%r15, %r8	# D.16457, ivtmp.775
	movq	%r15, %rsi	# D.16457, ivtmp.820
	vsubsd	%xmm6, %xmm0, %xmm9	# D.16458, D.16458, x0r
	vmovsd	8(%r15), %xmm3	# MEM[(double *)_75 + 8B], wn4r
	vmovsd	904(%r13), %xmm5	# MEM[(double *)a_12(D) + 904B], D.16458
	vaddsd	%xmm0, %xmm6, %xmm6	# D.16458, D.16458, x1r
	vmovsd	896(%r13), %xmm7	# MEM[(double *)a_12(D) + 896B], D.16458
	vmovsd	520(%r13), %xmm4	# MEM[(double *)a_12(D) + 520B], D.16458
	vmovsd	640(%r13), %xmm0	# MEM[(double *)a_12(D) + 640B], D.16458
	vmovsd	648(%r13), %xmm10	# MEM[(double *)a_12(D) + 648B], D.16458
	vaddsd	%xmm4, %xmm1, %xmm8	# D.16458, D.16458, x0i
	vsubsd	%xmm1, %xmm4, %xmm4	# D.16458, D.16458, x1i
	vaddsd	%xmm10, %xmm7, %xmm2	# D.16458, D.16458, x2i
	vsubsd	%xmm5, %xmm0, %xmm1	# D.16458, D.16458, x2r
	vaddsd	%xmm0, %xmm5, %xmm0	# D.16458, D.16458, x3r
	vsubsd	%xmm7, %xmm10, %xmm5	# D.16458, D.16458, x3i
	vsubsd	%xmm2, %xmm1, %xmm7	# x2i, x2r, D.16458
	vaddsd	%xmm1, %xmm2, %xmm2	# x2r, x2i, D.16458
	vmulsd	%xmm7, %xmm3, %xmm7	# D.16458, wn4r, y0r
	vmulsd	%xmm2, %xmm3, %xmm1	# D.16458, wn4r, y0i
	vaddsd	%xmm9, %xmm7, %xmm2	# x0r, y0r, D.16458
	vmovsd	%xmm2, 512(%r13)	# D.16458, MEM[(double *)a_12(D) + 512B]
	vaddsd	%xmm8, %xmm1, %xmm2	# x0i, y0i, D.16458
	vsubsd	%xmm1, %xmm8, %xmm1	# y0i, x0i, D.16458
	vmovsd	%xmm2, 520(%r13)	# D.16458, MEM[(double *)a_12(D) + 520B]
	vsubsd	%xmm7, %xmm9, %xmm2	# y0r, x0r, D.16458
	vmovsd	%xmm1, 648(%r13)	# D.16458, MEM[(double *)a_12(D) + 648B]
	vsubsd	%xmm5, %xmm0, %xmm1	# x3i, x3r, D.16458
	vaddsd	%xmm0, %xmm5, %xmm5	# x3r, x3i, D.16458
	vmovsd	%xmm2, 640(%r13)	# D.16458, MEM[(double *)a_12(D) + 640B]
	vmulsd	%xmm1, %xmm3, %xmm1	# D.16458, wn4r, y0r
	vmulsd	%xmm5, %xmm3, %xmm0	# D.16458, wn4r, y0i
	vsubsd	%xmm0, %xmm6, %xmm2	# y0i, x1r, D.16458
	vaddsd	%xmm6, %xmm0, %xmm0	# x1r, y0i, D.16458
	vmovsd	%xmm2, 768(%r13)	# D.16458, MEM[(double *)a_12(D) + 768B]
	vaddsd	%xmm4, %xmm1, %xmm2	# x1i, y0r, D.16458
	vmovsd	%xmm0, 896(%r13)	# D.16458, MEM[(double *)a_12(D) + 896B]
	vsubsd	%xmm1, %xmm4, %xmm4	# y0r, x1i, D.16458
	vmovsd	%xmm2, 776(%r13)	# D.16458, MEM[(double *)a_12(D) + 776B]
	vmovsd	%xmm4, 904(%r13)	# D.16458, MEM[(double *)a_12(D) + 904B]
	.p2align 4,,10
	.p2align 3
.L285:
	vmovsd	248(%rsi), %xmm0	# MEM[base: _994, offset: 248B], wd3r
	addq	$16, %rax	#, ivtmp.826
	subq	$32, %rsi	#, ivtmp.820
	subq	$16, %rcx	#, ivtmp.836
	vmovsd	776(%rax), %xmm8	# MEM[base: _1109, offset: 792B], D.16458
	vmovsd	512(%rax), %xmm2	# MEM[base: _1109, offset: 528B], D.16458
	vmovsd	%xmm0, 16(%rsp)	# wd3r, %sfp
	vmovsd	520(%rax), %xmm10	# MEM[base: _1109, offset: 536B], D.16458
	vmovsd	768(%rax), %xmm0	# MEM[base: _1109, offset: 784B], D.16458
	vsubsd	%xmm8, %xmm2, %xmm12	# D.16458, D.16458, x0r
	vaddsd	%xmm2, %xmm8, %xmm2	# D.16458, D.16458, x1r
	vmovsd	32(%r15,%rdx), %xmm1	# MEM[base: _75, index: ivtmp.813_385, offset: 32B], wk1r
	vaddsd	%xmm10, %xmm0, %xmm11	# D.16458, D.16458, x0i
	vmovsd	40(%r15,%rdx), %xmm5	# MEM[base: _75, index: ivtmp.813_385, offset: 40B], wk1i
	vmovsd	904(%rax), %xmm13	# MEM[base: _1109, offset: 920B], D.16458
	vsubsd	%xmm0, %xmm10, %xmm15	# D.16458, D.16458, x1i
	vmulsd	%xmm1, %xmm12, %xmm14	# wk1r, x0r, D.16458
	vmovsd	%xmm2, 32(%rsp)	# x1r, %sfp
	vmovsd	640(%rax), %xmm2	# MEM[base: _1109, offset: 656B], D.16458
	vmulsd	%xmm5, %xmm12, %xmm12	# wk1i, x0r, D.16458
	vmovsd	648(%rax), %xmm8	# MEM[base: _1109, offset: 664B], D.16458
	vmovsd	896(%rax), %xmm0	# MEM[base: _1109, offset: 912B], D.16458
	vsubsd	%xmm13, %xmm2, %xmm6	# D.16458, D.16458, x2r
	vmovsd	%xmm15, 40(%rsp)	# x1i, %sfp
	vaddsd	%xmm2, %xmm13, %xmm2	# D.16458, D.16458, x3r
	vmulsd	%xmm5, %xmm11, %xmm13	# wk1i, x0i, D.16458
	vmovsd	48(%r15,%rdx), %xmm7	# MEM[base: _75, index: ivtmp.813_385, offset: 48B], wk3r
	vaddsd	%xmm8, %xmm0, %xmm10	# D.16458, D.16458, x2i
	vmovsd	264(%rsi), %xmm4	# MEM[base: _994, offset: 232B], wd1r
	vmovsd	%xmm7, 8(%rsp)	# wk3r, %sfp
	vmovsd	256(%rsi), %xmm7	# MEM[base: _994, offset: 224B], wd1i
	vsubsd	%xmm0, %xmm8, %xmm0	# D.16458, D.16458, x3i
	vmulsd	%xmm1, %xmm11, %xmm8	# wk1r, x0i, D.16458
	vmovsd	56(%r15,%rdx), %xmm9	# MEM[base: _75, index: ivtmp.813_385, offset: 56B], wk3i
	addq	$32, %rdx	#, ivtmp.813
	vmulsd	%xmm7, %xmm10, %xmm11	# wd1i, x2i, D.16458
	vmovsd	272(%rsi), %xmm3	# MEM[base: _994, offset: 240B], wd3i
	vsubsd	%xmm13, %xmm14, %xmm14	# D.16458, D.16458, y0r
	vmulsd	%xmm4, %xmm6, %xmm13	# wd1r, x2r, D.16458
	vmulsd	%xmm4, %xmm10, %xmm10	# wd1r, x2i, D.16458
	vmulsd	%xmm7, %xmm6, %xmm6	# wd1i, x2r, D.16458
	vaddsd	%xmm8, %xmm12, %xmm8	# D.16458, D.16458, y0i
	vsubsd	%xmm11, %xmm13, %xmm13	# D.16458, D.16458, y2r
	vmovsd	32(%rsp), %xmm11	# %sfp, x1r
	vaddsd	%xmm10, %xmm6, %xmm12	# D.16458, D.16458, y2i
	vaddsd	%xmm14, %xmm13, %xmm15	# y0r, y2r, D.16458
	vsubsd	%xmm13, %xmm14, %xmm13	# y2r, y0r, D.16458
	vmovsd	16(%rsp), %xmm14	# %sfp, wd3r
	vmovsd	%xmm15, 512(%rax)	# D.16458, MEM[base: _1109, offset: 528B]
	vaddsd	%xmm8, %xmm12, %xmm15	# y0i, y2i, D.16458
	vsubsd	%xmm12, %xmm8, %xmm12	# y2i, y0i, D.16458
	vmovsd	%xmm13, 640(%rax)	# D.16458, MEM[base: _1109, offset: 656B]
	vmulsd	%xmm11, %xmm9, %xmm8	# x1r, wk3i, D.16458
	vmovsd	40(%rsp), %xmm13	# %sfp, x1i
	vmovsd	%xmm15, 520(%rax)	# D.16458, MEM[base: _1109, offset: 536B]
	vmovsd	8(%rsp), %xmm15	# %sfp, wk3r
	vmovsd	%xmm12, 648(%rax)	# D.16458, MEM[base: _1109, offset: 664B]
	vmulsd	%xmm13, %xmm9, %xmm12	# x1i, wk3i, D.16458
	vmulsd	%xmm15, %xmm11, %xmm6	# wk3r, x1r, D.16458
	vmulsd	%xmm13, %xmm15, %xmm10	# x1i, wk3r, D.16458
	vaddsd	%xmm6, %xmm12, %xmm12	# D.16458, D.16458, y0r
	vmulsd	%xmm14, %xmm2, %xmm6	# wd3r, x3r, D.16458
	vsubsd	%xmm8, %xmm10, %xmm10	# D.16458, D.16458, y0i
	vmulsd	%xmm3, %xmm0, %xmm8	# wd3i, x3i, D.16458
	vmulsd	%xmm3, %xmm2, %xmm2	# wd3i, x3r, D.16458
	vaddsd	%xmm6, %xmm8, %xmm6	# D.16458, D.16458, y2r
	vmulsd	%xmm14, %xmm0, %xmm8	# wd3r, x3i, D.16458
	vaddsd	%xmm12, %xmm6, %xmm11	# y0r, y2r, D.16458
	vsubsd	%xmm6, %xmm12, %xmm12	# y2r, y0r, D.16458
	vsubsd	%xmm2, %xmm8, %xmm8	# D.16458, D.16458, y2i
	vmovsd	%xmm11, 768(%rax)	# D.16458, MEM[base: _1109, offset: 784B]
	vmovsd	%xmm12, 896(%rax)	# D.16458, MEM[base: _1109, offset: 912B]
	vaddsd	%xmm10, %xmm8, %xmm11	# y0i, y2i, D.16458
	vsubsd	%xmm8, %xmm10, %xmm8	# y2i, y0i, D.16458
	vmovsd	%xmm11, 776(%rax)	# D.16458, MEM[base: _1109, offset: 792B]
	vmovsd	%xmm8, 904(%rax)	# D.16458, MEM[base: _1109, offset: 920B]
	vmovsd	640(%rcx), %xmm8	# MEM[base: _1021, offset: 624B], D.16458
	vmovsd	904(%rcx), %xmm10	# MEM[base: _1021, offset: 888B], D.16458
	vmovsd	896(%rcx), %xmm0	# MEM[base: _1021, offset: 880B], D.16458
	vmovsd	648(%rcx), %xmm6	# MEM[base: _1021, offset: 632B], D.16458
	vsubsd	%xmm10, %xmm8, %xmm2	# D.16458, D.16458, x0r
	vmovsd	1032(%rcx), %xmm15	# MEM[base: _1021, offset: 1016B], D.16458
	vaddsd	%xmm8, %xmm10, %xmm10	# D.16458, D.16458, x1r
	vaddsd	%xmm6, %xmm0, %xmm13	# D.16458, D.16458, x0i
	vmovsd	776(%rcx), %xmm14	# MEM[base: _1021, offset: 760B], D.16458
	vsubsd	%xmm0, %xmm6, %xmm6	# D.16458, D.16458, x1i
	vmovsd	768(%rcx), %xmm8	# MEM[base: _1021, offset: 752B], D.16458
	vmovsd	1024(%rcx), %xmm0	# MEM[base: _1021, offset: 1008B], D.16458
	vsubsd	%xmm15, %xmm8, %xmm11	# D.16458, D.16458, x2r
	vaddsd	%xmm14, %xmm0, %xmm12	# D.16458, D.16458, x2i
	vaddsd	%xmm8, %xmm15, %xmm8	# D.16458, D.16458, x3r
	vmulsd	%xmm7, %xmm2, %xmm15	# wd1i, x0r, D.16458
	vsubsd	%xmm0, %xmm14, %xmm0	# D.16458, D.16458, x3i
	vmulsd	%xmm4, %xmm2, %xmm2	# wd1r, x0r, D.16458
	vmulsd	%xmm4, %xmm13, %xmm14	# wd1r, x0i, D.16458
	vmulsd	%xmm7, %xmm13, %xmm7	# wd1i, x0i, D.16458
	vsubsd	%xmm14, %xmm15, %xmm14	# D.16458, D.16458, y0r
	vmulsd	%xmm1, %xmm12, %xmm15	# wk1r, x2i, D.16458
	vaddsd	%xmm7, %xmm2, %xmm2	# D.16458, D.16458, y0i
	vmulsd	%xmm5, %xmm11, %xmm7	# wk1i, x2r, D.16458
	vmulsd	%xmm1, %xmm11, %xmm1	# wk1r, x2r, D.16458
	vmulsd	%xmm5, %xmm12, %xmm5	# wk1i, x2i, D.16458
	vsubsd	%xmm15, %xmm7, %xmm7	# D.16458, D.16458, y2r
	vaddsd	%xmm5, %xmm1, %xmm4	# D.16458, D.16458, y2i
	vmulsd	%xmm3, %xmm10, %xmm1	# wd3i, x1r, D.16458
	vaddsd	%xmm14, %xmm7, %xmm5	# y0r, y2r, D.16458
	vmulsd	%xmm3, %xmm6, %xmm3	# wd3i, x1i, D.16458
	vsubsd	%xmm7, %xmm14, %xmm15	# y2r, y0r, D.16458
	vmovsd	16(%rsp), %xmm14	# %sfp, wd3r
	vmovsd	%xmm5, 640(%rcx)	# D.16458, MEM[base: _1021, offset: 624B]
	vaddsd	%xmm2, %xmm4, %xmm5	# y0i, y2i, D.16458
	vmulsd	%xmm14, %xmm10, %xmm10	# wd3r, x1r, D.16458
	vsubsd	%xmm4, %xmm2, %xmm4	# y2i, y0i, D.16458
	vmulsd	%xmm9, %xmm8, %xmm2	# wk3i, x3r, D.16458
	vmovsd	%xmm15, 768(%rcx)	# D.16458, MEM[base: _1021, offset: 752B]
	vmovsd	%xmm5, 648(%rcx)	# D.16458, MEM[base: _1021, offset: 632B]
	vmovsd	%xmm4, 776(%rcx)	# D.16458, MEM[base: _1021, offset: 760B]
	vmulsd	%xmm14, %xmm6, %xmm4	# wd3r, x1i, D.16458
	vmovsd	8(%rsp), %xmm6	# %sfp, wk3r
	vsubsd	%xmm10, %xmm3, %xmm3	# D.16458, D.16458, y0i
	vmulsd	%xmm6, %xmm8, %xmm8	# wk3r, x3r, D.16458
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16458, D.16458, y0r
	vmulsd	%xmm6, %xmm0, %xmm1	# wk3r, x3i, D.16458
	vaddsd	%xmm2, %xmm1, %xmm2	# D.16458, D.16458, y2r
	vmulsd	%xmm9, %xmm0, %xmm1	# wk3i, x3i, D.16458
	vaddsd	%xmm4, %xmm2, %xmm0	# y0r, y2r, D.16458
	vsubsd	%xmm2, %xmm4, %xmm2	# y2r, y0r, D.16458
	vsubsd	%xmm8, %xmm1, %xmm1	# D.16458, D.16458, y2i
	vmovsd	%xmm0, 896(%rcx)	# D.16458, MEM[base: _1021, offset: 880B]
	vmovsd	%xmm2, 1024(%rcx)	# D.16458, MEM[base: _1021, offset: 1008B]
	vaddsd	%xmm3, %xmm1, %xmm0	# y0i, y2i, D.16458
	vsubsd	%xmm1, %xmm3, %xmm1	# y2i, y0i, D.16458
	vmovsd	%xmm0, 904(%rcx)	# D.16458, MEM[base: _1021, offset: 888B]
	vmovsd	%xmm1, 1032(%rcx)	# D.16458, MEM[base: _1021, offset: 1016B]
	cmpq	$96, %rdx	#, ivtmp.813
	jne	.L285	#,
	vmovsd	840(%r13), %xmm5	# MEM[(double *)a_12(D) + 840B], D.16458
	movq	%rbx, %rsi	# D.16457,
	movq	%r8, 16(%rsp)	# ivtmp.775, %sfp
	vmovsd	832(%r13), %xmm1	# MEM[(double *)a_12(D) + 832B], D.16458
	vmovsd	576(%r13), %xmm3	# MEM[(double *)a_12(D) + 576B], D.16458
	vmovsd	584(%r13), %xmm7	# MEM[(double *)a_12(D) + 584B], D.16458
	vmovsd	128(%r15), %xmm4	# MEM[(double *)_75 + 128B], wk1r
	vsubsd	%xmm5, %xmm3, %xmm2	# D.16458, D.16458, x0r
	vmovsd	136(%r15), %xmm0	# MEM[(double *)_75 + 136B], wk1i
	vaddsd	%xmm7, %xmm1, %xmm9	# D.16458, D.16458, x0i
	vmovsd	712(%r13), %xmm6	# MEM[(double *)a_12(D) + 712B], D.16458
	vsubsd	%xmm1, %xmm7, %xmm7	# D.16458, D.16458, x1i
	vmovsd	960(%r13), %xmm1	# MEM[(double *)a_12(D) + 960B], D.16458
	vaddsd	%xmm3, %xmm5, %xmm3	# D.16458, D.16458, x1r
	vmovsd	968(%r13), %xmm10	# MEM[(double *)a_12(D) + 968B], D.16458
	vmulsd	%xmm9, %xmm0, %xmm12	# x0i, wk1i, D.16458
	vmovsd	704(%r13), %xmm8	# MEM[(double *)a_12(D) + 704B], D.16458
	vmulsd	%xmm9, %xmm4, %xmm9	# x0i, wk1r, D.16458
	vaddsd	%xmm6, %xmm1, %xmm5	# D.16458, D.16458, x2i
	vsubsd	%xmm1, %xmm6, %xmm1	# D.16458, D.16458, x3i
	vmulsd	%xmm2, %xmm4, %xmm6	# x0r, wk1r, D.16458
	vmulsd	%xmm2, %xmm0, %xmm2	# x0r, wk1i, D.16458
	vsubsd	%xmm10, %xmm8, %xmm11	# D.16458, D.16458, x2r
	vaddsd	%xmm8, %xmm10, %xmm8	# D.16458, D.16458, x3r
	vsubsd	%xmm12, %xmm6, %xmm10	# D.16458, D.16458, y0r
	vmulsd	%xmm5, %xmm4, %xmm6	# x2i, wk1r, D.16458
	vaddsd	%xmm9, %xmm2, %xmm2	# D.16458, D.16458, y0i
	vmulsd	%xmm11, %xmm0, %xmm9	# x2r, wk1i, D.16458
	vmulsd	%xmm5, %xmm0, %xmm5	# x2i, wk1i, D.16458
	vsubsd	%xmm6, %xmm9, %xmm9	# D.16458, D.16458, y2r
	vmulsd	%xmm11, %xmm4, %xmm6	# x2r, wk1r, D.16458
	vaddsd	%xmm5, %xmm6, %xmm5	# D.16458, D.16458, y2i
	vaddsd	%xmm10, %xmm9, %xmm6	# y0r, y2r, D.16458
	vmovsd	%xmm6, 576(%r13)	# D.16458, MEM[(double *)a_12(D) + 576B]
	vaddsd	%xmm2, %xmm5, %xmm6	# y0i, y2i, D.16458
	vsubsd	%xmm5, %xmm2, %xmm5	# y2i, y0i, D.16458
	vmulsd	%xmm7, %xmm4, %xmm2	# x1i, wk1r, D.16458
	vmovsd	%xmm6, 584(%r13)	# D.16458, MEM[(double *)a_12(D) + 584B]
	vsubsd	%xmm9, %xmm10, %xmm6	# y2r, y0r, D.16458
	vmovsd	%xmm5, 712(%r13)	# D.16458, MEM[(double *)a_12(D) + 712B]
	vmulsd	%xmm3, %xmm0, %xmm5	# x1r, wk1i, D.16458
	vmulsd	%xmm3, %xmm4, %xmm3	# x1r, wk1r, D.16458
	vmovsd	%xmm6, 704(%r13)	# D.16458, MEM[(double *)a_12(D) + 704B]
	vmulsd	%xmm1, %xmm0, %xmm6	# x3i, wk1i, D.16458
	vmulsd	%xmm1, %xmm4, %xmm1	# x3i, wk1r, D.16458
	vsubsd	%xmm2, %xmm5, %xmm5	# D.16458, D.16458, y0r
	vmulsd	%xmm7, %xmm0, %xmm2	# x1i, wk1i, D.16458
	vmulsd	%xmm8, %xmm0, %xmm0	# x3r, wk1i, D.16458
	vaddsd	%xmm2, %xmm3, %xmm2	# D.16458, D.16458, y0i
	vmulsd	%xmm8, %xmm4, %xmm3	# x3r, wk1r, D.16458
	vaddsd	%xmm1, %xmm0, %xmm0	# D.16458, D.16458, y2i
	vsubsd	%xmm6, %xmm3, %xmm3	# D.16458, D.16458, y2r
	vsubsd	%xmm3, %xmm5, %xmm1	# y2r, y0r, D.16458
	vaddsd	%xmm5, %xmm3, %xmm3	# y0r, y2r, D.16458
	vmovsd	%xmm1, 832(%r13)	# D.16458, MEM[(double *)a_12(D) + 832B]
	vsubsd	%xmm0, %xmm2, %xmm1	# y2i, y0i, D.16458
	vmovsd	%xmm3, 960(%r13)	# D.16458, MEM[(double *)a_12(D) + 960B]
	vaddsd	%xmm2, %xmm0, %xmm0	# y0i, y2i, D.16458
	vmovsd	%xmm1, 840(%r13)	# D.16458, MEM[(double *)a_12(D) + 840B]
	vmovsd	%xmm0, 968(%r13)	# D.16458, MEM[(double *)a_12(D) + 968B]
	call	cftf081	#
	leaq	640(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf082	#
	leaq	768(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf081	#
	leaq	896(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf082	#
	leaq	1024(%r13), %rax	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	movq	%rax, %rdi	# D.16457,
	movq	%rax, 8(%rsp)	# D.16457, %sfp
	call	cftmdl1.constprop.5	#
	movq	8(%rsp), %rax	# %sfp, D.16457
	movq	%rbx, %rsi	# D.16457,
	movq	%rax, %rdi	# D.16457,
	call	cftf081	#
	leaq	1152(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf082	#
	leaq	1280(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf081	#
	leaq	1408(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf081	#
	testl	%r12d, %r12d	# isplt
	movq	16(%rsp), %r8	# %sfp, ivtmp.775
	leaq	1536(%r13), %r12	#, D.16457
	jne	.L295	#,
	vmovsd	1536(%r13), %xmm0	# MEM[(double *)a_12(D) + 1536B], D.16458
	movq	%r13, %rax	# a, ivtmp.781
	xorl	%edx, %edx	# ivtmp.768
	vmovsd	1800(%r13), %xmm7	# MEM[(double *)a_12(D) + 1800B], D.16458
	vmovsd	1792(%r13), %xmm1	# MEM[(double *)a_12(D) + 1792B], D.16458
	vsubsd	%xmm7, %xmm0, %xmm9	# D.16458, D.16458, x0r
	vmovsd	8(%r15), %xmm3	# MEM[(double *)_75 + 8B], wn4r
	vmovsd	1928(%r13), %xmm5	# MEM[(double *)a_12(D) + 1928B], D.16458
	vaddsd	%xmm0, %xmm7, %xmm7	# D.16458, D.16458, x1r
	vmovsd	1920(%r13), %xmm6	# MEM[(double *)a_12(D) + 1920B], D.16458
	vmovsd	1544(%r13), %xmm4	# MEM[(double *)a_12(D) + 1544B], D.16458
	vmovsd	1664(%r13), %xmm0	# MEM[(double *)a_12(D) + 1664B], D.16458
	vmovsd	1672(%r13), %xmm10	# MEM[(double *)a_12(D) + 1672B], D.16458
	vaddsd	%xmm4, %xmm1, %xmm8	# D.16458, D.16458, x0i
	vsubsd	%xmm1, %xmm4, %xmm4	# D.16458, D.16458, x1i
	vaddsd	%xmm10, %xmm6, %xmm2	# D.16458, D.16458, x2i
	vsubsd	%xmm5, %xmm0, %xmm1	# D.16458, D.16458, x2r
	vaddsd	%xmm0, %xmm5, %xmm0	# D.16458, D.16458, x3r
	vsubsd	%xmm6, %xmm10, %xmm5	# D.16458, D.16458, x3i
	vsubsd	%xmm2, %xmm1, %xmm6	# x2i, x2r, D.16458
	vaddsd	%xmm1, %xmm2, %xmm1	# x2r, x2i, D.16458
	vmulsd	%xmm6, %xmm3, %xmm6	# D.16458, wn4r, y0r
	vmulsd	%xmm1, %xmm3, %xmm1	# D.16458, wn4r, y0i
	vaddsd	%xmm9, %xmm6, %xmm2	# x0r, y0r, D.16458
	vmovsd	%xmm2, 1536(%r13)	# D.16458, MEM[(double *)a_12(D) + 1536B]
	vaddsd	%xmm8, %xmm1, %xmm2	# x0i, y0i, D.16458
	vsubsd	%xmm1, %xmm8, %xmm1	# y0i, x0i, D.16458
	vmovsd	%xmm2, 1544(%r13)	# D.16458, MEM[(double *)a_12(D) + 1544B]
	vsubsd	%xmm6, %xmm9, %xmm2	# y0r, x0r, D.16458
	vmovsd	%xmm1, 1672(%r13)	# D.16458, MEM[(double *)a_12(D) + 1672B]
	vsubsd	%xmm5, %xmm0, %xmm1	# x3i, x3r, D.16458
	vaddsd	%xmm0, %xmm5, %xmm5	# x3r, x3i, D.16458
	vmovsd	%xmm2, 1664(%r13)	# D.16458, MEM[(double *)a_12(D) + 1664B]
	vmulsd	%xmm1, %xmm3, %xmm1	# D.16458, wn4r, y0r
	vmulsd	%xmm5, %xmm3, %xmm0	# D.16458, wn4r, y0i
	vsubsd	%xmm0, %xmm7, %xmm2	# y0i, x1r, D.16458
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, y0i, D.16458
	vmovsd	%xmm2, 1792(%r13)	# D.16458, MEM[(double *)a_12(D) + 1792B]
	vaddsd	%xmm4, %xmm1, %xmm2	# x1i, y0r, D.16458
	vmovsd	%xmm0, 1920(%r13)	# D.16458, MEM[(double *)a_12(D) + 1920B]
	vsubsd	%xmm1, %xmm4, %xmm4	# y0r, x1i, D.16458
	vmovsd	%xmm2, 1800(%r13)	# D.16458, MEM[(double *)a_12(D) + 1800B]
	vmovsd	%xmm4, 1928(%r13)	# D.16458, MEM[(double *)a_12(D) + 1928B]
	.p2align 4,,10
	.p2align 3
.L288:
	vmovsd	1816(%rax), %xmm8	# MEM[base: _197, offset: 1816B], D.16458
	subq	$32, %r8	#, ivtmp.775
	addq	$16, %rax	#, ivtmp.781
	subq	$16, %r14	#, ivtmp.791
	vmovsd	280(%r8), %xmm0	# MEM[base: _261, offset: 248B], wd3r
	vmovsd	1536(%rax), %xmm2	# MEM[base: _197, offset: 1552B], D.16458
	vmovsd	1544(%rax), %xmm10	# MEM[base: _197, offset: 1560B], D.16458
	vmovsd	%xmm0, 16(%rsp)	# wd3r, %sfp
	vsubsd	%xmm8, %xmm2, %xmm12	# D.16458, D.16458, x0r
	vmovsd	1792(%rax), %xmm0	# MEM[base: _197, offset: 1808B], D.16458
	vaddsd	%xmm2, %xmm8, %xmm2	# D.16458, D.16458, x1r
	vmovsd	32(%r15,%rdx), %xmm1	# MEM[base: _75, index: ivtmp.768_141, offset: 32B], wk1r
	vaddsd	%xmm10, %xmm0, %xmm11	# D.16458, D.16458, x0i
	vmovsd	40(%r15,%rdx), %xmm5	# MEM[base: _75, index: ivtmp.768_141, offset: 40B], wk1i
	vmovsd	1928(%rax), %xmm13	# MEM[base: _197, offset: 1944B], D.16458
	vsubsd	%xmm0, %xmm10, %xmm15	# D.16458, D.16458, x1i
	vmulsd	%xmm1, %xmm12, %xmm14	# wk1r, x0r, D.16458
	vmovsd	%xmm2, 32(%rsp)	# x1r, %sfp
	vmovsd	1664(%rax), %xmm2	# MEM[base: _197, offset: 1680B], D.16458
	vmulsd	%xmm5, %xmm12, %xmm12	# wk1i, x0r, D.16458
	vmovsd	1672(%rax), %xmm8	# MEM[base: _197, offset: 1688B], D.16458
	vmovsd	1920(%rax), %xmm0	# MEM[base: _197, offset: 1936B], D.16458
	vsubsd	%xmm13, %xmm2, %xmm6	# D.16458, D.16458, x2r
	vmovsd	%xmm15, 40(%rsp)	# x1i, %sfp
	vaddsd	%xmm2, %xmm13, %xmm2	# D.16458, D.16458, x3r
	vmulsd	%xmm5, %xmm11, %xmm13	# wk1i, x0i, D.16458
	vmovsd	48(%r15,%rdx), %xmm7	# MEM[base: _75, index: ivtmp.768_141, offset: 48B], wk3r
	vaddsd	%xmm8, %xmm0, %xmm10	# D.16458, D.16458, x2i
	vmovsd	56(%r15,%rdx), %xmm9	# MEM[base: _75, index: ivtmp.768_141, offset: 56B], wk3i
	addq	$32, %rdx	#, ivtmp.768
	vmovsd	264(%r8), %xmm4	# MEM[base: _261, offset: 232B], wd1r
	vmovsd	%xmm7, 8(%rsp)	# wk3r, %sfp
	vsubsd	%xmm0, %xmm8, %xmm0	# D.16458, D.16458, x3i
	vmulsd	%xmm1, %xmm11, %xmm8	# wk1r, x0i, D.16458
	vmovsd	256(%r8), %xmm7	# MEM[base: _261, offset: 224B], wd1i
	vmovsd	272(%r8), %xmm3	# MEM[base: _261, offset: 240B], wd3i
	vsubsd	%xmm13, %xmm14, %xmm14	# D.16458, D.16458, y0r
	vmulsd	%xmm7, %xmm10, %xmm11	# wd1i, x2i, D.16458
	vmulsd	%xmm4, %xmm6, %xmm13	# wd1r, x2r, D.16458
	vmulsd	%xmm4, %xmm10, %xmm10	# wd1r, x2i, D.16458
	vaddsd	%xmm8, %xmm12, %xmm8	# D.16458, D.16458, y0i
	vmulsd	%xmm7, %xmm6, %xmm6	# wd1i, x2r, D.16458
	vsubsd	%xmm11, %xmm13, %xmm13	# D.16458, D.16458, y2r
	vmovsd	32(%rsp), %xmm11	# %sfp, x1r
	vaddsd	%xmm10, %xmm6, %xmm12	# D.16458, D.16458, y2i
	vmovsd	40(%rsp), %xmm10	# %sfp, x1i
	vaddsd	%xmm14, %xmm13, %xmm15	# y0r, y2r, D.16458
	vsubsd	%xmm13, %xmm14, %xmm13	# y2r, y0r, D.16458
	vmovsd	%xmm15, 1536(%rax)	# D.16458, MEM[base: _197, offset: 1552B]
	vaddsd	%xmm8, %xmm12, %xmm15	# y0i, y2i, D.16458
	vsubsd	%xmm12, %xmm8, %xmm12	# y2i, y0i, D.16458
	vmulsd	%xmm11, %xmm9, %xmm8	# x1r, wk3i, D.16458
	vmovsd	%xmm13, 1664(%rax)	# D.16458, MEM[base: _197, offset: 1680B]
	vmovsd	16(%rsp), %xmm13	# %sfp, wd3r
	vmovsd	%xmm15, 1544(%rax)	# D.16458, MEM[base: _197, offset: 1560B]
	vmovsd	8(%rsp), %xmm15	# %sfp, wk3r
	vmovsd	%xmm12, 1672(%rax)	# D.16458, MEM[base: _197, offset: 1688B]
	vmulsd	%xmm10, %xmm9, %xmm12	# x1i, wk3i, D.16458
	vmulsd	%xmm15, %xmm11, %xmm6	# wk3r, x1r, D.16458
	vmulsd	%xmm10, %xmm15, %xmm10	# x1i, wk3r, D.16458
	vaddsd	%xmm6, %xmm12, %xmm12	# D.16458, D.16458, y0r
	vmulsd	%xmm13, %xmm2, %xmm6	# wd3r, x3r, D.16458
	vsubsd	%xmm8, %xmm10, %xmm10	# D.16458, D.16458, y0i
	vmulsd	%xmm3, %xmm0, %xmm8	# wd3i, x3i, D.16458
	vmulsd	%xmm3, %xmm2, %xmm2	# wd3i, x3r, D.16458
	vaddsd	%xmm6, %xmm8, %xmm6	# D.16458, D.16458, y2r
	vmulsd	%xmm13, %xmm0, %xmm8	# wd3r, x3i, D.16458
	vaddsd	%xmm12, %xmm6, %xmm11	# y0r, y2r, D.16458
	vsubsd	%xmm6, %xmm12, %xmm12	# y2r, y0r, D.16458
	vsubsd	%xmm2, %xmm8, %xmm8	# D.16458, D.16458, y2i
	vmovsd	%xmm11, 1792(%rax)	# D.16458, MEM[base: _197, offset: 1808B]
	vmovsd	%xmm12, 1920(%rax)	# D.16458, MEM[base: _197, offset: 1936B]
	vaddsd	%xmm10, %xmm8, %xmm11	# y0i, y2i, D.16458
	vsubsd	%xmm8, %xmm10, %xmm8	# y2i, y0i, D.16458
	vmovsd	%xmm11, 1800(%rax)	# D.16458, MEM[base: _197, offset: 1816B]
	vmovsd	%xmm8, 1928(%rax)	# D.16458, MEM[base: _197, offset: 1944B]
	vmovsd	1664(%r14), %xmm8	# MEM[base: _271, offset: 1648B], D.16458
	vmovsd	1928(%r14), %xmm10	# MEM[base: _271, offset: 1912B], D.16458
	vmovsd	1920(%r14), %xmm0	# MEM[base: _271, offset: 1904B], D.16458
	vmovsd	1672(%r14), %xmm6	# MEM[base: _271, offset: 1656B], D.16458
	vsubsd	%xmm10, %xmm8, %xmm2	# D.16458, D.16458, x0r
	vmovsd	2056(%r14), %xmm15	# MEM[base: _271, offset: 2040B], D.16458
	vaddsd	%xmm8, %xmm10, %xmm10	# D.16458, D.16458, x1r
	vmovsd	1800(%r14), %xmm14	# MEM[base: _271, offset: 1784B], D.16458
	vaddsd	%xmm6, %xmm0, %xmm13	# D.16458, D.16458, x0i
	vmovsd	1792(%r14), %xmm8	# MEM[base: _271, offset: 1776B], D.16458
	vsubsd	%xmm0, %xmm6, %xmm6	# D.16458, D.16458, x1i
	vmovsd	2048(%r14), %xmm0	# MEM[base: _271, offset: 2032B], D.16458
	vsubsd	%xmm15, %xmm8, %xmm11	# D.16458, D.16458, x2r
	vaddsd	%xmm14, %xmm0, %xmm12	# D.16458, D.16458, x2i
	vaddsd	%xmm8, %xmm15, %xmm8	# D.16458, D.16458, x3r
	vmulsd	%xmm7, %xmm2, %xmm15	# wd1i, x0r, D.16458
	vsubsd	%xmm0, %xmm14, %xmm0	# D.16458, D.16458, x3i
	vmulsd	%xmm7, %xmm13, %xmm7	# wd1i, x0i, D.16458
	vmulsd	%xmm4, %xmm13, %xmm14	# wd1r, x0i, D.16458
	vmovsd	16(%rsp), %xmm13	# %sfp, wd3r
	vmulsd	%xmm4, %xmm2, %xmm2	# wd1r, x0r, D.16458
	vsubsd	%xmm14, %xmm15, %xmm14	# D.16458, D.16458, y0r
	vmulsd	%xmm1, %xmm12, %xmm15	# wk1r, x2i, D.16458
	vaddsd	%xmm7, %xmm2, %xmm2	# D.16458, D.16458, y0i
	vmulsd	%xmm5, %xmm11, %xmm7	# wk1i, x2r, D.16458
	vmulsd	%xmm1, %xmm11, %xmm1	# wk1r, x2r, D.16458
	vmulsd	%xmm5, %xmm12, %xmm5	# wk1i, x2i, D.16458
	vsubsd	%xmm15, %xmm7, %xmm7	# D.16458, D.16458, y2r
	vaddsd	%xmm5, %xmm1, %xmm4	# D.16458, D.16458, y2i
	vmulsd	%xmm3, %xmm10, %xmm1	# wd3i, x1r, D.16458
	vaddsd	%xmm14, %xmm7, %xmm5	# y0r, y2r, D.16458
	vmulsd	%xmm3, %xmm6, %xmm3	# wd3i, x1i, D.16458
	vmulsd	%xmm13, %xmm10, %xmm10	# wd3r, x1r, D.16458
	vsubsd	%xmm7, %xmm14, %xmm15	# y2r, y0r, D.16458
	vmovsd	%xmm5, 1664(%r14)	# D.16458, MEM[base: _271, offset: 1648B]
	vaddsd	%xmm2, %xmm4, %xmm5	# y0i, y2i, D.16458
	vmovsd	%xmm15, 1792(%r14)	# D.16458, MEM[base: _271, offset: 1776B]
	vsubsd	%xmm4, %xmm2, %xmm4	# y2i, y0i, D.16458
	vmulsd	%xmm9, %xmm8, %xmm2	# wk3i, x3r, D.16458
	vmovsd	%xmm5, 1672(%r14)	# D.16458, MEM[base: _271, offset: 1656B]
	vsubsd	%xmm10, %xmm3, %xmm3	# D.16458, D.16458, y0i
	vmovsd	%xmm4, 1800(%r14)	# D.16458, MEM[base: _271, offset: 1784B]
	vmulsd	%xmm13, %xmm6, %xmm4	# wd3r, x1i, D.16458
	vmovsd	8(%rsp), %xmm6	# %sfp, wk3r
	vmulsd	%xmm6, %xmm8, %xmm8	# wk3r, x3r, D.16458
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16458, D.16458, y0r
	vmulsd	%xmm6, %xmm0, %xmm1	# wk3r, x3i, D.16458
	vaddsd	%xmm2, %xmm1, %xmm2	# D.16458, D.16458, y2r
	vmulsd	%xmm9, %xmm0, %xmm1	# wk3i, x3i, D.16458
	vaddsd	%xmm4, %xmm2, %xmm0	# y0r, y2r, D.16458
	vsubsd	%xmm2, %xmm4, %xmm2	# y2r, y0r, D.16458
	vsubsd	%xmm8, %xmm1, %xmm1	# D.16458, D.16458, y2i
	vmovsd	%xmm0, 1920(%r14)	# D.16458, MEM[base: _271, offset: 1904B]
	vmovsd	%xmm2, 2048(%r14)	# D.16458, MEM[base: _271, offset: 2032B]
	vaddsd	%xmm3, %xmm1, %xmm0	# y0i, y2i, D.16458
	vsubsd	%xmm1, %xmm3, %xmm1	# y2i, y0i, D.16458
	vmovsd	%xmm0, 1928(%r14)	# D.16458, MEM[base: _271, offset: 1912B]
	vmovsd	%xmm1, 2056(%r14)	# D.16458, MEM[base: _271, offset: 2040B]
	cmpq	$96, %rdx	#, ivtmp.768
	jne	.L288	#,
	vmovsd	1600(%r13), %xmm1	# MEM[(double *)a_12(D) + 1600B], D.16458
	leaq	1920(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	vmovsd	1856(%r13), %xmm0	# MEM[(double *)a_12(D) + 1856B], D.16458
	vmovsd	1864(%r13), %xmm5	# MEM[(double *)a_12(D) + 1864B], D.16458
	vmovsd	1608(%r13), %xmm9	# MEM[(double *)a_12(D) + 1608B], D.16458
	vmovsd	128(%r15), %xmm6	# MEM[(double *)_75 + 128B], wk1r
	vsubsd	%xmm5, %xmm1, %xmm3	# D.16458, D.16458, x0r
	vmovsd	136(%r15), %xmm4	# MEM[(double *)_75 + 136B], wk1i
	vaddsd	%xmm9, %xmm0, %xmm10	# D.16458, D.16458, x0i
	vmovsd	1736(%r13), %xmm11	# MEM[(double *)a_12(D) + 1736B], D.16458
	vaddsd	%xmm1, %xmm5, %xmm5	# D.16458, D.16458, x1r
	vmovsd	1992(%r13), %xmm1	# MEM[(double *)a_12(D) + 1992B], D.16458
	vsubsd	%xmm0, %xmm9, %xmm9	# D.16458, D.16458, x1i
	vmovsd	1728(%r13), %xmm0	# MEM[(double *)a_12(D) + 1728B], D.16458
	vmulsd	%xmm10, %xmm4, %xmm12	# x0i, wk1i, D.16458
	vmovsd	1984(%r13), %xmm2	# MEM[(double *)a_12(D) + 1984B], D.16458
	vmulsd	%xmm10, %xmm6, %xmm10	# x0i, wk1r, D.16458
	vsubsd	%xmm1, %xmm0, %xmm8	# D.16458, D.16458, x2r
	vaddsd	%xmm0, %xmm1, %xmm1	# D.16458, D.16458, x3r
	vmulsd	%xmm3, %xmm6, %xmm0	# x0r, wk1r, D.16458
	vmulsd	%xmm3, %xmm4, %xmm3	# x0r, wk1i, D.16458
	vaddsd	%xmm11, %xmm2, %xmm7	# D.16458, D.16458, x2i
	vsubsd	%xmm2, %xmm11, %xmm2	# D.16458, D.16458, x3i
	vsubsd	%xmm12, %xmm0, %xmm11	# D.16458, D.16458, y0r
	vmulsd	%xmm8, %xmm4, %xmm0	# x2r, wk1i, D.16458
	vaddsd	%xmm10, %xmm3, %xmm3	# D.16458, D.16458, y0i
	vmulsd	%xmm7, %xmm6, %xmm10	# x2i, wk1r, D.16458
	vmulsd	%xmm8, %xmm6, %xmm8	# x2r, wk1r, D.16458
	vmulsd	%xmm7, %xmm4, %xmm7	# x2i, wk1i, D.16458
	vsubsd	%xmm10, %xmm0, %xmm0	# D.16458, D.16458, y2r
	vaddsd	%xmm7, %xmm8, %xmm7	# D.16458, D.16458, y2i
	vaddsd	%xmm11, %xmm0, %xmm8	# y0r, y2r, D.16458
	vsubsd	%xmm0, %xmm11, %xmm0	# y2r, y0r, D.16458
	vmovsd	%xmm8, 1600(%r13)	# D.16458, MEM[(double *)a_12(D) + 1600B]
	vaddsd	%xmm3, %xmm7, %xmm8	# y0i, y2i, D.16458
	vmovsd	%xmm0, 1728(%r13)	# D.16458, MEM[(double *)a_12(D) + 1728B]
	vsubsd	%xmm7, %xmm3, %xmm7	# y2i, y0i, D.16458
	vmulsd	%xmm9, %xmm6, %xmm0	# x1i, wk1r, D.16458
	vmulsd	%xmm9, %xmm4, %xmm3	# x1i, wk1i, D.16458
	vmovsd	%xmm8, 1608(%r13)	# D.16458, MEM[(double *)a_12(D) + 1608B]
	vmovsd	%xmm7, 1736(%r13)	# D.16458, MEM[(double *)a_12(D) + 1736B]
	vmulsd	%xmm5, %xmm4, %xmm7	# x1r, wk1i, D.16458
	vmulsd	%xmm5, %xmm6, %xmm5	# x1r, wk1r, D.16458
	vsubsd	%xmm0, %xmm7, %xmm7	# D.16458, D.16458, y0r
	vmulsd	%xmm2, %xmm4, %xmm0	# x3i, wk1i, D.16458
	vaddsd	%xmm3, %xmm5, %xmm3	# D.16458, D.16458, y0i
	vmulsd	%xmm1, %xmm6, %xmm5	# x3r, wk1r, D.16458
	vmulsd	%xmm2, %xmm6, %xmm2	# x3i, wk1r, D.16458
	vmulsd	%xmm1, %xmm4, %xmm1	# x3r, wk1i, D.16458
	vsubsd	%xmm0, %xmm5, %xmm5	# D.16458, D.16458, y2r
	vaddsd	%xmm2, %xmm1, %xmm0	# D.16458, D.16458, y2i
	vsubsd	%xmm5, %xmm7, %xmm1	# y2r, y0r, D.16458
	vaddsd	%xmm7, %xmm5, %xmm5	# y0r, y2r, D.16458
	vmovsd	%xmm1, 1856(%r13)	# D.16458, MEM[(double *)a_12(D) + 1856B]
	vsubsd	%xmm0, %xmm3, %xmm1	# y2i, y0i, D.16458
	vmovsd	%xmm5, 1984(%r13)	# D.16458, MEM[(double *)a_12(D) + 1984B]
	vaddsd	%xmm3, %xmm0, %xmm0	# y0i, y2i, D.16458
	vmovsd	%xmm1, 1864(%r13)	# D.16458, MEM[(double *)a_12(D) + 1864B]
	vmovsd	%xmm0, 1992(%r13)	# D.16458, MEM[(double *)a_12(D) + 1992B]
	call	cftf082	#
.L287:
	movq	%rbx, %rsi	# D.16457,
	movq	%r12, %rdi	# D.16457,
	call	cftf081	#
	leaq	1664(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf082	#
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rsi	# D.16457,
	leaq	1792(%r13), %rdi	#, D.16457
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	jmp	cftf081	#
	.p2align 4,,10
	.p2align 3
.L295:
	.cfi_restore_state
	movq	%rbp, %rsi	# D.16457,
	movq	%r12, %rdi	# D.16457,
	call	cftmdl1.constprop.5	#
	leaq	1920(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf081	#
	jmp	.L287	#
	.p2align 4,,10
	.p2align 3
.L294:
	vmovsd	8(%r13), %xmm3	# MEM[(double *)a_12(D) + 8B], D.16458
	movslq	%ecx, %rdx	# nw, D.16455
	movq	%r13, %r15	# a, ivtmp.710
	movq	%r13, %rsi	# a, ivtmp.746
	vmovsd	0(%r13), %xmm9	# *a_12(D), D.16458
	salq	$3, %rdx	#, D.16455
	movq	%r13, %rcx	# a, ivtmp.736
	xorl	%edi, %edi	# ivtmp.729
	vmovsd	520(%r13), %xmm0	# MEM[(double *)a_12(D) + 520B], D.16458
	leaq	-512(%r8,%rdx), %rax	#, D.16457
	vmovsd	512(%r13), %xmm1	# MEM[(double *)a_12(D) + 512B], D.16458
	vmovsd	256(%r13), %xmm7	# MEM[(double *)a_12(D) + 256B], D.16458
	vaddsd	%xmm3, %xmm0, %xmm10	# D.16458, D.16458, x0i
	vmovsd	264(%r13), %xmm2	# MEM[(double *)a_12(D) + 264B], D.16458
	vsubsd	%xmm0, %xmm3, %xmm0	# D.16458, D.16458, x1i
	vmovsd	768(%r13), %xmm3	# MEM[(double *)a_12(D) + 768B], D.16458
	vaddsd	%xmm9, %xmm1, %xmm8	# D.16458, D.16458, x0r
	vmovsd	776(%r13), %xmm6	# MEM[(double *)a_12(D) + 776B], D.16458
	vsubsd	%xmm1, %xmm9, %xmm9	# D.16458, D.16458, x1r
	vaddsd	%xmm7, %xmm3, %xmm4	# D.16458, D.16458, x2r
	vaddsd	%xmm2, %xmm6, %xmm5	# D.16458, D.16458, x2i
	vsubsd	%xmm6, %xmm2, %xmm1	# D.16458, D.16458, x3i
	vaddsd	%xmm8, %xmm4, %xmm2	# x0r, x2r, D.16458
	vsubsd	%xmm3, %xmm7, %xmm3	# D.16458, D.16458, x3r
	vsubsd	%xmm4, %xmm8, %xmm4	# x2r, x0r, D.16458
	vmovsd	%xmm2, 0(%r13)	# D.16458, *a_12(D)
	vaddsd	%xmm10, %xmm5, %xmm2	# x0i, x2i, D.16458
	vmovsd	%xmm4, 256(%r13)	# D.16458, MEM[(double *)a_12(D) + 256B]
	vmovsd	%xmm2, 8(%r13)	# D.16458, MEM[(double *)a_12(D) + 8B]
	vsubsd	%xmm5, %xmm10, %xmm2	# x2i, x0i, D.16458
	vmovsd	%xmm2, 264(%r13)	# D.16458, MEM[(double *)a_12(D) + 264B]
	vsubsd	%xmm1, %xmm9, %xmm2	# x3i, x1r, D.16458
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, D.16458
	vmovsd	%xmm2, 512(%r13)	# D.16458, MEM[(double *)a_12(D) + 512B]
	vaddsd	%xmm0, %xmm3, %xmm2	# x1i, x3r, D.16458
	vmovsd	%xmm1, 768(%r13)	# D.16458, MEM[(double *)a_12(D) + 768B]
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, D.16458
	vmovsd	%xmm2, 520(%r13)	# D.16458, MEM[(double *)a_12(D) + 520B]
	vmovsd	%xmm0, 776(%r13)	# D.16458, MEM[(double *)a_12(D) + 776B]
	vmovsd	8(%rax), %xmm6	# MEM[(double *)_10 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L281:
	vmovsd	24(%rcx), %xmm3	# MEM[base: _427, offset: 24B], D.16458
	subq	$16, %rsi	#, ivtmp.746
	addq	$16, %rcx	#, ivtmp.736
	vmovsd	520(%rcx), %xmm0	# MEM[base: _427, offset: 536B], D.16458
	vmovsd	512(%rcx), %xmm1	# MEM[base: _427, offset: 528B], D.16458
	vmovsd	768(%rcx), %xmm2	# MEM[base: _427, offset: 784B], D.16458
	vaddsd	%xmm3, %xmm0, %xmm9	# D.16458, D.16458, x0i
	vmovsd	(%rcx), %xmm5	# MEM[base: _427, offset: 16B], D.16458
	vsubsd	%xmm0, %xmm3, %xmm0	# D.16458, D.16458, x1i
	vmovsd	256(%rcx), %xmm3	# MEM[base: _427, offset: 272B], D.16458
	vaddsd	%xmm5, %xmm1, %xmm11	# D.16458, D.16458, x0r
	vmovsd	264(%rcx), %xmm12	# MEM[base: _427, offset: 280B], D.16458
	vaddsd	%xmm3, %xmm2, %xmm7	# D.16458, D.16458, x2r
	vmovsd	776(%rcx), %xmm4	# MEM[base: _427, offset: 792B], D.16458
	vsubsd	%xmm1, %xmm5, %xmm5	# D.16458, D.16458, x1r
	vmovsd	32(%rax,%rdi), %xmm15	# MEM[base: _10, index: ivtmp.729_137, offset: 32B], wk1r
	vaddsd	%xmm12, %xmm4, %xmm1	# D.16458, D.16458, x2i
	vmovsd	40(%rax,%rdi), %xmm14	# MEM[base: _10, index: ivtmp.729_137, offset: 40B], wk1i
	vaddsd	%xmm11, %xmm7, %xmm13	# x0r, x2r, D.16458
	vmovsd	48(%rax,%rdi), %xmm8	# MEM[base: _10, index: ivtmp.729_137, offset: 48B], wk3r
	vmovsd	56(%rax,%rdi), %xmm10	# MEM[base: _10, index: ivtmp.729_137, offset: 56B], wk3i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.16458, D.16458, x3r
	addq	$32, %rdi	#, ivtmp.729
	vsubsd	%xmm4, %xmm12, %xmm4	# D.16458, D.16458, x3i
	vmovsd	%xmm13, (%rcx)	# D.16458, MEM[base: _427, offset: 16B]
	vaddsd	%xmm9, %xmm1, %xmm13	# x0i, x2i, D.16458
	vsubsd	%xmm1, %xmm9, %xmm9	# x2i, x0i, D.16458
	vsubsd	%xmm7, %xmm11, %xmm11	# x2r, x0r, D.16458
	vaddsd	%xmm0, %xmm3, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm13, 8(%rcx)	# D.16458, MEM[base: _427, offset: 24B]
	vmovsd	%xmm9, 264(%rcx)	# D.16458, MEM[base: _427, offset: 280B]
	vsubsd	%xmm4, %xmm5, %xmm9	# x3i, x1r, x0r
	vmovsd	%xmm11, 256(%rcx)	# D.16458, MEM[base: _427, offset: 272B]
	vaddsd	%xmm5, %xmm4, %xmm5	# x1r, x3i, x0r
	vmulsd	%xmm14, %xmm1, %xmm11	# wk1i, x0i, D.16458
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm15, %xmm9, %xmm12	# wk1r, x0r, D.16458
	vmulsd	%xmm15, %xmm1, %xmm1	# wk1r, x0i, D.16458
	vmulsd	%xmm14, %xmm9, %xmm9	# wk1i, x0r, D.16458
	vmulsd	%xmm10, %xmm0, %xmm4	# wk3i, x0i, D.16458
	vmulsd	%xmm8, %xmm0, %xmm3	# wk3r, x0i, D.16458
	vsubsd	%xmm11, %xmm12, %xmm11	# D.16458, D.16458, D.16458
	vaddsd	%xmm1, %xmm9, %xmm9	# D.16458, D.16458, D.16458
	vmulsd	%xmm8, %xmm5, %xmm1	# wk3r, x0r, D.16458
	vmovsd	%xmm11, 512(%rcx)	# D.16458, MEM[base: _427, offset: 528B]
	vmovsd	%xmm9, 520(%rcx)	# D.16458, MEM[base: _427, offset: 536B]
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16458, D.16458, D.16458
	vmovsd	%xmm4, 768(%rcx)	# D.16458, MEM[base: _427, offset: 784B]
	vmulsd	%xmm10, %xmm5, %xmm4	# wk3i, x0r, D.16458
	vsubsd	%xmm4, %xmm3, %xmm2	# D.16458, D.16458, D.16458
	vmovsd	%xmm2, 776(%rcx)	# D.16458, MEM[base: _427, offset: 792B]
	vmovsd	256(%rsi), %xmm2	# MEM[base: _459, offset: 240B], D.16458
	vmovsd	768(%rsi), %xmm0	# MEM[base: _459, offset: 752B], D.16458
	vmovsd	264(%rsi), %xmm3	# MEM[base: _459, offset: 248B], D.16458
	vmovsd	776(%rsi), %xmm1	# MEM[base: _459, offset: 760B], D.16458
	vsubsd	%xmm0, %xmm2, %xmm4	# D.16458, D.16458, x1r
	vmovsd	520(%rsi), %xmm12	# MEM[base: _459, offset: 504B], D.16458
	vaddsd	%xmm2, %xmm0, %xmm11	# D.16458, D.16458, x0r
	vaddsd	%xmm3, %xmm1, %xmm9	# D.16458, D.16458, x0i
	vmovsd	1024(%rsi), %xmm0	# MEM[base: _459, offset: 1008B], D.16458
	vmovsd	1032(%rsi), %xmm2	# MEM[base: _459, offset: 1016B], D.16458
	vsubsd	%xmm1, %xmm3, %xmm3	# D.16458, D.16458, x1i
	vmovsd	512(%rsi), %xmm1	# MEM[base: _459, offset: 496B], D.16458
	vaddsd	%xmm12, %xmm2, %xmm5	# D.16458, D.16458, x2i
	vaddsd	%xmm1, %xmm0, %xmm7	# D.16458, D.16458, x2r
	vsubsd	%xmm2, %xmm12, %xmm2	# D.16458, D.16458, x3i
	vsubsd	%xmm0, %xmm1, %xmm1	# D.16458, D.16458, x3r
	vaddsd	%xmm11, %xmm7, %xmm13	# x0r, x2r, D.16458
	vsubsd	%xmm7, %xmm11, %xmm11	# x2r, x0r, D.16458
	vaddsd	%xmm3, %xmm1, %xmm0	# x1i, x3r, x0i
	vsubsd	%xmm2, %xmm4, %xmm7	# x3i, x1r, x0r
	vmovsd	%xmm13, 256(%rsi)	# D.16458, MEM[base: _459, offset: 240B]
	vaddsd	%xmm4, %xmm2, %xmm2	# x1r, x3i, x0r
	vmovsd	%xmm11, 512(%rsi)	# D.16458, MEM[base: _459, offset: 496B]
	vsubsd	%xmm1, %xmm3, %xmm1	# x3r, x1i, x0i
	vmulsd	%xmm15, %xmm0, %xmm11	# wk1r, x0i, D.16458
	vmulsd	%xmm14, %xmm7, %xmm12	# wk1i, x0r, D.16458
	vaddsd	%xmm9, %xmm5, %xmm13	# x0i, x2i, D.16458
	vmulsd	%xmm14, %xmm0, %xmm14	# wk1i, x0i, D.16458
	vsubsd	%xmm5, %xmm9, %xmm5	# x2i, x0i, D.16458
	vmulsd	%xmm10, %xmm2, %xmm0	# wk3i, x0r, D.16458
	vmulsd	%xmm8, %xmm1, %xmm4	# wk3r, x0i, D.16458
	vmovsd	%xmm13, 264(%rsi)	# D.16458, MEM[base: _459, offset: 248B]
	vmulsd	%xmm15, %xmm7, %xmm7	# wk1r, x0r, D.16458
	vmovsd	%xmm5, 520(%rsi)	# D.16458, MEM[base: _459, offset: 504B]
	vmulsd	%xmm10, %xmm1, %xmm1	# wk3i, x0i, D.16458
	vsubsd	%xmm11, %xmm12, %xmm11	# D.16458, D.16458, D.16458
	vmulsd	%xmm8, %xmm2, %xmm2	# wk3r, x0r, D.16458
	vaddsd	%xmm0, %xmm4, %xmm4	# D.16458, D.16458, D.16458
	vmovsd	%xmm11, 768(%rsi)	# D.16458, MEM[base: _459, offset: 752B]
	vaddsd	%xmm14, %xmm7, %xmm7	# D.16458, D.16458, D.16458
	vsubsd	%xmm2, %xmm1, %xmm0	# D.16458, D.16458, D.16458
	vmovsd	%xmm7, 776(%rsi)	# D.16458, MEM[base: _459, offset: 760B]
	vmovsd	%xmm4, 1024(%rsi)	# D.16458, MEM[base: _459, offset: 1008B]
	vmovsd	%xmm0, 1032(%rsi)	# D.16458, MEM[base: _459, offset: 1016B]
	cmpq	$224, %rdi	#, ivtmp.729
	jne	.L281	#,
	vmovsd	648(%r13), %xmm1	# MEM[(double *)a_12(D) + 648B], D.16458
	leaq	-64(%r14,%rdx), %rbx	#, D.16457
	movq	%r13, %rdi	# a,
	movq	%rax, 32(%rsp)	# D.16457, %sfp
	vmovsd	136(%r13), %xmm3	# MEM[(double *)a_12(D) + 136B], D.16458
	movq	%rbx, %rsi	# D.16457,
	movq	%rdx, 8(%rsp)	# D.16455, %sfp
	vmovsd	640(%r13), %xmm0	# MEM[(double *)a_12(D) + 640B], D.16458
	vmovsd	128(%r13), %xmm8	# MEM[(double *)a_12(D) + 128B], D.16458
	vaddsd	%xmm3, %xmm1, %xmm4	# D.16458, D.16458, x0i
	vmovsd	384(%r13), %xmm7	# MEM[(double *)a_12(D) + 384B], D.16458
	vsubsd	%xmm1, %xmm3, %xmm3	# D.16458, D.16458, x1i
	vmovsd	896(%r13), %xmm1	# MEM[(double *)a_12(D) + 896B], D.16458
	vaddsd	%xmm8, %xmm0, %xmm5	# D.16458, D.16458, x0r
	vmovsd	904(%r13), %xmm2	# MEM[(double *)a_12(D) + 904B], D.16458
	vsubsd	%xmm0, %xmm8, %xmm8	# D.16458, D.16458, x1r
	vmovsd	392(%r13), %xmm0	# MEM[(double *)a_12(D) + 392B], D.16458
	vaddsd	%xmm7, %xmm1, %xmm10	# D.16458, D.16458, x2r
	vsubsd	%xmm1, %xmm7, %xmm7	# D.16458, D.16458, x3r
	vaddsd	%xmm0, %xmm2, %xmm9	# D.16458, D.16458, x2i
	vsubsd	%xmm2, %xmm0, %xmm2	# D.16458, D.16458, x3i
	vaddsd	%xmm5, %xmm10, %xmm0	# x0r, x2r, D.16458
	vaddsd	%xmm3, %xmm7, %xmm1	# x1i, x3r, x0i
	vsubsd	%xmm10, %xmm5, %xmm5	# x2r, x0r, D.16458
	vmovsd	%xmm0, 128(%r13)	# D.16458, MEM[(double *)a_12(D) + 128B]
	vaddsd	%xmm4, %xmm9, %xmm0	# x0i, x2i, D.16458
	vsubsd	%xmm9, %xmm4, %xmm4	# x2i, x0i, D.16458
	vmovsd	%xmm5, 384(%r13)	# D.16458, MEM[(double *)a_12(D) + 384B]
	vmovsd	%xmm0, 136(%r13)	# D.16458, MEM[(double *)a_12(D) + 136B]
	vsubsd	%xmm2, %xmm8, %xmm0	# x3i, x1r, x0r
	vmovsd	%xmm4, 392(%r13)	# D.16458, MEM[(double *)a_12(D) + 392B]
	vsubsd	%xmm1, %xmm0, %xmm4	# x0i, x0r, D.16458
	vaddsd	%xmm0, %xmm1, %xmm1	# x0r, x0i, D.16458
	vaddsd	%xmm8, %xmm2, %xmm0	# x1r, x3i, x0r
	vmovapd	%xmm6, %xmm2	# wn4r, D.16458
	vmulsd	%xmm4, %xmm6, %xmm4	# D.16458, wn4r, D.16458
	vmulsd	%xmm1, %xmm6, %xmm1	# D.16458, wn4r, D.16458
	vmovsd	%xmm4, 640(%r13)	# D.16458, MEM[(double *)a_12(D) + 640B]
	vmovsd	%xmm1, 648(%r13)	# D.16458, MEM[(double *)a_12(D) + 648B]
	vsubsd	%xmm7, %xmm3, %xmm1	# x3r, x1i, x0i
	vmovsd	.LC13(%rip), %xmm7	#, tmp1123
	vxorpd	%xmm7, %xmm2, %xmm2	# tmp1123, D.16458, D.16458
	vmovaps	%xmm7, 16(%rsp)	# tmp1123, %sfp
	vaddsd	%xmm0, %xmm1, %xmm3	# x0r, x0i, D.16458
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.16458
	vmulsd	%xmm3, %xmm2, %xmm2	# D.16458, D.16458, D.16458
	vmulsd	%xmm0, %xmm6, %xmm0	# D.16458, wn4r, D.16458
	vmovsd	%xmm2, 896(%r13)	# D.16458, MEM[(double *)a_12(D) + 896B]
	vmovsd	%xmm0, 904(%r13)	# D.16458, MEM[(double *)a_12(D) + 904B]
	call	cftf161	#
	movq	8(%rsp), %rdx	# %sfp, D.16455
	leaq	256(%r13), %rdi	#, D.16457
	leaq	-256(%r14,%rdx), %rbp	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	call	cftf162	#
	leaq	512(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf161	#
	leaq	768(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf161	#
	movq	8(%rsp), %rdx	# %sfp, D.16455
	movl	$128, %edi	#,
	leaq	1024(%r13), %rcx	#, D.16457
	movq	%rcx, %rsi	# D.16457,
	movq	%rcx, 8(%rsp)	# D.16457, %sfp
	leaq	-1024(%r14,%rdx), %r14	#, D.16457
	movq	%r14, %rdx	# D.16457,
	call	cftmdl2	#
	movq	8(%rsp), %rcx	# %sfp, D.16457
	movq	%rbx, %rsi	# D.16457,
	movq	%rcx, %rdi	# D.16457,
	call	cftf161	#
	leaq	1280(%r13), %rdi	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	call	cftf162	#
	leaq	1536(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf161	#
	leaq	1792(%r13), %rdi	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	call	cftf162	#
	movq	32(%rsp), %rax	# %sfp, D.16457
	movq	%r13, %rdx	# a, ivtmp.700
	xorl	%ecx, %ecx	# ivtmp.693
	vmovsd	2048(%r13), %xmm5	# MEM[(double *)a_12(D) + 2048B], D.16458
	leaq	2048(%r13), %rdi	#, D.16457
	vmovsd	2560(%r13), %xmm1	# MEM[(double *)a_12(D) + 2560B], D.16458
	vmovsd	2304(%r13), %xmm8	# MEM[(double *)a_12(D) + 2304B], D.16458
	vmovsd	2816(%r13), %xmm6	# MEM[(double *)a_12(D) + 2816B], D.16458
	vaddsd	%xmm5, %xmm1, %xmm11	# D.16458, D.16458, x0r
	vmovsd	2056(%r13), %xmm4	# MEM[(double *)a_12(D) + 2056B], D.16458
	vsubsd	%xmm1, %xmm5, %xmm9	# D.16458, D.16458, x1r
	vaddsd	%xmm8, %xmm6, %xmm3	# D.16458, D.16458, x2r
	vmovapd	16(%rsp), %xmm7	# %sfp, tmp1123
	vmovsd	2312(%r13), %xmm2	# MEM[(double *)a_12(D) + 2312B], D.16458
	vsubsd	%xmm6, %xmm8, %xmm6	# D.16458, D.16458, x3r
	vmovsd	2568(%r13), %xmm0	# MEM[(double *)a_12(D) + 2568B], D.16458
	vmovsd	2824(%r13), %xmm5	# MEM[(double *)a_12(D) + 2824B], D.16458
	vaddsd	%xmm4, %xmm0, %xmm10	# D.16458, D.16458, x0i
	vsubsd	%xmm5, %xmm2, %xmm1	# D.16458, D.16458, x3i
	vsubsd	%xmm0, %xmm4, %xmm0	# D.16458, D.16458, x1i
	vaddsd	%xmm2, %xmm5, %xmm4	# D.16458, D.16458, x2i
	vaddsd	%xmm11, %xmm3, %xmm2	# x0r, x2r, D.16458
	vsubsd	%xmm3, %xmm11, %xmm3	# x2r, x0r, D.16458
	vmovsd	%xmm2, 2048(%r13)	# D.16458, MEM[(double *)a_12(D) + 2048B]
	vaddsd	%xmm10, %xmm4, %xmm2	# x0i, x2i, D.16458
	vmovsd	%xmm3, 2304(%r13)	# D.16458, MEM[(double *)a_12(D) + 2304B]
	vmovsd	%xmm2, 2056(%r13)	# D.16458, MEM[(double *)a_12(D) + 2056B]
	vsubsd	%xmm4, %xmm10, %xmm2	# x2i, x0i, D.16458
	vmovsd	%xmm2, 2312(%r13)	# D.16458, MEM[(double *)a_12(D) + 2312B]
	vsubsd	%xmm1, %xmm9, %xmm2	# x3i, x1r, D.16458
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, D.16458
	vmovsd	%xmm2, 2560(%r13)	# D.16458, MEM[(double *)a_12(D) + 2560B]
	vaddsd	%xmm0, %xmm6, %xmm2	# x1i, x3r, D.16458
	vmovsd	%xmm1, 2816(%r13)	# D.16458, MEM[(double *)a_12(D) + 2816B]
	vsubsd	%xmm6, %xmm0, %xmm0	# x3r, x1i, D.16458
	vmovsd	%xmm2, 2568(%r13)	# D.16458, MEM[(double *)a_12(D) + 2568B]
	vmovsd	%xmm0, 2824(%r13)	# D.16458, MEM[(double *)a_12(D) + 2824B]
	vmovsd	8(%rax), %xmm6	# MEM[(double *)_10 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L282:
	vmovsd	2072(%rdx), %xmm3	# MEM[base: _2226, offset: 2072B], D.16458
	subq	$16, %r15	#, ivtmp.710
	addq	$16, %rdx	#, ivtmp.700
	vmovsd	2568(%rdx), %xmm0	# MEM[base: _2226, offset: 2584B], D.16458
	vmovsd	2048(%rdx), %xmm5	# MEM[base: _2226, offset: 2064B], D.16458
	vmovsd	2816(%rdx), %xmm2	# MEM[base: _2226, offset: 2832B], D.16458
	vaddsd	%xmm3, %xmm0, %xmm8	# D.16458, D.16458, x0i
	vmovsd	2560(%rdx), %xmm1	# MEM[base: _2226, offset: 2576B], D.16458
	vsubsd	%xmm0, %xmm3, %xmm0	# D.16458, D.16458, x1i
	vmovsd	2304(%rdx), %xmm3	# MEM[base: _2226, offset: 2320B], D.16458
	vaddsd	%xmm5, %xmm1, %xmm13	# D.16458, D.16458, x0r
	vmovsd	2312(%rdx), %xmm14	# MEM[base: _2226, offset: 2328B], D.16458
	vaddsd	%xmm3, %xmm2, %xmm12	# D.16458, D.16458, x2r
	vmovsd	32(%rax,%rcx), %xmm15	# MEM[base: _10, index: ivtmp.693_2234, offset: 32B], wk1r
	vsubsd	%xmm1, %xmm5, %xmm1	# D.16458, D.16458, x1r
	vmovsd	2824(%rdx), %xmm5	# MEM[base: _2226, offset: 2840B], D.16458
	vmovsd	40(%rax,%rcx), %xmm11	# MEM[base: _10, index: ivtmp.693_2234, offset: 40B], wk1i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.16458, D.16458, x3r
	vaddsd	%xmm14, %xmm5, %xmm4	# D.16458, D.16458, x2i
	vmovsd	48(%rax,%rcx), %xmm10	# MEM[base: _10, index: ivtmp.693_2234, offset: 48B], wk3r
	vsubsd	%xmm5, %xmm14, %xmm5	# D.16458, D.16458, x3i
	vmovsd	56(%rax,%rcx), %xmm9	# MEM[base: _10, index: ivtmp.693_2234, offset: 56B], wk3i
	addq	$32, %rcx	#, ivtmp.693
	vaddsd	%xmm13, %xmm12, %xmm14	# x0r, x2r, D.16458
	vaddsd	%xmm0, %xmm3, %xmm2	# x1i, x3r, x0i
	vsubsd	%xmm12, %xmm13, %xmm12	# x2r, x0r, D.16458
	vmovsd	%xmm14, 2048(%rdx)	# D.16458, MEM[base: _2226, offset: 2064B]
	vaddsd	%xmm8, %xmm4, %xmm14	# x0i, x2i, D.16458
	vsubsd	%xmm4, %xmm8, %xmm8	# x2i, x0i, D.16458
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, x0i
	vmovsd	%xmm12, 2304(%rdx)	# D.16458, MEM[base: _2226, offset: 2320B]
	vmulsd	%xmm11, %xmm2, %xmm12	# wk1i, x0i, D.16458
	vmulsd	%xmm15, %xmm2, %xmm2	# wk1r, x0i, D.16458
	vmovsd	%xmm14, 2056(%rdx)	# D.16458, MEM[base: _2226, offset: 2072B]
	vmovsd	%xmm8, 2312(%rdx)	# D.16458, MEM[base: _2226, offset: 2328B]
	vsubsd	%xmm5, %xmm1, %xmm8	# x3i, x1r, x0r
	vaddsd	%xmm1, %xmm5, %xmm5	# x1r, x3i, x0r
	vmulsd	%xmm10, %xmm0, %xmm3	# wk3r, x0i, D.16458
	vmulsd	%xmm9, %xmm0, %xmm4	# wk3i, x0i, D.16458
	vmulsd	%xmm15, %xmm8, %xmm13	# wk1r, x0r, D.16458
	vmulsd	%xmm10, %xmm5, %xmm1	# wk3r, x0r, D.16458
	vmulsd	%xmm11, %xmm8, %xmm8	# wk1i, x0r, D.16458
	vmulsd	%xmm9, %xmm5, %xmm5	# wk3i, x0r, D.16458
	vsubsd	%xmm12, %xmm13, %xmm12	# D.16458, D.16458, D.16458
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16458, D.16458, D.16458
	vaddsd	%xmm2, %xmm8, %xmm8	# D.16458, D.16458, D.16458
	vsubsd	%xmm5, %xmm3, %xmm2	# D.16458, D.16458, D.16458
	vmovsd	%xmm12, 2560(%rdx)	# D.16458, MEM[base: _2226, offset: 2576B]
	vmovsd	%xmm4, 2816(%rdx)	# D.16458, MEM[base: _2226, offset: 2832B]
	vmovsd	%xmm8, 2568(%rdx)	# D.16458, MEM[base: _2226, offset: 2584B]
	vmovsd	%xmm2, 2824(%rdx)	# D.16458, MEM[base: _2226, offset: 2840B]
	vmovsd	2304(%r15), %xmm2	# MEM[base: _2210, offset: 2288B], D.16458
	vmovsd	2816(%r15), %xmm1	# MEM[base: _2210, offset: 2800B], D.16458
	vmovsd	2312(%r15), %xmm3	# MEM[base: _2210, offset: 2296B], D.16458
	vmovsd	2824(%r15), %xmm0	# MEM[base: _2210, offset: 2808B], D.16458
	vaddsd	%xmm2, %xmm1, %xmm12	# D.16458, D.16458, x0r
	vmovsd	2568(%r15), %xmm14	# MEM[base: _2210, offset: 2552B], D.16458
	vsubsd	%xmm1, %xmm2, %xmm5	# D.16458, D.16458, x1r
	vmovsd	2560(%r15), %xmm1	# MEM[base: _2210, offset: 2544B], D.16458
	vaddsd	%xmm3, %xmm0, %xmm13	# D.16458, D.16458, x0i
	vmovsd	3080(%r15), %xmm2	# MEM[base: _2210, offset: 3064B], D.16458
	vsubsd	%xmm0, %xmm3, %xmm3	# D.16458, D.16458, x1i
	vmovsd	3072(%r15), %xmm0	# MEM[base: _2210, offset: 3056B], D.16458
	vaddsd	%xmm14, %xmm2, %xmm4	# D.16458, D.16458, x2i
	vaddsd	%xmm1, %xmm0, %xmm8	# D.16458, D.16458, x2r
	vsubsd	%xmm2, %xmm14, %xmm2	# D.16458, D.16458, x3i
	vsubsd	%xmm0, %xmm1, %xmm0	# D.16458, D.16458, x3r
	vaddsd	%xmm12, %xmm8, %xmm14	# x0r, x2r, D.16458
	vsubsd	%xmm8, %xmm12, %xmm12	# x2r, x0r, D.16458
	vaddsd	%xmm3, %xmm0, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm14, 2304(%r15)	# D.16458, MEM[base: _2210, offset: 2288B]
	vaddsd	%xmm13, %xmm4, %xmm14	# x0i, x2i, D.16458
	vmovsd	%xmm12, 2560(%r15)	# D.16458, MEM[base: _2210, offset: 2544B]
	vsubsd	%xmm4, %xmm13, %xmm4	# x2i, x0i, D.16458
	vmulsd	%xmm15, %xmm1, %xmm12	# wk1r, x0i, D.16458
	vsubsd	%xmm0, %xmm3, %xmm0	# x3r, x1i, x0i
	vmovsd	%xmm14, 2312(%r15)	# D.16458, MEM[base: _2210, offset: 2296B]
	vmovsd	%xmm4, 2568(%r15)	# D.16458, MEM[base: _2210, offset: 2552B]
	vsubsd	%xmm2, %xmm5, %xmm4	# x3i, x1r, x0r
	vaddsd	%xmm5, %xmm2, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm11, %xmm4, %xmm13	# wk1i, x0r, D.16458
	vmulsd	%xmm11, %xmm1, %xmm11	# wk1i, x0i, D.16458
	vmulsd	%xmm15, %xmm4, %xmm4	# wk1r, x0r, D.16458
	vmulsd	%xmm9, %xmm2, %xmm1	# wk3i, x0r, D.16458
	vmulsd	%xmm10, %xmm2, %xmm2	# wk3r, x0r, D.16458
	vsubsd	%xmm12, %xmm13, %xmm12	# D.16458, D.16458, D.16458
	vaddsd	%xmm11, %xmm4, %xmm4	# D.16458, D.16458, D.16458
	vmovsd	%xmm12, 2816(%r15)	# D.16458, MEM[base: _2210, offset: 2800B]
	vmovsd	%xmm4, 2824(%r15)	# D.16458, MEM[base: _2210, offset: 2808B]
	vmulsd	%xmm10, %xmm0, %xmm4	# wk3r, x0i, D.16458
	vmulsd	%xmm9, %xmm0, %xmm0	# wk3i, x0i, D.16458
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16458, D.16458, D.16458
	vsubsd	%xmm2, %xmm0, %xmm1	# D.16458, D.16458, D.16458
	vmovsd	%xmm4, 3072(%r15)	# D.16458, MEM[base: _2210, offset: 3056B]
	vmovsd	%xmm1, 3080(%r15)	# D.16458, MEM[base: _2210, offset: 3064B]
	cmpq	$224, %rcx	#, ivtmp.693
	jne	.L282	#,
	vmovsd	2696(%r13), %xmm1	# MEM[(double *)a_12(D) + 2696B], D.16458
	vxorpd	%xmm6, %xmm7, %xmm7	# wn4r, tmp1123, D.16458
	movq	%rbx, %rsi	# D.16457,
	movq	%rax, 8(%rsp)	# D.16457, %sfp
	vmovsd	2184(%r13), %xmm3	# MEM[(double *)a_12(D) + 2184B], D.16458
	vmovsd	2688(%r13), %xmm0	# MEM[(double *)a_12(D) + 2688B], D.16458
	vmovsd	2176(%r13), %xmm9	# MEM[(double *)a_12(D) + 2176B], D.16458
	vaddsd	%xmm3, %xmm1, %xmm4	# D.16458, D.16458, x0i
	vmovsd	2432(%r13), %xmm8	# MEM[(double *)a_12(D) + 2432B], D.16458
	vsubsd	%xmm1, %xmm3, %xmm3	# D.16458, D.16458, x1i
	vmovsd	2944(%r13), %xmm1	# MEM[(double *)a_12(D) + 2944B], D.16458
	vaddsd	%xmm9, %xmm0, %xmm5	# D.16458, D.16458, x0r
	vmovsd	2952(%r13), %xmm2	# MEM[(double *)a_12(D) + 2952B], D.16458
	vsubsd	%xmm0, %xmm9, %xmm9	# D.16458, D.16458, x1r
	vmovsd	2440(%r13), %xmm0	# MEM[(double *)a_12(D) + 2440B], D.16458
	vaddsd	%xmm8, %xmm1, %xmm10	# D.16458, D.16458, x2r
	vsubsd	%xmm1, %xmm8, %xmm8	# D.16458, D.16458, x3r
	vaddsd	%xmm0, %xmm2, %xmm11	# D.16458, D.16458, x2i
	vsubsd	%xmm2, %xmm0, %xmm2	# D.16458, D.16458, x3i
	vaddsd	%xmm5, %xmm10, %xmm0	# x0r, x2r, D.16458
	vaddsd	%xmm3, %xmm8, %xmm1	# x1i, x3r, x0i
	vsubsd	%xmm10, %xmm5, %xmm5	# x2r, x0r, D.16458
	vmovsd	%xmm0, 2176(%r13)	# D.16458, MEM[(double *)a_12(D) + 2176B]
	vaddsd	%xmm4, %xmm11, %xmm0	# x0i, x2i, D.16458
	vsubsd	%xmm11, %xmm4, %xmm4	# x2i, x0i, D.16458
	vmovsd	%xmm5, 2432(%r13)	# D.16458, MEM[(double *)a_12(D) + 2432B]
	vmovsd	%xmm0, 2184(%r13)	# D.16458, MEM[(double *)a_12(D) + 2184B]
	vmovsd	%xmm4, 2440(%r13)	# D.16458, MEM[(double *)a_12(D) + 2440B]
	vsubsd	%xmm2, %xmm9, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm1, %xmm4, %xmm0	# x0i, x0r, D.16458
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.16458
	vmulsd	%xmm0, %xmm6, %xmm0	# D.16458, wn4r, D.16458
	vmulsd	%xmm1, %xmm6, %xmm1	# D.16458, wn4r, D.16458
	vmovsd	%xmm0, 2688(%r13)	# D.16458, MEM[(double *)a_12(D) + 2688B]
	vaddsd	%xmm9, %xmm2, %xmm0	# x1r, x3i, x0r
	vmovsd	%xmm1, 2696(%r13)	# D.16458, MEM[(double *)a_12(D) + 2696B]
	vsubsd	%xmm8, %xmm3, %xmm1	# x3r, x1i, x0i
	vaddsd	%xmm0, %xmm1, %xmm2	# x0r, x0i, D.16458
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.16458
	vmulsd	%xmm2, %xmm7, %xmm7	# D.16458, D.16458, D.16458
	vmulsd	%xmm0, %xmm6, %xmm0	# D.16458, wn4r, D.16458
	vmovsd	%xmm7, 2944(%r13)	# D.16458, MEM[(double *)a_12(D) + 2944B]
	vmovsd	%xmm0, 2952(%r13)	# D.16458, MEM[(double *)a_12(D) + 2952B]
	call	cftf161	#
	leaq	2304(%r13), %rdi	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	call	cftf162	#
	leaq	2560(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf161	#
	leaq	2816(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf161	#
	testl	%r12d, %r12d	# isplt
	movq	8(%rsp), %rax	# %sfp, D.16457
	leaq	3072(%r13), %r12	#, D.16457
	jne	.L296	#,
	movq	%r12, %rsi	# D.16457,
	movl	$128, %edi	#,
	movq	%r14, %rdx	# D.16457,
	call	cftmdl2	#
	leaq	3840(%r13), %rdi	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	call	cftf162	#
.L284:
	movq	%rbx, %rsi	# D.16457,
	movq	%r12, %rdi	# D.16457,
	call	cftf161	#
	leaq	3328(%r13), %rdi	#, D.16457
	movq	%rbp, %rsi	# D.16457,
	call	cftf162	#
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rsi	# D.16457,
	leaq	3584(%r13), %rdi	#, D.16457
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	jmp	cftf161	#
	.p2align 4,,10
	.p2align 3
.L296:
	.cfi_restore_state
	movq	%r12, %rsi	# D.16457,
	movq	%rax, %rdx	# D.16457,
	movl	$128, %edi	#,
	call	cftmdl1	#
	leaq	3840(%r13), %rdi	#, D.16457
	movq	%rbx, %rsi	# D.16457,
	call	cftf161	#
	jmp	.L284	#
	.cfi_endproc
.LFE69:
	.size	cftleaf, .-cftleaf
	.section	.text.unlikely
.LCOLDE39:
	.text
.LHOTE39:
	.section	.text.unlikely
.LCOLDB40:
	.text
.LHOTB40:
	.p2align 4,,15
	.globl	cftrec4
	.type	cftrec4, @function
cftrec4:
.LFB67:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edi, %r14d	# n, n
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d	# nw, nw
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp	# w, w
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
	movq	%rsi, 24(%rsp)	# a, %sfp
	cmpl	$512, %edi	#, n
	jle	.L308	#,
	movl	%edi, %r13d	# n, n
	.p2align 4,,10
	.p2align 3
.L299:
	movq	24(%rsp), %rcx	# %sfp, a
	sarl	$2, %r13d	#, n
	movl	%r14d, %ebx	# n, D.16708
	subl	%r13d, %ebx	# n, D.16708
	movl	%r13d, %edi	# n,
	movslq	%ebx, %rax	# D.16708, D.16709
	leaq	(%rcx,%rax,8), %r15	#, D.16710
	movl	%r13d, %eax	# n, D.16708
	movl	%r12d, %ecx	# nw, D.16708
	sarl	%eax	# D.16708
	movq	%r15, %rsi	# D.16710,
	subl	%eax, %ecx	# D.16708, D.16708
	movslq	%ecx, %rax	# D.16708,
	leaq	0(%rbp,%rax,8), %rdx	#, D.16710
	call	cftmdl1	#
	cmpl	$512, %r13d	#, n
	jg	.L299	#,
.L298:
	cmpl	$512, %r13d	#, n
	je	.L316	#,
	movslq	%r12d, %rax	# nw, D.16709
	movq	%r15, %rdi	# D.16710,
	salq	$3, %rax	#, D.16709
	movq	%rax, %r14	# D.16709, D.16709
	leaq	-256(%rbp,%rax), %rax	#, D.16710
	movq	%rax, %rsi	# D.16710,
	movq	%rax, 56(%rsp)	# D.16710, %sfp
	call	cftmdl1.constprop.5	#
	movq	%r14, 8(%rsp)	# D.16709, %sfp
	leaq	-64(%rbp,%r14), %r14	#, D.16710
	movq	%r15, %rdi	# D.16710,
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
	leaq	128(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf082	#
	leaq	256(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
	leaq	384(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
	movq	8(%rsp), %rax	# %sfp, D.16709
	movq	%r15, %rdx	# D.16710, ivtmp.963
	xorl	%esi, %esi	# ivtmp.940
	vmovsd	512(%r15), %xmm0	# MEM[(double *)_1382 + 512B], D.16712
	leaq	512(%r15), %rdi	#, D.16710
	vmovsd	768(%r15), %xmm1	# MEM[(double *)_1382 + 768B], D.16712
	vmovsd	776(%r15), %xmm5	# MEM[(double *)_1382 + 776B], D.16712
	vmovsd	520(%r15), %xmm4	# MEM[(double *)_1382 + 520B], D.16712
	leaq	-512(%rbp,%rax), %r9	#, D.16710
	movq	%r15, %rax	# D.16710, ivtmp.953
	vsubsd	%xmm5, %xmm0, %xmm10	# D.16712, D.16712, x0r
	vmovsd	8(%r9), %xmm8	# MEM[(double *)_73 + 8B], wn4r
	movq	%r9, %r8	# D.16710, ivtmp.947
	vmovsd	896(%r15), %xmm7	# MEM[(double *)_1382 + 896B], D.16712
	vaddsd	%xmm4, %xmm1, %xmm9	# D.16712, D.16712, x0i
	vmovsd	648(%r15), %xmm11	# MEM[(double *)_1382 + 648B], D.16712
	vaddsd	%xmm0, %xmm5, %xmm5	# D.16712, D.16712, x1r
	vmovsd	640(%r15), %xmm0	# MEM[(double *)_1382 + 640B], D.16712
	vsubsd	%xmm1, %xmm4, %xmm4	# D.16712, D.16712, x1i
	vmovsd	904(%r15), %xmm1	# MEM[(double *)_1382 + 904B], D.16712
	vaddsd	%xmm11, %xmm7, %xmm3	# D.16712, D.16712, x2i
	vsubsd	%xmm1, %xmm0, %xmm2	# D.16712, D.16712, x2r
	vaddsd	%xmm0, %xmm1, %xmm6	# D.16712, D.16712, x3r
	vsubsd	%xmm7, %xmm11, %xmm1	# D.16712, D.16712, x3i
	vsubsd	%xmm3, %xmm2, %xmm7	# x2i, x2r, D.16712
	vaddsd	%xmm2, %xmm3, %xmm3	# x2r, x2i, D.16712
	vmulsd	%xmm8, %xmm7, %xmm7	# wn4r, D.16712, y0r
	vmulsd	%xmm8, %xmm3, %xmm2	# wn4r, D.16712, y0i
	vaddsd	%xmm10, %xmm7, %xmm0	# x0r, y0r, D.16712
	vsubsd	%xmm7, %xmm10, %xmm3	# y0r, x0r, D.16712
	vmovsd	%xmm0, 512(%r15)	# D.16712, MEM[(double *)_1382 + 512B]
	vaddsd	%xmm9, %xmm2, %xmm0	# x0i, y0i, D.16712
	vmovsd	%xmm3, 640(%r15)	# D.16712, MEM[(double *)_1382 + 640B]
	vsubsd	%xmm2, %xmm9, %xmm2	# y0i, x0i, D.16712
	vmovsd	%xmm0, 520(%r15)	# D.16712, MEM[(double *)_1382 + 520B]
	vmovsd	%xmm2, 648(%r15)	# D.16712, MEM[(double *)_1382 + 648B]
	vsubsd	%xmm1, %xmm6, %xmm2	# x3i, x3r, D.16712
	vaddsd	%xmm6, %xmm1, %xmm1	# x3r, x3i, D.16712
	vmulsd	%xmm8, %xmm2, %xmm2	# wn4r, D.16712, y0r
	vmulsd	%xmm8, %xmm1, %xmm0	# wn4r, D.16712, y0i
	vsubsd	%xmm0, %xmm5, %xmm1	# y0i, x1r, D.16712
	vaddsd	%xmm5, %xmm0, %xmm0	# x1r, y0i, D.16712
	vmovsd	%xmm1, 768(%r15)	# D.16712, MEM[(double *)_1382 + 768B]
	vaddsd	%xmm4, %xmm2, %xmm1	# x1i, y0r, D.16712
	vmovsd	%xmm0, 896(%r15)	# D.16712, MEM[(double *)_1382 + 896B]
	vsubsd	%xmm2, %xmm4, %xmm4	# y0r, x1i, D.16712
	vmovsd	%xmm1, 776(%r15)	# D.16712, MEM[(double *)_1382 + 776B]
	vmovsd	%xmm4, 904(%r15)	# D.16712, MEM[(double *)_1382 + 904B]
	.p2align 4,,10
	.p2align 3
.L304:
	vmovsd	792(%rax), %xmm8	# MEM[base: _177, offset: 792B], D.16712
	subq	$32, %r8	#, ivtmp.947
	addq	$16, %rax	#, ivtmp.953
	subq	$16, %rdx	#, ivtmp.963
	vmovsd	280(%r8), %xmm0	# MEM[base: _241, offset: 248B], wd3r
	vmovsd	512(%rax), %xmm2	# MEM[base: _177, offset: 528B], D.16712
	vmovsd	520(%rax), %xmm10	# MEM[base: _177, offset: 536B], D.16712
	vmovsd	%xmm0, 16(%rsp)	# wd3r, %sfp
	vsubsd	%xmm8, %xmm2, %xmm12	# D.16712, D.16712, x0r
	vmovsd	768(%rax), %xmm0	# MEM[base: _177, offset: 784B], D.16712
	vaddsd	%xmm2, %xmm8, %xmm2	# D.16712, D.16712, x1r
	vmovsd	32(%r9,%rsi), %xmm1	# MEM[base: _73, index: ivtmp.940_651, offset: 32B], wk1r
	vaddsd	%xmm10, %xmm0, %xmm11	# D.16712, D.16712, x0i
	vmovsd	40(%r9,%rsi), %xmm5	# MEM[base: _73, index: ivtmp.940_651, offset: 40B], wk1i
	vmovsd	904(%rax), %xmm13	# MEM[base: _177, offset: 920B], D.16712
	vsubsd	%xmm0, %xmm10, %xmm15	# D.16712, D.16712, x1i
	vmulsd	%xmm1, %xmm12, %xmm14	# wk1r, x0r, D.16712
	vmovsd	%xmm2, 32(%rsp)	# x1r, %sfp
	vmovsd	640(%rax), %xmm2	# MEM[base: _177, offset: 656B], D.16712
	vmulsd	%xmm5, %xmm12, %xmm12	# wk1i, x0r, D.16712
	vmovsd	648(%rax), %xmm8	# MEM[base: _177, offset: 664B], D.16712
	vmovsd	896(%rax), %xmm0	# MEM[base: _177, offset: 912B], D.16712
	vsubsd	%xmm13, %xmm2, %xmm6	# D.16712, D.16712, x2r
	vmovsd	%xmm15, 48(%rsp)	# x1i, %sfp
	vaddsd	%xmm2, %xmm13, %xmm2	# D.16712, D.16712, x3r
	vmulsd	%xmm5, %xmm11, %xmm13	# wk1i, x0i, D.16712
	vmovsd	48(%r9,%rsi), %xmm7	# MEM[base: _73, index: ivtmp.940_651, offset: 48B], wk3r
	vaddsd	%xmm8, %xmm0, %xmm10	# D.16712, D.16712, x2i
	vmovsd	56(%r9,%rsi), %xmm9	# MEM[base: _73, index: ivtmp.940_651, offset: 56B], wk3i
	addq	$32, %rsi	#, ivtmp.940
	vmovsd	264(%r8), %xmm4	# MEM[base: _241, offset: 232B], wd1r
	vmovsd	%xmm7, 8(%rsp)	# wk3r, %sfp
	vsubsd	%xmm0, %xmm8, %xmm0	# D.16712, D.16712, x3i
	vmulsd	%xmm1, %xmm11, %xmm8	# wk1r, x0i, D.16712
	vmovsd	256(%r8), %xmm7	# MEM[base: _241, offset: 224B], wd1i
	vmovsd	272(%r8), %xmm3	# MEM[base: _241, offset: 240B], wd3i
	vsubsd	%xmm13, %xmm14, %xmm14	# D.16712, D.16712, y0r
	vmulsd	%xmm7, %xmm10, %xmm11	# wd1i, x2i, D.16712
	vmulsd	%xmm4, %xmm6, %xmm13	# wd1r, x2r, D.16712
	vmulsd	%xmm4, %xmm10, %xmm10	# wd1r, x2i, D.16712
	vaddsd	%xmm8, %xmm12, %xmm8	# D.16712, D.16712, y0i
	vmulsd	%xmm7, %xmm6, %xmm6	# wd1i, x2r, D.16712
	vsubsd	%xmm11, %xmm13, %xmm13	# D.16712, D.16712, y2r
	vmovsd	48(%rsp), %xmm11	# %sfp, x1i
	vaddsd	%xmm10, %xmm6, %xmm12	# D.16712, D.16712, y2i
	vaddsd	%xmm14, %xmm13, %xmm15	# y0r, y2r, D.16712
	vsubsd	%xmm13, %xmm14, %xmm13	# y2r, y0r, D.16712
	vmovsd	16(%rsp), %xmm14	# %sfp, wd3r
	vmovsd	%xmm15, 512(%rax)	# D.16712, MEM[base: _177, offset: 528B]
	vaddsd	%xmm8, %xmm12, %xmm15	# y0i, y2i, D.16712
	vsubsd	%xmm12, %xmm8, %xmm12	# y2i, y0i, D.16712
	vmovsd	%xmm13, 640(%rax)	# D.16712, MEM[base: _177, offset: 656B]
	vmovsd	32(%rsp), %xmm13	# %sfp, x1r
	vmovsd	%xmm15, 520(%rax)	# D.16712, MEM[base: _177, offset: 536B]
	vmovsd	8(%rsp), %xmm15	# %sfp, wk3r
	vmulsd	%xmm13, %xmm9, %xmm8	# x1r, wk3i, D.16712
	vmovsd	%xmm12, 648(%rax)	# D.16712, MEM[base: _177, offset: 664B]
	vmulsd	%xmm11, %xmm9, %xmm12	# x1i, wk3i, D.16712
	vmulsd	%xmm15, %xmm13, %xmm6	# wk3r, x1r, D.16712
	vmulsd	%xmm11, %xmm15, %xmm10	# x1i, wk3r, D.16712
	vaddsd	%xmm6, %xmm12, %xmm12	# D.16712, D.16712, y0r
	vmulsd	%xmm14, %xmm2, %xmm6	# wd3r, x3r, D.16712
	vsubsd	%xmm8, %xmm10, %xmm10	# D.16712, D.16712, y0i
	vmulsd	%xmm3, %xmm0, %xmm8	# wd3i, x3i, D.16712
	vmulsd	%xmm3, %xmm2, %xmm2	# wd3i, x3r, D.16712
	vaddsd	%xmm6, %xmm8, %xmm6	# D.16712, D.16712, y2r
	vmulsd	%xmm14, %xmm0, %xmm8	# wd3r, x3i, D.16712
	vaddsd	%xmm12, %xmm6, %xmm11	# y0r, y2r, D.16712
	vsubsd	%xmm6, %xmm12, %xmm12	# y2r, y0r, D.16712
	vsubsd	%xmm2, %xmm8, %xmm8	# D.16712, D.16712, y2i
	vmovsd	%xmm11, 768(%rax)	# D.16712, MEM[base: _177, offset: 784B]
	vmovsd	%xmm12, 896(%rax)	# D.16712, MEM[base: _177, offset: 912B]
	vaddsd	%xmm10, %xmm8, %xmm11	# y0i, y2i, D.16712
	vsubsd	%xmm8, %xmm10, %xmm8	# y2i, y0i, D.16712
	vmovsd	%xmm11, 776(%rax)	# D.16712, MEM[base: _177, offset: 792B]
	vmovsd	%xmm8, 904(%rax)	# D.16712, MEM[base: _177, offset: 920B]
	vmovsd	640(%rdx), %xmm8	# MEM[base: _1718, offset: 624B], D.16712
	vmovsd	904(%rdx), %xmm10	# MEM[base: _1718, offset: 888B], D.16712
	vmovsd	896(%rdx), %xmm0	# MEM[base: _1718, offset: 880B], D.16712
	vmovsd	648(%rdx), %xmm6	# MEM[base: _1718, offset: 632B], D.16712
	vsubsd	%xmm10, %xmm8, %xmm2	# D.16712, D.16712, x0r
	vmovsd	1032(%rdx), %xmm15	# MEM[base: _1718, offset: 1016B], D.16712
	vaddsd	%xmm8, %xmm10, %xmm10	# D.16712, D.16712, x1r
	vaddsd	%xmm6, %xmm0, %xmm13	# D.16712, D.16712, x0i
	vmovsd	776(%rdx), %xmm14	# MEM[base: _1718, offset: 760B], D.16712
	vsubsd	%xmm0, %xmm6, %xmm6	# D.16712, D.16712, x1i
	vmovsd	768(%rdx), %xmm8	# MEM[base: _1718, offset: 752B], D.16712
	vmovsd	1024(%rdx), %xmm0	# MEM[base: _1718, offset: 1008B], D.16712
	vsubsd	%xmm15, %xmm8, %xmm11	# D.16712, D.16712, x2r
	vaddsd	%xmm14, %xmm0, %xmm12	# D.16712, D.16712, x2i
	vaddsd	%xmm8, %xmm15, %xmm8	# D.16712, D.16712, x3r
	vmulsd	%xmm7, %xmm2, %xmm15	# wd1i, x0r, D.16712
	vsubsd	%xmm0, %xmm14, %xmm0	# D.16712, D.16712, x3i
	vmulsd	%xmm4, %xmm2, %xmm2	# wd1r, x0r, D.16712
	vmulsd	%xmm4, %xmm13, %xmm14	# wd1r, x0i, D.16712
	vmulsd	%xmm7, %xmm13, %xmm7	# wd1i, x0i, D.16712
	vsubsd	%xmm14, %xmm15, %xmm14	# D.16712, D.16712, y0r
	vmulsd	%xmm1, %xmm12, %xmm15	# wk1r, x2i, D.16712
	vaddsd	%xmm7, %xmm2, %xmm2	# D.16712, D.16712, y0i
	vmulsd	%xmm5, %xmm11, %xmm7	# wk1i, x2r, D.16712
	vmulsd	%xmm1, %xmm11, %xmm1	# wk1r, x2r, D.16712
	vmulsd	%xmm5, %xmm12, %xmm5	# wk1i, x2i, D.16712
	vsubsd	%xmm15, %xmm7, %xmm7	# D.16712, D.16712, y2r
	vaddsd	%xmm5, %xmm1, %xmm4	# D.16712, D.16712, y2i
	vmulsd	%xmm3, %xmm10, %xmm1	# wd3i, x1r, D.16712
	vaddsd	%xmm14, %xmm7, %xmm5	# y0r, y2r, D.16712
	vmulsd	%xmm3, %xmm6, %xmm3	# wd3i, x1i, D.16712
	vsubsd	%xmm7, %xmm14, %xmm15	# y2r, y0r, D.16712
	vmovsd	16(%rsp), %xmm14	# %sfp, wd3r
	vmovsd	%xmm5, 640(%rdx)	# D.16712, MEM[base: _1718, offset: 624B]
	vaddsd	%xmm2, %xmm4, %xmm5	# y0i, y2i, D.16712
	vmulsd	%xmm14, %xmm10, %xmm10	# wd3r, x1r, D.16712
	vsubsd	%xmm4, %xmm2, %xmm4	# y2i, y0i, D.16712
	vmulsd	%xmm9, %xmm8, %xmm2	# wk3i, x3r, D.16712
	vmovsd	%xmm15, 768(%rdx)	# D.16712, MEM[base: _1718, offset: 752B]
	vmovsd	%xmm5, 648(%rdx)	# D.16712, MEM[base: _1718, offset: 632B]
	vmovsd	%xmm4, 776(%rdx)	# D.16712, MEM[base: _1718, offset: 760B]
	vmulsd	%xmm14, %xmm6, %xmm4	# wd3r, x1i, D.16712
	vmovsd	8(%rsp), %xmm6	# %sfp, wk3r
	vsubsd	%xmm10, %xmm3, %xmm3	# D.16712, D.16712, y0i
	vmulsd	%xmm6, %xmm8, %xmm8	# wk3r, x3r, D.16712
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16712, D.16712, y0r
	vmulsd	%xmm6, %xmm0, %xmm1	# wk3r, x3i, D.16712
	vaddsd	%xmm2, %xmm1, %xmm2	# D.16712, D.16712, y2r
	vmulsd	%xmm9, %xmm0, %xmm1	# wk3i, x3i, D.16712
	vaddsd	%xmm4, %xmm2, %xmm0	# y0r, y2r, D.16712
	vsubsd	%xmm2, %xmm4, %xmm2	# y2r, y0r, D.16712
	vsubsd	%xmm8, %xmm1, %xmm1	# D.16712, D.16712, y2i
	vmovsd	%xmm0, 896(%rdx)	# D.16712, MEM[base: _1718, offset: 880B]
	vmovsd	%xmm2, 1024(%rdx)	# D.16712, MEM[base: _1718, offset: 1008B]
	vaddsd	%xmm3, %xmm1, %xmm0	# y0i, y2i, D.16712
	vsubsd	%xmm1, %xmm3, %xmm1	# y2i, y0i, D.16712
	vmovsd	%xmm0, 904(%rdx)	# D.16712, MEM[base: _1718, offset: 888B]
	vmovsd	%xmm1, 1032(%rdx)	# D.16712, MEM[base: _1718, offset: 1016B]
	cmpq	$96, %rsi	#, ivtmp.940
	jne	.L304	#,
	vmovsd	576(%r15), %xmm0	# MEM[(double *)_1382 + 576B], D.16712
	movq	%r14, %rsi	# D.16710,
	vmovsd	832(%r15), %xmm1	# MEM[(double *)_1382 + 832B], D.16712
	vmovsd	840(%r15), %xmm3	# MEM[(double *)_1382 + 840B], D.16712
	vmovsd	584(%r15), %xmm8	# MEM[(double *)_1382 + 584B], D.16712
	vmovsd	128(%r9), %xmm6	# MEM[(double *)_73 + 128B], wk1r
	vsubsd	%xmm3, %xmm0, %xmm2	# D.16712, D.16712, x0r
	vmovsd	136(%r9), %xmm7	# MEM[(double *)_73 + 136B], wk1i
	vaddsd	%xmm8, %xmm1, %xmm9	# D.16712, D.16712, x0i
	vmovsd	960(%r15), %xmm5	# MEM[(double *)_1382 + 960B], D.16712
	vaddsd	%xmm0, %xmm3, %xmm3	# D.16712, D.16712, x1r
	vmovsd	712(%r15), %xmm0	# MEM[(double *)_1382 + 712B], D.16712
	vsubsd	%xmm1, %xmm8, %xmm8	# D.16712, D.16712, x1i
	vmovsd	968(%r15), %xmm10	# MEM[(double *)_1382 + 968B], D.16712
	vmulsd	%xmm7, %xmm9, %xmm12	# wk1i, x0i, D.16712
	vmovsd	704(%r15), %xmm1	# MEM[(double *)_1382 + 704B], D.16712
	vmulsd	%xmm6, %xmm9, %xmm9	# wk1r, x0i, D.16712
	vaddsd	%xmm0, %xmm5, %xmm4	# D.16712, D.16712, x2i
	vsubsd	%xmm5, %xmm0, %xmm0	# D.16712, D.16712, x3i
	vmulsd	%xmm6, %xmm2, %xmm5	# wk1r, x0r, D.16712
	vmulsd	%xmm7, %xmm2, %xmm2	# wk1i, x0r, D.16712
	vsubsd	%xmm10, %xmm1, %xmm11	# D.16712, D.16712, x2r
	vaddsd	%xmm1, %xmm10, %xmm1	# D.16712, D.16712, x3r
	vsubsd	%xmm12, %xmm5, %xmm10	# D.16712, D.16712, y0r
	vmulsd	%xmm6, %xmm4, %xmm5	# wk1r, x2i, D.16712
	vaddsd	%xmm9, %xmm2, %xmm2	# D.16712, D.16712, y0i
	vmulsd	%xmm7, %xmm11, %xmm9	# wk1i, x2r, D.16712
	vmulsd	%xmm7, %xmm4, %xmm4	# wk1i, x2i, D.16712
	vsubsd	%xmm5, %xmm9, %xmm9	# D.16712, D.16712, y2r
	vmulsd	%xmm6, %xmm11, %xmm5	# wk1r, x2r, D.16712
	vaddsd	%xmm4, %xmm5, %xmm4	# D.16712, D.16712, y2i
	vaddsd	%xmm10, %xmm9, %xmm5	# y0r, y2r, D.16712
	vmovsd	%xmm5, 576(%r15)	# D.16712, MEM[(double *)_1382 + 576B]
	vaddsd	%xmm2, %xmm4, %xmm5	# y0i, y2i, D.16712
	vsubsd	%xmm4, %xmm2, %xmm4	# y2i, y0i, D.16712
	vmulsd	%xmm6, %xmm8, %xmm2	# wk1r, x1i, D.16712
	vmovsd	%xmm5, 584(%r15)	# D.16712, MEM[(double *)_1382 + 584B]
	vsubsd	%xmm9, %xmm10, %xmm5	# y2r, y0r, D.16712
	vmovsd	%xmm4, 712(%r15)	# D.16712, MEM[(double *)_1382 + 712B]
	vmulsd	%xmm7, %xmm3, %xmm4	# wk1i, x1r, D.16712
	vmulsd	%xmm6, %xmm3, %xmm3	# wk1r, x1r, D.16712
	vmovsd	%xmm5, 704(%r15)	# D.16712, MEM[(double *)_1382 + 704B]
	vmulsd	%xmm7, %xmm0, %xmm5	# wk1i, x3i, D.16712
	vmulsd	%xmm6, %xmm0, %xmm0	# wk1r, x3i, D.16712
	vsubsd	%xmm2, %xmm4, %xmm4	# D.16712, D.16712, y0r
	vmulsd	%xmm7, %xmm8, %xmm2	# wk1i, x1i, D.16712
	vaddsd	%xmm2, %xmm3, %xmm2	# D.16712, D.16712, y0i
	vmulsd	%xmm6, %xmm1, %xmm3	# wk1r, x3r, D.16712
	vmulsd	%xmm7, %xmm1, %xmm1	# wk1i, x3r, D.16712
	vsubsd	%xmm5, %xmm3, %xmm3	# D.16712, D.16712, y2r
	vaddsd	%xmm0, %xmm1, %xmm0	# D.16712, D.16712, y2i
	vsubsd	%xmm3, %xmm4, %xmm1	# y2r, y0r, D.16712
	vaddsd	%xmm4, %xmm3, %xmm3	# y0r, y2r, D.16712
	vmovsd	%xmm1, 832(%r15)	# D.16712, MEM[(double *)_1382 + 832B]
	vsubsd	%xmm0, %xmm2, %xmm1	# y2i, y0i, D.16712
	vmovsd	%xmm3, 960(%r15)	# D.16712, MEM[(double *)_1382 + 960B]
	vaddsd	%xmm2, %xmm0, %xmm0	# y0i, y2i, D.16712
	vmovsd	%xmm1, 840(%r15)	# D.16712, MEM[(double *)_1382 + 840B]
	vmovsd	%xmm0, 968(%r15)	# D.16712, MEM[(double *)_1382 + 968B]
	call	cftf081	#
	leaq	640(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf082	#
	leaq	768(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
	leaq	896(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf082	#
	movq	56(%rsp), %rsi	# %sfp,
	leaq	1024(%r15), %rax	#, D.16710
	movq	%rax, %rdi	# D.16710,
	movq	%rax, 8(%rsp)	# D.16710, %sfp
	call	cftmdl1.constprop.5	#
	movq	8(%rsp), %rax	# %sfp, D.16710
	movq	%r14, %rsi	# D.16710,
	movq	%rax, %rdi	# D.16710,
	call	cftf081	#
	leaq	1152(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf082	#
	leaq	1280(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
	leaq	1408(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
	movq	56(%rsp), %rsi	# %sfp,
	leaq	1536(%r15), %rax	#, D.16710
	movq	%rax, %rdi	# D.16710,
	movq	%rax, 8(%rsp)	# D.16710, %sfp
	call	cftmdl1.constprop.5	#
	leaq	1920(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
	movq	8(%rsp), %rax	# %sfp, D.16710
	movq	%r14, %rsi	# D.16710,
	movq	%rax, %rdi	# D.16710,
	call	cftf081	#
	leaq	1664(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf082	#
	leaq	1792(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf081	#
.L305:
	testl	%ebx, %ebx	# j
	jle	.L314	#,
	movl	%r13d, %r15d	# n, D.16708
	movq	24(%rsp), %rcx	# %sfp, a
	movslq	%r13d, %rdx	# n, D.16709
	negl	%r15d	# D.16708
	movslq	%r15d, %r15	# D.16708, D.16709
	leaq	0(,%r15,8), %rax	#, D.16709
	xorl	%r15d, %r15d	# k
	movq	%rax, 8(%rsp)	# D.16709, %sfp
	movslq	%ebx, %rax	# j, D.16709
	subq	%rdx, %rax	# D.16709, D.16709
	leaq	(%rcx,%rax,8), %r14	#, ivtmp.852
	.p2align 4,,10
	.p2align 3
.L306:
	movq	24(%rsp), %rcx	# %sfp,
	addl	$1, %r15d	#, k
	movl	%ebx, %esi	# j,
	movq	%rbp, %r9	# w,
	movl	%r12d, %r8d	# nw,
	movl	%r15d, %edx	# k,
	movl	%r13d, %edi	# n,
	subl	%r13d, %ebx	# n, j
	call	cfttree	#
	movq	%r14, %rdx	# ivtmp.852,
	movq	%rbp, %r8	# w,
	movl	%r12d, %ecx	# nw,
	movl	%eax, %esi	# isplt,
	movl	%r13d, %edi	# n,
	call	cftleaf	#
	addq	8(%rsp), %r14	# %sfp, ivtmp.852
	testl	%ebx, %ebx	# j
	jg	.L306	#,
.L314:
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L316:
	.cfi_restore_state
	vmovsd	8(%r15), %xmm3	# MEM[(double *)_1382 + 8B], D.16712
	movslq	%r12d, %rdx	# nw, D.16709
	movq	%r15, %rax	# D.16710, ivtmp.882
	movq	%r15, %rdi	# D.16710, ivtmp.918
	vmovsd	(%r15), %xmm9	# *_1382, D.16712
	salq	$3, %rdx	#, D.16709
	movq	%r15, %rsi	# D.16710, ivtmp.908
	xorl	%r9d, %r9d	# ivtmp.901
	vmovsd	520(%r15), %xmm0	# MEM[(double *)_1382 + 520B], D.16712
	leaq	-512(%rbp,%rdx), %r8	#, D.16710
	vmovsd	512(%r15), %xmm1	# MEM[(double *)_1382 + 512B], D.16712
	vmovsd	256(%r15), %xmm7	# MEM[(double *)_1382 + 256B], D.16712
	vaddsd	%xmm3, %xmm0, %xmm10	# D.16712, D.16712, x0i
	vmovsd	264(%r15), %xmm2	# MEM[(double *)_1382 + 264B], D.16712
	vsubsd	%xmm0, %xmm3, %xmm0	# D.16712, D.16712, x1i
	vmovsd	768(%r15), %xmm3	# MEM[(double *)_1382 + 768B], D.16712
	vaddsd	%xmm9, %xmm1, %xmm8	# D.16712, D.16712, x0r
	vmovsd	776(%r15), %xmm6	# MEM[(double *)_1382 + 776B], D.16712
	vsubsd	%xmm1, %xmm9, %xmm9	# D.16712, D.16712, x1r
	vaddsd	%xmm7, %xmm3, %xmm4	# D.16712, D.16712, x2r
	vaddsd	%xmm2, %xmm6, %xmm5	# D.16712, D.16712, x2i
	vsubsd	%xmm6, %xmm2, %xmm1	# D.16712, D.16712, x3i
	vaddsd	%xmm8, %xmm4, %xmm2	# x0r, x2r, D.16712
	vsubsd	%xmm3, %xmm7, %xmm3	# D.16712, D.16712, x3r
	vsubsd	%xmm4, %xmm8, %xmm4	# x2r, x0r, D.16712
	vmovsd	%xmm2, (%r15)	# D.16712, *_1382
	vaddsd	%xmm10, %xmm5, %xmm2	# x0i, x2i, D.16712
	vmovsd	%xmm4, 256(%r15)	# D.16712, MEM[(double *)_1382 + 256B]
	vmovsd	%xmm2, 8(%r15)	# D.16712, MEM[(double *)_1382 + 8B]
	vsubsd	%xmm5, %xmm10, %xmm2	# x2i, x0i, D.16712
	vmovsd	%xmm2, 264(%r15)	# D.16712, MEM[(double *)_1382 + 264B]
	vsubsd	%xmm1, %xmm9, %xmm2	# x3i, x1r, D.16712
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, D.16712
	vmovsd	%xmm2, 512(%r15)	# D.16712, MEM[(double *)_1382 + 512B]
	vaddsd	%xmm0, %xmm3, %xmm2	# x1i, x3r, D.16712
	vmovsd	%xmm1, 768(%r15)	# D.16712, MEM[(double *)_1382 + 768B]
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, D.16712
	vmovsd	%xmm2, 520(%r15)	# D.16712, MEM[(double *)_1382 + 520B]
	vmovsd	%xmm0, 776(%r15)	# D.16712, MEM[(double *)_1382 + 776B]
	vmovsd	8(%r8), %xmm6	# MEM[(double *)_38 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L301:
	vmovsd	24(%rsi), %xmm3	# MEM[base: _408, offset: 24B], D.16712
	subq	$16, %rdi	#, ivtmp.918
	addq	$16, %rsi	#, ivtmp.908
	vmovsd	520(%rsi), %xmm0	# MEM[base: _408, offset: 536B], D.16712
	vmovsd	512(%rsi), %xmm1	# MEM[base: _408, offset: 528B], D.16712
	vmovsd	256(%rsi), %xmm12	# MEM[base: _408, offset: 272B], D.16712
	vaddsd	%xmm3, %xmm0, %xmm9	# D.16712, D.16712, x0i
	vmovsd	(%rsi), %xmm5	# MEM[base: _408, offset: 16B], D.16712
	vsubsd	%xmm0, %xmm3, %xmm0	# D.16712, D.16712, x1i
	vmovsd	768(%rsi), %xmm3	# MEM[base: _408, offset: 784B], D.16712
	vaddsd	%xmm5, %xmm1, %xmm11	# D.16712, D.16712, x0r
	vmovsd	264(%rsi), %xmm7	# MEM[base: _408, offset: 280B], D.16712
	vaddsd	%xmm12, %xmm3, %xmm2	# D.16712, D.16712, x2r
	vmovsd	776(%rsi), %xmm4	# MEM[base: _408, offset: 792B], D.16712
	vsubsd	%xmm1, %xmm5, %xmm5	# D.16712, D.16712, x1r
	vmovsd	32(%r8,%r9), %xmm15	# MEM[base: _38, index: ivtmp.901_843, offset: 32B], wk1r
	vaddsd	%xmm7, %xmm4, %xmm1	# D.16712, D.16712, x2i
	vmovsd	40(%r8,%r9), %xmm14	# MEM[base: _38, index: ivtmp.901_843, offset: 40B], wk1i
	vaddsd	%xmm11, %xmm2, %xmm13	# x0r, x2r, D.16712
	vmovsd	48(%r8,%r9), %xmm8	# MEM[base: _38, index: ivtmp.901_843, offset: 48B], wk3r
	vmovsd	56(%r8,%r9), %xmm10	# MEM[base: _38, index: ivtmp.901_843, offset: 56B], wk3i
	vsubsd	%xmm3, %xmm12, %xmm3	# D.16712, D.16712, x3r
	addq	$32, %r9	#, ivtmp.901
	vsubsd	%xmm4, %xmm7, %xmm4	# D.16712, D.16712, x3i
	vmovsd	%xmm13, (%rsi)	# D.16712, MEM[base: _408, offset: 16B]
	vaddsd	%xmm9, %xmm1, %xmm13	# x0i, x2i, D.16712
	vsubsd	%xmm1, %xmm9, %xmm9	# x2i, x0i, D.16712
	vsubsd	%xmm2, %xmm11, %xmm11	# x2r, x0r, D.16712
	vaddsd	%xmm0, %xmm3, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm13, 8(%rsi)	# D.16712, MEM[base: _408, offset: 24B]
	vmovsd	%xmm9, 264(%rsi)	# D.16712, MEM[base: _408, offset: 280B]
	vsubsd	%xmm4, %xmm5, %xmm9	# x3i, x1r, x0r
	vmovsd	%xmm11, 256(%rsi)	# D.16712, MEM[base: _408, offset: 272B]
	vaddsd	%xmm5, %xmm4, %xmm5	# x1r, x3i, x0r
	vmulsd	%xmm14, %xmm1, %xmm11	# wk1i, x0i, D.16712
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm15, %xmm9, %xmm12	# wk1r, x0r, D.16712
	vmulsd	%xmm15, %xmm1, %xmm1	# wk1r, x0i, D.16712
	vmulsd	%xmm14, %xmm9, %xmm9	# wk1i, x0r, D.16712
	vmulsd	%xmm10, %xmm0, %xmm4	# wk3i, x0i, D.16712
	vmulsd	%xmm8, %xmm0, %xmm3	# wk3r, x0i, D.16712
	vsubsd	%xmm11, %xmm12, %xmm11	# D.16712, D.16712, D.16712
	vaddsd	%xmm1, %xmm9, %xmm9	# D.16712, D.16712, D.16712
	vmulsd	%xmm8, %xmm5, %xmm1	# wk3r, x0r, D.16712
	vmovsd	%xmm11, 512(%rsi)	# D.16712, MEM[base: _408, offset: 528B]
	vmovsd	%xmm9, 520(%rsi)	# D.16712, MEM[base: _408, offset: 536B]
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16712, D.16712, D.16712
	vmovsd	%xmm4, 768(%rsi)	# D.16712, MEM[base: _408, offset: 784B]
	vmulsd	%xmm10, %xmm5, %xmm4	# wk3i, x0r, D.16712
	vsubsd	%xmm4, %xmm3, %xmm2	# D.16712, D.16712, D.16712
	vmovsd	%xmm2, 776(%rsi)	# D.16712, MEM[base: _408, offset: 792B]
	vmovsd	264(%rdi), %xmm3	# MEM[base: _440, offset: 248B], D.16712
	vmovsd	776(%rdi), %xmm1	# MEM[base: _440, offset: 760B], D.16712
	vmovsd	256(%rdi), %xmm2	# MEM[base: _440, offset: 240B], D.16712
	vmovsd	512(%rdi), %xmm12	# MEM[base: _440, offset: 496B], D.16712
	vaddsd	%xmm3, %xmm1, %xmm5	# D.16712, D.16712, x0i
	vmovsd	768(%rdi), %xmm0	# MEM[base: _440, offset: 752B], D.16712
	vsubsd	%xmm1, %xmm3, %xmm3	# D.16712, D.16712, x1i
	vmovsd	1024(%rdi), %xmm1	# MEM[base: _440, offset: 1008B], D.16712
	vaddsd	%xmm2, %xmm0, %xmm11	# D.16712, D.16712, x0r
	vmovsd	520(%rdi), %xmm9	# MEM[base: _440, offset: 504B], D.16712
	vaddsd	%xmm12, %xmm1, %xmm7	# D.16712, D.16712, x2r
	vsubsd	%xmm0, %xmm2, %xmm0	# D.16712, D.16712, x1r
	vmovsd	1032(%rdi), %xmm2	# MEM[base: _440, offset: 1016B], D.16712
	vsubsd	%xmm1, %xmm12, %xmm1	# D.16712, D.16712, x3r
	vaddsd	%xmm9, %xmm2, %xmm4	# D.16712, D.16712, x2i
	vaddsd	%xmm11, %xmm7, %xmm13	# x0r, x2r, D.16712
	vsubsd	%xmm2, %xmm9, %xmm2	# D.16712, D.16712, x3i
	vsubsd	%xmm7, %xmm11, %xmm11	# x2r, x0r, D.16712
	vmovsd	%xmm13, 256(%rdi)	# D.16712, MEM[base: _440, offset: 240B]
	vaddsd	%xmm5, %xmm4, %xmm13	# x0i, x2i, D.16712
	vsubsd	%xmm2, %xmm0, %xmm7	# x3i, x1r, x0r
	vsubsd	%xmm4, %xmm5, %xmm5	# x2i, x0i, D.16712
	vmovsd	%xmm11, 512(%rdi)	# D.16712, MEM[base: _440, offset: 496B]
	vaddsd	%xmm3, %xmm1, %xmm4	# x1i, x3r, x0i
	vmovsd	%xmm13, 264(%rdi)	# D.16712, MEM[base: _440, offset: 248B]
	vaddsd	%xmm0, %xmm2, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm14, %xmm7, %xmm12	# wk1i, x0r, D.16712
	vsubsd	%xmm1, %xmm3, %xmm1	# x3r, x1i, x0i
	vmulsd	%xmm15, %xmm7, %xmm7	# wk1r, x0r, D.16712
	vmovsd	%xmm5, 520(%rdi)	# D.16712, MEM[base: _440, offset: 504B]
	vmulsd	%xmm15, %xmm4, %xmm11	# wk1r, x0i, D.16712
	vmulsd	%xmm10, %xmm2, %xmm0	# wk3i, x0r, D.16712
	vmulsd	%xmm14, %xmm4, %xmm14	# wk1i, x0i, D.16712
	vmulsd	%xmm8, %xmm2, %xmm2	# wk3r, x0r, D.16712
	vmulsd	%xmm8, %xmm1, %xmm4	# wk3r, x0i, D.16712
	vmulsd	%xmm10, %xmm1, %xmm1	# wk3i, x0i, D.16712
	vsubsd	%xmm11, %xmm12, %xmm11	# D.16712, D.16712, D.16712
	vaddsd	%xmm14, %xmm7, %xmm7	# D.16712, D.16712, D.16712
	vmovsd	%xmm11, 768(%rdi)	# D.16712, MEM[base: _440, offset: 752B]
	vaddsd	%xmm0, %xmm4, %xmm4	# D.16712, D.16712, D.16712
	vsubsd	%xmm2, %xmm1, %xmm0	# D.16712, D.16712, D.16712
	vmovsd	%xmm7, 776(%rdi)	# D.16712, MEM[base: _440, offset: 760B]
	vmovsd	%xmm4, 1024(%rdi)	# D.16712, MEM[base: _440, offset: 1008B]
	vmovsd	%xmm0, 1032(%rdi)	# D.16712, MEM[base: _440, offset: 1016B]
	cmpq	$224, %r9	#, ivtmp.901
	jne	.L301	#,
	vmovsd	648(%r15), %xmm1	# MEM[(double *)_1382 + 648B], D.16712
	leaq	-64(%rbp,%rdx), %r14	#, D.16710
	movq	%r15, %rdi	# D.16710,
	movq	%r8, 56(%rsp)	# D.16710, %sfp
	vmovsd	136(%r15), %xmm2	# MEM[(double *)_1382 + 136B], D.16712
	movq	%r14, %rsi	# D.16710,
	movq	%rax, 48(%rsp)	# ivtmp.882, %sfp
	vmovsd	640(%r15), %xmm0	# MEM[(double *)_1382 + 640B], D.16712
	movq	%rdx, 8(%rsp)	# D.16709, %sfp
	vmovsd	128(%r15), %xmm7	# MEM[(double *)_1382 + 128B], D.16712
	vaddsd	%xmm2, %xmm1, %xmm3	# D.16712, D.16712, x0i
	vmovsd	384(%r15), %xmm5	# MEM[(double *)_1382 + 384B], D.16712
	vsubsd	%xmm1, %xmm2, %xmm2	# D.16712, D.16712, x1i
	vmovsd	896(%r15), %xmm1	# MEM[(double *)_1382 + 896B], D.16712
	vaddsd	%xmm7, %xmm0, %xmm4	# D.16712, D.16712, x0r
	vmovsd	904(%r15), %xmm10	# MEM[(double *)_1382 + 904B], D.16712
	vsubsd	%xmm0, %xmm7, %xmm7	# D.16712, D.16712, x1r
	vmovsd	392(%r15), %xmm0	# MEM[(double *)_1382 + 392B], D.16712
	vaddsd	%xmm5, %xmm1, %xmm9	# D.16712, D.16712, x2r
	vsubsd	%xmm1, %xmm5, %xmm5	# D.16712, D.16712, x3r
	vaddsd	%xmm0, %xmm10, %xmm8	# D.16712, D.16712, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.16712
	vsubsd	%xmm10, %xmm0, %xmm0	# D.16712, D.16712, x3i
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.16712
	vmovsd	%xmm1, 128(%r15)	# D.16712, MEM[(double *)_1382 + 128B]
	vaddsd	%xmm3, %xmm8, %xmm1	# x0i, x2i, D.16712
	vsubsd	%xmm8, %xmm3, %xmm3	# x2i, x0i, D.16712
	vmovsd	%xmm4, 384(%r15)	# D.16712, MEM[(double *)_1382 + 384B]
	vsubsd	%xmm0, %xmm7, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 136(%r15)	# D.16712, MEM[(double *)_1382 + 136B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 392(%r15)	# D.16712, MEM[(double *)_1382 + 392B]
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, x3i, x0r
	vmovsd	.LC13(%rip), %xmm7	#, tmp876
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.16712
	vmovaps	%xmm7, 32(%rsp)	# tmp876, %sfp
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.16712
	vmulsd	%xmm6, %xmm3, %xmm3	# wn4r, D.16712, D.16712
	vmulsd	%xmm6, %xmm1, %xmm1	# wn4r, D.16712, D.16712
	vmovsd	%xmm3, 640(%r15)	# D.16712, MEM[(double *)_1382 + 640B]
	vmovapd	%xmm6, %xmm3	# wn4r, D.16712
	vmovsd	%xmm1, 648(%r15)	# D.16712, MEM[(double *)_1382 + 648B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vxorpd	%xmm7, %xmm3, %xmm3	# tmp876, D.16712, D.16712
	vaddsd	%xmm0, %xmm1, %xmm2	# x0r, x0i, D.16712
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.16712
	vmulsd	%xmm3, %xmm2, %xmm2	# D.16712, D.16712, D.16712
	vmulsd	%xmm6, %xmm0, %xmm0	# wn4r, D.16712, D.16712
	vmovsd	%xmm2, 896(%r15)	# D.16712, MEM[(double *)_1382 + 896B]
	vmovsd	%xmm0, 904(%r15)	# D.16712, MEM[(double *)_1382 + 904B]
	call	cftf161	#
	movq	8(%rsp), %rdx	# %sfp, D.16709
	leaq	256(%r15), %rdi	#, D.16710
	leaq	-256(%rbp,%rdx), %rax	#, D.16710
	movq	%rdx, 16(%rsp)	# D.16709, %sfp
	movq	%rax, %rsi	# D.16710,
	movq	%rax, 8(%rsp)	# D.16710, %sfp
	call	cftf162	#
	leaq	512(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf161	#
	leaq	768(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf161	#
	movq	16(%rsp), %rdx	# %sfp, D.16709
	movl	$128, %edi	#,
	leaq	1024(%r15), %r9	#, D.16710
	movq	%r9, %rsi	# D.16710,
	movq	%r9, 16(%rsp)	# D.16710, %sfp
	leaq	-1024(%rbp,%rdx), %rdx	#, D.16710
	call	cftmdl2	#
	movq	16(%rsp), %r9	# %sfp, D.16710
	movq	%r14, %rsi	# D.16710,
	movq	%r9, %rdi	# D.16710,
	call	cftf161	#
	movq	8(%rsp), %rsi	# %sfp,
	leaq	1280(%r15), %rdi	#, D.16710
	call	cftf162	#
	leaq	1536(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf161	#
	movq	8(%rsp), %rsi	# %sfp,
	leaq	1792(%r15), %rdi	#, D.16710
	call	cftf162	#
	movq	56(%rsp), %r8	# %sfp, D.16710
	movq	%r15, %rdx	# D.16710, ivtmp.872
	xorl	%esi, %esi	# ivtmp.865
	vmovsd	2048(%r15), %xmm5	# MEM[(double *)_1382 + 2048B], D.16712
	leaq	2048(%r15), %rdi	#, D.16710
	vmovsd	2560(%r15), %xmm1	# MEM[(double *)_1382 + 2560B], D.16712
	vmovsd	2304(%r15), %xmm8	# MEM[(double *)_1382 + 2304B], D.16712
	vmovsd	2816(%r15), %xmm6	# MEM[(double *)_1382 + 2816B], D.16712
	vaddsd	%xmm5, %xmm1, %xmm11	# D.16712, D.16712, x0r
	vmovsd	2056(%r15), %xmm4	# MEM[(double *)_1382 + 2056B], D.16712
	vsubsd	%xmm1, %xmm5, %xmm9	# D.16712, D.16712, x1r
	vaddsd	%xmm8, %xmm6, %xmm3	# D.16712, D.16712, x2r
	movq	48(%rsp), %rax	# %sfp, ivtmp.882
	vmovsd	2312(%r15), %xmm2	# MEM[(double *)_1382 + 2312B], D.16712
	vsubsd	%xmm6, %xmm8, %xmm6	# D.16712, D.16712, x3r
	vmovsd	2568(%r15), %xmm0	# MEM[(double *)_1382 + 2568B], D.16712
	vmovsd	2824(%r15), %xmm5	# MEM[(double *)_1382 + 2824B], D.16712
	vaddsd	%xmm4, %xmm0, %xmm10	# D.16712, D.16712, x0i
	vmovapd	32(%rsp), %xmm7	# %sfp, tmp876
	vsubsd	%xmm0, %xmm4, %xmm0	# D.16712, D.16712, x1i
	vsubsd	%xmm5, %xmm2, %xmm1	# D.16712, D.16712, x3i
	vaddsd	%xmm2, %xmm5, %xmm4	# D.16712, D.16712, x2i
	vaddsd	%xmm11, %xmm3, %xmm2	# x0r, x2r, D.16712
	vsubsd	%xmm3, %xmm11, %xmm3	# x2r, x0r, D.16712
	vmovsd	%xmm2, 2048(%r15)	# D.16712, MEM[(double *)_1382 + 2048B]
	vaddsd	%xmm10, %xmm4, %xmm2	# x0i, x2i, D.16712
	vmovsd	%xmm3, 2304(%r15)	# D.16712, MEM[(double *)_1382 + 2304B]
	vmovsd	%xmm2, 2056(%r15)	# D.16712, MEM[(double *)_1382 + 2056B]
	vsubsd	%xmm4, %xmm10, %xmm2	# x2i, x0i, D.16712
	vmovsd	%xmm2, 2312(%r15)	# D.16712, MEM[(double *)_1382 + 2312B]
	vsubsd	%xmm1, %xmm9, %xmm2	# x3i, x1r, D.16712
	vaddsd	%xmm9, %xmm1, %xmm1	# x1r, x3i, D.16712
	vmovsd	%xmm2, 2560(%r15)	# D.16712, MEM[(double *)_1382 + 2560B]
	vaddsd	%xmm0, %xmm6, %xmm2	# x1i, x3r, D.16712
	vmovsd	%xmm1, 2816(%r15)	# D.16712, MEM[(double *)_1382 + 2816B]
	vsubsd	%xmm6, %xmm0, %xmm0	# x3r, x1i, D.16712
	vmovsd	%xmm2, 2568(%r15)	# D.16712, MEM[(double *)_1382 + 2568B]
	vmovsd	%xmm0, 2824(%r15)	# D.16712, MEM[(double *)_1382 + 2824B]
	vmovsd	8(%r8), %xmm6	# MEM[(double *)_38 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L302:
	vmovsd	2072(%rdx), %xmm3	# MEM[base: _1702, offset: 2072B], D.16712
	subq	$16, %rax	#, ivtmp.882
	addq	$16, %rdx	#, ivtmp.872
	vmovsd	2568(%rdx), %xmm0	# MEM[base: _1702, offset: 2584B], D.16712
	vmovsd	2048(%rdx), %xmm5	# MEM[base: _1702, offset: 2064B], D.16712
	vmovsd	2560(%rdx), %xmm1	# MEM[base: _1702, offset: 2576B], D.16712
	vaddsd	%xmm3, %xmm0, %xmm8	# D.16712, D.16712, x0i
	vmovsd	2304(%rdx), %xmm14	# MEM[base: _1702, offset: 2320B], D.16712
	vsubsd	%xmm0, %xmm3, %xmm0	# D.16712, D.16712, x1i
	vmovsd	2816(%rdx), %xmm3	# MEM[base: _1702, offset: 2832B], D.16712
	vaddsd	%xmm5, %xmm1, %xmm12	# D.16712, D.16712, x0r
	vmovsd	2312(%rdx), %xmm13	# MEM[base: _1702, offset: 2328B], D.16712
	vsubsd	%xmm1, %xmm5, %xmm2	# D.16712, D.16712, x1r
	vaddsd	%xmm14, %xmm3, %xmm4	# D.16712, D.16712, x2r
	vmovsd	2824(%rdx), %xmm5	# MEM[base: _1702, offset: 2840B], D.16712
	vsubsd	%xmm3, %xmm14, %xmm3	# D.16712, D.16712, x3r
	vmovsd	32(%r8,%rsi), %xmm15	# MEM[base: _38, index: ivtmp.865_31, offset: 32B], wk1r
	vaddsd	%xmm13, %xmm5, %xmm1	# D.16712, D.16712, x2i
	vmovsd	40(%r8,%rsi), %xmm11	# MEM[base: _38, index: ivtmp.865_31, offset: 40B], wk1i
	vaddsd	%xmm12, %xmm4, %xmm14	# x0r, x2r, D.16712
	vmovsd	48(%r8,%rsi), %xmm10	# MEM[base: _38, index: ivtmp.865_31, offset: 48B], wk3r
	vmovsd	56(%r8,%rsi), %xmm9	# MEM[base: _38, index: ivtmp.865_31, offset: 56B], wk3i
	vsubsd	%xmm5, %xmm13, %xmm5	# D.16712, D.16712, x3i
	addq	$32, %rsi	#, ivtmp.865
	vsubsd	%xmm4, %xmm12, %xmm12	# x2r, x0r, D.16712
	vmovsd	%xmm14, 2048(%rdx)	# D.16712, MEM[base: _1702, offset: 2064B]
	vaddsd	%xmm8, %xmm1, %xmm14	# x0i, x2i, D.16712
	vsubsd	%xmm1, %xmm8, %xmm8	# x2i, x0i, D.16712
	vaddsd	%xmm0, %xmm3, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm12, 2304(%rdx)	# D.16712, MEM[base: _1702, offset: 2320B]
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, x0i
	vmovsd	%xmm14, 2056(%rdx)	# D.16712, MEM[base: _1702, offset: 2072B]
	vmovsd	%xmm8, 2312(%rdx)	# D.16712, MEM[base: _1702, offset: 2328B]
	vsubsd	%xmm5, %xmm2, %xmm8	# x3i, x1r, x0r
	vmulsd	%xmm11, %xmm1, %xmm12	# wk1i, x0i, D.16712
	vaddsd	%xmm2, %xmm5, %xmm5	# x1r, x3i, x0r
	vmulsd	%xmm15, %xmm1, %xmm1	# wk1r, x0i, D.16712
	vmulsd	%xmm15, %xmm8, %xmm13	# wk1r, x0r, D.16712
	vmulsd	%xmm11, %xmm8, %xmm8	# wk1i, x0r, D.16712
	vmulsd	%xmm10, %xmm0, %xmm3	# wk3r, x0i, D.16712
	vmulsd	%xmm9, %xmm0, %xmm4	# wk3i, x0i, D.16712
	vsubsd	%xmm12, %xmm13, %xmm12	# D.16712, D.16712, D.16712
	vaddsd	%xmm1, %xmm8, %xmm8	# D.16712, D.16712, D.16712
	vmulsd	%xmm10, %xmm5, %xmm1	# wk3r, x0r, D.16712
	vmulsd	%xmm9, %xmm5, %xmm5	# wk3i, x0r, D.16712
	vmovsd	%xmm12, 2560(%rdx)	# D.16712, MEM[base: _1702, offset: 2576B]
	vmovsd	%xmm8, 2568(%rdx)	# D.16712, MEM[base: _1702, offset: 2584B]
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16712, D.16712, D.16712
	vsubsd	%xmm5, %xmm3, %xmm2	# D.16712, D.16712, D.16712
	vmovsd	%xmm4, 2816(%rdx)	# D.16712, MEM[base: _1702, offset: 2832B]
	vmovsd	%xmm2, 2824(%rdx)	# D.16712, MEM[base: _1702, offset: 2840B]
	vmovsd	2312(%rax), %xmm3	# MEM[base: _1686, offset: 2296B], D.16712
	vmovsd	2824(%rax), %xmm0	# MEM[base: _1686, offset: 2808B], D.16712
	vmovsd	2304(%rax), %xmm2	# MEM[base: _1686, offset: 2288B], D.16712
	vmovsd	2560(%rax), %xmm14	# MEM[base: _1686, offset: 2544B], D.16712
	vaddsd	%xmm3, %xmm0, %xmm8	# D.16712, D.16712, x0i
	vmovsd	2816(%rax), %xmm1	# MEM[base: _1686, offset: 2800B], D.16712
	vsubsd	%xmm0, %xmm3, %xmm3	# D.16712, D.16712, x1i
	vmovsd	3072(%rax), %xmm0	# MEM[base: _1686, offset: 3056B], D.16712
	vaddsd	%xmm2, %xmm1, %xmm12	# D.16712, D.16712, x0r
	vmovsd	2568(%rax), %xmm13	# MEM[base: _1686, offset: 2552B], D.16712
	vaddsd	%xmm14, %xmm0, %xmm5	# D.16712, D.16712, x2r
	vsubsd	%xmm1, %xmm2, %xmm1	# D.16712, D.16712, x1r
	vmovsd	3080(%rax), %xmm2	# MEM[base: _1686, offset: 3064B], D.16712
	vsubsd	%xmm0, %xmm14, %xmm0	# D.16712, D.16712, x3r
	vaddsd	%xmm13, %xmm2, %xmm4	# D.16712, D.16712, x2i
	vaddsd	%xmm12, %xmm5, %xmm14	# x0r, x2r, D.16712
	vsubsd	%xmm2, %xmm13, %xmm2	# D.16712, D.16712, x3i
	vsubsd	%xmm5, %xmm12, %xmm12	# x2r, x0r, D.16712
	vmovsd	%xmm14, 2304(%rax)	# D.16712, MEM[base: _1686, offset: 2288B]
	vaddsd	%xmm8, %xmm4, %xmm14	# x0i, x2i, D.16712
	vsubsd	%xmm4, %xmm8, %xmm4	# x2i, x0i, D.16712
	vaddsd	%xmm3, %xmm0, %xmm5	# x1i, x3r, x0i
	vmovsd	%xmm12, 2560(%rax)	# D.16712, MEM[base: _1686, offset: 2544B]
	vsubsd	%xmm0, %xmm3, %xmm0	# x3r, x1i, x0i
	vmovsd	%xmm14, 2312(%rax)	# D.16712, MEM[base: _1686, offset: 2296B]
	vmovsd	%xmm4, 2568(%rax)	# D.16712, MEM[base: _1686, offset: 2552B]
	vsubsd	%xmm2, %xmm1, %xmm4	# x3i, x1r, x0r
	vmulsd	%xmm15, %xmm5, %xmm12	# wk1r, x0i, D.16712
	vaddsd	%xmm1, %xmm2, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm11, %xmm4, %xmm13	# wk1i, x0r, D.16712
	vmulsd	%xmm15, %xmm4, %xmm4	# wk1r, x0r, D.16712
	vmulsd	%xmm11, %xmm5, %xmm11	# wk1i, x0i, D.16712
	vmulsd	%xmm9, %xmm2, %xmm1	# wk3i, x0r, D.16712
	vmulsd	%xmm10, %xmm2, %xmm2	# wk3r, x0r, D.16712
	vsubsd	%xmm12, %xmm13, %xmm12	# D.16712, D.16712, D.16712
	vaddsd	%xmm11, %xmm4, %xmm4	# D.16712, D.16712, D.16712
	vmovsd	%xmm12, 2816(%rax)	# D.16712, MEM[base: _1686, offset: 2800B]
	vmovsd	%xmm4, 2824(%rax)	# D.16712, MEM[base: _1686, offset: 2808B]
	vmulsd	%xmm10, %xmm0, %xmm4	# wk3r, x0i, D.16712
	vmulsd	%xmm9, %xmm0, %xmm0	# wk3i, x0i, D.16712
	vaddsd	%xmm1, %xmm4, %xmm4	# D.16712, D.16712, D.16712
	vsubsd	%xmm2, %xmm0, %xmm1	# D.16712, D.16712, D.16712
	vmovsd	%xmm4, 3072(%rax)	# D.16712, MEM[base: _1686, offset: 3056B]
	vmovsd	%xmm1, 3080(%rax)	# D.16712, MEM[base: _1686, offset: 3064B]
	cmpq	$224, %rsi	#, ivtmp.865
	jne	.L302	#,
	vmovsd	2696(%r15), %xmm1	# MEM[(double *)_1382 + 2696B], D.16712
	vxorpd	%xmm6, %xmm7, %xmm7	# wn4r, tmp876, D.16712
	movq	%r14, %rsi	# D.16710,
	movq	%r8, 16(%rsp)	# D.16710, %sfp
	vmovsd	2184(%r15), %xmm2	# MEM[(double *)_1382 + 2184B], D.16712
	vmovsd	2688(%r15), %xmm0	# MEM[(double *)_1382 + 2688B], D.16712
	vmovsd	2176(%r15), %xmm8	# MEM[(double *)_1382 + 2176B], D.16712
	vaddsd	%xmm2, %xmm1, %xmm3	# D.16712, D.16712, x0i
	vmovsd	2432(%r15), %xmm5	# MEM[(double *)_1382 + 2432B], D.16712
	vsubsd	%xmm1, %xmm2, %xmm2	# D.16712, D.16712, x1i
	vmovsd	2944(%r15), %xmm1	# MEM[(double *)_1382 + 2944B], D.16712
	vaddsd	%xmm8, %xmm0, %xmm4	# D.16712, D.16712, x0r
	vmovsd	2952(%r15), %xmm10	# MEM[(double *)_1382 + 2952B], D.16712
	vsubsd	%xmm0, %xmm8, %xmm8	# D.16712, D.16712, x1r
	vmovsd	2440(%r15), %xmm0	# MEM[(double *)_1382 + 2440B], D.16712
	vaddsd	%xmm5, %xmm1, %xmm9	# D.16712, D.16712, x2r
	vsubsd	%xmm1, %xmm5, %xmm5	# D.16712, D.16712, x3r
	vaddsd	%xmm0, %xmm10, %xmm11	# D.16712, D.16712, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.16712
	vsubsd	%xmm10, %xmm0, %xmm0	# D.16712, D.16712, x3i
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.16712
	vmovsd	%xmm1, 2176(%r15)	# D.16712, MEM[(double *)_1382 + 2176B]
	vaddsd	%xmm3, %xmm11, %xmm1	# x0i, x2i, D.16712
	vsubsd	%xmm11, %xmm3, %xmm3	# x2i, x0i, D.16712
	vmovsd	%xmm4, 2432(%r15)	# D.16712, MEM[(double *)_1382 + 2432B]
	vsubsd	%xmm0, %xmm8, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 2184(%r15)	# D.16712, MEM[(double *)_1382 + 2184B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 2440(%r15)	# D.16712, MEM[(double *)_1382 + 2440B]
	vaddsd	%xmm8, %xmm0, %xmm0	# x1r, x3i, x0r
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.16712
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.16712
	vmulsd	%xmm6, %xmm3, %xmm3	# wn4r, D.16712, D.16712
	vmulsd	%xmm6, %xmm1, %xmm1	# wn4r, D.16712, D.16712
	vmovsd	%xmm3, 2688(%r15)	# D.16712, MEM[(double *)_1382 + 2688B]
	vmovsd	%xmm1, 2696(%r15)	# D.16712, MEM[(double *)_1382 + 2696B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vaddsd	%xmm0, %xmm1, %xmm2	# x0r, x0i, D.16712
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.16712
	vmulsd	%xmm7, %xmm2, %xmm7	# D.16712, D.16712, D.16712
	vmulsd	%xmm6, %xmm0, %xmm0	# wn4r, D.16712, D.16712
	vmovsd	%xmm7, 2944(%r15)	# D.16712, MEM[(double *)_1382 + 2944B]
	vmovsd	%xmm0, 2952(%r15)	# D.16712, MEM[(double *)_1382 + 2952B]
	call	cftf161	#
	movq	8(%rsp), %rsi	# %sfp,
	leaq	2304(%r15), %rdi	#, D.16710
	call	cftf162	#
	leaq	2560(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf161	#
	leaq	2816(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf161	#
	movq	16(%rsp), %r8	# %sfp, D.16710
	movl	$128, %edi	#,
	leaq	3072(%r15), %rax	#, D.16710
	movq	%rax, %rsi	# D.16710,
	movq	%rax, 16(%rsp)	# D.16710, %sfp
	movq	%r8, %rdx	# D.16710,
	call	cftmdl1	#
	leaq	3840(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf161	#
	movq	16(%rsp), %rax	# %sfp, D.16710
	movq	%r14, %rsi	# D.16710,
	movq	%rax, %rdi	# D.16710,
	call	cftf161	#
	movq	8(%rsp), %rsi	# %sfp,
	leaq	3328(%r15), %rdi	#, D.16710
	call	cftf162	#
	leaq	3584(%r15), %rdi	#, D.16710
	movq	%r14, %rsi	# D.16710,
	call	cftf161	#
	jmp	.L305	#
.L308:
	movq	%rsi, %r15	# a, D.16710
	movl	%edi, %r13d	# n, n
	xorl	%ebx, %ebx	# j
	jmp	.L298	#
	.cfi_endproc
.LFE67:
	.size	cftrec4, .-cftrec4
	.section	.text.unlikely
.LCOLDE40:
	.text
.LHOTE40:
	.section	.text.unlikely
.LCOLDB41:
	.text
.LHOTB41:
	.p2align 4,,15
	.globl	cftfsub
	.type	cftfsub, @function
cftfsub:
.LFB57:
	.cfi_startproc
	cmpl	$8, %edi	#, n
	jle	.L318	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %eax	# n, n
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r8, %r12	# w, w
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movslq	%ecx, %rbp	# nw,
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# a, a
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	movq	%rdx, 40(%rsp)	# ip, %sfp
	movl	%edi, 36(%rsp)	# n, %sfp
	cmpl	$32, %edi	#, n
	jg	.L342	#,
	je	.L343	#,
	movq	%r8, %rsi	# w,
	movq	%rbx, %rdi	# a,
	call	cftf081	#
	vmovsd	16(%rbx), %xmm3	# MEM[(double *)a_5(D) + 16B], x1r
	vmovsd	24(%rbx), %xmm2	# MEM[(double *)a_5(D) + 24B], x1i
	vmovsd	48(%rbx), %xmm1	# MEM[(double *)a_5(D) + 48B], x3r
	vmovsd	56(%rbx), %xmm0	# MEM[(double *)a_5(D) + 56B], x3i
	vmovsd	72(%rbx), %xmm6	# MEM[(double *)a_5(D) + 72B], x4i
	vmovsd	%xmm2, 72(%rbx)	# x1i, MEM[(double *)a_5(D) + 72B]
	vmovsd	96(%rbx), %xmm5	# MEM[(double *)a_5(D) + 96B], x6r
	vmovsd	%xmm1, 96(%rbx)	# x3r, MEM[(double *)a_5(D) + 96B]
	vmovsd	104(%rbx), %xmm4	# MEM[(double *)a_5(D) + 104B], x6i
	vmovsd	%xmm6, 24(%rbx)	# x4i, MEM[(double *)a_5(D) + 24B]
	vmovsd	64(%rbx), %xmm7	# MEM[(double *)a_5(D) + 64B], MEM[(double *)a_5(D) + 64B]
	vmovsd	%xmm5, 48(%rbx)	# x6r, MEM[(double *)a_5(D) + 48B]
	vmovsd	%xmm4, 56(%rbx)	# x6i, MEM[(double *)a_5(D) + 56B]
	vmovsd	%xmm7, 16(%rbx)	# MEM[(double *)a_5(D) + 64B], MEM[(double *)a_5(D) + 16B]
	vmovsd	%xmm3, 64(%rbx)	# x1r, MEM[(double *)a_5(D) + 64B]
	vmovsd	%xmm0, 104(%rbx)	# x3i, MEM[(double *)a_5(D) + 104B]
.L338:
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_restore 15
	.cfi_def_cfa_offset 8
.L341:
	ret
	.p2align 4,,10
	.p2align 3
.L318:
	je	.L344	#,
	cmpl	$4, %edi	#, n
	jne	.L341	#,
	vmovsd	(%rsi), %xmm1	# *a_5(D), D.17026
	vmovsd	16(%rsi), %xmm3	# MEM[(double *)a_5(D) + 16B], D.17026
	vmovsd	8(%rsi), %xmm0	# MEM[(double *)a_5(D) + 8B], D.17026
	vaddsd	%xmm1, %xmm3, %xmm4	# D.17026, D.17026, D.17026
	vmovsd	24(%rsi), %xmm2	# MEM[(double *)a_5(D) + 24B], D.17026
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17026, D.17026, x0r
	vmovsd	%xmm4, (%rsi)	# D.17026, *a_5(D)
	vaddsd	%xmm0, %xmm2, %xmm4	# D.17026, D.17026, D.17026
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17026, D.17026, x0i
	vmovsd	%xmm1, 16(%rsi)	# x0r, MEM[(double *)a_5(D) + 16B]
	vmovsd	%xmm4, 8(%rsi)	# D.17026, MEM[(double *)a_5(D) + 8B]
	vmovsd	%xmm0, 24(%rsi)	# x0i, MEM[(double *)a_5(D) + 24B]
	ret
	.p2align 4,,10
	.p2align 3
.L342:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	sarl	$2, %eax	#, D.17027
	movl	%ebp, %ecx	# nw, D.17027
	movl	%edi, %r15d	# n, n
	subl	%eax, %ecx	# D.17027, D.17027
	movslq	%ecx, %rax	# D.17027,
	leaq	(%r8,%rax,8), %rdx	#, D.17029
	call	cftf1st	#
	cmpl	$512, %r15d	#, n
	jg	.L345	#,
	cmpl	$128, 36(%rsp)	#, %sfp
	jle	.L324	#,
	cmpl	$512, 36(%rsp)	#, %sfp
	je	.L346	#,
	salq	$3, %rbp	#, D.17028
	movq	%rbx, %rdi	# a,
	leaq	-256(%r12,%rbp), %r14	#, D.17029
	leaq	-64(%r12,%rbp), %r13	#, D.17029
	movq	%r14, %rsi	# D.17029,
	call	cftmdl1.constprop.5	#
	movq	%r13, %rsi	# D.17029,
	movq	%rbx, %rdi	# a,
	call	cftf081	#
	leaq	128(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf082	#
	leaq	256(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf081	#
	leaq	384(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf081	#
	vmovsd	512(%rbx), %xmm0	# MEM[(double *)a_5(D) + 512B], D.17026
	movq	%rbx, %rdx	# a, ivtmp.1090
	movq	%rbx, %rax	# a, ivtmp.1080
	vmovsd	776(%rbx), %xmm7	# MEM[(double *)a_5(D) + 776B], D.17026
	leaq	-512(%r12,%rbp), %r8	#, D.17029
	xorl	%ecx, %ecx	# ivtmp.1067
	vmovsd	768(%rbx), %xmm1	# MEM[(double *)a_5(D) + 768B], D.17026
	leaq	512(%rbx), %rdi	#, D.17029
	movq	%r8, %rsi	# D.17029, ivtmp.1074
	vsubsd	%xmm7, %xmm0, %xmm9	# D.17026, D.17026, x0r
	vmovsd	896(%rbx), %xmm4	# MEM[(double *)a_5(D) + 896B], D.17026
	vmovsd	520(%rbx), %xmm5	# MEM[(double *)a_5(D) + 520B], D.17026
	vaddsd	%xmm0, %xmm7, %xmm7	# D.17026, D.17026, x1r
	vmovsd	904(%rbx), %xmm10	# MEM[(double *)a_5(D) + 904B], D.17026
	vmovsd	640(%rbx), %xmm0	# MEM[(double *)a_5(D) + 640B], D.17026
	vaddsd	%xmm5, %xmm1, %xmm8	# D.17026, D.17026, x0i
	vmovsd	648(%rbx), %xmm6	# MEM[(double *)a_5(D) + 648B], D.17026
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17026, D.17026, x1i
	vsubsd	%xmm10, %xmm0, %xmm1	# D.17026, D.17026, x2r
	vmovsd	8(%r8), %xmm3	# MEM[(double *)_99 + 8B], wn4r
	vaddsd	%xmm6, %xmm4, %xmm2	# D.17026, D.17026, x2i
	vsubsd	%xmm4, %xmm6, %xmm6	# D.17026, D.17026, x3i
	vaddsd	%xmm0, %xmm10, %xmm0	# D.17026, D.17026, x3r
	vsubsd	%xmm2, %xmm1, %xmm4	# x2i, x2r, D.17026
	vaddsd	%xmm1, %xmm2, %xmm1	# x2r, x2i, D.17026
	vmulsd	%xmm4, %xmm3, %xmm4	# D.17026, wn4r, y0r
	vmulsd	%xmm1, %xmm3, %xmm1	# D.17026, wn4r, y0i
	vaddsd	%xmm9, %xmm4, %xmm2	# x0r, y0r, D.17026
	vsubsd	%xmm4, %xmm9, %xmm4	# y0r, x0r, D.17026
	vmovsd	%xmm2, 512(%rbx)	# D.17026, MEM[(double *)a_5(D) + 512B]
	vaddsd	%xmm8, %xmm1, %xmm2	# x0i, y0i, D.17026
	vsubsd	%xmm1, %xmm8, %xmm1	# y0i, x0i, D.17026
	vmovsd	%xmm4, 640(%rbx)	# D.17026, MEM[(double *)a_5(D) + 640B]
	vmovsd	%xmm2, 520(%rbx)	# D.17026, MEM[(double *)a_5(D) + 520B]
	vaddsd	%xmm0, %xmm6, %xmm2	# x3r, x3i, D.17026
	vmovsd	%xmm1, 648(%rbx)	# D.17026, MEM[(double *)a_5(D) + 648B]
	vsubsd	%xmm6, %xmm0, %xmm1	# x3i, x3r, D.17026
	vmulsd	%xmm2, %xmm3, %xmm0	# D.17026, wn4r, y0i
	vmulsd	%xmm1, %xmm3, %xmm1	# D.17026, wn4r, y0r
	vsubsd	%xmm0, %xmm7, %xmm2	# y0i, x1r, D.17026
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, y0i, D.17026
	vmovsd	%xmm2, 768(%rbx)	# D.17026, MEM[(double *)a_5(D) + 768B]
	vaddsd	%xmm5, %xmm1, %xmm2	# x1i, y0r, D.17026
	vmovsd	%xmm0, 896(%rbx)	# D.17026, MEM[(double *)a_5(D) + 896B]
	vsubsd	%xmm1, %xmm5, %xmm0	# y0r, x1i, D.17026
	vmovsd	%xmm2, 776(%rbx)	# D.17026, MEM[(double *)a_5(D) + 776B]
	vmovsd	%xmm0, 904(%rbx)	# D.17026, MEM[(double *)a_5(D) + 904B]
	.p2align 4,,10
	.p2align 3
.L328:
	vmovsd	528(%rax), %xmm2	# MEM[base: _204, offset: 528B], D.17026
	subq	$32, %rsi	#, ivtmp.1074
	addq	$16, %rax	#, ivtmp.1080
	subq	$16, %rdx	#, ivtmp.1090
	vmovsd	768(%rax), %xmm0	# MEM[base: _204, offset: 784B], D.17026
	vmovsd	776(%rax), %xmm15	# MEM[base: _204, offset: 792B], D.17026
	vmovsd	520(%rax), %xmm14	# MEM[base: _204, offset: 536B], D.17026
	vsubsd	%xmm15, %xmm2, %xmm1	# D.17026, D.17026, x0r
	vmovsd	32(%r8,%rcx), %xmm10	# MEM[base: _99, index: ivtmp.1067_899, offset: 32B], wk1r
	vaddsd	%xmm14, %xmm0, %xmm5	# D.17026, D.17026, x0i
	vmovsd	40(%r8,%rcx), %xmm9	# MEM[base: _99, index: ivtmp.1067_899, offset: 40B], wk1i
	vmovsd	904(%rax), %xmm11	# MEM[base: _204, offset: 920B], D.17026
	vaddsd	%xmm2, %xmm15, %xmm15	# D.17026, D.17026, x1r
	vmovsd	648(%rax), %xmm8	# MEM[base: _204, offset: 664B], D.17026
	vsubsd	%xmm0, %xmm14, %xmm14	# D.17026, D.17026, x1i
	vmovsd	640(%rax), %xmm2	# MEM[base: _204, offset: 656B], D.17026
	vmovsd	896(%rax), %xmm0	# MEM[base: _204, offset: 912B], D.17026
	vsubsd	%xmm11, %xmm2, %xmm4	# D.17026, D.17026, x2r
	vmovsd	256(%rsi), %xmm12	# MEM[base: _268, offset: 224B], wd1i
	vaddsd	%xmm8, %xmm0, %xmm3	# D.17026, D.17026, x2i
	vmovsd	264(%rsi), %xmm13	# MEM[base: _268, offset: 232B], wd1r
	vaddsd	%xmm2, %xmm11, %xmm2	# D.17026, D.17026, x3r
	vmulsd	%xmm9, %xmm5, %xmm11	# wk1i, x0i, D.17026
	vmovsd	48(%r8,%rcx), %xmm6	# MEM[base: _99, index: ivtmp.1067_899, offset: 48B], wk3r
	vsubsd	%xmm0, %xmm8, %xmm0	# D.17026, D.17026, x3i
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x0i, D.17026
	vmovsd	56(%r8,%rcx), %xmm7	# MEM[base: _99, index: ivtmp.1067_899, offset: 56B], wk3i
	addq	$32, %rcx	#, ivtmp.1067
	vmulsd	%xmm10, %xmm1, %xmm8	# wk1r, x0r, D.17026
	vmovsd	%xmm6, 8(%rsp)	# wk3r, %sfp
	vmovsd	280(%rsi), %xmm6	# MEM[base: _268, offset: 248B], wd3r
	vmulsd	%xmm9, %xmm1, %xmm1	# wk1i, x0r, D.17026
	vmovsd	%xmm7, 16(%rsp)	# wk3i, %sfp
	vmovsd	272(%rsi), %xmm7	# MEM[base: _268, offset: 240B], wd3i
	vsubsd	%xmm11, %xmm8, %xmm8	# D.17026, D.17026, y0r
	vmulsd	%xmm13, %xmm4, %xmm11	# wd1r, x2r, D.17026
	vaddsd	%xmm5, %xmm1, %xmm1	# D.17026, D.17026, y0i
	vmulsd	%xmm12, %xmm3, %xmm5	# wd1i, x2i, D.17026
	vmulsd	%xmm12, %xmm4, %xmm4	# wd1i, x2r, D.17026
	vmulsd	%xmm13, %xmm3, %xmm3	# wd1r, x2i, D.17026
	vsubsd	%xmm5, %xmm11, %xmm11	# D.17026, D.17026, y2r
	vmovsd	8(%rsp), %xmm5	# %sfp, wk3r
	vaddsd	%xmm3, %xmm4, %xmm4	# D.17026, D.17026, y2i
	vaddsd	%xmm8, %xmm11, %xmm3	# y0r, y2r, D.17026
	vsubsd	%xmm11, %xmm8, %xmm8	# y2r, y0r, D.17026
	vmovsd	%xmm3, 512(%rax)	# D.17026, MEM[base: _204, offset: 528B]
	vaddsd	%xmm1, %xmm4, %xmm3	# y0i, y2i, D.17026
	vsubsd	%xmm4, %xmm1, %xmm1	# y2i, y0i, D.17026
	vmovsd	16(%rsp), %xmm4	# %sfp, wk3i
	vmovsd	%xmm8, 640(%rax)	# D.17026, MEM[base: _204, offset: 656B]
	vmovsd	%xmm3, 520(%rax)	# D.17026, MEM[base: _204, offset: 536B]
	vmulsd	%xmm4, %xmm14, %xmm3	# wk3i, x1i, D.17026
	vmovsd	%xmm1, 648(%rax)	# D.17026, MEM[base: _204, offset: 664B]
	vmulsd	%xmm5, %xmm15, %xmm1	# wk3r, x1r, D.17026
	vmulsd	%xmm5, %xmm14, %xmm14	# wk3r, x1i, D.17026
	vaddsd	%xmm1, %xmm3, %xmm1	# D.17026, D.17026, y0r
	vmulsd	%xmm4, %xmm15, %xmm3	# wk3i, x1r, D.17026
	vmulsd	%xmm7, %xmm0, %xmm4	# wd3i, x3i, D.17026
	vmulsd	%xmm6, %xmm0, %xmm0	# wd3r, x3i, D.17026
	vsubsd	%xmm3, %xmm14, %xmm14	# D.17026, D.17026, y0i
	vmulsd	%xmm6, %xmm2, %xmm3	# wd3r, x3r, D.17026
	vmulsd	%xmm7, %xmm2, %xmm2	# wd3i, x3r, D.17026
	vaddsd	%xmm3, %xmm4, %xmm3	# D.17026, D.17026, y2r
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17026, D.17026, y2i
	vaddsd	%xmm1, %xmm3, %xmm2	# y0r, y2r, D.17026
	vsubsd	%xmm3, %xmm1, %xmm1	# y2r, y0r, D.17026
	vmovsd	%xmm2, 768(%rax)	# D.17026, MEM[base: _204, offset: 784B]
	vaddsd	%xmm14, %xmm0, %xmm2	# y0i, y2i, D.17026
	vsubsd	%xmm0, %xmm14, %xmm14	# y2i, y0i, D.17026
	vmovsd	%xmm1, 896(%rax)	# D.17026, MEM[base: _204, offset: 912B]
	vmovsd	%xmm2, 776(%rax)	# D.17026, MEM[base: _204, offset: 792B]
	vmovsd	%xmm14, 904(%rax)	# D.17026, MEM[base: _204, offset: 920B]
	vmovsd	640(%rdx), %xmm3	# MEM[base: _278, offset: 624B], D.17026
	vmovsd	896(%rdx), %xmm1	# MEM[base: _278, offset: 880B], D.17026
	vmovsd	904(%rdx), %xmm4	# MEM[base: _278, offset: 888B], D.17026
	vmovsd	648(%rdx), %xmm0	# MEM[base: _278, offset: 632B], D.17026
	vsubsd	%xmm4, %xmm3, %xmm2	# D.17026, D.17026, x0r
	vaddsd	%xmm0, %xmm1, %xmm11	# D.17026, D.17026, x0i
	vaddsd	%xmm3, %xmm4, %xmm4	# D.17026, D.17026, x1r
	vmovsd	768(%rdx), %xmm3	# MEM[base: _278, offset: 752B], D.17026
	vsubsd	%xmm1, %xmm0, %xmm0	# D.17026, D.17026, x1i
	vmovsd	1032(%rdx), %xmm15	# MEM[base: _278, offset: 1016B], D.17026
	vmovsd	776(%rdx), %xmm14	# MEM[base: _278, offset: 760B], D.17026
	vmovsd	1024(%rdx), %xmm1	# MEM[base: _278, offset: 1008B], D.17026
	vsubsd	%xmm15, %xmm3, %xmm5	# D.17026, D.17026, x2r
	vaddsd	%xmm3, %xmm15, %xmm3	# D.17026, D.17026, x3r
	vmulsd	%xmm13, %xmm11, %xmm15	# wd1r, x0i, D.17026
	vaddsd	%xmm14, %xmm1, %xmm8	# D.17026, D.17026, x2i
	vmulsd	%xmm12, %xmm11, %xmm11	# wd1i, x0i, D.17026
	vsubsd	%xmm1, %xmm14, %xmm1	# D.17026, D.17026, x3i
	vmulsd	%xmm12, %xmm2, %xmm14	# wd1i, x0r, D.17026
	vmulsd	%xmm13, %xmm2, %xmm2	# wd1r, x0r, D.17026
	vsubsd	%xmm15, %xmm14, %xmm14	# D.17026, D.17026, y0r
	vmulsd	%xmm9, %xmm5, %xmm15	# wk1i, x2r, D.17026
	vaddsd	%xmm11, %xmm2, %xmm11	# D.17026, D.17026, y0i
	vmulsd	%xmm10, %xmm8, %xmm2	# wk1r, x2i, D.17026
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x2r, D.17026
	vmulsd	%xmm9, %xmm8, %xmm8	# wk1i, x2i, D.17026
	vsubsd	%xmm2, %xmm15, %xmm15	# D.17026, D.17026, y2r
	vaddsd	%xmm8, %xmm5, %xmm8	# D.17026, D.17026, y2i
	vmulsd	%xmm6, %xmm0, %xmm5	# wd3r, x1i, D.17026
	vaddsd	%xmm14, %xmm15, %xmm2	# y0r, y2r, D.17026
	vmulsd	%xmm7, %xmm0, %xmm0	# wd3i, x1i, D.17026
	vsubsd	%xmm15, %xmm14, %xmm14	# y2r, y0r, D.17026
	vmovsd	%xmm2, 640(%rdx)	# D.17026, MEM[base: _278, offset: 624B]
	vaddsd	%xmm11, %xmm8, %xmm2	# y0i, y2i, D.17026
	vsubsd	%xmm8, %xmm11, %xmm8	# y2i, y0i, D.17026
	vmovsd	%xmm14, 768(%rdx)	# D.17026, MEM[base: _278, offset: 752B]
	vmovsd	%xmm2, 648(%rdx)	# D.17026, MEM[base: _278, offset: 632B]
	vmulsd	%xmm7, %xmm4, %xmm2	# wd3i, x1r, D.17026
	vmovsd	16(%rsp), %xmm7	# %sfp, wk3i
	vmulsd	%xmm6, %xmm4, %xmm4	# wd3r, x1r, D.17026
	vmovsd	8(%rsp), %xmm6	# %sfp, wk3r
	vmovsd	%xmm8, 776(%rdx)	# D.17026, MEM[base: _278, offset: 760B]
	vaddsd	%xmm2, %xmm5, %xmm2	# D.17026, D.17026, y0r
	vmulsd	%xmm7, %xmm3, %xmm5	# wk3i, x3r, D.17026
	vsubsd	%xmm4, %xmm0, %xmm0	# D.17026, D.17026, y0i
	vmulsd	%xmm6, %xmm1, %xmm4	# wk3r, x3i, D.17026
	vmulsd	%xmm6, %xmm3, %xmm3	# wk3r, x3r, D.17026
	vmulsd	%xmm7, %xmm1, %xmm1	# wk3i, x3i, D.17026
	vaddsd	%xmm5, %xmm4, %xmm5	# D.17026, D.17026, y2r
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17026, D.17026, y2i
	vaddsd	%xmm2, %xmm5, %xmm3	# y0r, y2r, D.17026
	vsubsd	%xmm5, %xmm2, %xmm2	# y2r, y0r, D.17026
	vmovsd	%xmm3, 896(%rdx)	# D.17026, MEM[base: _278, offset: 880B]
	vaddsd	%xmm0, %xmm1, %xmm3	# y0i, y2i, D.17026
	vsubsd	%xmm1, %xmm0, %xmm0	# y2i, y0i, D.17026
	vmovsd	%xmm2, 1024(%rdx)	# D.17026, MEM[base: _278, offset: 1008B]
	vmovsd	%xmm3, 904(%rdx)	# D.17026, MEM[base: _278, offset: 888B]
	vmovsd	%xmm0, 1032(%rdx)	# D.17026, MEM[base: _278, offset: 1016B]
	cmpq	$96, %rcx	#, ivtmp.1067
	jne	.L328	#,
	vmovsd	840(%rbx), %xmm5	# MEM[(double *)a_5(D) + 840B], D.17026
	movq	%r13, %rsi	# D.17029,
	vmovsd	832(%rbx), %xmm1	# MEM[(double *)a_5(D) + 832B], D.17026
	leaq	1024(%rbx), %rbp	#, D.17029
	vmovsd	576(%rbx), %xmm3	# MEM[(double *)a_5(D) + 576B], D.17026
	vmovsd	584(%rbx), %xmm7	# MEM[(double *)a_5(D) + 584B], D.17026
	vsubsd	%xmm5, %xmm3, %xmm2	# D.17026, D.17026, x0r
	vmovsd	712(%rbx), %xmm6	# MEM[(double *)a_5(D) + 712B], D.17026
	vaddsd	%xmm7, %xmm1, %xmm9	# D.17026, D.17026, x0i
	vmovsd	968(%rbx), %xmm10	# MEM[(double *)a_5(D) + 968B], D.17026
	vmovsd	128(%r8), %xmm4	# MEM[(double *)_99 + 128B], wk1r
	vsubsd	%xmm1, %xmm7, %xmm7	# D.17026, D.17026, x1i
	vmovsd	136(%r8), %xmm0	# MEM[(double *)_99 + 136B], wk1i
	vaddsd	%xmm3, %xmm5, %xmm3	# D.17026, D.17026, x1r
	vmovsd	960(%rbx), %xmm1	# MEM[(double *)a_5(D) + 960B], D.17026
	vmulsd	%xmm9, %xmm0, %xmm12	# x0i, wk1i, D.17026
	vmovsd	704(%rbx), %xmm8	# MEM[(double *)a_5(D) + 704B], D.17026
	vmulsd	%xmm9, %xmm4, %xmm9	# x0i, wk1r, D.17026
	vaddsd	%xmm6, %xmm1, %xmm5	# D.17026, D.17026, x2i
	vsubsd	%xmm1, %xmm6, %xmm1	# D.17026, D.17026, x3i
	vmulsd	%xmm2, %xmm4, %xmm6	# x0r, wk1r, D.17026
	vmulsd	%xmm2, %xmm0, %xmm2	# x0r, wk1i, D.17026
	vsubsd	%xmm10, %xmm8, %xmm11	# D.17026, D.17026, x2r
	vaddsd	%xmm8, %xmm10, %xmm8	# D.17026, D.17026, x3r
	vsubsd	%xmm12, %xmm6, %xmm10	# D.17026, D.17026, y0r
	vmulsd	%xmm5, %xmm4, %xmm6	# x2i, wk1r, D.17026
	vaddsd	%xmm9, %xmm2, %xmm2	# D.17026, D.17026, y0i
	vmulsd	%xmm11, %xmm0, %xmm9	# x2r, wk1i, D.17026
	vmulsd	%xmm5, %xmm0, %xmm5	# x2i, wk1i, D.17026
	vsubsd	%xmm6, %xmm9, %xmm9	# D.17026, D.17026, y2r
	vmulsd	%xmm11, %xmm4, %xmm6	# x2r, wk1r, D.17026
	vaddsd	%xmm5, %xmm6, %xmm5	# D.17026, D.17026, y2i
	vaddsd	%xmm10, %xmm9, %xmm6	# y0r, y2r, D.17026
	vmovsd	%xmm6, 576(%rbx)	# D.17026, MEM[(double *)a_5(D) + 576B]
	vaddsd	%xmm2, %xmm5, %xmm6	# y0i, y2i, D.17026
	vsubsd	%xmm5, %xmm2, %xmm5	# y2i, y0i, D.17026
	vmulsd	%xmm7, %xmm4, %xmm2	# x1i, wk1r, D.17026
	vmovsd	%xmm6, 584(%rbx)	# D.17026, MEM[(double *)a_5(D) + 584B]
	vsubsd	%xmm9, %xmm10, %xmm6	# y2r, y0r, D.17026
	vmovsd	%xmm5, 712(%rbx)	# D.17026, MEM[(double *)a_5(D) + 712B]
	vmulsd	%xmm3, %xmm0, %xmm5	# x1r, wk1i, D.17026
	vmulsd	%xmm3, %xmm4, %xmm3	# x1r, wk1r, D.17026
	vmovsd	%xmm6, 704(%rbx)	# D.17026, MEM[(double *)a_5(D) + 704B]
	vmulsd	%xmm1, %xmm0, %xmm6	# x3i, wk1i, D.17026
	vmulsd	%xmm1, %xmm4, %xmm1	# x3i, wk1r, D.17026
	vsubsd	%xmm2, %xmm5, %xmm5	# D.17026, D.17026, y0r
	vmulsd	%xmm7, %xmm0, %xmm2	# x1i, wk1i, D.17026
	vmulsd	%xmm8, %xmm0, %xmm0	# x3r, wk1i, D.17026
	vaddsd	%xmm2, %xmm3, %xmm2	# D.17026, D.17026, y0i
	vmulsd	%xmm8, %xmm4, %xmm3	# x3r, wk1r, D.17026
	vaddsd	%xmm1, %xmm0, %xmm0	# D.17026, D.17026, y2i
	vsubsd	%xmm6, %xmm3, %xmm3	# D.17026, D.17026, y2r
	vsubsd	%xmm3, %xmm5, %xmm1	# y2r, y0r, D.17026
	vaddsd	%xmm5, %xmm3, %xmm3	# y0r, y2r, D.17026
	vmovsd	%xmm1, 832(%rbx)	# D.17026, MEM[(double *)a_5(D) + 832B]
	vsubsd	%xmm0, %xmm2, %xmm1	# y2i, y0i, D.17026
	vaddsd	%xmm2, %xmm0, %xmm0	# y0i, y2i, D.17026
	vmovsd	%xmm3, 960(%rbx)	# D.17026, MEM[(double *)a_5(D) + 960B]
	vmovsd	%xmm1, 840(%rbx)	# D.17026, MEM[(double *)a_5(D) + 840B]
	vmovsd	%xmm0, 968(%rbx)	# D.17026, MEM[(double *)a_5(D) + 968B]
	call	cftf081	#
	leaq	640(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf082	#
	leaq	768(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf081	#
	leaq	896(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf082	#
	movq	%r14, %rsi	# D.17029,
	movq	%rbp, %rdi	# D.17029,
	call	cftmdl1.constprop.5	#
	movq	%r13, %rsi	# D.17029,
	movq	%rbp, %rdi	# D.17029,
	call	cftf081	#
	leaq	1152(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf082	#
	leaq	1280(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf081	#
	leaq	1536(%rbx), %rbp	#, D.17029
	movq	%r13, %rsi	# D.17029,
	leaq	1408(%rbx), %rdi	#, D.17029
	call	cftf081	#
	movq	%r14, %rsi	# D.17029,
	movq	%rbp, %rdi	# D.17029,
	call	cftmdl1.constprop.5	#
	leaq	1920(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf081	#
	movq	%r13, %rsi	# D.17029,
	movq	%rbp, %rdi	# D.17029,
	call	cftf081	#
	leaq	1664(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf082	#
	leaq	1792(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf081	#
	jmp	.L323	#
	.p2align 4,,10
	.p2align 3
.L343:
	leaq	-64(%r8,%rbp,8), %rsi	#, D.17029
	movq	%rbx, %rdi	# a,
	call	cftf161	#
	vmovsd	64(%rbx), %xmm13	# MEM[(double *)a_5(D) + 64B], x4r
	vmovsd	32(%rbx), %xmm11	# MEM[(double *)a_5(D) + 32B], x2r
	vmovsd	%xmm13, 32(%rbx)	# x4r, MEM[(double *)a_5(D) + 32B]
	vmovsd	192(%rbx), %xmm13	# MEM[(double *)a_5(D) + 192B], tmp1072
	vmovsd	48(%rbx), %xmm5	# MEM[(double *)a_5(D) + 48B], x3r
	vmovsd	%xmm11, 64(%rbx)	# x2r, MEM[(double *)a_5(D) + 64B]
	vmovsd	%xmm13, 48(%rbx)	# tmp1072, MEM[(double *)a_5(D) + 48B]
	vmovsd	200(%rbx), %xmm13	# MEM[(double *)a_5(D) + 200B], tmp1073
	vmovsd	56(%rbx), %xmm4	# MEM[(double *)a_5(D) + 56B], x3i
	vmovsd	%xmm13, 56(%rbx)	# tmp1073, MEM[(double *)a_5(D) + 56B]
	vmovsd	160(%rbx), %xmm13	# MEM[(double *)a_5(D) + 160B], tmp1074
	vmovsd	40(%rbx), %xmm10	# MEM[(double *)a_5(D) + 40B], x2i
	vmovsd	80(%rbx), %xmm7	# MEM[(double *)a_5(D) + 80B], x5r
	vmovsd	%xmm13, 80(%rbx)	# tmp1074, MEM[(double *)a_5(D) + 80B]
	vmovsd	168(%rbx), %xmm13	# MEM[(double *)a_5(D) + 168B], tmp1075
	vmovsd	88(%rbx), %xmm6	# MEM[(double *)a_5(D) + 88B], x5i
	vmovsd	72(%rbx), %xmm12	# MEM[(double *)a_5(D) + 72B], x4i
	vmovsd	%xmm13, 88(%rbx)	# tmp1075, MEM[(double *)a_5(D) + 88B]
	vmovsd	136(%rbx), %xmm14	# MEM[(double *)a_5(D) + 136B], x8i
	vmovsd	%xmm10, 72(%rbx)	# x2i, MEM[(double *)a_5(D) + 72B]
	vmovsd	128(%rbx), %xmm15	# MEM[(double *)a_5(D) + 128B], MEM[(double *)a_5(D) + 128B]
	vmovsd	%xmm12, 40(%rbx)	# x4i, MEM[(double *)a_5(D) + 40B]
	vmovsd	224(%rbx), %xmm10	# MEM[(double *)a_5(D) + 224B], tmp1076
	vmovsd	232(%rbx), %xmm13	# MEM[(double *)a_5(D) + 232B], tmp1077
	vmovsd	16(%rbx), %xmm9	# MEM[(double *)a_5(D) + 16B], x1r
	vmovsd	%xmm15, 16(%rbx)	# MEM[(double *)a_5(D) + 128B], MEM[(double *)a_5(D) + 16B]
	vmovsd	24(%rbx), %xmm8	# MEM[(double *)a_5(D) + 24B], x1i
	vmovsd	%xmm14, 24(%rbx)	# x8i, MEM[(double *)a_5(D) + 24B]
	vmovsd	112(%rbx), %xmm1	# MEM[(double *)a_5(D) + 112B], x7r
	vmovsd	%xmm10, 112(%rbx)	# tmp1076, MEM[(double *)a_5(D) + 112B]
	vmovsd	120(%rbx), %xmm0	# MEM[(double *)a_5(D) + 120B], x7i
	vmovsd	176(%rbx), %xmm3	# MEM[(double *)a_5(D) + 176B], x11r
	vmovsd	184(%rbx), %xmm2	# MEM[(double *)a_5(D) + 184B], x11i
	vmovsd	%xmm13, 120(%rbx)	# tmp1077, MEM[(double *)a_5(D) + 120B]
	vmovsd	%xmm6, 168(%rbx)	# x5i, MEM[(double *)a_5(D) + 168B]
	vmovsd	208(%rbx), %xmm6	# MEM[(double *)a_5(D) + 208B], tmp1078
	vmovsd	%xmm9, 128(%rbx)	# x1r, MEM[(double *)a_5(D) + 128B]
	vmovsd	%xmm6, 176(%rbx)	# tmp1078, MEM[(double *)a_5(D) + 176B]
	vmovsd	216(%rbx), %xmm6	# MEM[(double *)a_5(D) + 216B], tmp1079
	vmovsd	%xmm8, 136(%rbx)	# x1i, MEM[(double *)a_5(D) + 136B]
	vmovsd	%xmm7, 160(%rbx)	# x5r, MEM[(double *)a_5(D) + 160B]
	vmovsd	%xmm6, 184(%rbx)	# tmp1079, MEM[(double *)a_5(D) + 184B]
	vmovsd	%xmm5, 192(%rbx)	# x3r, MEM[(double *)a_5(D) + 192B]
	vmovsd	%xmm4, 200(%rbx)	# x3i, MEM[(double *)a_5(D) + 200B]
	vmovsd	%xmm3, 208(%rbx)	# x11r, MEM[(double *)a_5(D) + 208B]
	vmovsd	%xmm2, 216(%rbx)	# x11i, MEM[(double *)a_5(D) + 216B]
	vmovsd	%xmm1, 224(%rbx)	# x7r, MEM[(double *)a_5(D) + 224B]
	vmovsd	%xmm0, 232(%rbx)	# x7i, MEM[(double *)a_5(D) + 232B]
	jmp	.L338	#
	.p2align 4,,10
	.p2align 3
.L324:
	je	.L347	#,
	leaq	-64(%r12,%rbp,8), %rbp	#, D.17029
	movq	%rbx, %rdi	# a,
	movq	%rbp, %rsi	# D.17029,
	call	cftf081	#
	leaq	128(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf082	#
	leaq	256(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf081	#
	leaq	384(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf081	#
.L323:
	movq	40(%rsp), %rsi	# %sfp,
	movq	%rbx, %rdx	# a,
	movl	36(%rsp), %edi	# %sfp,
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	jmp	bitrv2	#
	.p2align 4,,10
	.p2align 3
.L344:
	vmovsd	8(%rsi), %xmm4	# MEM[(double *)a_5(D) + 8B], D.17026
	vmovsd	40(%rsi), %xmm3	# MEM[(double *)a_5(D) + 40B], D.17026
	vmovsd	32(%rsi), %xmm0	# MEM[(double *)a_5(D) + 32B], D.17026
	vaddsd	%xmm4, %xmm3, %xmm8	# D.17026, D.17026, x0i
	vmovsd	(%rsi), %xmm7	# *a_5(D), D.17026
	vsubsd	%xmm3, %xmm4, %xmm3	# D.17026, D.17026, x1i
	vmovsd	16(%rsi), %xmm6	# MEM[(double *)a_5(D) + 16B], D.17026
	vmovsd	48(%rsi), %xmm4	# MEM[(double *)a_5(D) + 48B], D.17026
	vaddsd	%xmm7, %xmm0, %xmm9	# D.17026, D.17026, x0r
	vmovsd	24(%rsi), %xmm1	# MEM[(double *)a_5(D) + 24B], D.17026
	vsubsd	%xmm0, %xmm7, %xmm7	# D.17026, D.17026, x1r
	vaddsd	%xmm6, %xmm4, %xmm2	# D.17026, D.17026, x2r
	vmovsd	56(%rsi), %xmm5	# MEM[(double *)a_5(D) + 56B], D.17026
	vsubsd	%xmm4, %xmm6, %xmm4	# D.17026, D.17026, x3r
	vaddsd	%xmm1, %xmm5, %xmm10	# D.17026, D.17026, x2i
	vsubsd	%xmm5, %xmm1, %xmm0	# D.17026, D.17026, x3i
	vaddsd	%xmm9, %xmm2, %xmm1	# x0r, x2r, D.17026
	vsubsd	%xmm2, %xmm9, %xmm2	# x2r, x0r, D.17026
	vmovsd	%xmm1, (%rsi)	# D.17026, *a_5(D)
	vaddsd	%xmm8, %xmm10, %xmm1	# x0i, x2i, D.17026
	vmovsd	%xmm2, 32(%rsi)	# D.17026, MEM[(double *)a_5(D) + 32B]
	vmovsd	%xmm1, 8(%rsi)	# D.17026, MEM[(double *)a_5(D) + 8B]
	vsubsd	%xmm0, %xmm7, %xmm1	# x3i, x1r, D.17026
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, x3i, D.17026
	vmovsd	%xmm1, 16(%rsi)	# D.17026, MEM[(double *)a_5(D) + 16B]
	vaddsd	%xmm3, %xmm4, %xmm1	# x1i, x3r, D.17026
	vmovsd	%xmm0, 48(%rsi)	# D.17026, MEM[(double *)a_5(D) + 48B]
	vsubsd	%xmm4, %xmm3, %xmm0	# x3r, x1i, D.17026
	vmovsd	%xmm1, 24(%rsi)	# D.17026, MEM[(double *)a_5(D) + 24B]
	vsubsd	%xmm10, %xmm8, %xmm1	# x2i, x0i, D.17026
	vmovsd	%xmm0, 56(%rsi)	# D.17026, MEM[(double *)a_5(D) + 56B]
	vmovsd	%xmm1, 40(%rsi)	# D.17026, MEM[(double *)a_5(D) + 40B]
	ret
	.p2align 4,,10
	.p2align 3
.L346:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	vmovsd	8(%rbx), %xmm2	# MEM[(double *)a_5(D) + 8B], D.17026
	movslq	%ebp, %rax	# nw, D.17028
	movq	%rbx, %r14	# a, ivtmp.1009
	movq	%rbx, %rcx	# a, ivtmp.1045
	vmovsd	(%rbx), %xmm8	# *a_5(D), D.17026
	salq	$3, %rax	#, D.17028
	movq	%rbx, %rdx	# a, ivtmp.1035
	xorl	%esi, %esi	# ivtmp.1028
	vmovsd	520(%rbx), %xmm0	# MEM[(double *)a_5(D) + 520B], D.17026
	leaq	-512(%r12,%rax), %r15	#, D.17029
	vmovsd	512(%rbx), %xmm1	# MEM[(double *)a_5(D) + 512B], D.17026
	vaddsd	%xmm2, %xmm0, %xmm9	# D.17026, D.17026, x0i
	vmovsd	256(%rbx), %xmm6	# MEM[(double *)a_5(D) + 256B], D.17026
	vsubsd	%xmm0, %xmm2, %xmm0	# D.17026, D.17026, x1i
	vmovsd	768(%rbx), %xmm2	# MEM[(double *)a_5(D) + 768B], D.17026
	vaddsd	%xmm8, %xmm1, %xmm7	# D.17026, D.17026, x0r
	vmovsd	776(%rbx), %xmm5	# MEM[(double *)a_5(D) + 776B], D.17026
	vaddsd	%xmm6, %xmm2, %xmm4	# D.17026, D.17026, x2r
	vsubsd	%xmm1, %xmm8, %xmm8	# D.17026, D.17026, x1r
	vmovsd	264(%rbx), %xmm1	# MEM[(double *)a_5(D) + 264B], D.17026
	vsubsd	%xmm2, %xmm6, %xmm2	# D.17026, D.17026, x3r
	vaddsd	%xmm1, %xmm5, %xmm3	# D.17026, D.17026, x2i
	vsubsd	%xmm5, %xmm1, %xmm1	# D.17026, D.17026, x3i
	vaddsd	%xmm7, %xmm4, %xmm5	# x0r, x2r, D.17026
	vsubsd	%xmm4, %xmm7, %xmm4	# x2r, x0r, D.17026
	vmovsd	%xmm5, (%rbx)	# D.17026, *a_5(D)
	vaddsd	%xmm9, %xmm3, %xmm5	# x0i, x2i, D.17026
	vsubsd	%xmm3, %xmm9, %xmm3	# x2i, x0i, D.17026
	vmovsd	%xmm4, 256(%rbx)	# D.17026, MEM[(double *)a_5(D) + 256B]
	vmovsd	%xmm5, 8(%rbx)	# D.17026, MEM[(double *)a_5(D) + 8B]
	vmovsd	%xmm3, 264(%rbx)	# D.17026, MEM[(double *)a_5(D) + 264B]
	vsubsd	%xmm1, %xmm8, %xmm3	# x3i, x1r, D.17026
	vaddsd	%xmm8, %xmm1, %xmm1	# x1r, x3i, D.17026
	vmovsd	%xmm3, 512(%rbx)	# D.17026, MEM[(double *)a_5(D) + 512B]
	vaddsd	%xmm0, %xmm2, %xmm3	# x1i, x3r, D.17026
	vsubsd	%xmm2, %xmm0, %xmm0	# x3r, x1i, D.17026
	vmovsd	%xmm1, 768(%rbx)	# D.17026, MEM[(double *)a_5(D) + 768B]
	vmovsd	%xmm3, 520(%rbx)	# D.17026, MEM[(double *)a_5(D) + 520B]
	vmovsd	%xmm0, 776(%rbx)	# D.17026, MEM[(double *)a_5(D) + 776B]
	vmovsd	8(%r15), %xmm6	# MEM[(double *)_64 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L326:
	vmovsd	24(%rdx), %xmm1	# MEM[base: _435, offset: 24B], D.17026
	subq	$16, %rcx	#, ivtmp.1045
	addq	$16, %rdx	#, ivtmp.1035
	vmovsd	520(%rdx), %xmm2	# MEM[base: _435, offset: 536B], D.17026
	vmovsd	512(%rdx), %xmm3	# MEM[base: _435, offset: 528B], D.17026
	vmovsd	256(%rdx), %xmm14	# MEM[base: _435, offset: 272B], D.17026
	vaddsd	%xmm1, %xmm2, %xmm0	# D.17026, D.17026, x0i
	vmovsd	(%rdx), %xmm4	# MEM[base: _435, offset: 16B], D.17026
	vsubsd	%xmm2, %xmm1, %xmm2	# D.17026, D.17026, x1i
	vmovsd	768(%rdx), %xmm1	# MEM[base: _435, offset: 784B], D.17026
	vaddsd	%xmm4, %xmm3, %xmm10	# D.17026, D.17026, x0r
	vmovsd	264(%rdx), %xmm13	# MEM[base: _435, offset: 280B], D.17026
	vaddsd	%xmm14, %xmm1, %xmm12	# D.17026, D.17026, x2r
	vmovsd	32(%r15,%rsi), %xmm9	# MEM[base: _64, index: ivtmp.1028_895, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.17026, D.17026, x1r
	vmovsd	776(%rdx), %xmm3	# MEM[base: _435, offset: 792B], D.17026
	vmovsd	40(%r15,%rsi), %xmm8	# MEM[base: _64, index: ivtmp.1028_895, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm14, %xmm1	# D.17026, D.17026, x3r
	vaddsd	%xmm13, %xmm3, %xmm11	# D.17026, D.17026, x2i
	vmovsd	48(%r15,%rsi), %xmm5	# MEM[base: _64, index: ivtmp.1028_895, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm13, %xmm3	# D.17026, D.17026, x3i
	vmovsd	56(%r15,%rsi), %xmm7	# MEM[base: _64, index: ivtmp.1028_895, offset: 56B], wk3i
	addq	$32, %rsi	#, ivtmp.1028
	vaddsd	%xmm10, %xmm12, %xmm13	# x0r, x2r, D.17026
	vsubsd	%xmm12, %xmm10, %xmm10	# x2r, x0r, D.17026
	vmovsd	%xmm13, (%rdx)	# D.17026, MEM[base: _435, offset: 16B]
	vaddsd	%xmm0, %xmm11, %xmm13	# x0i, x2i, D.17026
	vsubsd	%xmm11, %xmm0, %xmm0	# x2i, x0i, D.17026
	vmovsd	%xmm10, 256(%rdx)	# D.17026, MEM[base: _435, offset: 272B]
	vaddsd	%xmm2, %xmm1, %xmm10	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm13, 8(%rdx)	# D.17026, MEM[base: _435, offset: 24B]
	vmovsd	%xmm0, 264(%rdx)	# D.17026, MEM[base: _435, offset: 280B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vmulsd	%xmm8, %xmm10, %xmm12	# wk1i, x0i, D.17026
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm9, %xmm10, %xmm10	# wk1r, x0i, D.17026
	vmulsd	%xmm9, %xmm0, %xmm11	# wk1r, x0r, D.17026
	vmulsd	%xmm8, %xmm0, %xmm0	# wk1i, x0r, D.17026
	vmulsd	%xmm5, %xmm3, %xmm2	# wk3r, x0r, D.17026
	vmulsd	%xmm7, %xmm3, %xmm3	# wk3i, x0r, D.17026
	vsubsd	%xmm12, %xmm11, %xmm11	# D.17026, D.17026, D.17026
	vaddsd	%xmm10, %xmm0, %xmm0	# D.17026, D.17026, D.17026
	vmovsd	%xmm11, 512(%rdx)	# D.17026, MEM[base: _435, offset: 528B]
	vmovsd	%xmm0, 520(%rdx)	# D.17026, MEM[base: _435, offset: 536B]
	vmulsd	%xmm7, %xmm1, %xmm0	# wk3i, x0i, D.17026
	vmulsd	%xmm5, %xmm1, %xmm1	# wk3r, x0i, D.17026
	vaddsd	%xmm2, %xmm0, %xmm0	# D.17026, D.17026, D.17026
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17026, D.17026, D.17026
	vmovsd	%xmm0, 768(%rdx)	# D.17026, MEM[base: _435, offset: 784B]
	vmovsd	%xmm1, 776(%rdx)	# D.17026, MEM[base: _435, offset: 792B]
	vmovsd	264(%rcx), %xmm0	# MEM[base: _467, offset: 248B], D.17026
	vmovsd	776(%rcx), %xmm1	# MEM[base: _467, offset: 760B], D.17026
	vmovsd	768(%rcx), %xmm2	# MEM[base: _467, offset: 752B], D.17026
	vmovsd	256(%rcx), %xmm10	# MEM[base: _467, offset: 240B], D.17026
	vaddsd	%xmm0, %xmm1, %xmm4	# D.17026, D.17026, x0i
	vmovsd	512(%rcx), %xmm14	# MEM[base: _467, offset: 496B], D.17026
	vsubsd	%xmm1, %xmm0, %xmm1	# D.17026, D.17026, x1i
	vmovsd	1024(%rcx), %xmm0	# MEM[base: _467, offset: 1008B], D.17026
	vaddsd	%xmm10, %xmm2, %xmm11	# D.17026, D.17026, x0r
	vmovsd	520(%rcx), %xmm3	# MEM[base: _467, offset: 504B], D.17026
	vsubsd	%xmm2, %xmm10, %xmm10	# D.17026, D.17026, x1r
	vaddsd	%xmm14, %xmm0, %xmm13	# D.17026, D.17026, x2r
	vmovsd	1032(%rcx), %xmm2	# MEM[base: _467, offset: 1016B], D.17026
	vsubsd	%xmm0, %xmm14, %xmm0	# D.17026, D.17026, x3r
	vaddsd	%xmm3, %xmm2, %xmm12	# D.17026, D.17026, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.17026, D.17026, x3i
	vaddsd	%xmm11, %xmm13, %xmm2	# x0r, x2r, D.17026
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.17026
	vmovsd	%xmm2, 256(%rcx)	# D.17026, MEM[base: _467, offset: 240B]
	vaddsd	%xmm4, %xmm12, %xmm2	# x0i, x2i, D.17026
	vsubsd	%xmm12, %xmm4, %xmm4	# x2i, x0i, D.17026
	vmovsd	%xmm11, 512(%rcx)	# D.17026, MEM[base: _467, offset: 496B]
	vmovsd	%xmm2, 264(%rcx)	# D.17026, MEM[base: _467, offset: 248B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 520(%rcx)	# D.17026, MEM[base: _467, offset: 504B]
	vsubsd	%xmm3, %xmm10, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm9, %xmm2, %xmm12	# wk1r, x0i, D.17026
	vmulsd	%xmm8, %xmm4, %xmm11	# wk1i, x0r, D.17026
	vmulsd	%xmm8, %xmm2, %xmm8	# wk1i, x0i, D.17026
	vaddsd	%xmm10, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm5, %xmm0, %xmm1	# wk3r, x0i, D.17026
	vmulsd	%xmm9, %xmm4, %xmm4	# wk1r, x0r, D.17026
	vmulsd	%xmm7, %xmm2, %xmm3	# wk3i, x0r, D.17026
	vmulsd	%xmm7, %xmm0, %xmm0	# wk3i, x0i, D.17026
	vsubsd	%xmm12, %xmm11, %xmm11	# D.17026, D.17026, D.17026
	vmulsd	%xmm5, %xmm2, %xmm2	# wk3r, x0r, D.17026
	vaddsd	%xmm8, %xmm4, %xmm4	# D.17026, D.17026, D.17026
	vmovsd	%xmm11, 768(%rcx)	# D.17026, MEM[base: _467, offset: 752B]
	vaddsd	%xmm3, %xmm1, %xmm1	# D.17026, D.17026, D.17026
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17026, D.17026, D.17026
	vmovsd	%xmm4, 776(%rcx)	# D.17026, MEM[base: _467, offset: 760B]
	vmovsd	%xmm1, 1024(%rcx)	# D.17026, MEM[base: _467, offset: 1008B]
	vmovsd	%xmm0, 1032(%rcx)	# D.17026, MEM[base: _467, offset: 1016B]
	cmpq	$224, %rsi	#, ivtmp.1028
	jne	.L326	#,
	vmovsd	648(%rbx), %xmm1	# MEM[(double *)a_5(D) + 648B], D.17026
	leaq	-64(%r12,%rax), %rbp	#, D.17029
	movq	%rbx, %rdi	# a,
	movq	%rax, 8(%rsp)	# D.17028, %sfp
	vmovsd	136(%rbx), %xmm2	# MEM[(double *)a_5(D) + 136B], D.17026
	movq	%rbp, %rsi	# D.17029,
	vmovsd	640(%rbx), %xmm0	# MEM[(double *)a_5(D) + 640B], D.17026
	vmovsd	128(%rbx), %xmm7	# MEM[(double *)a_5(D) + 128B], D.17026
	vaddsd	%xmm2, %xmm1, %xmm3	# D.17026, D.17026, x0i
	vmovsd	384(%rbx), %xmm5	# MEM[(double *)a_5(D) + 384B], D.17026
	vsubsd	%xmm1, %xmm2, %xmm2	# D.17026, D.17026, x1i
	vmovsd	896(%rbx), %xmm1	# MEM[(double *)a_5(D) + 896B], D.17026
	vaddsd	%xmm7, %xmm0, %xmm4	# D.17026, D.17026, x0r
	vmovsd	392(%rbx), %xmm10	# MEM[(double *)a_5(D) + 392B], D.17026
	vsubsd	%xmm0, %xmm7, %xmm7	# D.17026, D.17026, x1r
	vaddsd	%xmm5, %xmm1, %xmm9	# D.17026, D.17026, x2r
	vmovsd	904(%rbx), %xmm0	# MEM[(double *)a_5(D) + 904B], D.17026
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17026, D.17026, x3r
	vaddsd	%xmm10, %xmm0, %xmm8	# D.17026, D.17026, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.17026
	vsubsd	%xmm0, %xmm10, %xmm0	# D.17026, D.17026, x3i
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.17026
	vmovsd	%xmm1, 128(%rbx)	# D.17026, MEM[(double *)a_5(D) + 128B]
	vaddsd	%xmm3, %xmm8, %xmm1	# x0i, x2i, D.17026
	vsubsd	%xmm8, %xmm3, %xmm3	# x2i, x0i, D.17026
	vmovsd	%xmm4, 384(%rbx)	# D.17026, MEM[(double *)a_5(D) + 384B]
	vsubsd	%xmm0, %xmm7, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 136(%rbx)	# D.17026, MEM[(double *)a_5(D) + 136B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 392(%rbx)	# D.17026, MEM[(double *)a_5(D) + 392B]
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, x3i, x0r
	vmovsd	.LC13(%rip), %xmm7	#, tmp1002
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.17026
	vmovaps	%xmm7, 16(%rsp)	# tmp1002, %sfp
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.17026
	vmulsd	%xmm3, %xmm6, %xmm3	# D.17026, wn4r, D.17026
	vmulsd	%xmm1, %xmm6, %xmm1	# D.17026, wn4r, D.17026
	vmovsd	%xmm3, 640(%rbx)	# D.17026, MEM[(double *)a_5(D) + 640B]
	vmovsd	%xmm1, 648(%rbx)	# D.17026, MEM[(double *)a_5(D) + 648B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovapd	%xmm6, %xmm2	# wn4r, D.17026
	vxorpd	%xmm7, %xmm2, %xmm2	# tmp1002, D.17026, D.17026
	vaddsd	%xmm0, %xmm1, %xmm3	# x0r, x0i, D.17026
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.17026
	vmulsd	%xmm3, %xmm2, %xmm2	# D.17026, D.17026, D.17026
	vmulsd	%xmm0, %xmm6, %xmm0	# D.17026, wn4r, D.17026
	vmovsd	%xmm2, 896(%rbx)	# D.17026, MEM[(double *)a_5(D) + 896B]
	vmovsd	%xmm0, 904(%rbx)	# D.17026, MEM[(double *)a_5(D) + 904B]
	call	cftf161	#
	movq	8(%rsp), %rax	# %sfp, D.17028
	leaq	256(%rbx), %rdi	#, D.17029
	leaq	-256(%r12,%rax), %r13	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf162	#
	leaq	512(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf161	#
	leaq	768(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf161	#
	movq	8(%rsp), %rax	# %sfp, D.17028
	movl	$128, %edi	#,
	leaq	1024(%rbx), %rcx	#, D.17029
	movq	%rcx, %rsi	# D.17029,
	movq	%rcx, 8(%rsp)	# D.17029, %sfp
	leaq	-1024(%r12,%rax), %rdx	#, D.17029
	call	cftmdl2	#
	movq	8(%rsp), %rcx	# %sfp, D.17029
	movq	%rbp, %rsi	# D.17029,
	movq	%rcx, %rdi	# D.17029,
	call	cftf161	#
	leaq	1280(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf162	#
	leaq	1536(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf161	#
	leaq	1792(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf162	#
	vmovsd	2048(%rbx), %xmm5	# MEM[(double *)a_5(D) + 2048B], D.17026
	movq	%rbx, %rax	# a, ivtmp.999
	xorl	%edx, %edx	# ivtmp.992
	vmovsd	2560(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2560B], D.17026
	leaq	2048(%rbx), %rdi	#, D.17029
	vmovsd	2304(%rbx), %xmm6	# MEM[(double *)a_5(D) + 2304B], D.17026
	vaddsd	%xmm5, %xmm1, %xmm10	# D.17026, D.17026, x0r
	vmovsd	2056(%rbx), %xmm4	# MEM[(double *)a_5(D) + 2056B], D.17026
	vsubsd	%xmm1, %xmm5, %xmm8	# D.17026, D.17026, x1r
	vmovsd	2816(%rbx), %xmm5	# MEM[(double *)a_5(D) + 2816B], D.17026
	vmovsd	2568(%rbx), %xmm0	# MEM[(double *)a_5(D) + 2568B], D.17026
	vaddsd	%xmm6, %xmm5, %xmm3	# D.17026, D.17026, x2r
	vmovsd	2312(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2312B], D.17026
	vaddsd	%xmm4, %xmm0, %xmm9	# D.17026, D.17026, x0i
	vmovapd	16(%rsp), %xmm7	# %sfp, tmp1002
	vsubsd	%xmm0, %xmm4, %xmm0	# D.17026, D.17026, x1i
	vmovsd	2824(%rbx), %xmm4	# MEM[(double *)a_5(D) + 2824B], D.17026
	vsubsd	%xmm5, %xmm6, %xmm5	# D.17026, D.17026, x3r
	vaddsd	%xmm1, %xmm4, %xmm2	# D.17026, D.17026, x2i
	vsubsd	%xmm4, %xmm1, %xmm1	# D.17026, D.17026, x3i
	vaddsd	%xmm10, %xmm3, %xmm4	# x0r, x2r, D.17026
	vsubsd	%xmm3, %xmm10, %xmm3	# x2r, x0r, D.17026
	vmovsd	%xmm4, 2048(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2048B]
	vaddsd	%xmm9, %xmm2, %xmm4	# x0i, x2i, D.17026
	vsubsd	%xmm2, %xmm9, %xmm2	# x2i, x0i, D.17026
	vmovsd	%xmm3, 2304(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2304B]
	vmovsd	%xmm4, 2056(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2056B]
	vmovsd	%xmm2, 2312(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2312B]
	vsubsd	%xmm1, %xmm8, %xmm2	# x3i, x1r, D.17026
	vaddsd	%xmm8, %xmm1, %xmm1	# x1r, x3i, D.17026
	vmovsd	%xmm2, 2560(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2560B]
	vaddsd	%xmm0, %xmm5, %xmm2	# x1i, x3r, D.17026
	vsubsd	%xmm5, %xmm0, %xmm0	# x3r, x1i, D.17026
	vmovsd	%xmm1, 2816(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2816B]
	vmovsd	%xmm2, 2568(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2568B]
	vmovsd	%xmm0, 2824(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2824B]
	vmovsd	8(%r15), %xmm6	# MEM[(double *)_64 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L327:
	vmovsd	2072(%rax), %xmm1	# MEM[base: _1824, offset: 2072B], D.17026
	subq	$16, %r14	#, ivtmp.1009
	addq	$16, %rax	#, ivtmp.999
	vmovsd	2568(%rax), %xmm2	# MEM[base: _1824, offset: 2584B], D.17026
	vmovsd	2560(%rax), %xmm3	# MEM[base: _1824, offset: 2576B], D.17026
	vmovsd	2304(%rax), %xmm15	# MEM[base: _1824, offset: 2320B], D.17026
	vaddsd	%xmm1, %xmm2, %xmm0	# D.17026, D.17026, x0i
	vmovsd	2048(%rax), %xmm4	# MEM[base: _1824, offset: 2064B], D.17026
	vsubsd	%xmm2, %xmm1, %xmm2	# D.17026, D.17026, x1i
	vmovsd	2816(%rax), %xmm1	# MEM[base: _1824, offset: 2832B], D.17026
	vaddsd	%xmm4, %xmm3, %xmm11	# D.17026, D.17026, x0r
	vmovsd	2312(%rax), %xmm14	# MEM[base: _1824, offset: 2328B], D.17026
	vaddsd	%xmm15, %xmm1, %xmm13	# D.17026, D.17026, x2r
	vmovsd	32(%r15,%rdx), %xmm10	# MEM[base: _64, index: ivtmp.992_58, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.17026, D.17026, x1r
	vmovsd	2824(%rax), %xmm3	# MEM[base: _1824, offset: 2840B], D.17026
	vmovsd	40(%r15,%rdx), %xmm9	# MEM[base: _64, index: ivtmp.992_58, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm15, %xmm1	# D.17026, D.17026, x3r
	vaddsd	%xmm14, %xmm3, %xmm12	# D.17026, D.17026, x2i
	vmovsd	48(%r15,%rdx), %xmm5	# MEM[base: _64, index: ivtmp.992_58, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm14, %xmm3	# D.17026, D.17026, x3i
	vmovsd	56(%r15,%rdx), %xmm8	# MEM[base: _64, index: ivtmp.992_58, offset: 56B], wk3i
	addq	$32, %rdx	#, ivtmp.992
	vaddsd	%xmm11, %xmm13, %xmm14	# x0r, x2r, D.17026
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.17026
	vmovsd	%xmm14, 2048(%rax)	# D.17026, MEM[base: _1824, offset: 2064B]
	vaddsd	%xmm0, %xmm12, %xmm14	# x0i, x2i, D.17026
	vsubsd	%xmm12, %xmm0, %xmm0	# x2i, x0i, D.17026
	vmovsd	%xmm11, 2304(%rax)	# D.17026, MEM[base: _1824, offset: 2320B]
	vaddsd	%xmm2, %xmm1, %xmm11	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm14, 2056(%rax)	# D.17026, MEM[base: _1824, offset: 2072B]
	vmovsd	%xmm0, 2312(%rax)	# D.17026, MEM[base: _1824, offset: 2328B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vmulsd	%xmm9, %xmm11, %xmm13	# wk1i, x0i, D.17026
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm10, %xmm11, %xmm11	# wk1r, x0i, D.17026
	vmulsd	%xmm10, %xmm0, %xmm12	# wk1r, x0r, D.17026
	vmulsd	%xmm9, %xmm0, %xmm0	# wk1i, x0r, D.17026
	vmulsd	%xmm5, %xmm3, %xmm2	# wk3r, x0r, D.17026
	vmulsd	%xmm8, %xmm3, %xmm3	# wk3i, x0r, D.17026
	vsubsd	%xmm13, %xmm12, %xmm12	# D.17026, D.17026, D.17026
	vaddsd	%xmm11, %xmm0, %xmm0	# D.17026, D.17026, D.17026
	vmovsd	%xmm12, 2560(%rax)	# D.17026, MEM[base: _1824, offset: 2576B]
	vmovsd	%xmm0, 2568(%rax)	# D.17026, MEM[base: _1824, offset: 2584B]
	vmulsd	%xmm8, %xmm1, %xmm0	# wk3i, x0i, D.17026
	vmulsd	%xmm5, %xmm1, %xmm1	# wk3r, x0i, D.17026
	vaddsd	%xmm2, %xmm0, %xmm0	# D.17026, D.17026, D.17026
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17026, D.17026, D.17026
	vmovsd	%xmm0, 2816(%rax)	# D.17026, MEM[base: _1824, offset: 2832B]
	vmovsd	%xmm1, 2824(%rax)	# D.17026, MEM[base: _1824, offset: 2840B]
	vmovsd	2312(%r14), %xmm0	# MEM[base: _1808, offset: 2296B], D.17026
	vmovsd	2824(%r14), %xmm1	# MEM[base: _1808, offset: 2808B], D.17026
	vmovsd	2816(%r14), %xmm2	# MEM[base: _1808, offset: 2800B], D.17026
	vmovsd	2304(%r14), %xmm11	# MEM[base: _1808, offset: 2288B], D.17026
	vaddsd	%xmm0, %xmm1, %xmm4	# D.17026, D.17026, x0i
	vmovsd	2560(%r14), %xmm15	# MEM[base: _1808, offset: 2544B], D.17026
	vsubsd	%xmm1, %xmm0, %xmm1	# D.17026, D.17026, x1i
	vmovsd	3072(%r14), %xmm0	# MEM[base: _1808, offset: 3056B], D.17026
	vaddsd	%xmm11, %xmm2, %xmm12	# D.17026, D.17026, x0r
	vmovsd	2568(%r14), %xmm3	# MEM[base: _1808, offset: 2552B], D.17026
	vsubsd	%xmm2, %xmm11, %xmm11	# D.17026, D.17026, x1r
	vmovsd	3080(%r14), %xmm2	# MEM[base: _1808, offset: 3064B], D.17026
	vaddsd	%xmm15, %xmm0, %xmm14	# D.17026, D.17026, x2r
	vsubsd	%xmm0, %xmm15, %xmm0	# D.17026, D.17026, x3r
	vaddsd	%xmm3, %xmm2, %xmm13	# D.17026, D.17026, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.17026, D.17026, x3i
	vaddsd	%xmm12, %xmm14, %xmm2	# x0r, x2r, D.17026
	vsubsd	%xmm14, %xmm12, %xmm12	# x2r, x0r, D.17026
	vmovsd	%xmm2, 2304(%r14)	# D.17026, MEM[base: _1808, offset: 2288B]
	vaddsd	%xmm4, %xmm13, %xmm2	# x0i, x2i, D.17026
	vmovsd	%xmm12, 2560(%r14)	# D.17026, MEM[base: _1808, offset: 2544B]
	vsubsd	%xmm13, %xmm4, %xmm4	# x2i, x0i, D.17026
	vmovsd	%xmm2, 2312(%r14)	# D.17026, MEM[base: _1808, offset: 2296B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 2568(%r14)	# D.17026, MEM[base: _1808, offset: 2552B]
	vsubsd	%xmm3, %xmm11, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm10, %xmm2, %xmm13	# wk1r, x0i, D.17026
	vmulsd	%xmm9, %xmm4, %xmm12	# wk1i, x0r, D.17026
	vmulsd	%xmm9, %xmm2, %xmm9	# wk1i, x0i, D.17026
	vaddsd	%xmm11, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm5, %xmm0, %xmm1	# wk3r, x0i, D.17026
	vmulsd	%xmm10, %xmm4, %xmm4	# wk1r, x0r, D.17026
	vmulsd	%xmm8, %xmm2, %xmm3	# wk3i, x0r, D.17026
	vmulsd	%xmm8, %xmm0, %xmm0	# wk3i, x0i, D.17026
	vsubsd	%xmm13, %xmm12, %xmm12	# D.17026, D.17026, D.17026
	vmulsd	%xmm5, %xmm2, %xmm2	# wk3r, x0r, D.17026
	vmovsd	%xmm12, 2816(%r14)	# D.17026, MEM[base: _1808, offset: 2800B]
	vaddsd	%xmm9, %xmm4, %xmm4	# D.17026, D.17026, D.17026
	vaddsd	%xmm3, %xmm1, %xmm1	# D.17026, D.17026, D.17026
	vmovsd	%xmm4, 2824(%r14)	# D.17026, MEM[base: _1808, offset: 2808B]
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17026, D.17026, D.17026
	vmovsd	%xmm1, 3072(%r14)	# D.17026, MEM[base: _1808, offset: 3056B]
	vmovsd	%xmm0, 3080(%r14)	# D.17026, MEM[base: _1808, offset: 3064B]
	cmpq	$224, %rdx	#, ivtmp.992
	jne	.L327	#,
	vmovsd	2696(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2696B], D.17026
	vxorpd	%xmm6, %xmm7, %xmm7	# wn4r, tmp1002, D.17026
	movq	%rbp, %rsi	# D.17029,
	vmovsd	2184(%rbx), %xmm2	# MEM[(double *)a_5(D) + 2184B], D.17026
	leaq	3072(%rbx), %r12	#, D.17029
	vmovsd	2688(%rbx), %xmm0	# MEM[(double *)a_5(D) + 2688B], D.17026
	vmovsd	2176(%rbx), %xmm8	# MEM[(double *)a_5(D) + 2176B], D.17026
	vaddsd	%xmm2, %xmm1, %xmm3	# D.17026, D.17026, x0i
	vmovsd	2432(%rbx), %xmm5	# MEM[(double *)a_5(D) + 2432B], D.17026
	vsubsd	%xmm1, %xmm2, %xmm2	# D.17026, D.17026, x1i
	vmovsd	2944(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2944B], D.17026
	vaddsd	%xmm8, %xmm0, %xmm4	# D.17026, D.17026, x0r
	vmovsd	2440(%rbx), %xmm10	# MEM[(double *)a_5(D) + 2440B], D.17026
	vsubsd	%xmm0, %xmm8, %xmm8	# D.17026, D.17026, x1r
	vaddsd	%xmm5, %xmm1, %xmm9	# D.17026, D.17026, x2r
	vmovsd	2952(%rbx), %xmm0	# MEM[(double *)a_5(D) + 2952B], D.17026
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17026, D.17026, x3r
	vaddsd	%xmm10, %xmm0, %xmm11	# D.17026, D.17026, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.17026
	vsubsd	%xmm0, %xmm10, %xmm0	# D.17026, D.17026, x3i
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.17026
	vmovsd	%xmm1, 2176(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2176B]
	vaddsd	%xmm3, %xmm11, %xmm1	# x0i, x2i, D.17026
	vsubsd	%xmm11, %xmm3, %xmm3	# x2i, x0i, D.17026
	vmovsd	%xmm4, 2432(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2432B]
	vsubsd	%xmm0, %xmm8, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 2184(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2184B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 2440(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2440B]
	vaddsd	%xmm8, %xmm0, %xmm0	# x1r, x3i, x0r
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.17026
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.17026
	vmulsd	%xmm3, %xmm6, %xmm3	# D.17026, wn4r, D.17026
	vmulsd	%xmm1, %xmm6, %xmm1	# D.17026, wn4r, D.17026
	vmovsd	%xmm3, 2688(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2688B]
	vmovsd	%xmm1, 2696(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2696B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vaddsd	%xmm0, %xmm1, %xmm2	# x0r, x0i, D.17026
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.17026
	vmulsd	%xmm2, %xmm7, %xmm7	# D.17026, D.17026, D.17026
	vmulsd	%xmm0, %xmm6, %xmm0	# D.17026, wn4r, D.17026
	vmovsd	%xmm7, 2944(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2944B]
	vmovsd	%xmm0, 2952(%rbx)	# D.17026, MEM[(double *)a_5(D) + 2952B]
	call	cftf161	#
	leaq	2304(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf162	#
	leaq	2560(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf161	#
	leaq	2816(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf161	#
	movq	%r15, %rdx	# D.17029,
	movq	%r12, %rsi	# D.17029,
	movl	$128, %edi	#,
	call	cftmdl1	#
	leaq	3840(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf161	#
	movq	%rbp, %rsi	# D.17029,
	movq	%r12, %rdi	# D.17029,
	call	cftf161	#
	leaq	3328(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf162	#
	leaq	3584(%rbx), %rdi	#, D.17029
	movq	%rbp, %rsi	# D.17029,
	call	cftf161	#
	jmp	.L323	#
	.p2align 4,,10
	.p2align 3
.L347:
	salq	$3, %rbp	#, D.17028
	movq	%rbx, %rdi	# a,
	leaq	-64(%r12,%rbp), %r13	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf161	#
	leaq	-256(%r12,%rbp), %rsi	#, D.17029
	leaq	256(%rbx), %rdi	#, D.17029
	call	cftf162	#
	leaq	512(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf161	#
	leaq	768(%rbx), %rdi	#, D.17029
	movq	%r13, %rsi	# D.17029,
	call	cftf161	#
	jmp	.L323	#
	.p2align 4,,10
	.p2align 3
.L345:
	movl	36(%rsp), %r15d	# %sfp, n
	movl	%ebp, 8(%rsp)	# nw, %sfp
	movq	%rbx, %rbp	# a, a
	movl	%r15d, %ebx	# n, n
	movq	%r12, %r15	# w, w
	.p2align 4,,10
	.p2align 3
.L321:
	movl	36(%rsp), %r13d	# %sfp, D.17027
	sarl	$2, %ebx	#, n
	movl	8(%rsp), %eax	# %sfp, D.17027
	movl	%ebx, %edx	# n, D.17027
	movl	%ebx, %edi	# n,
	sarl	%edx	# D.17027
	subl	%ebx, %r13d	# n, D.17027
	subl	%edx, %eax	# D.17027, D.17027
	movslq	%r13d, %r12	# D.17027, D.17028
	leaq	0(%rbp,%r12,8), %r14	#, D.17029
	movslq	%eax, %rdx	# D.17027,
	leaq	(%r15,%rdx,8), %rdx	#, D.17029
	movq	%r14, %rsi	# D.17029,
	call	cftmdl1	#
	cmpl	$512, %ebx	#, n
	jg	.L321	#,
	movq	%r14, %rdx	# D.17029, D.17029
	movq	%r12, %r14	# D.17028, D.17028
	movq	%r15, %r12	# w, w
	movl	%ebx, %r15d	# n, n
	movq	%rbp, %rbx	# a, a
	movl	8(%rsp), %ebp	# %sfp, nw
	movq	%r12, %r8	# w,
	movl	$1, %esi	#,
	movl	%r15d, %edi	# n,
	movl	%ebp, %ecx	# nw,
	call	cftleaf	#
	movl	%r15d, %eax	# n, D.17027
	xorl	%r10d, %r10d	# k
	movq	%rbx, 8(%rsp)	# a, %sfp
	negl	%eax	# D.17027
	cltq
	salq	$3, %rax	#, D.17028
	movq	%rax, 16(%rsp)	# D.17028, %sfp
	movslq	%r15d, %rax	# n, D.17028
	subq	%rax, %r14	# D.17028, D.17028
	leaq	(%rbx,%r14,8), %r14	#, ivtmp.979
	movl	%r10d, %ebx	# k, k
	.p2align 4,,10
	.p2align 3
.L322:
	movq	8(%rsp), %rcx	# %sfp,
	addl	$1, %ebx	#, k
	movl	%r13d, %esi	# j,
	movq	%r12, %r9	# w,
	movl	%ebp, %r8d	# nw,
	movl	%ebx, %edx	# k,
	movl	%r15d, %edi	# n,
	subl	%r15d, %r13d	# n, j
	call	cfttree	#
	movq	%r14, %rdx	# ivtmp.979,
	movq	%r12, %r8	# w,
	movl	%ebp, %ecx	# nw,
	movl	%eax, %esi	# isplt,
	movl	%r15d, %edi	# n,
	call	cftleaf	#
	addq	16(%rsp), %r14	# %sfp, ivtmp.979
	testl	%r13d, %r13d	# j
	jg	.L322	#,
	movq	8(%rsp), %rbx	# %sfp, a
	jmp	.L323	#
	.cfi_endproc
.LFE57:
	.size	cftfsub, .-cftfsub
	.section	.text.unlikely
.LCOLDE41:
	.text
.LHOTE41:
	.section	.text.unlikely
.LCOLDB42:
	.text
.LHOTB42:
	.p2align 4,,15
	.globl	cftbsub
	.type	cftbsub, @function
cftbsub:
.LFB58:
	.cfi_startproc
	cmpl	$8, %edi	#, n
	jle	.L349	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %eax	# n, n
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r8, %r12	# w, w
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movslq	%ecx, %rbp	# nw,
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# a, a
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	movq	%rdx, 40(%rsp)	# ip, %sfp
	movl	%edi, 36(%rsp)	# n, %sfp
	cmpl	$32, %edi	#, n
	jg	.L373	#,
	je	.L374	#,
	movq	%r8, %rsi	# w,
	movq	%rbx, %rdi	# a,
	call	cftf081	#
	vmovsd	16(%rbx), %xmm7	# MEM[(double *)a_5(D) + 16B], x1r
	vmovsd	24(%rbx), %xmm6	# MEM[(double *)a_5(D) + 24B], x1i
	vmovsd	32(%rbx), %xmm3	# MEM[(double *)a_5(D) + 32B], x2r
	vmovsd	40(%rbx), %xmm2	# MEM[(double *)a_5(D) + 40B], x2i
	vmovsd	48(%rbx), %xmm11	# MEM[(double *)a_5(D) + 48B], x3r
	vmovsd	56(%rbx), %xmm10	# MEM[(double *)a_5(D) + 56B], x3i
	vmovsd	64(%rbx), %xmm1	# MEM[(double *)a_5(D) + 64B], x4r
	vmovsd	%xmm11, 32(%rbx)	# x3r, MEM[(double *)a_5(D) + 32B]
	vmovsd	72(%rbx), %xmm0	# MEM[(double *)a_5(D) + 72B], x4i
	vmovsd	%xmm10, 40(%rbx)	# x3i, MEM[(double *)a_5(D) + 40B]
	vmovsd	80(%rbx), %xmm9	# MEM[(double *)a_5(D) + 80B], x5r
	vmovsd	%xmm7, 64(%rbx)	# x1r, MEM[(double *)a_5(D) + 64B]
	vmovsd	88(%rbx), %xmm8	# MEM[(double *)a_5(D) + 88B], x5i
	vmovsd	%xmm6, 72(%rbx)	# x1i, MEM[(double *)a_5(D) + 72B]
	vmovsd	96(%rbx), %xmm5	# MEM[(double *)a_5(D) + 96B], x6r
	vmovsd	%xmm9, 48(%rbx)	# x5r, MEM[(double *)a_5(D) + 48B]
	vmovsd	104(%rbx), %xmm4	# MEM[(double *)a_5(D) + 104B], x6i
	vmovsd	%xmm8, 56(%rbx)	# x5i, MEM[(double *)a_5(D) + 56B]
	vmovsd	120(%rbx), %xmm12	# MEM[(double *)a_5(D) + 120B], x7i
	vmovsd	%xmm5, 80(%rbx)	# x6r, MEM[(double *)a_5(D) + 80B]
	vmovsd	112(%rbx), %xmm13	# MEM[(double *)a_5(D) + 112B], MEM[(double *)a_5(D) + 112B]
	vmovsd	%xmm4, 88(%rbx)	# x6i, MEM[(double *)a_5(D) + 88B]
	vmovsd	%xmm12, 24(%rbx)	# x7i, MEM[(double *)a_5(D) + 24B]
	vmovsd	%xmm13, 16(%rbx)	# MEM[(double *)a_5(D) + 112B], MEM[(double *)a_5(D) + 16B]
	vmovsd	%xmm3, 96(%rbx)	# x2r, MEM[(double *)a_5(D) + 96B]
	vmovsd	%xmm2, 104(%rbx)	# x2i, MEM[(double *)a_5(D) + 104B]
	vmovsd	%xmm1, 112(%rbx)	# x4r, MEM[(double *)a_5(D) + 112B]
	vmovsd	%xmm0, 120(%rbx)	# x4i, MEM[(double *)a_5(D) + 120B]
.L369:
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_restore 15
	.cfi_def_cfa_offset 8
.L372:
	ret
	.p2align 4,,10
	.p2align 3
.L349:
	je	.L375	#,
	cmpl	$4, %edi	#, n
	jne	.L372	#,
	vmovsd	(%rsi), %xmm1	# *a_5(D), D.17357
	vmovsd	16(%rsi), %xmm3	# MEM[(double *)a_5(D) + 16B], D.17357
	vmovsd	8(%rsi), %xmm0	# MEM[(double *)a_5(D) + 8B], D.17357
	vaddsd	%xmm1, %xmm3, %xmm4	# D.17357, D.17357, D.17357
	vmovsd	24(%rsi), %xmm2	# MEM[(double *)a_5(D) + 24B], D.17357
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17357, D.17357, x0r
	vmovsd	%xmm4, (%rsi)	# D.17357, *a_5(D)
	vaddsd	%xmm0, %xmm2, %xmm4	# D.17357, D.17357, D.17357
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17357, D.17357, x0i
	vmovsd	%xmm1, 16(%rsi)	# x0r, MEM[(double *)a_5(D) + 16B]
	vmovsd	%xmm4, 8(%rsi)	# D.17357, MEM[(double *)a_5(D) + 8B]
	vmovsd	%xmm0, 24(%rsi)	# x0i, MEM[(double *)a_5(D) + 24B]
	ret
	.p2align 4,,10
	.p2align 3
.L373:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	sarl	$2, %eax	#, D.17358
	movl	%ebp, %ecx	# nw, D.17358
	movl	%edi, %r15d	# n, n
	subl	%eax, %ecx	# D.17358, D.17358
	movslq	%ecx, %rax	# D.17358,
	leaq	(%r8,%rax,8), %rdx	#, D.17360
	call	cftb1st	#
	cmpl	$512, %r15d	#, n
	jg	.L376	#,
	cmpl	$128, 36(%rsp)	#, %sfp
	jle	.L355	#,
	cmpl	$512, 36(%rsp)	#, %sfp
	je	.L377	#,
	salq	$3, %rbp	#, D.17359
	movq	%rbx, %rdi	# a,
	leaq	-256(%r12,%rbp), %r14	#, D.17360
	leaq	-64(%r12,%rbp), %r13	#, D.17360
	movq	%r14, %rsi	# D.17360,
	call	cftmdl1.constprop.5	#
	movq	%r13, %rsi	# D.17360,
	movq	%rbx, %rdi	# a,
	call	cftf081	#
	leaq	128(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf082	#
	leaq	256(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf081	#
	leaq	384(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf081	#
	vmovsd	512(%rbx), %xmm0	# MEM[(double *)a_5(D) + 512B], D.17357
	movq	%rbx, %rdx	# a, ivtmp.1217
	movq	%rbx, %rax	# a, ivtmp.1207
	vmovsd	776(%rbx), %xmm7	# MEM[(double *)a_5(D) + 776B], D.17357
	leaq	-512(%r12,%rbp), %r8	#, D.17360
	xorl	%ecx, %ecx	# ivtmp.1194
	vmovsd	768(%rbx), %xmm1	# MEM[(double *)a_5(D) + 768B], D.17357
	leaq	512(%rbx), %rdi	#, D.17360
	movq	%r8, %rsi	# D.17360, ivtmp.1201
	vsubsd	%xmm7, %xmm0, %xmm9	# D.17357, D.17357, x0r
	vmovsd	896(%rbx), %xmm4	# MEM[(double *)a_5(D) + 896B], D.17357
	vmovsd	520(%rbx), %xmm5	# MEM[(double *)a_5(D) + 520B], D.17357
	vaddsd	%xmm0, %xmm7, %xmm7	# D.17357, D.17357, x1r
	vmovsd	904(%rbx), %xmm10	# MEM[(double *)a_5(D) + 904B], D.17357
	vmovsd	640(%rbx), %xmm0	# MEM[(double *)a_5(D) + 640B], D.17357
	vaddsd	%xmm5, %xmm1, %xmm8	# D.17357, D.17357, x0i
	vmovsd	648(%rbx), %xmm6	# MEM[(double *)a_5(D) + 648B], D.17357
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17357, D.17357, x1i
	vsubsd	%xmm10, %xmm0, %xmm1	# D.17357, D.17357, x2r
	vmovsd	8(%r8), %xmm3	# MEM[(double *)_91 + 8B], wn4r
	vaddsd	%xmm6, %xmm4, %xmm2	# D.17357, D.17357, x2i
	vsubsd	%xmm4, %xmm6, %xmm6	# D.17357, D.17357, x3i
	vaddsd	%xmm0, %xmm10, %xmm0	# D.17357, D.17357, x3r
	vsubsd	%xmm2, %xmm1, %xmm4	# x2i, x2r, D.17357
	vaddsd	%xmm1, %xmm2, %xmm1	# x2r, x2i, D.17357
	vmulsd	%xmm4, %xmm3, %xmm4	# D.17357, wn4r, y0r
	vmulsd	%xmm1, %xmm3, %xmm1	# D.17357, wn4r, y0i
	vaddsd	%xmm9, %xmm4, %xmm2	# x0r, y0r, D.17357
	vsubsd	%xmm4, %xmm9, %xmm4	# y0r, x0r, D.17357
	vmovsd	%xmm2, 512(%rbx)	# D.17357, MEM[(double *)a_5(D) + 512B]
	vaddsd	%xmm8, %xmm1, %xmm2	# x0i, y0i, D.17357
	vsubsd	%xmm1, %xmm8, %xmm1	# y0i, x0i, D.17357
	vmovsd	%xmm4, 640(%rbx)	# D.17357, MEM[(double *)a_5(D) + 640B]
	vmovsd	%xmm2, 520(%rbx)	# D.17357, MEM[(double *)a_5(D) + 520B]
	vaddsd	%xmm0, %xmm6, %xmm2	# x3r, x3i, D.17357
	vmovsd	%xmm1, 648(%rbx)	# D.17357, MEM[(double *)a_5(D) + 648B]
	vsubsd	%xmm6, %xmm0, %xmm1	# x3i, x3r, D.17357
	vmulsd	%xmm2, %xmm3, %xmm0	# D.17357, wn4r, y0i
	vmulsd	%xmm1, %xmm3, %xmm1	# D.17357, wn4r, y0r
	vsubsd	%xmm0, %xmm7, %xmm2	# y0i, x1r, D.17357
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, y0i, D.17357
	vmovsd	%xmm2, 768(%rbx)	# D.17357, MEM[(double *)a_5(D) + 768B]
	vaddsd	%xmm5, %xmm1, %xmm2	# x1i, y0r, D.17357
	vmovsd	%xmm0, 896(%rbx)	# D.17357, MEM[(double *)a_5(D) + 896B]
	vsubsd	%xmm1, %xmm5, %xmm0	# y0r, x1i, D.17357
	vmovsd	%xmm2, 776(%rbx)	# D.17357, MEM[(double *)a_5(D) + 776B]
	vmovsd	%xmm0, 904(%rbx)	# D.17357, MEM[(double *)a_5(D) + 904B]
	.p2align 4,,10
	.p2align 3
.L359:
	vmovsd	528(%rax), %xmm2	# MEM[base: _196, offset: 528B], D.17357
	subq	$32, %rsi	#, ivtmp.1201
	addq	$16, %rax	#, ivtmp.1207
	subq	$16, %rdx	#, ivtmp.1217
	vmovsd	768(%rax), %xmm0	# MEM[base: _196, offset: 784B], D.17357
	vmovsd	776(%rax), %xmm15	# MEM[base: _196, offset: 792B], D.17357
	vmovsd	520(%rax), %xmm14	# MEM[base: _196, offset: 536B], D.17357
	vsubsd	%xmm15, %xmm2, %xmm1	# D.17357, D.17357, x0r
	vmovsd	32(%r8,%rcx), %xmm10	# MEM[base: _91, index: ivtmp.1194_891, offset: 32B], wk1r
	vaddsd	%xmm14, %xmm0, %xmm5	# D.17357, D.17357, x0i
	vmovsd	40(%r8,%rcx), %xmm9	# MEM[base: _91, index: ivtmp.1194_891, offset: 40B], wk1i
	vmovsd	904(%rax), %xmm11	# MEM[base: _196, offset: 920B], D.17357
	vaddsd	%xmm2, %xmm15, %xmm15	# D.17357, D.17357, x1r
	vmovsd	648(%rax), %xmm8	# MEM[base: _196, offset: 664B], D.17357
	vsubsd	%xmm0, %xmm14, %xmm14	# D.17357, D.17357, x1i
	vmovsd	640(%rax), %xmm2	# MEM[base: _196, offset: 656B], D.17357
	vmovsd	896(%rax), %xmm0	# MEM[base: _196, offset: 912B], D.17357
	vsubsd	%xmm11, %xmm2, %xmm4	# D.17357, D.17357, x2r
	vmovsd	256(%rsi), %xmm12	# MEM[base: _260, offset: 224B], wd1i
	vaddsd	%xmm8, %xmm0, %xmm3	# D.17357, D.17357, x2i
	vmovsd	264(%rsi), %xmm13	# MEM[base: _260, offset: 232B], wd1r
	vaddsd	%xmm2, %xmm11, %xmm2	# D.17357, D.17357, x3r
	vmulsd	%xmm9, %xmm5, %xmm11	# wk1i, x0i, D.17357
	vmovsd	48(%r8,%rcx), %xmm6	# MEM[base: _91, index: ivtmp.1194_891, offset: 48B], wk3r
	vsubsd	%xmm0, %xmm8, %xmm0	# D.17357, D.17357, x3i
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x0i, D.17357
	vmovsd	56(%r8,%rcx), %xmm7	# MEM[base: _91, index: ivtmp.1194_891, offset: 56B], wk3i
	addq	$32, %rcx	#, ivtmp.1194
	vmulsd	%xmm10, %xmm1, %xmm8	# wk1r, x0r, D.17357
	vmovsd	%xmm6, 8(%rsp)	# wk3r, %sfp
	vmovsd	280(%rsi), %xmm6	# MEM[base: _260, offset: 248B], wd3r
	vmulsd	%xmm9, %xmm1, %xmm1	# wk1i, x0r, D.17357
	vmovsd	%xmm7, 16(%rsp)	# wk3i, %sfp
	vmovsd	272(%rsi), %xmm7	# MEM[base: _260, offset: 240B], wd3i
	vsubsd	%xmm11, %xmm8, %xmm8	# D.17357, D.17357, y0r
	vmulsd	%xmm13, %xmm4, %xmm11	# wd1r, x2r, D.17357
	vaddsd	%xmm5, %xmm1, %xmm1	# D.17357, D.17357, y0i
	vmulsd	%xmm12, %xmm3, %xmm5	# wd1i, x2i, D.17357
	vmulsd	%xmm12, %xmm4, %xmm4	# wd1i, x2r, D.17357
	vmulsd	%xmm13, %xmm3, %xmm3	# wd1r, x2i, D.17357
	vsubsd	%xmm5, %xmm11, %xmm11	# D.17357, D.17357, y2r
	vmovsd	8(%rsp), %xmm5	# %sfp, wk3r
	vaddsd	%xmm3, %xmm4, %xmm4	# D.17357, D.17357, y2i
	vaddsd	%xmm8, %xmm11, %xmm3	# y0r, y2r, D.17357
	vsubsd	%xmm11, %xmm8, %xmm8	# y2r, y0r, D.17357
	vmovsd	%xmm3, 512(%rax)	# D.17357, MEM[base: _196, offset: 528B]
	vaddsd	%xmm1, %xmm4, %xmm3	# y0i, y2i, D.17357
	vsubsd	%xmm4, %xmm1, %xmm1	# y2i, y0i, D.17357
	vmovsd	16(%rsp), %xmm4	# %sfp, wk3i
	vmovsd	%xmm8, 640(%rax)	# D.17357, MEM[base: _196, offset: 656B]
	vmovsd	%xmm3, 520(%rax)	# D.17357, MEM[base: _196, offset: 536B]
	vmulsd	%xmm4, %xmm14, %xmm3	# wk3i, x1i, D.17357
	vmovsd	%xmm1, 648(%rax)	# D.17357, MEM[base: _196, offset: 664B]
	vmulsd	%xmm5, %xmm15, %xmm1	# wk3r, x1r, D.17357
	vmulsd	%xmm5, %xmm14, %xmm14	# wk3r, x1i, D.17357
	vaddsd	%xmm1, %xmm3, %xmm1	# D.17357, D.17357, y0r
	vmulsd	%xmm4, %xmm15, %xmm3	# wk3i, x1r, D.17357
	vmulsd	%xmm7, %xmm0, %xmm4	# wd3i, x3i, D.17357
	vmulsd	%xmm6, %xmm0, %xmm0	# wd3r, x3i, D.17357
	vsubsd	%xmm3, %xmm14, %xmm14	# D.17357, D.17357, y0i
	vmulsd	%xmm6, %xmm2, %xmm3	# wd3r, x3r, D.17357
	vmulsd	%xmm7, %xmm2, %xmm2	# wd3i, x3r, D.17357
	vaddsd	%xmm3, %xmm4, %xmm3	# D.17357, D.17357, y2r
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17357, D.17357, y2i
	vaddsd	%xmm1, %xmm3, %xmm2	# y0r, y2r, D.17357
	vsubsd	%xmm3, %xmm1, %xmm1	# y2r, y0r, D.17357
	vmovsd	%xmm2, 768(%rax)	# D.17357, MEM[base: _196, offset: 784B]
	vaddsd	%xmm14, %xmm0, %xmm2	# y0i, y2i, D.17357
	vsubsd	%xmm0, %xmm14, %xmm14	# y2i, y0i, D.17357
	vmovsd	%xmm1, 896(%rax)	# D.17357, MEM[base: _196, offset: 912B]
	vmovsd	%xmm2, 776(%rax)	# D.17357, MEM[base: _196, offset: 792B]
	vmovsd	%xmm14, 904(%rax)	# D.17357, MEM[base: _196, offset: 920B]
	vmovsd	640(%rdx), %xmm3	# MEM[base: _270, offset: 624B], D.17357
	vmovsd	896(%rdx), %xmm1	# MEM[base: _270, offset: 880B], D.17357
	vmovsd	904(%rdx), %xmm4	# MEM[base: _270, offset: 888B], D.17357
	vmovsd	648(%rdx), %xmm0	# MEM[base: _270, offset: 632B], D.17357
	vsubsd	%xmm4, %xmm3, %xmm2	# D.17357, D.17357, x0r
	vaddsd	%xmm0, %xmm1, %xmm11	# D.17357, D.17357, x0i
	vaddsd	%xmm3, %xmm4, %xmm4	# D.17357, D.17357, x1r
	vmovsd	768(%rdx), %xmm3	# MEM[base: _270, offset: 752B], D.17357
	vsubsd	%xmm1, %xmm0, %xmm0	# D.17357, D.17357, x1i
	vmovsd	1032(%rdx), %xmm15	# MEM[base: _270, offset: 1016B], D.17357
	vmovsd	776(%rdx), %xmm14	# MEM[base: _270, offset: 760B], D.17357
	vmovsd	1024(%rdx), %xmm1	# MEM[base: _270, offset: 1008B], D.17357
	vsubsd	%xmm15, %xmm3, %xmm5	# D.17357, D.17357, x2r
	vaddsd	%xmm3, %xmm15, %xmm3	# D.17357, D.17357, x3r
	vmulsd	%xmm13, %xmm11, %xmm15	# wd1r, x0i, D.17357
	vaddsd	%xmm14, %xmm1, %xmm8	# D.17357, D.17357, x2i
	vmulsd	%xmm12, %xmm11, %xmm11	# wd1i, x0i, D.17357
	vsubsd	%xmm1, %xmm14, %xmm1	# D.17357, D.17357, x3i
	vmulsd	%xmm12, %xmm2, %xmm14	# wd1i, x0r, D.17357
	vmulsd	%xmm13, %xmm2, %xmm2	# wd1r, x0r, D.17357
	vsubsd	%xmm15, %xmm14, %xmm14	# D.17357, D.17357, y0r
	vmulsd	%xmm9, %xmm5, %xmm15	# wk1i, x2r, D.17357
	vaddsd	%xmm11, %xmm2, %xmm11	# D.17357, D.17357, y0i
	vmulsd	%xmm10, %xmm8, %xmm2	# wk1r, x2i, D.17357
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x2r, D.17357
	vmulsd	%xmm9, %xmm8, %xmm8	# wk1i, x2i, D.17357
	vsubsd	%xmm2, %xmm15, %xmm15	# D.17357, D.17357, y2r
	vaddsd	%xmm8, %xmm5, %xmm8	# D.17357, D.17357, y2i
	vmulsd	%xmm6, %xmm0, %xmm5	# wd3r, x1i, D.17357
	vaddsd	%xmm14, %xmm15, %xmm2	# y0r, y2r, D.17357
	vmulsd	%xmm7, %xmm0, %xmm0	# wd3i, x1i, D.17357
	vsubsd	%xmm15, %xmm14, %xmm14	# y2r, y0r, D.17357
	vmovsd	%xmm2, 640(%rdx)	# D.17357, MEM[base: _270, offset: 624B]
	vaddsd	%xmm11, %xmm8, %xmm2	# y0i, y2i, D.17357
	vsubsd	%xmm8, %xmm11, %xmm8	# y2i, y0i, D.17357
	vmovsd	%xmm14, 768(%rdx)	# D.17357, MEM[base: _270, offset: 752B]
	vmovsd	%xmm2, 648(%rdx)	# D.17357, MEM[base: _270, offset: 632B]
	vmulsd	%xmm7, %xmm4, %xmm2	# wd3i, x1r, D.17357
	vmovsd	16(%rsp), %xmm7	# %sfp, wk3i
	vmulsd	%xmm6, %xmm4, %xmm4	# wd3r, x1r, D.17357
	vmovsd	8(%rsp), %xmm6	# %sfp, wk3r
	vmovsd	%xmm8, 776(%rdx)	# D.17357, MEM[base: _270, offset: 760B]
	vaddsd	%xmm2, %xmm5, %xmm2	# D.17357, D.17357, y0r
	vmulsd	%xmm7, %xmm3, %xmm5	# wk3i, x3r, D.17357
	vsubsd	%xmm4, %xmm0, %xmm0	# D.17357, D.17357, y0i
	vmulsd	%xmm6, %xmm1, %xmm4	# wk3r, x3i, D.17357
	vmulsd	%xmm6, %xmm3, %xmm3	# wk3r, x3r, D.17357
	vmulsd	%xmm7, %xmm1, %xmm1	# wk3i, x3i, D.17357
	vaddsd	%xmm5, %xmm4, %xmm5	# D.17357, D.17357, y2r
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17357, D.17357, y2i
	vaddsd	%xmm2, %xmm5, %xmm3	# y0r, y2r, D.17357
	vsubsd	%xmm5, %xmm2, %xmm2	# y2r, y0r, D.17357
	vmovsd	%xmm3, 896(%rdx)	# D.17357, MEM[base: _270, offset: 880B]
	vaddsd	%xmm0, %xmm1, %xmm3	# y0i, y2i, D.17357
	vsubsd	%xmm1, %xmm0, %xmm0	# y2i, y0i, D.17357
	vmovsd	%xmm2, 1024(%rdx)	# D.17357, MEM[base: _270, offset: 1008B]
	vmovsd	%xmm3, 904(%rdx)	# D.17357, MEM[base: _270, offset: 888B]
	vmovsd	%xmm0, 1032(%rdx)	# D.17357, MEM[base: _270, offset: 1016B]
	cmpq	$96, %rcx	#, ivtmp.1194
	jne	.L359	#,
	vmovsd	840(%rbx), %xmm5	# MEM[(double *)a_5(D) + 840B], D.17357
	movq	%r13, %rsi	# D.17360,
	vmovsd	832(%rbx), %xmm1	# MEM[(double *)a_5(D) + 832B], D.17357
	leaq	1024(%rbx), %rbp	#, D.17360
	vmovsd	576(%rbx), %xmm3	# MEM[(double *)a_5(D) + 576B], D.17357
	vmovsd	584(%rbx), %xmm7	# MEM[(double *)a_5(D) + 584B], D.17357
	vsubsd	%xmm5, %xmm3, %xmm2	# D.17357, D.17357, x0r
	vmovsd	712(%rbx), %xmm6	# MEM[(double *)a_5(D) + 712B], D.17357
	vaddsd	%xmm7, %xmm1, %xmm9	# D.17357, D.17357, x0i
	vmovsd	968(%rbx), %xmm10	# MEM[(double *)a_5(D) + 968B], D.17357
	vmovsd	128(%r8), %xmm4	# MEM[(double *)_91 + 128B], wk1r
	vsubsd	%xmm1, %xmm7, %xmm7	# D.17357, D.17357, x1i
	vmovsd	136(%r8), %xmm0	# MEM[(double *)_91 + 136B], wk1i
	vaddsd	%xmm3, %xmm5, %xmm3	# D.17357, D.17357, x1r
	vmovsd	960(%rbx), %xmm1	# MEM[(double *)a_5(D) + 960B], D.17357
	vmulsd	%xmm9, %xmm0, %xmm12	# x0i, wk1i, D.17357
	vmovsd	704(%rbx), %xmm8	# MEM[(double *)a_5(D) + 704B], D.17357
	vmulsd	%xmm9, %xmm4, %xmm9	# x0i, wk1r, D.17357
	vaddsd	%xmm6, %xmm1, %xmm5	# D.17357, D.17357, x2i
	vsubsd	%xmm1, %xmm6, %xmm1	# D.17357, D.17357, x3i
	vmulsd	%xmm2, %xmm4, %xmm6	# x0r, wk1r, D.17357
	vmulsd	%xmm2, %xmm0, %xmm2	# x0r, wk1i, D.17357
	vsubsd	%xmm10, %xmm8, %xmm11	# D.17357, D.17357, x2r
	vaddsd	%xmm8, %xmm10, %xmm8	# D.17357, D.17357, x3r
	vsubsd	%xmm12, %xmm6, %xmm10	# D.17357, D.17357, y0r
	vmulsd	%xmm5, %xmm4, %xmm6	# x2i, wk1r, D.17357
	vaddsd	%xmm9, %xmm2, %xmm2	# D.17357, D.17357, y0i
	vmulsd	%xmm11, %xmm0, %xmm9	# x2r, wk1i, D.17357
	vmulsd	%xmm5, %xmm0, %xmm5	# x2i, wk1i, D.17357
	vsubsd	%xmm6, %xmm9, %xmm9	# D.17357, D.17357, y2r
	vmulsd	%xmm11, %xmm4, %xmm6	# x2r, wk1r, D.17357
	vaddsd	%xmm5, %xmm6, %xmm5	# D.17357, D.17357, y2i
	vaddsd	%xmm10, %xmm9, %xmm6	# y0r, y2r, D.17357
	vmovsd	%xmm6, 576(%rbx)	# D.17357, MEM[(double *)a_5(D) + 576B]
	vaddsd	%xmm2, %xmm5, %xmm6	# y0i, y2i, D.17357
	vsubsd	%xmm5, %xmm2, %xmm5	# y2i, y0i, D.17357
	vmulsd	%xmm7, %xmm4, %xmm2	# x1i, wk1r, D.17357
	vmovsd	%xmm6, 584(%rbx)	# D.17357, MEM[(double *)a_5(D) + 584B]
	vsubsd	%xmm9, %xmm10, %xmm6	# y2r, y0r, D.17357
	vmovsd	%xmm5, 712(%rbx)	# D.17357, MEM[(double *)a_5(D) + 712B]
	vmulsd	%xmm3, %xmm0, %xmm5	# x1r, wk1i, D.17357
	vmulsd	%xmm3, %xmm4, %xmm3	# x1r, wk1r, D.17357
	vmovsd	%xmm6, 704(%rbx)	# D.17357, MEM[(double *)a_5(D) + 704B]
	vmulsd	%xmm1, %xmm0, %xmm6	# x3i, wk1i, D.17357
	vmulsd	%xmm1, %xmm4, %xmm1	# x3i, wk1r, D.17357
	vsubsd	%xmm2, %xmm5, %xmm5	# D.17357, D.17357, y0r
	vmulsd	%xmm7, %xmm0, %xmm2	# x1i, wk1i, D.17357
	vmulsd	%xmm8, %xmm0, %xmm0	# x3r, wk1i, D.17357
	vaddsd	%xmm2, %xmm3, %xmm2	# D.17357, D.17357, y0i
	vmulsd	%xmm8, %xmm4, %xmm3	# x3r, wk1r, D.17357
	vaddsd	%xmm1, %xmm0, %xmm0	# D.17357, D.17357, y2i
	vsubsd	%xmm6, %xmm3, %xmm3	# D.17357, D.17357, y2r
	vsubsd	%xmm3, %xmm5, %xmm1	# y2r, y0r, D.17357
	vaddsd	%xmm5, %xmm3, %xmm3	# y0r, y2r, D.17357
	vmovsd	%xmm1, 832(%rbx)	# D.17357, MEM[(double *)a_5(D) + 832B]
	vsubsd	%xmm0, %xmm2, %xmm1	# y2i, y0i, D.17357
	vaddsd	%xmm2, %xmm0, %xmm0	# y0i, y2i, D.17357
	vmovsd	%xmm3, 960(%rbx)	# D.17357, MEM[(double *)a_5(D) + 960B]
	vmovsd	%xmm1, 840(%rbx)	# D.17357, MEM[(double *)a_5(D) + 840B]
	vmovsd	%xmm0, 968(%rbx)	# D.17357, MEM[(double *)a_5(D) + 968B]
	call	cftf081	#
	leaq	640(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf082	#
	leaq	768(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf081	#
	leaq	896(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf082	#
	movq	%r14, %rsi	# D.17360,
	movq	%rbp, %rdi	# D.17360,
	call	cftmdl1.constprop.5	#
	movq	%r13, %rsi	# D.17360,
	movq	%rbp, %rdi	# D.17360,
	call	cftf081	#
	leaq	1152(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf082	#
	leaq	1280(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf081	#
	leaq	1536(%rbx), %rbp	#, D.17360
	movq	%r13, %rsi	# D.17360,
	leaq	1408(%rbx), %rdi	#, D.17360
	call	cftf081	#
	movq	%r14, %rsi	# D.17360,
	movq	%rbp, %rdi	# D.17360,
	call	cftmdl1.constprop.5	#
	leaq	1920(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf081	#
	movq	%r13, %rsi	# D.17360,
	movq	%rbp, %rdi	# D.17360,
	call	cftf081	#
	leaq	1664(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf082	#
	leaq	1792(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf081	#
	jmp	.L354	#
	.p2align 4,,10
	.p2align 3
.L374:
	leaq	-64(%r8,%rbp,8), %rsi	#, D.17360
	movq	%rbx, %rdi	# a,
	call	cftf161	#
	vmovsd	240(%rbx), %xmm0	# MEM[(double *)a_5(D) + 240B], tmp1084
	vmovsd	16(%rbx), %xmm13	# MEM[(double *)a_5(D) + 16B], x1r
	vmovsd	%xmm0, 16(%rbx)	# tmp1084, MEM[(double *)a_5(D) + 16B]
	vmovsd	248(%rbx), %xmm0	# MEM[(double *)a_5(D) + 248B], tmp1085
	vmovsd	24(%rbx), %xmm12	# MEM[(double *)a_5(D) + 24B], x1i
	vmovsd	%xmm0, 24(%rbx)	# tmp1085, MEM[(double *)a_5(D) + 24B]
	vmovsd	112(%rbx), %xmm0	# MEM[(double *)a_5(D) + 112B], tmp1086
	vmovsd	32(%rbx), %xmm7	# MEM[(double *)a_5(D) + 32B], x2r
	vmovsd	%xmm0, 32(%rbx)	# tmp1086, MEM[(double *)a_5(D) + 32B]
	vmovsd	120(%rbx), %xmm0	# MEM[(double *)a_5(D) + 120B], tmp1087
	vmovsd	40(%rbx), %xmm6	# MEM[(double *)a_5(D) + 40B], x2i
	vmovsd	%xmm0, 40(%rbx)	# tmp1087, MEM[(double *)a_5(D) + 40B]
	vmovsd	176(%rbx), %xmm0	# MEM[(double *)a_5(D) + 176B], tmp1088
	movq	48(%rbx), %r15	# MEM[(double *)a_5(D) + 48B], x3r
	movq	56(%rbx), %r14	# MEM[(double *)a_5(D) + 56B], x3i
	vmovsd	%xmm0, 48(%rbx)	# tmp1088, MEM[(double *)a_5(D) + 48B]
	vmovsd	184(%rbx), %xmm0	# MEM[(double *)a_5(D) + 184B], tmp1089
	vmovsd	64(%rbx), %xmm3	# MEM[(double *)a_5(D) + 64B], x4r
	vmovsd	%xmm0, 56(%rbx)	# tmp1089, MEM[(double *)a_5(D) + 56B]
	vmovsd	208(%rbx), %xmm0	# MEM[(double *)a_5(D) + 208B], tmp1090
	vmovsd	72(%rbx), %xmm2	# MEM[(double *)a_5(D) + 72B], x4i
	movq	%r15, 64(%rbx)	# x3r, MEM[(double *)a_5(D) + 64B]
	vmovsd	80(%rbx), %xmm15	# MEM[(double *)a_5(D) + 80B], x5r
	movq	%r14, 72(%rbx)	# x3i, MEM[(double *)a_5(D) + 72B]
	vmovsd	88(%rbx), %xmm14	# MEM[(double *)a_5(D) + 88B], x5i
	vmovsd	96(%rbx), %xmm11	# MEM[(double *)a_5(D) + 96B], x6r
	vmovsd	104(%rbx), %xmm10	# MEM[(double *)a_5(D) + 104B], x6i
	vmovsd	128(%rbx), %xmm1	# MEM[(double *)a_5(D) + 128B], x8r
	movq	136(%rbx), %rax	# MEM[(double *)a_5(D) + 136B], x8i
	vmovsd	160(%rbx), %xmm9	# MEM[(double *)a_5(D) + 160B], x10r
	vmovsd	168(%rbx), %xmm8	# MEM[(double *)a_5(D) + 168B], x10i
	vmovsd	192(%rbx), %xmm5	# MEM[(double *)a_5(D) + 192B], x12r
	vmovsd	200(%rbx), %xmm4	# MEM[(double *)a_5(D) + 200B], x12i
	vmovsd	%xmm0, 80(%rbx)	# tmp1090, MEM[(double *)a_5(D) + 80B]
	vmovsd	216(%rbx), %xmm0	# MEM[(double *)a_5(D) + 216B], tmp1091
	vmovsd	%xmm15, 96(%rbx)	# x5r, MEM[(double *)a_5(D) + 96B]
	vmovsd	%xmm14, 104(%rbx)	# x5i, MEM[(double *)a_5(D) + 104B]
	vmovsd	%xmm0, 88(%rbx)	# tmp1091, MEM[(double *)a_5(D) + 88B]
	vmovsd	144(%rbx), %xmm0	# MEM[(double *)a_5(D) + 144B], tmp1092
	vmovsd	%xmm13, 128(%rbx)	# x1r, MEM[(double *)a_5(D) + 128B]
	vmovsd	%xmm0, 112(%rbx)	# tmp1092, MEM[(double *)a_5(D) + 112B]
	vmovsd	152(%rbx), %xmm0	# MEM[(double *)a_5(D) + 152B], tmp1093
	vmovsd	%xmm12, 136(%rbx)	# x1i, MEM[(double *)a_5(D) + 136B]
	vmovsd	%xmm0, 120(%rbx)	# tmp1093, MEM[(double *)a_5(D) + 120B]
	vmovsd	224(%rbx), %xmm0	# MEM[(double *)a_5(D) + 224B], tmp1094
	vmovsd	%xmm11, 160(%rbx)	# x6r, MEM[(double *)a_5(D) + 160B]
	vmovsd	%xmm0, 144(%rbx)	# tmp1094, MEM[(double *)a_5(D) + 144B]
	vmovsd	232(%rbx), %xmm0	# MEM[(double *)a_5(D) + 232B], tmp1095
	vmovsd	%xmm10, 168(%rbx)	# x6i, MEM[(double *)a_5(D) + 168B]
	vmovsd	%xmm0, 152(%rbx)	# tmp1095, MEM[(double *)a_5(D) + 152B]
	vmovsd	%xmm9, 176(%rbx)	# x10r, MEM[(double *)a_5(D) + 176B]
	vmovsd	%xmm8, 184(%rbx)	# x10i, MEM[(double *)a_5(D) + 184B]
	vmovsd	%xmm7, 192(%rbx)	# x2r, MEM[(double *)a_5(D) + 192B]
	vmovsd	%xmm6, 200(%rbx)	# x2i, MEM[(double *)a_5(D) + 200B]
	vmovsd	%xmm5, 208(%rbx)	# x12r, MEM[(double *)a_5(D) + 208B]
	vmovsd	%xmm4, 216(%rbx)	# x12i, MEM[(double *)a_5(D) + 216B]
	vmovsd	%xmm3, 224(%rbx)	# x4r, MEM[(double *)a_5(D) + 224B]
	vmovsd	%xmm2, 232(%rbx)	# x4i, MEM[(double *)a_5(D) + 232B]
	vmovsd	%xmm1, 240(%rbx)	# x8r, MEM[(double *)a_5(D) + 240B]
	movq	%rax, 248(%rbx)	# x8i, MEM[(double *)a_5(D) + 248B]
	jmp	.L369	#
	.p2align 4,,10
	.p2align 3
.L355:
	je	.L378	#,
	leaq	-64(%r12,%rbp,8), %rbp	#, D.17360
	movq	%rbx, %rdi	# a,
	movq	%rbp, %rsi	# D.17360,
	call	cftf081	#
	leaq	128(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf082	#
	leaq	256(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf081	#
	leaq	384(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf081	#
.L354:
	movq	40(%rsp), %rsi	# %sfp,
	movq	%rbx, %rdx	# a,
	movl	36(%rsp), %edi	# %sfp,
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	jmp	bitrv2conj	#
	.p2align 4,,10
	.p2align 3
.L375:
	vmovsd	40(%rsi), %xmm3	# MEM[(double *)a_5(D) + 40B], D.17357
	vmovsd	8(%rsi), %xmm7	# MEM[(double *)a_5(D) + 8B], D.17357
	vmovsd	32(%rsi), %xmm0	# MEM[(double *)a_5(D) + 32B], D.17357
	vaddsd	%xmm7, %xmm3, %xmm8	# D.17357, D.17357, x0i
	vmovsd	(%rsi), %xmm6	# *a_5(D), D.17357
	vsubsd	%xmm3, %xmm7, %xmm7	# D.17357, D.17357, x1i
	vmovsd	16(%rsi), %xmm5	# MEM[(double *)a_5(D) + 16B], D.17357
	vmovsd	48(%rsi), %xmm3	# MEM[(double *)a_5(D) + 48B], D.17357
	vaddsd	%xmm6, %xmm0, %xmm9	# D.17357, D.17357, x0r
	vmovsd	24(%rsi), %xmm1	# MEM[(double *)a_5(D) + 24B], D.17357
	vsubsd	%xmm0, %xmm6, %xmm6	# D.17357, D.17357, x1r
	vaddsd	%xmm5, %xmm3, %xmm2	# D.17357, D.17357, x2r
	vmovsd	56(%rsi), %xmm4	# MEM[(double *)a_5(D) + 56B], D.17357
	vsubsd	%xmm3, %xmm5, %xmm3	# D.17357, D.17357, x3r
	vaddsd	%xmm1, %xmm4, %xmm10	# D.17357, D.17357, x2i
	vsubsd	%xmm4, %xmm1, %xmm0	# D.17357, D.17357, x3i
	vaddsd	%xmm9, %xmm2, %xmm1	# x0r, x2r, D.17357
	vsubsd	%xmm2, %xmm9, %xmm2	# x2r, x0r, D.17357
	vmovsd	%xmm1, (%rsi)	# D.17357, *a_5(D)
	vaddsd	%xmm8, %xmm10, %xmm1	# x0i, x2i, D.17357
	vmovsd	%xmm2, 32(%rsi)	# D.17357, MEM[(double *)a_5(D) + 32B]
	vmovsd	%xmm1, 8(%rsi)	# D.17357, MEM[(double *)a_5(D) + 8B]
	vaddsd	%xmm6, %xmm0, %xmm1	# x1r, x3i, D.17357
	vsubsd	%xmm0, %xmm6, %xmm0	# x3i, x1r, D.17357
	vmovsd	%xmm1, 16(%rsi)	# D.17357, MEM[(double *)a_5(D) + 16B]
	vsubsd	%xmm3, %xmm7, %xmm1	# x3r, x1i, D.17357
	vmovsd	%xmm0, 48(%rsi)	# D.17357, MEM[(double *)a_5(D) + 48B]
	vaddsd	%xmm7, %xmm3, %xmm0	# x1i, x3r, D.17357
	vmovsd	%xmm1, 24(%rsi)	# D.17357, MEM[(double *)a_5(D) + 24B]
	vsubsd	%xmm10, %xmm8, %xmm1	# x2i, x0i, D.17357
	vmovsd	%xmm0, 56(%rsi)	# D.17357, MEM[(double *)a_5(D) + 56B]
	vmovsd	%xmm1, 40(%rsi)	# D.17357, MEM[(double *)a_5(D) + 40B]
	ret
	.p2align 4,,10
	.p2align 3
.L377:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	vmovsd	8(%rbx), %xmm2	# MEM[(double *)a_5(D) + 8B], D.17357
	movslq	%ebp, %rax	# nw, D.17359
	movq	%rbx, %r14	# a, ivtmp.1136
	movq	%rbx, %rcx	# a, ivtmp.1172
	vmovsd	(%rbx), %xmm8	# *a_5(D), D.17357
	salq	$3, %rax	#, D.17359
	movq	%rbx, %rdx	# a, ivtmp.1162
	xorl	%esi, %esi	# ivtmp.1155
	vmovsd	520(%rbx), %xmm0	# MEM[(double *)a_5(D) + 520B], D.17357
	leaq	-512(%r12,%rax), %r15	#, D.17360
	vmovsd	512(%rbx), %xmm1	# MEM[(double *)a_5(D) + 512B], D.17357
	vaddsd	%xmm2, %xmm0, %xmm9	# D.17357, D.17357, x0i
	vmovsd	256(%rbx), %xmm6	# MEM[(double *)a_5(D) + 256B], D.17357
	vsubsd	%xmm0, %xmm2, %xmm0	# D.17357, D.17357, x1i
	vmovsd	768(%rbx), %xmm2	# MEM[(double *)a_5(D) + 768B], D.17357
	vaddsd	%xmm8, %xmm1, %xmm7	# D.17357, D.17357, x0r
	vmovsd	776(%rbx), %xmm5	# MEM[(double *)a_5(D) + 776B], D.17357
	vaddsd	%xmm6, %xmm2, %xmm4	# D.17357, D.17357, x2r
	vsubsd	%xmm1, %xmm8, %xmm8	# D.17357, D.17357, x1r
	vmovsd	264(%rbx), %xmm1	# MEM[(double *)a_5(D) + 264B], D.17357
	vsubsd	%xmm2, %xmm6, %xmm2	# D.17357, D.17357, x3r
	vaddsd	%xmm1, %xmm5, %xmm3	# D.17357, D.17357, x2i
	vsubsd	%xmm5, %xmm1, %xmm1	# D.17357, D.17357, x3i
	vaddsd	%xmm7, %xmm4, %xmm5	# x0r, x2r, D.17357
	vsubsd	%xmm4, %xmm7, %xmm4	# x2r, x0r, D.17357
	vmovsd	%xmm5, (%rbx)	# D.17357, *a_5(D)
	vaddsd	%xmm9, %xmm3, %xmm5	# x0i, x2i, D.17357
	vsubsd	%xmm3, %xmm9, %xmm3	# x2i, x0i, D.17357
	vmovsd	%xmm4, 256(%rbx)	# D.17357, MEM[(double *)a_5(D) + 256B]
	vmovsd	%xmm5, 8(%rbx)	# D.17357, MEM[(double *)a_5(D) + 8B]
	vmovsd	%xmm3, 264(%rbx)	# D.17357, MEM[(double *)a_5(D) + 264B]
	vsubsd	%xmm1, %xmm8, %xmm3	# x3i, x1r, D.17357
	vaddsd	%xmm8, %xmm1, %xmm1	# x1r, x3i, D.17357
	vmovsd	%xmm3, 512(%rbx)	# D.17357, MEM[(double *)a_5(D) + 512B]
	vaddsd	%xmm0, %xmm2, %xmm3	# x1i, x3r, D.17357
	vsubsd	%xmm2, %xmm0, %xmm0	# x3r, x1i, D.17357
	vmovsd	%xmm1, 768(%rbx)	# D.17357, MEM[(double *)a_5(D) + 768B]
	vmovsd	%xmm3, 520(%rbx)	# D.17357, MEM[(double *)a_5(D) + 520B]
	vmovsd	%xmm0, 776(%rbx)	# D.17357, MEM[(double *)a_5(D) + 776B]
	vmovsd	8(%r15), %xmm6	# MEM[(double *)_56 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L357:
	vmovsd	24(%rdx), %xmm1	# MEM[base: _427, offset: 24B], D.17357
	subq	$16, %rcx	#, ivtmp.1172
	addq	$16, %rdx	#, ivtmp.1162
	vmovsd	520(%rdx), %xmm2	# MEM[base: _427, offset: 536B], D.17357
	vmovsd	512(%rdx), %xmm3	# MEM[base: _427, offset: 528B], D.17357
	vmovsd	256(%rdx), %xmm14	# MEM[base: _427, offset: 272B], D.17357
	vaddsd	%xmm1, %xmm2, %xmm0	# D.17357, D.17357, x0i
	vmovsd	(%rdx), %xmm4	# MEM[base: _427, offset: 16B], D.17357
	vsubsd	%xmm2, %xmm1, %xmm2	# D.17357, D.17357, x1i
	vmovsd	768(%rdx), %xmm1	# MEM[base: _427, offset: 784B], D.17357
	vaddsd	%xmm4, %xmm3, %xmm10	# D.17357, D.17357, x0r
	vmovsd	264(%rdx), %xmm13	# MEM[base: _427, offset: 280B], D.17357
	vaddsd	%xmm14, %xmm1, %xmm12	# D.17357, D.17357, x2r
	vmovsd	32(%r15,%rsi), %xmm9	# MEM[base: _56, index: ivtmp.1155_887, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.17357, D.17357, x1r
	vmovsd	776(%rdx), %xmm3	# MEM[base: _427, offset: 792B], D.17357
	vmovsd	40(%r15,%rsi), %xmm8	# MEM[base: _56, index: ivtmp.1155_887, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm14, %xmm1	# D.17357, D.17357, x3r
	vaddsd	%xmm13, %xmm3, %xmm11	# D.17357, D.17357, x2i
	vmovsd	48(%r15,%rsi), %xmm5	# MEM[base: _56, index: ivtmp.1155_887, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm13, %xmm3	# D.17357, D.17357, x3i
	vmovsd	56(%r15,%rsi), %xmm7	# MEM[base: _56, index: ivtmp.1155_887, offset: 56B], wk3i
	addq	$32, %rsi	#, ivtmp.1155
	vaddsd	%xmm10, %xmm12, %xmm13	# x0r, x2r, D.17357
	vsubsd	%xmm12, %xmm10, %xmm10	# x2r, x0r, D.17357
	vmovsd	%xmm13, (%rdx)	# D.17357, MEM[base: _427, offset: 16B]
	vaddsd	%xmm0, %xmm11, %xmm13	# x0i, x2i, D.17357
	vsubsd	%xmm11, %xmm0, %xmm0	# x2i, x0i, D.17357
	vmovsd	%xmm10, 256(%rdx)	# D.17357, MEM[base: _427, offset: 272B]
	vaddsd	%xmm2, %xmm1, %xmm10	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm13, 8(%rdx)	# D.17357, MEM[base: _427, offset: 24B]
	vmovsd	%xmm0, 264(%rdx)	# D.17357, MEM[base: _427, offset: 280B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vmulsd	%xmm8, %xmm10, %xmm12	# wk1i, x0i, D.17357
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm9, %xmm10, %xmm10	# wk1r, x0i, D.17357
	vmulsd	%xmm9, %xmm0, %xmm11	# wk1r, x0r, D.17357
	vmulsd	%xmm8, %xmm0, %xmm0	# wk1i, x0r, D.17357
	vmulsd	%xmm5, %xmm3, %xmm2	# wk3r, x0r, D.17357
	vmulsd	%xmm7, %xmm3, %xmm3	# wk3i, x0r, D.17357
	vsubsd	%xmm12, %xmm11, %xmm11	# D.17357, D.17357, D.17357
	vaddsd	%xmm10, %xmm0, %xmm0	# D.17357, D.17357, D.17357
	vmovsd	%xmm11, 512(%rdx)	# D.17357, MEM[base: _427, offset: 528B]
	vmovsd	%xmm0, 520(%rdx)	# D.17357, MEM[base: _427, offset: 536B]
	vmulsd	%xmm7, %xmm1, %xmm0	# wk3i, x0i, D.17357
	vmulsd	%xmm5, %xmm1, %xmm1	# wk3r, x0i, D.17357
	vaddsd	%xmm2, %xmm0, %xmm0	# D.17357, D.17357, D.17357
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17357, D.17357, D.17357
	vmovsd	%xmm0, 768(%rdx)	# D.17357, MEM[base: _427, offset: 784B]
	vmovsd	%xmm1, 776(%rdx)	# D.17357, MEM[base: _427, offset: 792B]
	vmovsd	264(%rcx), %xmm0	# MEM[base: _459, offset: 248B], D.17357
	vmovsd	776(%rcx), %xmm1	# MEM[base: _459, offset: 760B], D.17357
	vmovsd	768(%rcx), %xmm2	# MEM[base: _459, offset: 752B], D.17357
	vmovsd	256(%rcx), %xmm10	# MEM[base: _459, offset: 240B], D.17357
	vaddsd	%xmm0, %xmm1, %xmm4	# D.17357, D.17357, x0i
	vmovsd	512(%rcx), %xmm14	# MEM[base: _459, offset: 496B], D.17357
	vsubsd	%xmm1, %xmm0, %xmm1	# D.17357, D.17357, x1i
	vmovsd	1024(%rcx), %xmm0	# MEM[base: _459, offset: 1008B], D.17357
	vaddsd	%xmm10, %xmm2, %xmm11	# D.17357, D.17357, x0r
	vmovsd	520(%rcx), %xmm3	# MEM[base: _459, offset: 504B], D.17357
	vsubsd	%xmm2, %xmm10, %xmm10	# D.17357, D.17357, x1r
	vaddsd	%xmm14, %xmm0, %xmm13	# D.17357, D.17357, x2r
	vmovsd	1032(%rcx), %xmm2	# MEM[base: _459, offset: 1016B], D.17357
	vsubsd	%xmm0, %xmm14, %xmm0	# D.17357, D.17357, x3r
	vaddsd	%xmm3, %xmm2, %xmm12	# D.17357, D.17357, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.17357, D.17357, x3i
	vaddsd	%xmm11, %xmm13, %xmm2	# x0r, x2r, D.17357
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.17357
	vmovsd	%xmm2, 256(%rcx)	# D.17357, MEM[base: _459, offset: 240B]
	vaddsd	%xmm4, %xmm12, %xmm2	# x0i, x2i, D.17357
	vsubsd	%xmm12, %xmm4, %xmm4	# x2i, x0i, D.17357
	vmovsd	%xmm11, 512(%rcx)	# D.17357, MEM[base: _459, offset: 496B]
	vmovsd	%xmm2, 264(%rcx)	# D.17357, MEM[base: _459, offset: 248B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 520(%rcx)	# D.17357, MEM[base: _459, offset: 504B]
	vsubsd	%xmm3, %xmm10, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm9, %xmm2, %xmm12	# wk1r, x0i, D.17357
	vmulsd	%xmm8, %xmm4, %xmm11	# wk1i, x0r, D.17357
	vmulsd	%xmm8, %xmm2, %xmm8	# wk1i, x0i, D.17357
	vaddsd	%xmm10, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm5, %xmm0, %xmm1	# wk3r, x0i, D.17357
	vmulsd	%xmm9, %xmm4, %xmm4	# wk1r, x0r, D.17357
	vmulsd	%xmm7, %xmm2, %xmm3	# wk3i, x0r, D.17357
	vmulsd	%xmm7, %xmm0, %xmm0	# wk3i, x0i, D.17357
	vsubsd	%xmm12, %xmm11, %xmm11	# D.17357, D.17357, D.17357
	vmulsd	%xmm5, %xmm2, %xmm2	# wk3r, x0r, D.17357
	vaddsd	%xmm8, %xmm4, %xmm4	# D.17357, D.17357, D.17357
	vmovsd	%xmm11, 768(%rcx)	# D.17357, MEM[base: _459, offset: 752B]
	vaddsd	%xmm3, %xmm1, %xmm1	# D.17357, D.17357, D.17357
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17357, D.17357, D.17357
	vmovsd	%xmm4, 776(%rcx)	# D.17357, MEM[base: _459, offset: 760B]
	vmovsd	%xmm1, 1024(%rcx)	# D.17357, MEM[base: _459, offset: 1008B]
	vmovsd	%xmm0, 1032(%rcx)	# D.17357, MEM[base: _459, offset: 1016B]
	cmpq	$224, %rsi	#, ivtmp.1155
	jne	.L357	#,
	vmovsd	648(%rbx), %xmm1	# MEM[(double *)a_5(D) + 648B], D.17357
	leaq	-64(%r12,%rax), %rbp	#, D.17360
	movq	%rbx, %rdi	# a,
	movq	%rax, 8(%rsp)	# D.17359, %sfp
	vmovsd	136(%rbx), %xmm2	# MEM[(double *)a_5(D) + 136B], D.17357
	movq	%rbp, %rsi	# D.17360,
	vmovsd	640(%rbx), %xmm0	# MEM[(double *)a_5(D) + 640B], D.17357
	vmovsd	128(%rbx), %xmm7	# MEM[(double *)a_5(D) + 128B], D.17357
	vaddsd	%xmm2, %xmm1, %xmm3	# D.17357, D.17357, x0i
	vmovsd	384(%rbx), %xmm5	# MEM[(double *)a_5(D) + 384B], D.17357
	vsubsd	%xmm1, %xmm2, %xmm2	# D.17357, D.17357, x1i
	vmovsd	896(%rbx), %xmm1	# MEM[(double *)a_5(D) + 896B], D.17357
	vaddsd	%xmm7, %xmm0, %xmm4	# D.17357, D.17357, x0r
	vmovsd	392(%rbx), %xmm10	# MEM[(double *)a_5(D) + 392B], D.17357
	vsubsd	%xmm0, %xmm7, %xmm7	# D.17357, D.17357, x1r
	vaddsd	%xmm5, %xmm1, %xmm9	# D.17357, D.17357, x2r
	vmovsd	904(%rbx), %xmm0	# MEM[(double *)a_5(D) + 904B], D.17357
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17357, D.17357, x3r
	vaddsd	%xmm10, %xmm0, %xmm8	# D.17357, D.17357, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.17357
	vsubsd	%xmm0, %xmm10, %xmm0	# D.17357, D.17357, x3i
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.17357
	vmovsd	%xmm1, 128(%rbx)	# D.17357, MEM[(double *)a_5(D) + 128B]
	vaddsd	%xmm3, %xmm8, %xmm1	# x0i, x2i, D.17357
	vsubsd	%xmm8, %xmm3, %xmm3	# x2i, x0i, D.17357
	vmovsd	%xmm4, 384(%rbx)	# D.17357, MEM[(double *)a_5(D) + 384B]
	vsubsd	%xmm0, %xmm7, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 136(%rbx)	# D.17357, MEM[(double *)a_5(D) + 136B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 392(%rbx)	# D.17357, MEM[(double *)a_5(D) + 392B]
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, x3i, x0r
	vmovsd	.LC13(%rip), %xmm7	#, tmp1014
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.17357
	vmovaps	%xmm7, 16(%rsp)	# tmp1014, %sfp
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.17357
	vmulsd	%xmm3, %xmm6, %xmm3	# D.17357, wn4r, D.17357
	vmulsd	%xmm1, %xmm6, %xmm1	# D.17357, wn4r, D.17357
	vmovsd	%xmm3, 640(%rbx)	# D.17357, MEM[(double *)a_5(D) + 640B]
	vmovsd	%xmm1, 648(%rbx)	# D.17357, MEM[(double *)a_5(D) + 648B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovapd	%xmm6, %xmm2	# wn4r, D.17357
	vxorpd	%xmm7, %xmm2, %xmm2	# tmp1014, D.17357, D.17357
	vaddsd	%xmm0, %xmm1, %xmm3	# x0r, x0i, D.17357
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.17357
	vmulsd	%xmm3, %xmm2, %xmm2	# D.17357, D.17357, D.17357
	vmulsd	%xmm0, %xmm6, %xmm0	# D.17357, wn4r, D.17357
	vmovsd	%xmm2, 896(%rbx)	# D.17357, MEM[(double *)a_5(D) + 896B]
	vmovsd	%xmm0, 904(%rbx)	# D.17357, MEM[(double *)a_5(D) + 904B]
	call	cftf161	#
	movq	8(%rsp), %rax	# %sfp, D.17359
	leaq	256(%rbx), %rdi	#, D.17360
	leaq	-256(%r12,%rax), %r13	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf162	#
	leaq	512(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf161	#
	leaq	768(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf161	#
	movq	8(%rsp), %rax	# %sfp, D.17359
	movl	$128, %edi	#,
	leaq	1024(%rbx), %rcx	#, D.17360
	movq	%rcx, %rsi	# D.17360,
	movq	%rcx, 8(%rsp)	# D.17360, %sfp
	leaq	-1024(%r12,%rax), %rdx	#, D.17360
	call	cftmdl2	#
	movq	8(%rsp), %rcx	# %sfp, D.17360
	movq	%rbp, %rsi	# D.17360,
	movq	%rcx, %rdi	# D.17360,
	call	cftf161	#
	leaq	1280(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf162	#
	leaq	1536(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf161	#
	leaq	1792(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf162	#
	vmovsd	2048(%rbx), %xmm5	# MEM[(double *)a_5(D) + 2048B], D.17357
	movq	%rbx, %rax	# a, ivtmp.1126
	xorl	%edx, %edx	# ivtmp.1119
	vmovsd	2560(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2560B], D.17357
	leaq	2048(%rbx), %rdi	#, D.17360
	vmovsd	2304(%rbx), %xmm6	# MEM[(double *)a_5(D) + 2304B], D.17357
	vaddsd	%xmm5, %xmm1, %xmm10	# D.17357, D.17357, x0r
	vmovsd	2056(%rbx), %xmm4	# MEM[(double *)a_5(D) + 2056B], D.17357
	vsubsd	%xmm1, %xmm5, %xmm8	# D.17357, D.17357, x1r
	vmovsd	2816(%rbx), %xmm5	# MEM[(double *)a_5(D) + 2816B], D.17357
	vmovsd	2568(%rbx), %xmm0	# MEM[(double *)a_5(D) + 2568B], D.17357
	vaddsd	%xmm6, %xmm5, %xmm3	# D.17357, D.17357, x2r
	vmovsd	2312(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2312B], D.17357
	vaddsd	%xmm4, %xmm0, %xmm9	# D.17357, D.17357, x0i
	vmovapd	16(%rsp), %xmm7	# %sfp, tmp1014
	vsubsd	%xmm0, %xmm4, %xmm0	# D.17357, D.17357, x1i
	vmovsd	2824(%rbx), %xmm4	# MEM[(double *)a_5(D) + 2824B], D.17357
	vsubsd	%xmm5, %xmm6, %xmm5	# D.17357, D.17357, x3r
	vaddsd	%xmm1, %xmm4, %xmm2	# D.17357, D.17357, x2i
	vsubsd	%xmm4, %xmm1, %xmm1	# D.17357, D.17357, x3i
	vaddsd	%xmm10, %xmm3, %xmm4	# x0r, x2r, D.17357
	vsubsd	%xmm3, %xmm10, %xmm3	# x2r, x0r, D.17357
	vmovsd	%xmm4, 2048(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2048B]
	vaddsd	%xmm9, %xmm2, %xmm4	# x0i, x2i, D.17357
	vsubsd	%xmm2, %xmm9, %xmm2	# x2i, x0i, D.17357
	vmovsd	%xmm3, 2304(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2304B]
	vmovsd	%xmm4, 2056(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2056B]
	vmovsd	%xmm2, 2312(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2312B]
	vsubsd	%xmm1, %xmm8, %xmm2	# x3i, x1r, D.17357
	vaddsd	%xmm8, %xmm1, %xmm1	# x1r, x3i, D.17357
	vmovsd	%xmm2, 2560(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2560B]
	vaddsd	%xmm0, %xmm5, %xmm2	# x1i, x3r, D.17357
	vsubsd	%xmm5, %xmm0, %xmm0	# x3r, x1i, D.17357
	vmovsd	%xmm1, 2816(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2816B]
	vmovsd	%xmm2, 2568(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2568B]
	vmovsd	%xmm0, 2824(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2824B]
	vmovsd	8(%r15), %xmm6	# MEM[(double *)_56 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L358:
	vmovsd	2072(%rax), %xmm1	# MEM[base: _1848, offset: 2072B], D.17357
	subq	$16, %r14	#, ivtmp.1136
	addq	$16, %rax	#, ivtmp.1126
	vmovsd	2568(%rax), %xmm2	# MEM[base: _1848, offset: 2584B], D.17357
	vmovsd	2560(%rax), %xmm3	# MEM[base: _1848, offset: 2576B], D.17357
	vmovsd	2304(%rax), %xmm15	# MEM[base: _1848, offset: 2320B], D.17357
	vaddsd	%xmm1, %xmm2, %xmm0	# D.17357, D.17357, x0i
	vmovsd	2048(%rax), %xmm4	# MEM[base: _1848, offset: 2064B], D.17357
	vsubsd	%xmm2, %xmm1, %xmm2	# D.17357, D.17357, x1i
	vmovsd	2816(%rax), %xmm1	# MEM[base: _1848, offset: 2832B], D.17357
	vaddsd	%xmm4, %xmm3, %xmm11	# D.17357, D.17357, x0r
	vmovsd	2312(%rax), %xmm14	# MEM[base: _1848, offset: 2328B], D.17357
	vaddsd	%xmm15, %xmm1, %xmm13	# D.17357, D.17357, x2r
	vmovsd	32(%r15,%rdx), %xmm10	# MEM[base: _56, index: ivtmp.1119_50, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.17357, D.17357, x1r
	vmovsd	2824(%rax), %xmm3	# MEM[base: _1848, offset: 2840B], D.17357
	vmovsd	40(%r15,%rdx), %xmm9	# MEM[base: _56, index: ivtmp.1119_50, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm15, %xmm1	# D.17357, D.17357, x3r
	vaddsd	%xmm14, %xmm3, %xmm12	# D.17357, D.17357, x2i
	vmovsd	48(%r15,%rdx), %xmm5	# MEM[base: _56, index: ivtmp.1119_50, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm14, %xmm3	# D.17357, D.17357, x3i
	vmovsd	56(%r15,%rdx), %xmm8	# MEM[base: _56, index: ivtmp.1119_50, offset: 56B], wk3i
	addq	$32, %rdx	#, ivtmp.1119
	vaddsd	%xmm11, %xmm13, %xmm14	# x0r, x2r, D.17357
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.17357
	vmovsd	%xmm14, 2048(%rax)	# D.17357, MEM[base: _1848, offset: 2064B]
	vaddsd	%xmm0, %xmm12, %xmm14	# x0i, x2i, D.17357
	vsubsd	%xmm12, %xmm0, %xmm0	# x2i, x0i, D.17357
	vmovsd	%xmm11, 2304(%rax)	# D.17357, MEM[base: _1848, offset: 2320B]
	vaddsd	%xmm2, %xmm1, %xmm11	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm14, 2056(%rax)	# D.17357, MEM[base: _1848, offset: 2072B]
	vmovsd	%xmm0, 2312(%rax)	# D.17357, MEM[base: _1848, offset: 2328B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vmulsd	%xmm9, %xmm11, %xmm13	# wk1i, x0i, D.17357
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm10, %xmm11, %xmm11	# wk1r, x0i, D.17357
	vmulsd	%xmm10, %xmm0, %xmm12	# wk1r, x0r, D.17357
	vmulsd	%xmm9, %xmm0, %xmm0	# wk1i, x0r, D.17357
	vmulsd	%xmm5, %xmm3, %xmm2	# wk3r, x0r, D.17357
	vmulsd	%xmm8, %xmm3, %xmm3	# wk3i, x0r, D.17357
	vsubsd	%xmm13, %xmm12, %xmm12	# D.17357, D.17357, D.17357
	vaddsd	%xmm11, %xmm0, %xmm0	# D.17357, D.17357, D.17357
	vmovsd	%xmm12, 2560(%rax)	# D.17357, MEM[base: _1848, offset: 2576B]
	vmovsd	%xmm0, 2568(%rax)	# D.17357, MEM[base: _1848, offset: 2584B]
	vmulsd	%xmm8, %xmm1, %xmm0	# wk3i, x0i, D.17357
	vmulsd	%xmm5, %xmm1, %xmm1	# wk3r, x0i, D.17357
	vaddsd	%xmm2, %xmm0, %xmm0	# D.17357, D.17357, D.17357
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17357, D.17357, D.17357
	vmovsd	%xmm0, 2816(%rax)	# D.17357, MEM[base: _1848, offset: 2832B]
	vmovsd	%xmm1, 2824(%rax)	# D.17357, MEM[base: _1848, offset: 2840B]
	vmovsd	2312(%r14), %xmm0	# MEM[base: _1832, offset: 2296B], D.17357
	vmovsd	2824(%r14), %xmm1	# MEM[base: _1832, offset: 2808B], D.17357
	vmovsd	2816(%r14), %xmm2	# MEM[base: _1832, offset: 2800B], D.17357
	vmovsd	2304(%r14), %xmm11	# MEM[base: _1832, offset: 2288B], D.17357
	vaddsd	%xmm0, %xmm1, %xmm4	# D.17357, D.17357, x0i
	vmovsd	2560(%r14), %xmm15	# MEM[base: _1832, offset: 2544B], D.17357
	vsubsd	%xmm1, %xmm0, %xmm1	# D.17357, D.17357, x1i
	vmovsd	3072(%r14), %xmm0	# MEM[base: _1832, offset: 3056B], D.17357
	vaddsd	%xmm11, %xmm2, %xmm12	# D.17357, D.17357, x0r
	vmovsd	2568(%r14), %xmm3	# MEM[base: _1832, offset: 2552B], D.17357
	vsubsd	%xmm2, %xmm11, %xmm11	# D.17357, D.17357, x1r
	vmovsd	3080(%r14), %xmm2	# MEM[base: _1832, offset: 3064B], D.17357
	vaddsd	%xmm15, %xmm0, %xmm14	# D.17357, D.17357, x2r
	vsubsd	%xmm0, %xmm15, %xmm0	# D.17357, D.17357, x3r
	vaddsd	%xmm3, %xmm2, %xmm13	# D.17357, D.17357, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.17357, D.17357, x3i
	vaddsd	%xmm12, %xmm14, %xmm2	# x0r, x2r, D.17357
	vsubsd	%xmm14, %xmm12, %xmm12	# x2r, x0r, D.17357
	vmovsd	%xmm2, 2304(%r14)	# D.17357, MEM[base: _1832, offset: 2288B]
	vaddsd	%xmm4, %xmm13, %xmm2	# x0i, x2i, D.17357
	vmovsd	%xmm12, 2560(%r14)	# D.17357, MEM[base: _1832, offset: 2544B]
	vsubsd	%xmm13, %xmm4, %xmm4	# x2i, x0i, D.17357
	vmovsd	%xmm2, 2312(%r14)	# D.17357, MEM[base: _1832, offset: 2296B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 2568(%r14)	# D.17357, MEM[base: _1832, offset: 2552B]
	vsubsd	%xmm3, %xmm11, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm10, %xmm2, %xmm13	# wk1r, x0i, D.17357
	vmulsd	%xmm9, %xmm4, %xmm12	# wk1i, x0r, D.17357
	vmulsd	%xmm9, %xmm2, %xmm9	# wk1i, x0i, D.17357
	vaddsd	%xmm11, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm5, %xmm0, %xmm1	# wk3r, x0i, D.17357
	vmulsd	%xmm10, %xmm4, %xmm4	# wk1r, x0r, D.17357
	vmulsd	%xmm8, %xmm2, %xmm3	# wk3i, x0r, D.17357
	vmulsd	%xmm8, %xmm0, %xmm0	# wk3i, x0i, D.17357
	vsubsd	%xmm13, %xmm12, %xmm12	# D.17357, D.17357, D.17357
	vmulsd	%xmm5, %xmm2, %xmm2	# wk3r, x0r, D.17357
	vmovsd	%xmm12, 2816(%r14)	# D.17357, MEM[base: _1832, offset: 2800B]
	vaddsd	%xmm9, %xmm4, %xmm4	# D.17357, D.17357, D.17357
	vaddsd	%xmm3, %xmm1, %xmm1	# D.17357, D.17357, D.17357
	vmovsd	%xmm4, 2824(%r14)	# D.17357, MEM[base: _1832, offset: 2808B]
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17357, D.17357, D.17357
	vmovsd	%xmm1, 3072(%r14)	# D.17357, MEM[base: _1832, offset: 3056B]
	vmovsd	%xmm0, 3080(%r14)	# D.17357, MEM[base: _1832, offset: 3064B]
	cmpq	$224, %rdx	#, ivtmp.1119
	jne	.L358	#,
	vmovsd	2696(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2696B], D.17357
	vxorpd	%xmm6, %xmm7, %xmm7	# wn4r, tmp1014, D.17357
	movq	%rbp, %rsi	# D.17360,
	vmovsd	2184(%rbx), %xmm2	# MEM[(double *)a_5(D) + 2184B], D.17357
	leaq	3072(%rbx), %r12	#, D.17360
	vmovsd	2688(%rbx), %xmm0	# MEM[(double *)a_5(D) + 2688B], D.17357
	vmovsd	2176(%rbx), %xmm8	# MEM[(double *)a_5(D) + 2176B], D.17357
	vaddsd	%xmm2, %xmm1, %xmm3	# D.17357, D.17357, x0i
	vmovsd	2432(%rbx), %xmm5	# MEM[(double *)a_5(D) + 2432B], D.17357
	vsubsd	%xmm1, %xmm2, %xmm2	# D.17357, D.17357, x1i
	vmovsd	2944(%rbx), %xmm1	# MEM[(double *)a_5(D) + 2944B], D.17357
	vaddsd	%xmm8, %xmm0, %xmm4	# D.17357, D.17357, x0r
	vmovsd	2440(%rbx), %xmm10	# MEM[(double *)a_5(D) + 2440B], D.17357
	vsubsd	%xmm0, %xmm8, %xmm8	# D.17357, D.17357, x1r
	vaddsd	%xmm5, %xmm1, %xmm9	# D.17357, D.17357, x2r
	vmovsd	2952(%rbx), %xmm0	# MEM[(double *)a_5(D) + 2952B], D.17357
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17357, D.17357, x3r
	vaddsd	%xmm10, %xmm0, %xmm11	# D.17357, D.17357, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.17357
	vsubsd	%xmm0, %xmm10, %xmm0	# D.17357, D.17357, x3i
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.17357
	vmovsd	%xmm1, 2176(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2176B]
	vaddsd	%xmm3, %xmm11, %xmm1	# x0i, x2i, D.17357
	vsubsd	%xmm11, %xmm3, %xmm3	# x2i, x0i, D.17357
	vmovsd	%xmm4, 2432(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2432B]
	vsubsd	%xmm0, %xmm8, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 2184(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2184B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 2440(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2440B]
	vaddsd	%xmm8, %xmm0, %xmm0	# x1r, x3i, x0r
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.17357
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.17357
	vmulsd	%xmm3, %xmm6, %xmm3	# D.17357, wn4r, D.17357
	vmulsd	%xmm1, %xmm6, %xmm1	# D.17357, wn4r, D.17357
	vmovsd	%xmm3, 2688(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2688B]
	vmovsd	%xmm1, 2696(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2696B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vaddsd	%xmm0, %xmm1, %xmm2	# x0r, x0i, D.17357
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.17357
	vmulsd	%xmm2, %xmm7, %xmm7	# D.17357, D.17357, D.17357
	vmulsd	%xmm0, %xmm6, %xmm0	# D.17357, wn4r, D.17357
	vmovsd	%xmm7, 2944(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2944B]
	vmovsd	%xmm0, 2952(%rbx)	# D.17357, MEM[(double *)a_5(D) + 2952B]
	call	cftf161	#
	leaq	2304(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf162	#
	leaq	2560(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf161	#
	leaq	2816(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf161	#
	movq	%r15, %rdx	# D.17360,
	movq	%r12, %rsi	# D.17360,
	movl	$128, %edi	#,
	call	cftmdl1	#
	leaq	3840(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf161	#
	movq	%rbp, %rsi	# D.17360,
	movq	%r12, %rdi	# D.17360,
	call	cftf161	#
	leaq	3328(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf162	#
	leaq	3584(%rbx), %rdi	#, D.17360
	movq	%rbp, %rsi	# D.17360,
	call	cftf161	#
	jmp	.L354	#
	.p2align 4,,10
	.p2align 3
.L378:
	salq	$3, %rbp	#, D.17359
	movq	%rbx, %rdi	# a,
	leaq	-64(%r12,%rbp), %r13	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf161	#
	leaq	-256(%r12,%rbp), %rsi	#, D.17360
	leaq	256(%rbx), %rdi	#, D.17360
	call	cftf162	#
	leaq	512(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf161	#
	leaq	768(%rbx), %rdi	#, D.17360
	movq	%r13, %rsi	# D.17360,
	call	cftf161	#
	jmp	.L354	#
	.p2align 4,,10
	.p2align 3
.L376:
	movl	36(%rsp), %r15d	# %sfp, n
	movl	%ebp, 8(%rsp)	# nw, %sfp
	movq	%rbx, %rbp	# a, a
	movl	%r15d, %ebx	# n, n
	movq	%r12, %r15	# w, w
	.p2align 4,,10
	.p2align 3
.L352:
	movl	36(%rsp), %r13d	# %sfp, D.17358
	sarl	$2, %ebx	#, n
	movl	8(%rsp), %eax	# %sfp, D.17358
	movl	%ebx, %edx	# n, D.17358
	movl	%ebx, %edi	# n,
	sarl	%edx	# D.17358
	subl	%ebx, %r13d	# n, D.17358
	subl	%edx, %eax	# D.17358, D.17358
	movslq	%r13d, %r12	# D.17358, D.17359
	leaq	0(%rbp,%r12,8), %r14	#, D.17360
	movslq	%eax, %rdx	# D.17358,
	leaq	(%r15,%rdx,8), %rdx	#, D.17360
	movq	%r14, %rsi	# D.17360,
	call	cftmdl1	#
	cmpl	$512, %ebx	#, n
	jg	.L352	#,
	movq	%r14, %rdx	# D.17360, D.17360
	movq	%r12, %r14	# D.17359, D.17359
	movq	%r15, %r12	# w, w
	movl	%ebx, %r15d	# n, n
	movq	%rbp, %rbx	# a, a
	movl	8(%rsp), %ebp	# %sfp, nw
	movq	%r12, %r8	# w,
	movl	$1, %esi	#,
	movl	%r15d, %edi	# n,
	movl	%ebp, %ecx	# nw,
	call	cftleaf	#
	movl	%r15d, %eax	# n, D.17358
	xorl	%r10d, %r10d	# k
	movq	%rbx, 8(%rsp)	# a, %sfp
	negl	%eax	# D.17358
	cltq
	salq	$3, %rax	#, D.17359
	movq	%rax, 16(%rsp)	# D.17359, %sfp
	movslq	%r15d, %rax	# n, D.17359
	subq	%rax, %r14	# D.17359, D.17359
	leaq	(%rbx,%r14,8), %r14	#, ivtmp.1106
	movl	%r10d, %ebx	# k, k
	.p2align 4,,10
	.p2align 3
.L353:
	movq	8(%rsp), %rcx	# %sfp,
	addl	$1, %ebx	#, k
	movl	%r13d, %esi	# j,
	movq	%r12, %r9	# w,
	movl	%ebp, %r8d	# nw,
	movl	%ebx, %edx	# k,
	movl	%r15d, %edi	# n,
	subl	%r15d, %r13d	# n, j
	call	cfttree	#
	movq	%r14, %rdx	# ivtmp.1106,
	movq	%r12, %r8	# w,
	movl	%ebp, %ecx	# nw,
	movl	%eax, %esi	# isplt,
	movl	%r15d, %edi	# n,
	call	cftleaf	#
	addq	16(%rsp), %r14	# %sfp, ivtmp.1106
	testl	%r13d, %r13d	# j
	jg	.L353	#,
	movq	8(%rsp), %rbx	# %sfp, a
	jmp	.L354	#
	.cfi_endproc
.LFE58:
	.size	cftbsub, .-cftbsub
	.section	.text.unlikely
.LCOLDE42:
	.text
.LHOTE42:
	.section	.text.unlikely
.LCOLDB43:
	.text
.LHOTB43:
	.p2align 4,,15
	.globl	cdft
	.type	cdft, @function
cdft:
.LFB36:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rcx, %r10	# ip, ip
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%esi, %r13d	# isgn, isgn
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12	# a, a
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp	# n, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	movl	(%rcx), %ebx	# *ip_5(D), nw
	movq	%r8, (%rsp)	# w, %sfp
	leal	0(,%rbx,4), %eax	#, D.17764
	cmpl	%edi, %eax	# n, D.17764
	jge	.L380	#,
	movl	%edi, %ebx	# n, nw
	movl	$1, 4(%rcx)	#, MEM[(int *)ip_5(D) + 4B]
	sarl	$2, %ebx	#, nw
	movl	%ebx, (%rcx)	# nw, *ip_5(D)
	cmpl	$2, %ebx	#, nw
	jg	.L415	#,
.L380:
	testl	%r13d, %r13d	# isgn
	js	.L381	#,
	cmpl	$8, %ebp	#, n
	jg	.L416	#,
	je	.L417	#,
.L396:
	cmpl	$4, %ebp	#, n
	je	.L418	#,
.L413:
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L416:
	.cfi_restore_state
	cmpl	$32, %ebp	#, n
	jg	.L419	#,
	je	.L420	#,
	movq	(%rsp), %rsi	# %sfp,
	movq	%r12, %rdi	# a,
	call	cftf081	#
	vmovsd	16(%r12), %xmm3	# MEM[(double *)a_13(D) + 16B], x1r
	vmovsd	24(%r12), %xmm2	# MEM[(double *)a_13(D) + 24B], x1i
	vmovsd	48(%r12), %xmm1	# MEM[(double *)a_13(D) + 48B], x3r
	vmovsd	56(%r12), %xmm0	# MEM[(double *)a_13(D) + 56B], x3i
	vmovsd	72(%r12), %xmm6	# MEM[(double *)a_13(D) + 72B], x4i
	vmovsd	%xmm2, 72(%r12)	# x1i, MEM[(double *)a_13(D) + 72B]
	vmovsd	96(%r12), %xmm5	# MEM[(double *)a_13(D) + 96B], x6r
	vmovsd	%xmm1, 96(%r12)	# x3r, MEM[(double *)a_13(D) + 96B]
	vmovsd	104(%r12), %xmm4	# MEM[(double *)a_13(D) + 104B], x6i
	vmovsd	%xmm6, 24(%r12)	# x4i, MEM[(double *)a_13(D) + 24B]
	vmovsd	64(%r12), %xmm7	# MEM[(double *)a_13(D) + 64B], MEM[(double *)a_13(D) + 64B]
	vmovsd	%xmm5, 48(%r12)	# x6r, MEM[(double *)a_13(D) + 48B]
	vmovsd	%xmm4, 56(%r12)	# x6i, MEM[(double *)a_13(D) + 56B]
	vmovsd	%xmm7, 16(%r12)	# MEM[(double *)a_13(D) + 64B], MEM[(double *)a_13(D) + 16B]
	vmovsd	%xmm3, 64(%r12)	# x1r, MEM[(double *)a_13(D) + 64B]
	vmovsd	%xmm0, 104(%r12)	# x3i, MEM[(double *)a_13(D) + 104B]
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L381:
	.cfi_restore_state
	cmpl	$8, %ebp	#, n
	jle	.L397	#,
	cmpl	$32, %ebp	#, n
	jg	.L421	#,
	je	.L422	#,
	movq	(%rsp), %rsi	# %sfp,
	movq	%r12, %rdi	# a,
	call	cftf081	#
	vmovsd	16(%r12), %xmm7	# MEM[(double *)a_13(D) + 16B], x1r
	vmovsd	24(%r12), %xmm6	# MEM[(double *)a_13(D) + 24B], x1i
	vmovsd	32(%r12), %xmm3	# MEM[(double *)a_13(D) + 32B], x2r
	vmovsd	40(%r12), %xmm2	# MEM[(double *)a_13(D) + 40B], x2i
	vmovsd	48(%r12), %xmm11	# MEM[(double *)a_13(D) + 48B], x3r
	vmovsd	56(%r12), %xmm10	# MEM[(double *)a_13(D) + 56B], x3i
	vmovsd	64(%r12), %xmm1	# MEM[(double *)a_13(D) + 64B], x4r
	vmovsd	%xmm11, 32(%r12)	# x3r, MEM[(double *)a_13(D) + 32B]
	vmovsd	72(%r12), %xmm0	# MEM[(double *)a_13(D) + 72B], x4i
	vmovsd	%xmm10, 40(%r12)	# x3i, MEM[(double *)a_13(D) + 40B]
	vmovsd	80(%r12), %xmm9	# MEM[(double *)a_13(D) + 80B], x5r
	vmovsd	%xmm7, 64(%r12)	# x1r, MEM[(double *)a_13(D) + 64B]
	vmovsd	88(%r12), %xmm8	# MEM[(double *)a_13(D) + 88B], x5i
	vmovsd	%xmm6, 72(%r12)	# x1i, MEM[(double *)a_13(D) + 72B]
	vmovsd	96(%r12), %xmm5	# MEM[(double *)a_13(D) + 96B], x6r
	vmovsd	%xmm9, 48(%r12)	# x5r, MEM[(double *)a_13(D) + 48B]
	vmovsd	104(%r12), %xmm4	# MEM[(double *)a_13(D) + 104B], x6i
	vmovsd	%xmm8, 56(%r12)	# x5i, MEM[(double *)a_13(D) + 56B]
	vmovsd	120(%r12), %xmm12	# MEM[(double *)a_13(D) + 120B], x7i
	vmovsd	%xmm5, 80(%r12)	# x6r, MEM[(double *)a_13(D) + 80B]
	vmovsd	112(%r12), %xmm13	# MEM[(double *)a_13(D) + 112B], MEM[(double *)a_13(D) + 112B]
	vmovsd	%xmm4, 88(%r12)	# x6i, MEM[(double *)a_13(D) + 88B]
	vmovsd	%xmm12, 24(%r12)	# x7i, MEM[(double *)a_13(D) + 24B]
	vmovsd	%xmm13, 16(%r12)	# MEM[(double *)a_13(D) + 112B], MEM[(double *)a_13(D) + 16B]
	vmovsd	%xmm3, 96(%r12)	# x2r, MEM[(double *)a_13(D) + 96B]
	vmovsd	%xmm2, 104(%r12)	# x2i, MEM[(double *)a_13(D) + 104B]
	vmovsd	%xmm1, 112(%r12)	# x4r, MEM[(double *)a_13(D) + 112B]
	vmovsd	%xmm0, 120(%r12)	# x4i, MEM[(double *)a_13(D) + 120B]
	jmp	.L413	#
	.p2align 4,,10
	.p2align 3
.L397:
	jne	.L396	#,
	vmovsd	32(%r12), %xmm1	# MEM[(double *)a_13(D) + 32B], D.17765
	vmovsd	(%r12), %xmm7	# *a_13(D), D.17765
	vmovsd	16(%r12), %xmm6	# MEM[(double *)a_13(D) + 16B], D.17765
	vmovsd	48(%r12), %xmm5	# MEM[(double *)a_13(D) + 48B], D.17765
	vaddsd	%xmm7, %xmm1, %xmm10	# D.17765, D.17765, x0r
	vmovsd	40(%r12), %xmm0	# MEM[(double *)a_13(D) + 40B], D.17765
	vsubsd	%xmm1, %xmm7, %xmm7	# D.17765, D.17765, x1r
	vaddsd	%xmm6, %xmm5, %xmm3	# D.17765, D.17765, x2r
	vmovsd	24(%r12), %xmm2	# MEM[(double *)a_13(D) + 24B], D.17765
	vmovsd	8(%r12), %xmm8	# MEM[(double *)a_13(D) + 8B], D.17765
	vmovsd	56(%r12), %xmm4	# MEM[(double *)a_13(D) + 56B], D.17765
	vaddsd	%xmm8, %xmm0, %xmm9	# D.17765, D.17765, x0i
	vaddsd	%xmm2, %xmm4, %xmm11	# D.17765, D.17765, x2i
	vsubsd	%xmm4, %xmm2, %xmm1	# D.17765, D.17765, x3i
	vaddsd	%xmm10, %xmm3, %xmm2	# x0r, x2r, D.17765
	vsubsd	%xmm0, %xmm8, %xmm8	# D.17765, D.17765, x1i
	vsubsd	%xmm5, %xmm6, %xmm0	# D.17765, D.17765, x3r
	vmovsd	%xmm2, (%r12)	# D.17765, *a_13(D)
	vaddsd	%xmm9, %xmm11, %xmm2	# x0i, x2i, D.17765
	vsubsd	%xmm3, %xmm10, %xmm3	# x2r, x0r, D.17765
	vmovsd	%xmm2, 8(%r12)	# D.17765, MEM[(double *)a_13(D) + 8B]
	vaddsd	%xmm7, %xmm1, %xmm2	# x1r, x3i, D.17765
	vsubsd	%xmm1, %xmm7, %xmm1	# x3i, x1r, D.17765
	vmovsd	%xmm3, 32(%r12)	# D.17765, MEM[(double *)a_13(D) + 32B]
	vmovsd	%xmm2, 16(%r12)	# D.17765, MEM[(double *)a_13(D) + 16B]
	vsubsd	%xmm0, %xmm8, %xmm2	# x3r, x1i, D.17765
	vaddsd	%xmm8, %xmm0, %xmm0	# x1i, x3r, D.17765
	vmovsd	%xmm1, 48(%r12)	# D.17765, MEM[(double *)a_13(D) + 48B]
	vmovsd	%xmm2, 24(%r12)	# D.17765, MEM[(double *)a_13(D) + 24B]
	vsubsd	%xmm11, %xmm9, %xmm2	# x2i, x0i, D.17765
	vmovsd	%xmm0, 56(%r12)	# D.17765, MEM[(double *)a_13(D) + 56B]
	vmovsd	%xmm2, 40(%r12)	# D.17765, MEM[(double *)a_13(D) + 40B]
	jmp	.L413	#
	.p2align 4,,10
	.p2align 3
.L415:
	movq	%r8, %rdx	# w,
	movq	%rcx, %rsi	# ip,
	movl	%ebx, %edi	# nw,
	movq	%rcx, 8(%rsp)	# ip, %sfp
	call	makewt.part.0	#
	movq	8(%rsp), %r10	# %sfp, ip
	jmp	.L380	#
	.p2align 4,,10
	.p2align 3
.L420:
	movq	(%rsp), %rax	# %sfp, w
	movslq	%ebx, %rbx	# nw, D.17766
	movq	%r12, %rdi	# a,
	leaq	-64(%rax,%rbx,8), %rsi	#, D.17767
	call	cftf161	#
	vmovsd	64(%r12), %xmm13	# MEM[(double *)a_13(D) + 64B], x4r
	vmovsd	128(%r12), %xmm15	# MEM[(double *)a_13(D) + 128B], MEM[(double *)a_13(D) + 128B]
	vmovsd	16(%r12), %xmm9	# MEM[(double *)a_13(D) + 16B], x1r
	vmovsd	32(%r12), %xmm11	# MEM[(double *)a_13(D) + 32B], x2r
	vmovsd	%xmm15, 16(%r12)	# MEM[(double *)a_13(D) + 128B], MEM[(double *)a_13(D) + 16B]
	vmovsd	%xmm13, 32(%r12)	# x4r, MEM[(double *)a_13(D) + 32B]
	vmovsd	48(%r12), %xmm5	# MEM[(double *)a_13(D) + 48B], x3r
	vmovsd	56(%r12), %xmm4	# MEM[(double *)a_13(D) + 56B], x3i
	vmovsd	%xmm11, 64(%r12)	# x2r, MEM[(double *)a_13(D) + 64B]
	vmovsd	192(%r12), %xmm15	# MEM[(double *)a_13(D) + 192B], tmp1267
	vmovsd	200(%r12), %xmm13	# MEM[(double *)a_13(D) + 200B], tmp1268
	vmovsd	%xmm15, 48(%r12)	# tmp1267, MEM[(double *)a_13(D) + 48B]
	vmovsd	88(%r12), %xmm6	# MEM[(double *)a_13(D) + 88B], x5i
	vmovsd	%xmm13, 56(%r12)	# tmp1268, MEM[(double *)a_13(D) + 56B]
	vmovsd	40(%r12), %xmm10	# MEM[(double *)a_13(D) + 40B], x2i
	vmovsd	160(%r12), %xmm15	# MEM[(double *)a_13(D) + 160B], tmp1269
	vmovsd	168(%r12), %xmm13	# MEM[(double *)a_13(D) + 168B], tmp1270
	vmovsd	72(%r12), %xmm12	# MEM[(double *)a_13(D) + 72B], x4i
	vmovsd	%xmm10, 72(%r12)	# x2i, MEM[(double *)a_13(D) + 72B]
	vmovsd	80(%r12), %xmm7	# MEM[(double *)a_13(D) + 80B], x5r
	vmovsd	%xmm13, 88(%r12)	# tmp1270, MEM[(double *)a_13(D) + 88B]
	vmovsd	%xmm15, 80(%r12)	# tmp1269, MEM[(double *)a_13(D) + 80B]
	vmovsd	24(%r12), %xmm8	# MEM[(double *)a_13(D) + 24B], x1i
	vmovsd	112(%r12), %xmm1	# MEM[(double *)a_13(D) + 112B], x7r
	vmovsd	%xmm12, 40(%r12)	# x4i, MEM[(double *)a_13(D) + 40B]
	vmovsd	136(%r12), %xmm14	# MEM[(double *)a_13(D) + 136B], x8i
	vmovsd	224(%r12), %xmm15	# MEM[(double *)a_13(D) + 224B], tmp1271
	vmovsd	120(%r12), %xmm0	# MEM[(double *)a_13(D) + 120B], x7i
	vmovsd	%xmm14, 24(%r12)	# x8i, MEM[(double *)a_13(D) + 24B]
	vmovsd	232(%r12), %xmm13	# MEM[(double *)a_13(D) + 232B], tmp1272
	vmovsd	%xmm15, 112(%r12)	# tmp1271, MEM[(double *)a_13(D) + 112B]
	vmovsd	176(%r12), %xmm3	# MEM[(double *)a_13(D) + 176B], x11r
	vmovsd	184(%r12), %xmm2	# MEM[(double *)a_13(D) + 184B], x11i
	vmovsd	%xmm13, 120(%r12)	# tmp1272, MEM[(double *)a_13(D) + 120B]
	vmovsd	%xmm6, 168(%r12)	# x5i, MEM[(double *)a_13(D) + 168B]
	vmovsd	208(%r12), %xmm6	# MEM[(double *)a_13(D) + 208B], tmp1273
	vmovsd	%xmm9, 128(%r12)	# x1r, MEM[(double *)a_13(D) + 128B]
	vmovsd	%xmm6, 176(%r12)	# tmp1273, MEM[(double *)a_13(D) + 176B]
	vmovsd	216(%r12), %xmm6	# MEM[(double *)a_13(D) + 216B], tmp1274
	vmovsd	%xmm8, 136(%r12)	# x1i, MEM[(double *)a_13(D) + 136B]
	vmovsd	%xmm7, 160(%r12)	# x5r, MEM[(double *)a_13(D) + 160B]
	vmovsd	%xmm6, 184(%r12)	# tmp1274, MEM[(double *)a_13(D) + 184B]
	vmovsd	%xmm5, 192(%r12)	# x3r, MEM[(double *)a_13(D) + 192B]
	vmovsd	%xmm4, 200(%r12)	# x3i, MEM[(double *)a_13(D) + 200B]
	vmovsd	%xmm3, 208(%r12)	# x11r, MEM[(double *)a_13(D) + 208B]
	vmovsd	%xmm2, 216(%r12)	# x11i, MEM[(double *)a_13(D) + 216B]
	vmovsd	%xmm1, 224(%r12)	# x7r, MEM[(double *)a_13(D) + 224B]
	vmovsd	%xmm0, 232(%r12)	# x7i, MEM[(double *)a_13(D) + 232B]
	jmp	.L413	#
.L418:
	vmovsd	(%r12), %xmm1	# *a_13(D), D.17765
	vmovsd	16(%r12), %xmm3	# MEM[(double *)a_13(D) + 16B], D.17765
	vmovsd	8(%r12), %xmm0	# MEM[(double *)a_13(D) + 8B], D.17765
	vaddsd	%xmm1, %xmm3, %xmm4	# D.17765, D.17765, D.17765
	vmovsd	24(%r12), %xmm2	# MEM[(double *)a_13(D) + 24B], D.17765
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17765, D.17765, x0r
	vmovsd	%xmm4, (%r12)	# D.17765, *a_13(D)
	vaddsd	%xmm0, %xmm2, %xmm4	# D.17765, D.17765, D.17765
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17765, D.17765, x0i
	vmovsd	%xmm1, 16(%r12)	# x0r, MEM[(double *)a_13(D) + 16B]
	vmovsd	%xmm4, 8(%r12)	# D.17765, MEM[(double *)a_13(D) + 8B]
	vmovsd	%xmm0, 24(%r12)	# x0i, MEM[(double *)a_13(D) + 24B]
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L419:
	.cfi_restore_state
	movq	(%rsp), %rdi	# %sfp, w
	movl	%ebp, %eax	# n, D.17764
	movl	%ebx, %ecx	# nw, D.17764
	movq	%r12, %rsi	# a,
	sarl	$2, %eax	#, D.17764
	movq	%r10, 8(%rsp)	# ip, %sfp
	subl	%eax, %ecx	# D.17764, D.17764
	movslq	%ecx, %rax	# D.17764,
	leaq	(%rdi,%rax,8), %rdx	#, D.17767
	movl	%ebp, %edi	# n,
	call	cftf1st	#
	cmpl	$512, %ebp	#, n
	movq	8(%rsp), %r10	# %sfp, ip
	jg	.L423	#,
	cmpl	$128, %ebp	#, n
	jle	.L388	#,
	cmpl	$512, %ebp	#, n
	je	.L424	#,
	movq	(%rsp), %r15	# %sfp, w
	movslq	%ebx, %rbx	# nw, D.17766
	movq	%r12, %rdi	# a,
	movq	%r10, 8(%rsp)	# ip, %sfp
	salq	$3, %rbx	#, D.17766
	leaq	-256(%r15,%rbx), %r14	#, D.17767
	leaq	-64(%r15,%rbx), %r13	#, D.17767
	movq	%r14, %rsi	# D.17767,
	call	cftmdl1.constprop.5	#
	movq	%r13, %rsi	# D.17767,
	movq	%r12, %rdi	# a,
	call	cftf081	#
	leaq	128(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf082	#
	leaq	256(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf081	#
	leaq	384(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf081	#
	movq	8(%rsp), %r10	# %sfp, ip
	movq	%r12, %rdx	# a, ivtmp.1344
	movq	%r12, %rax	# a, ivtmp.1334
	vmovsd	512(%r12), %xmm0	# MEM[(double *)a_13(D) + 512B], D.17765
	xorl	%ecx, %ecx	# ivtmp.1321
	vmovsd	776(%r12), %xmm7	# MEM[(double *)a_13(D) + 776B], D.17765
	leaq	-512(%r15,%rbx), %r8	#, D.17767
	vmovsd	768(%r12), %xmm1	# MEM[(double *)a_13(D) + 768B], D.17765
	movq	%r8, %rsi	# D.17767, ivtmp.1328
	vsubsd	%xmm7, %xmm0, %xmm9	# D.17765, D.17765, x0r
	vmovsd	8(%r8), %xmm4	# MEM[(double *)_103 + 8B], wn4r
	leaq	512(%r12), %rdi	#, D.17767
	vmovsd	896(%r12), %xmm3	# MEM[(double *)a_13(D) + 896B], D.17765
	vaddsd	%xmm0, %xmm7, %xmm7	# D.17765, D.17765, x1r
	vmovsd	520(%r12), %xmm5	# MEM[(double *)a_13(D) + 520B], D.17765
	vmovsd	640(%r12), %xmm0	# MEM[(double *)a_13(D) + 640B], D.17765
	vmovsd	904(%r12), %xmm10	# MEM[(double *)a_13(D) + 904B], D.17765
	vaddsd	%xmm5, %xmm1, %xmm8	# D.17765, D.17765, x0i
	vmovsd	648(%r12), %xmm6	# MEM[(double *)a_13(D) + 648B], D.17765
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17765, D.17765, x1i
	vsubsd	%xmm10, %xmm0, %xmm1	# D.17765, D.17765, x2r
	vaddsd	%xmm6, %xmm3, %xmm2	# D.17765, D.17765, x2i
	vsubsd	%xmm3, %xmm6, %xmm6	# D.17765, D.17765, x3i
	vaddsd	%xmm0, %xmm10, %xmm0	# D.17765, D.17765, x3r
	vsubsd	%xmm2, %xmm1, %xmm3	# x2i, x2r, D.17765
	vaddsd	%xmm1, %xmm2, %xmm1	# x2r, x2i, D.17765
	vmulsd	%xmm3, %xmm4, %xmm3	# D.17765, wn4r, y0r
	vmulsd	%xmm1, %xmm4, %xmm1	# D.17765, wn4r, y0i
	vaddsd	%xmm9, %xmm3, %xmm2	# x0r, y0r, D.17765
	vsubsd	%xmm3, %xmm9, %xmm3	# y0r, x0r, D.17765
	vmovsd	%xmm2, 512(%r12)	# D.17765, MEM[(double *)a_13(D) + 512B]
	vaddsd	%xmm8, %xmm1, %xmm2	# x0i, y0i, D.17765
	vmovsd	%xmm3, 640(%r12)	# D.17765, MEM[(double *)a_13(D) + 640B]
	vsubsd	%xmm1, %xmm8, %xmm1	# y0i, x0i, D.17765
	vmovsd	%xmm2, 520(%r12)	# D.17765, MEM[(double *)a_13(D) + 520B]
	vaddsd	%xmm0, %xmm6, %xmm2	# x3r, x3i, D.17765
	vmovsd	%xmm1, 648(%r12)	# D.17765, MEM[(double *)a_13(D) + 648B]
	vsubsd	%xmm6, %xmm0, %xmm1	# x3i, x3r, D.17765
	vmulsd	%xmm2, %xmm4, %xmm0	# D.17765, wn4r, y0i
	vmulsd	%xmm1, %xmm4, %xmm1	# D.17765, wn4r, y0r
	vsubsd	%xmm0, %xmm7, %xmm2	# y0i, x1r, D.17765
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, y0i, D.17765
	vmovsd	%xmm2, 768(%r12)	# D.17765, MEM[(double *)a_13(D) + 768B]
	vaddsd	%xmm5, %xmm1, %xmm2	# x1i, y0r, D.17765
	vmovsd	%xmm0, 896(%r12)	# D.17765, MEM[(double *)a_13(D) + 896B]
	vsubsd	%xmm1, %xmm5, %xmm0	# y0r, x1i, D.17765
	vmovsd	%xmm2, 776(%r12)	# D.17765, MEM[(double *)a_13(D) + 776B]
	vmovsd	%xmm0, 904(%r12)	# D.17765, MEM[(double *)a_13(D) + 904B]
	.p2align 4,,10
	.p2align 3
.L392:
	vmovsd	528(%rax), %xmm2	# MEM[base: _208, offset: 528B], D.17765
	subq	$32, %rsi	#, ivtmp.1328
	addq	$16, %rax	#, ivtmp.1334
	subq	$16, %rdx	#, ivtmp.1344
	vmovsd	768(%rax), %xmm0	# MEM[base: _208, offset: 784B], D.17765
	vmovsd	776(%rax), %xmm15	# MEM[base: _208, offset: 792B], D.17765
	vmovsd	520(%rax), %xmm14	# MEM[base: _208, offset: 536B], D.17765
	vsubsd	%xmm15, %xmm2, %xmm1	# D.17765, D.17765, x0r
	vmovsd	32(%r8,%rcx), %xmm10	# MEM[base: _103, index: ivtmp.1321_911, offset: 32B], wk1r
	vaddsd	%xmm14, %xmm0, %xmm5	# D.17765, D.17765, x0i
	vmovsd	40(%r8,%rcx), %xmm9	# MEM[base: _103, index: ivtmp.1321_911, offset: 40B], wk1i
	vmovsd	904(%rax), %xmm11	# MEM[base: _208, offset: 920B], D.17765
	vaddsd	%xmm2, %xmm15, %xmm15	# D.17765, D.17765, x1r
	vmovsd	648(%rax), %xmm8	# MEM[base: _208, offset: 664B], D.17765
	vsubsd	%xmm0, %xmm14, %xmm14	# D.17765, D.17765, x1i
	vmovsd	640(%rax), %xmm2	# MEM[base: _208, offset: 656B], D.17765
	vmovsd	896(%rax), %xmm0	# MEM[base: _208, offset: 912B], D.17765
	vsubsd	%xmm11, %xmm2, %xmm4	# D.17765, D.17765, x2r
	vmovsd	256(%rsi), %xmm12	# MEM[base: _272, offset: 224B], wd1i
	vaddsd	%xmm8, %xmm0, %xmm3	# D.17765, D.17765, x2i
	vmovsd	264(%rsi), %xmm13	# MEM[base: _272, offset: 232B], wd1r
	vaddsd	%xmm2, %xmm11, %xmm2	# D.17765, D.17765, x3r
	vmulsd	%xmm9, %xmm5, %xmm11	# wk1i, x0i, D.17765
	vmovsd	48(%r8,%rcx), %xmm6	# MEM[base: _103, index: ivtmp.1321_911, offset: 48B], wk3r
	vsubsd	%xmm0, %xmm8, %xmm0	# D.17765, D.17765, x3i
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x0i, D.17765
	vmovsd	56(%r8,%rcx), %xmm7	# MEM[base: _103, index: ivtmp.1321_911, offset: 56B], wk3i
	addq	$32, %rcx	#, ivtmp.1321
	vmulsd	%xmm10, %xmm1, %xmm8	# wk1r, x0r, D.17765
	vmovsd	%xmm6, (%rsp)	# wk3r, %sfp
	vmovsd	280(%rsi), %xmm6	# MEM[base: _272, offset: 248B], wd3r
	vmulsd	%xmm9, %xmm1, %xmm1	# wk1i, x0r, D.17765
	vmovsd	%xmm7, 8(%rsp)	# wk3i, %sfp
	vmovsd	272(%rsi), %xmm7	# MEM[base: _272, offset: 240B], wd3i
	vsubsd	%xmm11, %xmm8, %xmm8	# D.17765, D.17765, y0r
	vmulsd	%xmm13, %xmm4, %xmm11	# wd1r, x2r, D.17765
	vaddsd	%xmm5, %xmm1, %xmm1	# D.17765, D.17765, y0i
	vmulsd	%xmm12, %xmm3, %xmm5	# wd1i, x2i, D.17765
	vmulsd	%xmm12, %xmm4, %xmm4	# wd1i, x2r, D.17765
	vmulsd	%xmm13, %xmm3, %xmm3	# wd1r, x2i, D.17765
	vsubsd	%xmm5, %xmm11, %xmm11	# D.17765, D.17765, y2r
	vmovsd	(%rsp), %xmm5	# %sfp, wk3r
	vaddsd	%xmm3, %xmm4, %xmm4	# D.17765, D.17765, y2i
	vaddsd	%xmm8, %xmm11, %xmm3	# y0r, y2r, D.17765
	vsubsd	%xmm11, %xmm8, %xmm8	# y2r, y0r, D.17765
	vmovsd	%xmm3, 512(%rax)	# D.17765, MEM[base: _208, offset: 528B]
	vaddsd	%xmm1, %xmm4, %xmm3	# y0i, y2i, D.17765
	vsubsd	%xmm4, %xmm1, %xmm1	# y2i, y0i, D.17765
	vmovsd	8(%rsp), %xmm4	# %sfp, wk3i
	vmovsd	%xmm8, 640(%rax)	# D.17765, MEM[base: _208, offset: 656B]
	vmovsd	%xmm3, 520(%rax)	# D.17765, MEM[base: _208, offset: 536B]
	vmulsd	%xmm4, %xmm14, %xmm3	# wk3i, x1i, D.17765
	vmovsd	%xmm1, 648(%rax)	# D.17765, MEM[base: _208, offset: 664B]
	vmulsd	%xmm5, %xmm15, %xmm1	# wk3r, x1r, D.17765
	vmulsd	%xmm5, %xmm14, %xmm14	# wk3r, x1i, D.17765
	vaddsd	%xmm1, %xmm3, %xmm1	# D.17765, D.17765, y0r
	vmulsd	%xmm4, %xmm15, %xmm3	# wk3i, x1r, D.17765
	vmulsd	%xmm7, %xmm0, %xmm4	# wd3i, x3i, D.17765
	vmulsd	%xmm6, %xmm0, %xmm0	# wd3r, x3i, D.17765
	vsubsd	%xmm3, %xmm14, %xmm14	# D.17765, D.17765, y0i
	vmulsd	%xmm6, %xmm2, %xmm3	# wd3r, x3r, D.17765
	vmulsd	%xmm7, %xmm2, %xmm2	# wd3i, x3r, D.17765
	vaddsd	%xmm3, %xmm4, %xmm3	# D.17765, D.17765, y2r
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17765, D.17765, y2i
	vaddsd	%xmm1, %xmm3, %xmm2	# y0r, y2r, D.17765
	vsubsd	%xmm3, %xmm1, %xmm1	# y2r, y0r, D.17765
	vmovsd	%xmm2, 768(%rax)	# D.17765, MEM[base: _208, offset: 784B]
	vaddsd	%xmm14, %xmm0, %xmm2	# y0i, y2i, D.17765
	vsubsd	%xmm0, %xmm14, %xmm14	# y2i, y0i, D.17765
	vmovsd	%xmm1, 896(%rax)	# D.17765, MEM[base: _208, offset: 912B]
	vmovsd	%xmm2, 776(%rax)	# D.17765, MEM[base: _208, offset: 792B]
	vmovsd	%xmm14, 904(%rax)	# D.17765, MEM[base: _208, offset: 920B]
	vmovsd	640(%rdx), %xmm3	# MEM[base: _286, offset: 624B], D.17765
	vmovsd	648(%rdx), %xmm1	# MEM[base: _286, offset: 632B], D.17765
	vmovsd	904(%rdx), %xmm4	# MEM[base: _286, offset: 888B], D.17765
	vmovsd	896(%rdx), %xmm0	# MEM[base: _286, offset: 880B], D.17765
	vsubsd	%xmm4, %xmm3, %xmm2	# D.17765, D.17765, x0r
	vaddsd	%xmm1, %xmm0, %xmm11	# D.17765, D.17765, x0i
	vaddsd	%xmm3, %xmm4, %xmm4	# D.17765, D.17765, x1r
	vmovsd	768(%rdx), %xmm3	# MEM[base: _286, offset: 752B], D.17765
	vsubsd	%xmm0, %xmm1, %xmm0	# D.17765, D.17765, x1i
	vmovsd	1032(%rdx), %xmm15	# MEM[base: _286, offset: 1016B], D.17765
	vmovsd	776(%rdx), %xmm14	# MEM[base: _286, offset: 760B], D.17765
	vmovsd	1024(%rdx), %xmm1	# MEM[base: _286, offset: 1008B], D.17765
	vsubsd	%xmm15, %xmm3, %xmm5	# D.17765, D.17765, x2r
	vaddsd	%xmm3, %xmm15, %xmm3	# D.17765, D.17765, x3r
	vmulsd	%xmm13, %xmm11, %xmm15	# wd1r, x0i, D.17765
	vaddsd	%xmm14, %xmm1, %xmm8	# D.17765, D.17765, x2i
	vmulsd	%xmm12, %xmm11, %xmm11	# wd1i, x0i, D.17765
	vsubsd	%xmm1, %xmm14, %xmm1	# D.17765, D.17765, x3i
	vmulsd	%xmm12, %xmm2, %xmm14	# wd1i, x0r, D.17765
	vmulsd	%xmm13, %xmm2, %xmm2	# wd1r, x0r, D.17765
	vmulsd	%xmm10, %xmm8, %xmm12	# wk1r, x2i, D.17765
	vmulsd	%xmm9, %xmm8, %xmm8	# wk1i, x2i, D.17765
	vsubsd	%xmm15, %xmm14, %xmm14	# D.17765, D.17765, y0r
	vaddsd	%xmm11, %xmm2, %xmm2	# D.17765, D.17765, y0i
	vmulsd	%xmm9, %xmm5, %xmm11	# wk1i, x2r, D.17765
	vmulsd	%xmm10, %xmm5, %xmm5	# wk1r, x2r, D.17765
	vsubsd	%xmm12, %xmm11, %xmm11	# D.17765, D.17765, y2r
	vaddsd	%xmm8, %xmm5, %xmm5	# D.17765, D.17765, y2i
	vaddsd	%xmm14, %xmm11, %xmm8	# y0r, y2r, D.17765
	vsubsd	%xmm11, %xmm14, %xmm14	# y2r, y0r, D.17765
	vmovsd	%xmm8, 640(%rdx)	# D.17765, MEM[base: _286, offset: 624B]
	vaddsd	%xmm2, %xmm5, %xmm8	# y0i, y2i, D.17765
	vsubsd	%xmm5, %xmm2, %xmm5	# y2i, y0i, D.17765
	vmulsd	%xmm7, %xmm4, %xmm2	# wd3i, x1r, D.17765
	vmovsd	%xmm14, 768(%rdx)	# D.17765, MEM[base: _286, offset: 752B]
	vmulsd	%xmm6, %xmm4, %xmm4	# wd3r, x1r, D.17765
	vmovsd	%xmm8, 648(%rdx)	# D.17765, MEM[base: _286, offset: 632B]
	vmovsd	%xmm5, 776(%rdx)	# D.17765, MEM[base: _286, offset: 760B]
	vmulsd	%xmm6, %xmm0, %xmm5	# wd3r, x1i, D.17765
	vmovsd	(%rsp), %xmm6	# %sfp, wk3r
	vmulsd	%xmm7, %xmm0, %xmm0	# wd3i, x1i, D.17765
	vmovsd	8(%rsp), %xmm7	# %sfp, wk3i
	vaddsd	%xmm2, %xmm5, %xmm2	# D.17765, D.17765, y0r
	vmulsd	%xmm7, %xmm3, %xmm5	# wk3i, x3r, D.17765
	vsubsd	%xmm4, %xmm0, %xmm0	# D.17765, D.17765, y0i
	vmulsd	%xmm6, %xmm1, %xmm4	# wk3r, x3i, D.17765
	vmulsd	%xmm6, %xmm3, %xmm3	# wk3r, x3r, D.17765
	vmulsd	%xmm7, %xmm1, %xmm1	# wk3i, x3i, D.17765
	vaddsd	%xmm5, %xmm4, %xmm4	# D.17765, D.17765, y2r
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17765, D.17765, y2i
	vaddsd	%xmm2, %xmm4, %xmm3	# y0r, y2r, D.17765
	vsubsd	%xmm4, %xmm2, %xmm2	# y2r, y0r, D.17765
	vmovsd	%xmm3, 896(%rdx)	# D.17765, MEM[base: _286, offset: 880B]
	vaddsd	%xmm0, %xmm1, %xmm3	# y0i, y2i, D.17765
	vsubsd	%xmm1, %xmm0, %xmm0	# y2i, y0i, D.17765
	vmovsd	%xmm2, 1024(%rdx)	# D.17765, MEM[base: _286, offset: 1008B]
	vmovsd	%xmm3, 904(%rdx)	# D.17765, MEM[base: _286, offset: 888B]
	vmovsd	%xmm0, 1032(%rdx)	# D.17765, MEM[base: _286, offset: 1016B]
	cmpq	$96, %rcx	#, ivtmp.1321
	jne	.L392	#,
	vmovsd	840(%r12), %xmm5	# MEM[(double *)a_13(D) + 840B], D.17765
	movq	%r13, %rsi	# D.17767,
	movq	%r10, (%rsp)	# ip, %sfp
	vmovsd	584(%r12), %xmm2	# MEM[(double *)a_13(D) + 584B], D.17765
	leaq	1024(%r12), %rbx	#, D.17767
	vmovsd	832(%r12), %xmm1	# MEM[(double *)a_13(D) + 832B], D.17765
	vmovsd	576(%r12), %xmm3	# MEM[(double *)a_13(D) + 576B], D.17765
	vmovsd	128(%r8), %xmm4	# MEM[(double *)_103 + 128B], wk1r
	vaddsd	%xmm2, %xmm1, %xmm12	# D.17765, D.17765, x0i
	vmovsd	136(%r8), %xmm0	# MEM[(double *)_103 + 136B], wk1i
	vsubsd	%xmm5, %xmm3, %xmm9	# D.17765, D.17765, x0r
	vmovsd	704(%r12), %xmm6	# MEM[(double *)a_13(D) + 704B], D.17765
	vsubsd	%xmm1, %xmm2, %xmm7	# D.17765, D.17765, x1i
	vmovsd	968(%r12), %xmm8	# MEM[(double *)a_13(D) + 968B], D.17765
	vaddsd	%xmm3, %xmm5, %xmm3	# D.17765, D.17765, x1r
	vmovsd	712(%r12), %xmm2	# MEM[(double *)a_13(D) + 712B], D.17765
	vmovsd	960(%r12), %xmm1	# MEM[(double *)a_13(D) + 960B], D.17765
	vsubsd	%xmm8, %xmm6, %xmm11	# D.17765, D.17765, x2r
	vaddsd	%xmm6, %xmm8, %xmm8	# D.17765, D.17765, x3r
	vmulsd	%xmm9, %xmm4, %xmm6	# x0r, wk1r, D.17765
	vaddsd	%xmm2, %xmm1, %xmm5	# D.17765, D.17765, x2i
	vmulsd	%xmm9, %xmm0, %xmm9	# x0r, wk1i, D.17765
	vsubsd	%xmm1, %xmm2, %xmm1	# D.17765, D.17765, x3i
	vmulsd	%xmm12, %xmm0, %xmm2	# x0i, wk1i, D.17765
	vsubsd	%xmm2, %xmm6, %xmm10	# D.17765, D.17765, y0r
	vmulsd	%xmm12, %xmm4, %xmm2	# x0i, wk1r, D.17765
	vmulsd	%xmm5, %xmm4, %xmm6	# x2i, wk1r, D.17765
	vmulsd	%xmm5, %xmm0, %xmm5	# x2i, wk1i, D.17765
	vaddsd	%xmm2, %xmm9, %xmm2	# D.17765, D.17765, y0i
	vmulsd	%xmm11, %xmm0, %xmm9	# x2r, wk1i, D.17765
	vsubsd	%xmm6, %xmm9, %xmm9	# D.17765, D.17765, y2r
	vmulsd	%xmm11, %xmm4, %xmm6	# x2r, wk1r, D.17765
	vaddsd	%xmm5, %xmm6, %xmm5	# D.17765, D.17765, y2i
	vaddsd	%xmm10, %xmm9, %xmm6	# y0r, y2r, D.17765
	vmovsd	%xmm6, 576(%r12)	# D.17765, MEM[(double *)a_13(D) + 576B]
	vaddsd	%xmm2, %xmm5, %xmm6	# y0i, y2i, D.17765
	vsubsd	%xmm5, %xmm2, %xmm5	# y2i, y0i, D.17765
	vmulsd	%xmm7, %xmm4, %xmm2	# x1i, wk1r, D.17765
	vmovsd	%xmm6, 584(%r12)	# D.17765, MEM[(double *)a_13(D) + 584B]
	vsubsd	%xmm9, %xmm10, %xmm6	# y2r, y0r, D.17765
	vmovsd	%xmm5, 712(%r12)	# D.17765, MEM[(double *)a_13(D) + 712B]
	vmulsd	%xmm3, %xmm0, %xmm5	# x1r, wk1i, D.17765
	vmulsd	%xmm3, %xmm4, %xmm3	# x1r, wk1r, D.17765
	vmovsd	%xmm6, 704(%r12)	# D.17765, MEM[(double *)a_13(D) + 704B]
	vmulsd	%xmm1, %xmm0, %xmm6	# x3i, wk1i, D.17765
	vmulsd	%xmm1, %xmm4, %xmm1	# x3i, wk1r, D.17765
	vsubsd	%xmm2, %xmm5, %xmm5	# D.17765, D.17765, y0r
	vmulsd	%xmm7, %xmm0, %xmm2	# x1i, wk1i, D.17765
	vmulsd	%xmm8, %xmm0, %xmm0	# x3r, wk1i, D.17765
	vaddsd	%xmm2, %xmm3, %xmm2	# D.17765, D.17765, y0i
	vmulsd	%xmm8, %xmm4, %xmm3	# x3r, wk1r, D.17765
	vaddsd	%xmm1, %xmm0, %xmm0	# D.17765, D.17765, y2i
	vsubsd	%xmm6, %xmm3, %xmm3	# D.17765, D.17765, y2r
	vsubsd	%xmm3, %xmm5, %xmm1	# y2r, y0r, D.17765
	vaddsd	%xmm5, %xmm3, %xmm3	# y0r, y2r, D.17765
	vmovsd	%xmm1, 832(%r12)	# D.17765, MEM[(double *)a_13(D) + 832B]
	vsubsd	%xmm0, %xmm2, %xmm1	# y2i, y0i, D.17765
	vmovsd	%xmm3, 960(%r12)	# D.17765, MEM[(double *)a_13(D) + 960B]
	vaddsd	%xmm2, %xmm0, %xmm0	# y0i, y2i, D.17765
	vmovsd	%xmm1, 840(%r12)	# D.17765, MEM[(double *)a_13(D) + 840B]
	vmovsd	%xmm0, 968(%r12)	# D.17765, MEM[(double *)a_13(D) + 968B]
	call	cftf081	#
	leaq	640(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf082	#
	leaq	768(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf081	#
	leaq	896(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf082	#
	movq	%rbx, %rdi	# D.17767,
	movq	%r14, %rsi	# D.17767,
	call	cftmdl1.constprop.5	#
	movq	%rbx, %rdi	# D.17767,
	movq	%r13, %rsi	# D.17767,
	call	cftf081	#
	leaq	1152(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf082	#
	leaq	1280(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf081	#
	leaq	1536(%r12), %rbx	#, D.17767
	movq	%r13, %rsi	# D.17767,
	leaq	1408(%r12), %rdi	#, D.17767
	call	cftf081	#
	movq	%r14, %rsi	# D.17767,
	movq	%rbx, %rdi	# D.17767,
	call	cftmdl1.constprop.5	#
	leaq	1920(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf081	#
	movq	%r13, %rsi	# D.17767,
	movq	%rbx, %rdi	# D.17767,
	call	cftf081	#
	leaq	1664(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf082	#
	leaq	1792(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf081	#
	movq	(%rsp), %r10	# %sfp, ip
	jmp	.L387	#
	.p2align 4,,10
	.p2align 3
.L421:
	movq	(%rsp), %rdi	# %sfp, w
	movl	%ebp, %eax	# n, D.17764
	movl	%ebx, %ecx	# nw, D.17764
	movq	%r12, %rsi	# a,
	sarl	$2, %eax	#, D.17764
	movq	%r10, 8(%rsp)	# ip, %sfp
	subl	%eax, %ecx	# D.17764, D.17764
	movslq	%ecx, %rax	# D.17764,
	leaq	(%rdi,%rax,8), %rdx	#, D.17767
	movl	%ebp, %edi	# n,
	call	cftb1st	#
	cmpl	$512, %ebp	#, n
	movq	8(%rsp), %r10	# %sfp, ip
	jg	.L425	#,
	movq	%r10, 8(%rsp)	# ip, %sfp
	cmpl	$128, %ebp	#, n
	jle	.L403	#,
	movq	(%rsp), %r8	# %sfp,
	movl	%ebx, %ecx	# nw,
	movq	%r12, %rdx	# a,
	movl	$1, %esi	#,
	movl	%ebp, %edi	# n,
	call	cftleaf	#
	movq	8(%rsp), %r10	# %sfp, ip
.L402:
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rdx	# a,
	movl	%ebp, %edi	# n,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	movq	%r10, %rsi	# ip,
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	jmp	bitrv2conj	#
	.p2align 4,,10
	.p2align 3
.L388:
	.cfi_restore_state
	movq	%r10, 8(%rsp)	# ip, %sfp
	movslq	%ebx, %rbx	# nw, D.17766
	je	.L426	#,
	movq	(%rsp), %rax	# %sfp, w
	movq	%r12, %rdi	# a,
	leaq	-64(%rax,%rbx,8), %rbx	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf081	#
	leaq	128(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf082	#
	leaq	256(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf081	#
	leaq	384(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf081	#
	movq	8(%rsp), %r10	# %sfp, ip
.L387:
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rdx	# a,
	movl	%ebp, %edi	# n,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	movq	%r10, %rsi	# ip,
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	jmp	bitrv2	#
	.p2align 4,,10
	.p2align 3
.L425:
	.cfi_restore_state
	movl	%ebp, %r15d	# n, n
	movl	%ebx, 8(%rsp)	# nw, %sfp
	movq	%r10, 16(%rsp)	# ip, %sfp
	.p2align 4,,10
	.p2align 3
.L400:
	movl	8(%rsp), %eax	# %sfp, D.17764
	sarl	$2, %r15d	#, n
	movl	%ebp, %r13d	# n, D.17764
	movl	%r15d, %edx	# n, D.17764
	subl	%r15d, %r13d	# n, D.17764
	movl	%r15d, %edi	# n,
	sarl	%edx	# D.17764
	movslq	%r13d, %rbx	# D.17764, D.17766
	leaq	(%r12,%rbx,8), %r14	#, D.17767
	subl	%edx, %eax	# D.17764, D.17764
	movq	%r14, %rsi	# D.17767,
	movslq	%eax, %rdx	# D.17764,
	movq	(%rsp), %rax	# %sfp, w
	leaq	(%rax,%rdx,8), %rdx	#, D.17767
	call	cftmdl1	#
	cmpl	$512, %r15d	#, n
	jg	.L400	#,
	movl	%r13d, %eax	# D.17764, D.17764
	movq	%rbx, %r13	# D.17766, D.17766
	movl	8(%rsp), %ebx	# %sfp, nw
	movq	%r14, %rdx	# D.17767,
	movq	16(%rsp), %r10	# %sfp, ip
	movl	$1, %esi	#,
	movl	%r15d, %edi	# n,
	xorl	%r14d, %r14d	# k
	movq	(%rsp), %r8	# %sfp,
	movl	%eax, 8(%rsp)	# D.17764, %sfp
	movl	%ebx, %ecx	# nw,
	movq	%r10, 40(%rsp)	# ip, %sfp
	call	cftleaf	#
	movl	%r15d, %eax	# n, D.17764
	movl	%ebp, 32(%rsp)	# n, %sfp
	movl	8(%rsp), %ebp	# %sfp, j
	negl	%eax	# D.17764
	movq	%r12, 8(%rsp)	# a, %sfp
	cltq
	leaq	0(,%rax,8), %rcx	#, D.17766
	movslq	%r15d, %rax	# n, D.17766
	subq	%rax, %r13	# D.17766, D.17766
	movq	%rcx, 16(%rsp)	# D.17766, %sfp
	leaq	(%r12,%r13,8), %r13	#, ivtmp.1358
	movl	%r14d, %r12d	# k, k
	movq	(%rsp), %r14	# %sfp, w
	.p2align 4,,10
	.p2align 3
.L401:
	movq	8(%rsp), %rcx	# %sfp,
	addl	$1, %r12d	#, k
	movl	%ebp, %esi	# j,
	movq	%r14, %r9	# w,
	movl	%ebx, %r8d	# nw,
	movl	%r12d, %edx	# k,
	movl	%r15d, %edi	# n,
	subl	%r15d, %ebp	# n, j
	call	cfttree	#
	movq	%r13, %rdx	# ivtmp.1358,
	movq	%r14, %r8	# w,
	movl	%ebx, %ecx	# nw,
	movl	%eax, %esi	# isplt,
	movl	%r15d, %edi	# n,
	call	cftleaf	#
	addq	16(%rsp), %r13	# %sfp, ivtmp.1358
	testl	%ebp, %ebp	# j
	jg	.L401	#,
	movl	32(%rsp), %ebp	# %sfp, n
	movq	8(%rsp), %r12	# %sfp, a
	movq	40(%rsp), %r10	# %sfp, ip
	jmp	.L402	#
	.p2align 4,,10
	.p2align 3
.L422:
	movq	(%rsp), %rax	# %sfp, w
	movslq	%ebx, %rbx	# nw, D.17766
	movq	%r12, %rdi	# a,
	leaq	-64(%rax,%rbx,8), %rsi	#, D.17767
	call	cftf161	#
	vmovsd	16(%r12), %xmm13	# MEM[(double *)a_13(D) + 16B], x1r
	vmovsd	240(%r12), %xmm0	# MEM[(double *)a_13(D) + 240B], tmp1290
	vmovsd	24(%r12), %xmm12	# MEM[(double *)a_13(D) + 24B], x1i
	vmovsd	%xmm0, 16(%r12)	# tmp1290, MEM[(double *)a_13(D) + 16B]
	vmovsd	32(%r12), %xmm7	# MEM[(double *)a_13(D) + 32B], x2r
	vmovsd	248(%r12), %xmm0	# MEM[(double *)a_13(D) + 248B], tmp1291
	vmovsd	40(%r12), %xmm6	# MEM[(double *)a_13(D) + 40B], x2i
	vmovsd	%xmm0, 24(%r12)	# tmp1291, MEM[(double *)a_13(D) + 24B]
	vmovsd	112(%r12), %xmm0	# MEM[(double *)a_13(D) + 112B], tmp1292
	movq	48(%r12), %r14	# MEM[(double *)a_13(D) + 48B], x3r
	vmovsd	%xmm0, 32(%r12)	# tmp1292, MEM[(double *)a_13(D) + 32B]
	vmovsd	120(%r12), %xmm0	# MEM[(double *)a_13(D) + 120B], tmp1293
	movq	56(%r12), %r13	# MEM[(double *)a_13(D) + 56B], x3i
	vmovsd	%xmm0, 40(%r12)	# tmp1293, MEM[(double *)a_13(D) + 40B]
	vmovsd	64(%r12), %xmm3	# MEM[(double *)a_13(D) + 64B], x4r
	vmovsd	176(%r12), %xmm0	# MEM[(double *)a_13(D) + 176B], tmp1294
	movq	%r14, 64(%r12)	# x3r, MEM[(double *)a_13(D) + 64B]
	vmovsd	72(%r12), %xmm2	# MEM[(double *)a_13(D) + 72B], x4i
	vmovsd	%xmm0, 48(%r12)	# tmp1294, MEM[(double *)a_13(D) + 48B]
	vmovsd	80(%r12), %xmm15	# MEM[(double *)a_13(D) + 80B], x5r
	vmovsd	184(%r12), %xmm0	# MEM[(double *)a_13(D) + 184B], tmp1295
	movq	%r13, 72(%r12)	# x3i, MEM[(double *)a_13(D) + 72B]
	vmovsd	88(%r12), %xmm14	# MEM[(double *)a_13(D) + 88B], x5i
	vmovsd	%xmm0, 56(%r12)	# tmp1295, MEM[(double *)a_13(D) + 56B]
	vmovsd	208(%r12), %xmm0	# MEM[(double *)a_13(D) + 208B], tmp1296
	vmovsd	96(%r12), %xmm11	# MEM[(double *)a_13(D) + 96B], x6r
	vmovsd	104(%r12), %xmm10	# MEM[(double *)a_13(D) + 104B], x6i
	vmovsd	128(%r12), %xmm1	# MEM[(double *)a_13(D) + 128B], x8r
	movq	136(%r12), %rax	# MEM[(double *)a_13(D) + 136B], x8i
	vmovsd	160(%r12), %xmm9	# MEM[(double *)a_13(D) + 160B], x10r
	vmovsd	168(%r12), %xmm8	# MEM[(double *)a_13(D) + 168B], x10i
	vmovsd	192(%r12), %xmm5	# MEM[(double *)a_13(D) + 192B], x12r
	vmovsd	200(%r12), %xmm4	# MEM[(double *)a_13(D) + 200B], x12i
	vmovsd	%xmm0, 80(%r12)	# tmp1296, MEM[(double *)a_13(D) + 80B]
	vmovsd	216(%r12), %xmm0	# MEM[(double *)a_13(D) + 216B], tmp1297
	vmovsd	%xmm15, 96(%r12)	# x5r, MEM[(double *)a_13(D) + 96B]
	vmovsd	%xmm14, 104(%r12)	# x5i, MEM[(double *)a_13(D) + 104B]
	vmovsd	%xmm0, 88(%r12)	# tmp1297, MEM[(double *)a_13(D) + 88B]
	vmovsd	144(%r12), %xmm0	# MEM[(double *)a_13(D) + 144B], tmp1298
	vmovsd	%xmm13, 128(%r12)	# x1r, MEM[(double *)a_13(D) + 128B]
	vmovsd	%xmm0, 112(%r12)	# tmp1298, MEM[(double *)a_13(D) + 112B]
	vmovsd	152(%r12), %xmm0	# MEM[(double *)a_13(D) + 152B], tmp1299
	vmovsd	%xmm12, 136(%r12)	# x1i, MEM[(double *)a_13(D) + 136B]
	vmovsd	%xmm0, 120(%r12)	# tmp1299, MEM[(double *)a_13(D) + 120B]
	vmovsd	224(%r12), %xmm0	# MEM[(double *)a_13(D) + 224B], tmp1300
	vmovsd	%xmm11, 160(%r12)	# x6r, MEM[(double *)a_13(D) + 160B]
	vmovsd	%xmm0, 144(%r12)	# tmp1300, MEM[(double *)a_13(D) + 144B]
	vmovsd	232(%r12), %xmm0	# MEM[(double *)a_13(D) + 232B], tmp1301
	vmovsd	%xmm10, 168(%r12)	# x6i, MEM[(double *)a_13(D) + 168B]
	vmovsd	%xmm0, 152(%r12)	# tmp1301, MEM[(double *)a_13(D) + 152B]
	vmovsd	%xmm9, 176(%r12)	# x10r, MEM[(double *)a_13(D) + 176B]
	vmovsd	%xmm8, 184(%r12)	# x10i, MEM[(double *)a_13(D) + 184B]
	vmovsd	%xmm7, 192(%r12)	# x2r, MEM[(double *)a_13(D) + 192B]
	vmovsd	%xmm6, 200(%r12)	# x2i, MEM[(double *)a_13(D) + 200B]
	vmovsd	%xmm5, 208(%r12)	# x12r, MEM[(double *)a_13(D) + 208B]
	vmovsd	%xmm4, 216(%r12)	# x12i, MEM[(double *)a_13(D) + 216B]
	vmovsd	%xmm3, 224(%r12)	# x4r, MEM[(double *)a_13(D) + 224B]
	vmovsd	%xmm2, 232(%r12)	# x4i, MEM[(double *)a_13(D) + 232B]
	vmovsd	%xmm1, 240(%r12)	# x8r, MEM[(double *)a_13(D) + 240B]
	movq	%rax, 248(%r12)	# x8i, MEM[(double *)a_13(D) + 248B]
	jmp	.L413	#
	.p2align 4,,10
	.p2align 3
.L417:
	vmovsd	8(%r12), %xmm4	# MEM[(double *)a_13(D) + 8B], D.17765
	vmovsd	40(%r12), %xmm0	# MEM[(double *)a_13(D) + 40B], D.17765
	vmovsd	32(%r12), %xmm1	# MEM[(double *)a_13(D) + 32B], D.17765
	vaddsd	%xmm4, %xmm0, %xmm8	# D.17765, D.17765, x0i
	vmovsd	(%r12), %xmm7	# *a_13(D), D.17765
	vsubsd	%xmm0, %xmm4, %xmm0	# D.17765, D.17765, x1i
	vmovsd	16(%r12), %xmm6	# MEM[(double *)a_13(D) + 16B], D.17765
	vmovsd	48(%r12), %xmm4	# MEM[(double *)a_13(D) + 48B], D.17765
	vaddsd	%xmm7, %xmm1, %xmm9	# D.17765, D.17765, x0r
	vmovsd	24(%r12), %xmm2	# MEM[(double *)a_13(D) + 24B], D.17765
	vsubsd	%xmm1, %xmm7, %xmm7	# D.17765, D.17765, x1r
	vaddsd	%xmm6, %xmm4, %xmm3	# D.17765, D.17765, x2r
	vmovsd	56(%r12), %xmm5	# MEM[(double *)a_13(D) + 56B], D.17765
	vsubsd	%xmm4, %xmm6, %xmm4	# D.17765, D.17765, x3r
	vaddsd	%xmm2, %xmm5, %xmm10	# D.17765, D.17765, x2i
	vsubsd	%xmm5, %xmm2, %xmm1	# D.17765, D.17765, x3i
	vaddsd	%xmm9, %xmm3, %xmm2	# x0r, x2r, D.17765
	vsubsd	%xmm3, %xmm9, %xmm3	# x2r, x0r, D.17765
	vmovsd	%xmm2, (%r12)	# D.17765, *a_13(D)
	vaddsd	%xmm8, %xmm10, %xmm2	# x0i, x2i, D.17765
	vmovsd	%xmm3, 32(%r12)	# D.17765, MEM[(double *)a_13(D) + 32B]
	vmovsd	%xmm2, 8(%r12)	# D.17765, MEM[(double *)a_13(D) + 8B]
	vsubsd	%xmm1, %xmm7, %xmm2	# x3i, x1r, D.17765
	vaddsd	%xmm7, %xmm1, %xmm1	# x1r, x3i, D.17765
	vmovsd	%xmm2, 16(%r12)	# D.17765, MEM[(double *)a_13(D) + 16B]
	vaddsd	%xmm0, %xmm4, %xmm2	# x1i, x3r, D.17765
	vsubsd	%xmm4, %xmm0, %xmm0	# x3r, x1i, D.17765
	vmovsd	%xmm1, 48(%r12)	# D.17765, MEM[(double *)a_13(D) + 48B]
	vmovsd	%xmm2, 24(%r12)	# D.17765, MEM[(double *)a_13(D) + 24B]
	vsubsd	%xmm10, %xmm8, %xmm2	# x2i, x0i, D.17765
	vmovsd	%xmm0, 56(%r12)	# D.17765, MEM[(double *)a_13(D) + 56B]
	vmovsd	%xmm2, 40(%r12)	# D.17765, MEM[(double *)a_13(D) + 40B]
	jmp	.L413	#
	.p2align 4,,10
	.p2align 3
.L423:
	movl	%ebp, %r14d	# n, n
	movl	%ebx, 8(%rsp)	# nw, %sfp
	movq	%r10, 16(%rsp)	# ip, %sfp
	.p2align 4,,10
	.p2align 3
.L385:
	movl	8(%rsp), %eax	# %sfp, D.17764
	sarl	$2, %r14d	#, n
	movl	%ebp, %r15d	# n, D.17764
	movl	%r14d, %edx	# n, D.17764
	subl	%r14d, %r15d	# n, D.17764
	movl	%r14d, %edi	# n,
	sarl	%edx	# D.17764
	movslq	%r15d, %rbx	# D.17764, D.17766
	leaq	(%r12,%rbx,8), %r13	#, D.17767
	subl	%edx, %eax	# D.17764, D.17764
	movq	%r13, %rsi	# D.17767,
	movslq	%eax, %rdx	# D.17764,
	movq	(%rsp), %rax	# %sfp, w
	leaq	(%rax,%rdx,8), %rdx	#, D.17767
	call	cftmdl1	#
	cmpl	$512, %r14d	#, n
	jg	.L385	#,
	movq	%r13, %rdx	# D.17767, D.17767
	movq	%rbx, %r13	# D.17766, D.17766
	movl	8(%rsp), %ebx	# %sfp, nw
	movl	$1, %esi	#,
	movq	16(%rsp), %r10	# %sfp, ip
	movl	%r14d, %edi	# n,
	movq	(%rsp), %r8	# %sfp,
	movl	%ebx, %ecx	# nw,
	movq	%r10, 40(%rsp)	# ip, %sfp
	call	cftleaf	#
	movl	%r14d, %eax	# n, D.17764
	movl	%ebp, 32(%rsp)	# n, %sfp
	movq	(%rsp), %rbp	# %sfp, w
	negl	%eax	# D.17764
	xorl	%r11d, %r11d	# k
	movq	%r12, 8(%rsp)	# a, %sfp
	cltq
	salq	$3, %rax	#, D.17766
	movq	%rax, 16(%rsp)	# D.17766, %sfp
	movslq	%r14d, %rax	# n, D.17766
	subq	%rax, %r13	# D.17766, D.17766
	leaq	(%r12,%r13,8), %r13	#, ivtmp.1233
	movl	%r11d, %r12d	# k, k
	.p2align 4,,10
	.p2align 3
.L386:
	movq	8(%rsp), %rcx	# %sfp,
	addl	$1, %r12d	#, k
	movl	%r15d, %esi	# j,
	movq	%rbp, %r9	# w,
	movl	%ebx, %r8d	# nw,
	movl	%r12d, %edx	# k,
	movl	%r14d, %edi	# n,
	subl	%r14d, %r15d	# n, j
	call	cfttree	#
	movq	%r13, %rdx	# ivtmp.1233,
	movq	%rbp, %r8	# w,
	movl	%ebx, %ecx	# nw,
	movl	%eax, %esi	# isplt,
	movl	%r14d, %edi	# n,
	call	cftleaf	#
	addq	16(%rsp), %r13	# %sfp, ivtmp.1233
	testl	%r15d, %r15d	# j
	jg	.L386	#,
	movl	32(%rsp), %ebp	# %sfp, n
	movq	8(%rsp), %r12	# %sfp, a
	movq	40(%rsp), %r10	# %sfp, ip
	jmp	.L387	#
	.p2align 4,,10
	.p2align 3
.L403:
	movslq	%ebx, %rbx	# nw, D.17766
	je	.L427	#,
	movq	(%rsp), %rax	# %sfp, w
	movq	%r12, %rdi	# a,
	leaq	-64(%rax,%rbx,8), %rbx	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf081	#
	leaq	128(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf082	#
	leaq	256(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf081	#
	leaq	384(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf081	#
	movq	8(%rsp), %r10	# %sfp, ip
	jmp	.L402	#
.L424:
	vmovsd	8(%r12), %xmm2	# MEM[(double *)a_13(D) + 8B], D.17765
	movslq	%ebx, %rax	# nw, D.17766
	movq	%r12, %r14	# a, ivtmp.1263
	movq	%r12, %rdx	# a, ivtmp.1289
	vmovsd	520(%r12), %xmm0	# MEM[(double *)a_13(D) + 520B], D.17765
	salq	$3, %rax	#, D.17766
	xorl	%esi, %esi	# ivtmp.1282
	vmovsd	512(%r12), %xmm1	# MEM[(double *)a_13(D) + 512B], D.17765
	vaddsd	%xmm2, %xmm0, %xmm9	# D.17765, D.17765, x0i
	vmovsd	(%r12), %xmm8	# *a_13(D), D.17765
	vmovsd	256(%r12), %xmm6	# MEM[(double *)a_13(D) + 256B], D.17765
	vsubsd	%xmm0, %xmm2, %xmm0	# D.17765, D.17765, x1i
	vmovsd	768(%r12), %xmm2	# MEM[(double *)a_13(D) + 768B], D.17765
	vaddsd	%xmm8, %xmm1, %xmm7	# D.17765, D.17765, x0r
	vmovsd	776(%r12), %xmm5	# MEM[(double *)a_13(D) + 776B], D.17765
	vsubsd	%xmm1, %xmm8, %xmm8	# D.17765, D.17765, x1r
	vaddsd	%xmm6, %xmm2, %xmm4	# D.17765, D.17765, x2r
	movq	(%rsp), %rcx	# %sfp, w
	vmovsd	264(%r12), %xmm1	# MEM[(double *)a_13(D) + 264B], D.17765
	vsubsd	%xmm2, %xmm6, %xmm2	# D.17765, D.17765, x3r
	vaddsd	%xmm1, %xmm5, %xmm3	# D.17765, D.17765, x2i
	vsubsd	%xmm5, %xmm1, %xmm1	# D.17765, D.17765, x3i
	leaq	-512(%rcx,%rax), %r15	#, D.17767
	movq	%r12, %rcx	# a, ivtmp.1299
	vaddsd	%xmm7, %xmm4, %xmm5	# x0r, x2r, D.17765
	vsubsd	%xmm4, %xmm7, %xmm4	# x2r, x0r, D.17765
	vmovsd	%xmm5, (%r12)	# D.17765, *a_13(D)
	vaddsd	%xmm9, %xmm3, %xmm5	# x0i, x2i, D.17765
	vmovsd	%xmm4, 256(%r12)	# D.17765, MEM[(double *)a_13(D) + 256B]
	vsubsd	%xmm3, %xmm9, %xmm3	# x2i, x0i, D.17765
	vmovsd	%xmm5, 8(%r12)	# D.17765, MEM[(double *)a_13(D) + 8B]
	vmovsd	%xmm3, 264(%r12)	# D.17765, MEM[(double *)a_13(D) + 264B]
	vsubsd	%xmm1, %xmm8, %xmm3	# x3i, x1r, D.17765
	vaddsd	%xmm8, %xmm1, %xmm1	# x1r, x3i, D.17765
	vmovsd	%xmm3, 512(%r12)	# D.17765, MEM[(double *)a_13(D) + 512B]
	vaddsd	%xmm0, %xmm2, %xmm3	# x1i, x3r, D.17765
	vmovsd	%xmm1, 768(%r12)	# D.17765, MEM[(double *)a_13(D) + 768B]
	vsubsd	%xmm2, %xmm0, %xmm0	# x3r, x1i, D.17765
	vmovsd	%xmm3, 520(%r12)	# D.17765, MEM[(double *)a_13(D) + 520B]
	vmovsd	%xmm0, 776(%r12)	# D.17765, MEM[(double *)a_13(D) + 776B]
	vmovsd	8(%r15), %xmm6	# MEM[(double *)_68 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L390:
	vmovsd	24(%rdx), %xmm1	# MEM[base: _439, offset: 24B], D.17765
	subq	$16, %rcx	#, ivtmp.1299
	addq	$16, %rdx	#, ivtmp.1289
	vmovsd	520(%rdx), %xmm2	# MEM[base: _439, offset: 536B], D.17765
	vmovsd	512(%rdx), %xmm3	# MEM[base: _439, offset: 528B], D.17765
	vmovsd	256(%rdx), %xmm14	# MEM[base: _439, offset: 272B], D.17765
	vaddsd	%xmm1, %xmm2, %xmm0	# D.17765, D.17765, x0i
	vmovsd	(%rdx), %xmm4	# MEM[base: _439, offset: 16B], D.17765
	vsubsd	%xmm2, %xmm1, %xmm2	# D.17765, D.17765, x1i
	vmovsd	768(%rdx), %xmm1	# MEM[base: _439, offset: 784B], D.17765
	vaddsd	%xmm4, %xmm3, %xmm10	# D.17765, D.17765, x0r
	vmovsd	264(%rdx), %xmm13	# MEM[base: _439, offset: 280B], D.17765
	vaddsd	%xmm14, %xmm1, %xmm12	# D.17765, D.17765, x2r
	vmovsd	32(%r15,%rsi), %xmm9	# MEM[base: _68, index: ivtmp.1282_906, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.17765, D.17765, x1r
	vmovsd	776(%rdx), %xmm3	# MEM[base: _439, offset: 792B], D.17765
	vmovsd	40(%r15,%rsi), %xmm8	# MEM[base: _68, index: ivtmp.1282_906, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm14, %xmm1	# D.17765, D.17765, x3r
	vaddsd	%xmm13, %xmm3, %xmm11	# D.17765, D.17765, x2i
	vmovsd	48(%r15,%rsi), %xmm5	# MEM[base: _68, index: ivtmp.1282_906, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm13, %xmm3	# D.17765, D.17765, x3i
	vmovsd	56(%r15,%rsi), %xmm7	# MEM[base: _68, index: ivtmp.1282_906, offset: 56B], wk3i
	addq	$32, %rsi	#, ivtmp.1282
	vaddsd	%xmm10, %xmm12, %xmm13	# x0r, x2r, D.17765
	vsubsd	%xmm12, %xmm10, %xmm10	# x2r, x0r, D.17765
	vmovsd	%xmm13, (%rdx)	# D.17765, MEM[base: _439, offset: 16B]
	vaddsd	%xmm0, %xmm11, %xmm13	# x0i, x2i, D.17765
	vsubsd	%xmm11, %xmm0, %xmm0	# x2i, x0i, D.17765
	vmovsd	%xmm10, 256(%rdx)	# D.17765, MEM[base: _439, offset: 272B]
	vaddsd	%xmm2, %xmm1, %xmm10	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm13, 8(%rdx)	# D.17765, MEM[base: _439, offset: 24B]
	vmovsd	%xmm0, 264(%rdx)	# D.17765, MEM[base: _439, offset: 280B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vmulsd	%xmm8, %xmm10, %xmm12	# wk1i, x0i, D.17765
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm9, %xmm10, %xmm10	# wk1r, x0i, D.17765
	vmulsd	%xmm9, %xmm0, %xmm11	# wk1r, x0r, D.17765
	vmulsd	%xmm8, %xmm0, %xmm0	# wk1i, x0r, D.17765
	vmulsd	%xmm5, %xmm3, %xmm2	# wk3r, x0r, D.17765
	vmulsd	%xmm7, %xmm3, %xmm3	# wk3i, x0r, D.17765
	vsubsd	%xmm12, %xmm11, %xmm11	# D.17765, D.17765, D.17765
	vaddsd	%xmm10, %xmm0, %xmm0	# D.17765, D.17765, D.17765
	vmovsd	%xmm11, 512(%rdx)	# D.17765, MEM[base: _439, offset: 528B]
	vmovsd	%xmm0, 520(%rdx)	# D.17765, MEM[base: _439, offset: 536B]
	vmulsd	%xmm7, %xmm1, %xmm0	# wk3i, x0i, D.17765
	vmulsd	%xmm5, %xmm1, %xmm1	# wk3r, x0i, D.17765
	vaddsd	%xmm2, %xmm0, %xmm0	# D.17765, D.17765, D.17765
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17765, D.17765, D.17765
	vmovsd	%xmm0, 768(%rdx)	# D.17765, MEM[base: _439, offset: 784B]
	vmovsd	%xmm1, 776(%rdx)	# D.17765, MEM[base: _439, offset: 792B]
	vmovsd	264(%rcx), %xmm0	# MEM[base: _471, offset: 248B], D.17765
	vmovsd	776(%rcx), %xmm1	# MEM[base: _471, offset: 760B], D.17765
	vmovsd	768(%rcx), %xmm2	# MEM[base: _471, offset: 752B], D.17765
	vmovsd	256(%rcx), %xmm10	# MEM[base: _471, offset: 240B], D.17765
	vaddsd	%xmm0, %xmm1, %xmm4	# D.17765, D.17765, x0i
	vmovsd	512(%rcx), %xmm14	# MEM[base: _471, offset: 496B], D.17765
	vsubsd	%xmm1, %xmm0, %xmm1	# D.17765, D.17765, x1i
	vmovsd	1024(%rcx), %xmm0	# MEM[base: _471, offset: 1008B], D.17765
	vaddsd	%xmm10, %xmm2, %xmm11	# D.17765, D.17765, x0r
	vmovsd	520(%rcx), %xmm3	# MEM[base: _471, offset: 504B], D.17765
	vsubsd	%xmm2, %xmm10, %xmm10	# D.17765, D.17765, x1r
	vaddsd	%xmm14, %xmm0, %xmm13	# D.17765, D.17765, x2r
	vmovsd	1032(%rcx), %xmm2	# MEM[base: _471, offset: 1016B], D.17765
	vsubsd	%xmm0, %xmm14, %xmm0	# D.17765, D.17765, x3r
	vaddsd	%xmm3, %xmm2, %xmm12	# D.17765, D.17765, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.17765, D.17765, x3i
	vaddsd	%xmm11, %xmm13, %xmm2	# x0r, x2r, D.17765
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.17765
	vmovsd	%xmm2, 256(%rcx)	# D.17765, MEM[base: _471, offset: 240B]
	vaddsd	%xmm4, %xmm12, %xmm2	# x0i, x2i, D.17765
	vsubsd	%xmm12, %xmm4, %xmm4	# x2i, x0i, D.17765
	vmovsd	%xmm11, 512(%rcx)	# D.17765, MEM[base: _471, offset: 496B]
	vmovsd	%xmm2, 264(%rcx)	# D.17765, MEM[base: _471, offset: 248B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 520(%rcx)	# D.17765, MEM[base: _471, offset: 504B]
	vsubsd	%xmm3, %xmm10, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm9, %xmm2, %xmm12	# wk1r, x0i, D.17765
	vmulsd	%xmm8, %xmm4, %xmm11	# wk1i, x0r, D.17765
	vmulsd	%xmm8, %xmm2, %xmm8	# wk1i, x0i, D.17765
	vaddsd	%xmm10, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm5, %xmm0, %xmm1	# wk3r, x0i, D.17765
	vmulsd	%xmm9, %xmm4, %xmm4	# wk1r, x0r, D.17765
	vmulsd	%xmm7, %xmm2, %xmm3	# wk3i, x0r, D.17765
	vmulsd	%xmm7, %xmm0, %xmm0	# wk3i, x0i, D.17765
	vsubsd	%xmm12, %xmm11, %xmm11	# D.17765, D.17765, D.17765
	vmulsd	%xmm5, %xmm2, %xmm2	# wk3r, x0r, D.17765
	vaddsd	%xmm8, %xmm4, %xmm4	# D.17765, D.17765, D.17765
	vmovsd	%xmm11, 768(%rcx)	# D.17765, MEM[base: _471, offset: 752B]
	vaddsd	%xmm3, %xmm1, %xmm1	# D.17765, D.17765, D.17765
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17765, D.17765, D.17765
	vmovsd	%xmm4, 776(%rcx)	# D.17765, MEM[base: _471, offset: 760B]
	vmovsd	%xmm1, 1024(%rcx)	# D.17765, MEM[base: _471, offset: 1008B]
	vmovsd	%xmm0, 1032(%rcx)	# D.17765, MEM[base: _471, offset: 1016B]
	cmpq	$224, %rsi	#, ivtmp.1282
	jne	.L390	#,
	vmovsd	648(%r12), %xmm1	# MEM[(double *)a_13(D) + 648B], D.17765
	movq	%r12, %rdi	# a,
	movq	%r10, 32(%rsp)	# ip, %sfp
	vmovsd	136(%r12), %xmm2	# MEM[(double *)a_13(D) + 136B], D.17765
	movq	%rax, 8(%rsp)	# D.17766, %sfp
	vmovsd	640(%r12), %xmm0	# MEM[(double *)a_13(D) + 640B], D.17765
	vmovsd	128(%r12), %xmm7	# MEM[(double *)a_13(D) + 128B], D.17765
	vaddsd	%xmm2, %xmm1, %xmm3	# D.17765, D.17765, x0i
	vmovsd	384(%r12), %xmm5	# MEM[(double *)a_13(D) + 384B], D.17765
	vsubsd	%xmm1, %xmm2, %xmm2	# D.17765, D.17765, x1i
	vmovsd	896(%r12), %xmm1	# MEM[(double *)a_13(D) + 896B], D.17765
	vaddsd	%xmm7, %xmm0, %xmm4	# D.17765, D.17765, x0r
	vmovsd	392(%r12), %xmm10	# MEM[(double *)a_13(D) + 392B], D.17765
	vsubsd	%xmm0, %xmm7, %xmm7	# D.17765, D.17765, x1r
	vaddsd	%xmm5, %xmm1, %xmm9	# D.17765, D.17765, x2r
	movq	(%rsp), %r13	# %sfp, w
	vmovsd	904(%r12), %xmm0	# MEM[(double *)a_13(D) + 904B], D.17765
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17765, D.17765, x3r
	vaddsd	%xmm10, %xmm0, %xmm8	# D.17765, D.17765, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.17765
	leaq	-64(%r13,%rax), %rbx	#, D.17767
	vsubsd	%xmm0, %xmm10, %xmm0	# D.17765, D.17765, x3i
	movq	%rbx, %rsi	# D.17767,
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.17765
	vmovsd	%xmm1, 128(%r12)	# D.17765, MEM[(double *)a_13(D) + 128B]
	vaddsd	%xmm3, %xmm8, %xmm1	# x0i, x2i, D.17765
	vsubsd	%xmm8, %xmm3, %xmm3	# x2i, x0i, D.17765
	vmovsd	%xmm4, 384(%r12)	# D.17765, MEM[(double *)a_13(D) + 384B]
	vsubsd	%xmm0, %xmm7, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 136(%r12)	# D.17765, MEM[(double *)a_13(D) + 136B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 392(%r12)	# D.17765, MEM[(double *)a_13(D) + 392B]
	vaddsd	%xmm7, %xmm0, %xmm0	# x1r, x3i, x0r
	vmovsd	.LC13(%rip), %xmm7	#, tmp1167
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.17765
	vmovaps	%xmm7, 16(%rsp)	# tmp1167, %sfp
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.17765
	vmulsd	%xmm3, %xmm6, %xmm3	# D.17765, wn4r, D.17765
	vmulsd	%xmm1, %xmm6, %xmm1	# D.17765, wn4r, D.17765
	vmovsd	%xmm3, 640(%r12)	# D.17765, MEM[(double *)a_13(D) + 640B]
	vmovsd	%xmm1, 648(%r12)	# D.17765, MEM[(double *)a_13(D) + 648B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovapd	%xmm6, %xmm2	# wn4r, D.17765
	vxorpd	%xmm7, %xmm2, %xmm2	# tmp1167, D.17765, D.17765
	vaddsd	%xmm0, %xmm1, %xmm3	# x0r, x0i, D.17765
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.17765
	vmulsd	%xmm3, %xmm2, %xmm2	# D.17765, D.17765, D.17765
	vmulsd	%xmm0, %xmm6, %xmm0	# D.17765, wn4r, D.17765
	vmovsd	%xmm2, 896(%r12)	# D.17765, MEM[(double *)a_13(D) + 896B]
	vmovsd	%xmm0, 904(%r12)	# D.17765, MEM[(double *)a_13(D) + 904B]
	call	cftf161	#
	movq	8(%rsp), %rax	# %sfp, D.17766
	movq	%r13, (%rsp)	# w, %sfp
	leaq	256(%r12), %rdi	#, D.17767
	leaq	-256(%r13,%rax), %r13	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf162	#
	leaq	512(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf161	#
	leaq	768(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf161	#
	movq	8(%rsp), %rax	# %sfp, D.17766
	leaq	1024(%r12), %rcx	#, D.17767
	movq	(%rsp), %rdi	# %sfp, w
	movq	%rcx, %rsi	# D.17767,
	movq	%rcx, (%rsp)	# D.17767, %sfp
	leaq	-1024(%rdi,%rax), %rdx	#, D.17767
	movl	$128, %edi	#,
	call	cftmdl2	#
	movq	(%rsp), %rcx	# %sfp, D.17767
	movq	%rbx, %rsi	# D.17767,
	movq	%rcx, %rdi	# D.17767,
	call	cftf161	#
	leaq	1280(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf162	#
	leaq	1536(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf161	#
	leaq	1792(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf162	#
	movq	32(%rsp), %r10	# %sfp, ip
	movq	%r12, %rax	# a, ivtmp.1253
	xorl	%edx, %edx	# ivtmp.1246
	vmovsd	2048(%r12), %xmm5	# MEM[(double *)a_13(D) + 2048B], D.17765
	leaq	2048(%r12), %rdi	#, D.17767
	vmovsd	2560(%r12), %xmm1	# MEM[(double *)a_13(D) + 2560B], D.17765
	vmovsd	2304(%r12), %xmm6	# MEM[(double *)a_13(D) + 2304B], D.17765
	vaddsd	%xmm5, %xmm1, %xmm10	# D.17765, D.17765, x0r
	vmovapd	16(%rsp), %xmm7	# %sfp, tmp1167
	vmovsd	2056(%r12), %xmm4	# MEM[(double *)a_13(D) + 2056B], D.17765
	vsubsd	%xmm1, %xmm5, %xmm8	# D.17765, D.17765, x1r
	vmovsd	2816(%r12), %xmm5	# MEM[(double *)a_13(D) + 2816B], D.17765
	vmovsd	2568(%r12), %xmm0	# MEM[(double *)a_13(D) + 2568B], D.17765
	vmovsd	2312(%r12), %xmm1	# MEM[(double *)a_13(D) + 2312B], D.17765
	vaddsd	%xmm6, %xmm5, %xmm3	# D.17765, D.17765, x2r
	vaddsd	%xmm4, %xmm0, %xmm9	# D.17765, D.17765, x0i
	vsubsd	%xmm0, %xmm4, %xmm0	# D.17765, D.17765, x1i
	vmovsd	2824(%r12), %xmm4	# MEM[(double *)a_13(D) + 2824B], D.17765
	vsubsd	%xmm5, %xmm6, %xmm5	# D.17765, D.17765, x3r
	vaddsd	%xmm1, %xmm4, %xmm2	# D.17765, D.17765, x2i
	vsubsd	%xmm4, %xmm1, %xmm1	# D.17765, D.17765, x3i
	vaddsd	%xmm10, %xmm3, %xmm4	# x0r, x2r, D.17765
	vsubsd	%xmm3, %xmm10, %xmm3	# x2r, x0r, D.17765
	vmovsd	%xmm4, 2048(%r12)	# D.17765, MEM[(double *)a_13(D) + 2048B]
	vaddsd	%xmm9, %xmm2, %xmm4	# x0i, x2i, D.17765
	vmovsd	%xmm3, 2304(%r12)	# D.17765, MEM[(double *)a_13(D) + 2304B]
	vsubsd	%xmm2, %xmm9, %xmm2	# x2i, x0i, D.17765
	vmovsd	%xmm4, 2056(%r12)	# D.17765, MEM[(double *)a_13(D) + 2056B]
	vmovsd	%xmm2, 2312(%r12)	# D.17765, MEM[(double *)a_13(D) + 2312B]
	vsubsd	%xmm1, %xmm8, %xmm2	# x3i, x1r, D.17765
	vaddsd	%xmm8, %xmm1, %xmm1	# x1r, x3i, D.17765
	vmovsd	%xmm2, 2560(%r12)	# D.17765, MEM[(double *)a_13(D) + 2560B]
	vaddsd	%xmm0, %xmm5, %xmm2	# x1i, x3r, D.17765
	vmovsd	%xmm1, 2816(%r12)	# D.17765, MEM[(double *)a_13(D) + 2816B]
	vsubsd	%xmm5, %xmm0, %xmm0	# x3r, x1i, D.17765
	vmovsd	%xmm2, 2568(%r12)	# D.17765, MEM[(double *)a_13(D) + 2568B]
	vmovsd	%xmm0, 2824(%r12)	# D.17765, MEM[(double *)a_13(D) + 2824B]
	vmovsd	8(%r15), %xmm6	# MEM[(double *)_68 + 8B], wn4r
	.p2align 4,,10
	.p2align 3
.L391:
	vmovsd	2072(%rax), %xmm1	# MEM[base: _2094, offset: 2072B], D.17765
	subq	$16, %r14	#, ivtmp.1263
	addq	$16, %rax	#, ivtmp.1253
	vmovsd	2568(%rax), %xmm2	# MEM[base: _2094, offset: 2584B], D.17765
	vmovsd	2560(%rax), %xmm3	# MEM[base: _2094, offset: 2576B], D.17765
	vmovsd	2304(%rax), %xmm15	# MEM[base: _2094, offset: 2320B], D.17765
	vaddsd	%xmm1, %xmm2, %xmm0	# D.17765, D.17765, x0i
	vmovsd	2048(%rax), %xmm4	# MEM[base: _2094, offset: 2064B], D.17765
	vsubsd	%xmm2, %xmm1, %xmm2	# D.17765, D.17765, x1i
	vmovsd	2816(%rax), %xmm1	# MEM[base: _2094, offset: 2832B], D.17765
	vaddsd	%xmm4, %xmm3, %xmm11	# D.17765, D.17765, x0r
	vmovsd	2312(%rax), %xmm14	# MEM[base: _2094, offset: 2328B], D.17765
	vaddsd	%xmm15, %xmm1, %xmm13	# D.17765, D.17765, x2r
	vmovsd	32(%r15,%rdx), %xmm10	# MEM[base: _68, index: ivtmp.1246_62, offset: 32B], wk1r
	vsubsd	%xmm3, %xmm4, %xmm4	# D.17765, D.17765, x1r
	vmovsd	2824(%rax), %xmm3	# MEM[base: _2094, offset: 2840B], D.17765
	vmovsd	40(%r15,%rdx), %xmm9	# MEM[base: _68, index: ivtmp.1246_62, offset: 40B], wk1i
	vsubsd	%xmm1, %xmm15, %xmm1	# D.17765, D.17765, x3r
	vaddsd	%xmm14, %xmm3, %xmm12	# D.17765, D.17765, x2i
	vmovsd	48(%r15,%rdx), %xmm5	# MEM[base: _68, index: ivtmp.1246_62, offset: 48B], wk3r
	vsubsd	%xmm3, %xmm14, %xmm3	# D.17765, D.17765, x3i
	vmovsd	56(%r15,%rdx), %xmm8	# MEM[base: _68, index: ivtmp.1246_62, offset: 56B], wk3i
	addq	$32, %rdx	#, ivtmp.1246
	vaddsd	%xmm11, %xmm13, %xmm14	# x0r, x2r, D.17765
	vsubsd	%xmm13, %xmm11, %xmm11	# x2r, x0r, D.17765
	vmovsd	%xmm14, 2048(%rax)	# D.17765, MEM[base: _2094, offset: 2064B]
	vaddsd	%xmm0, %xmm12, %xmm14	# x0i, x2i, D.17765
	vsubsd	%xmm12, %xmm0, %xmm0	# x2i, x0i, D.17765
	vmovsd	%xmm11, 2304(%rax)	# D.17765, MEM[base: _2094, offset: 2320B]
	vaddsd	%xmm2, %xmm1, %xmm11	# x1i, x3r, x0i
	vsubsd	%xmm1, %xmm2, %xmm1	# x3r, x1i, x0i
	vmovsd	%xmm14, 2056(%rax)	# D.17765, MEM[base: _2094, offset: 2072B]
	vmovsd	%xmm0, 2312(%rax)	# D.17765, MEM[base: _2094, offset: 2328B]
	vsubsd	%xmm3, %xmm4, %xmm0	# x3i, x1r, x0r
	vmulsd	%xmm9, %xmm11, %xmm13	# wk1i, x0i, D.17765
	vaddsd	%xmm4, %xmm3, %xmm3	# x1r, x3i, x0r
	vmulsd	%xmm10, %xmm11, %xmm11	# wk1r, x0i, D.17765
	vmulsd	%xmm10, %xmm0, %xmm12	# wk1r, x0r, D.17765
	vmulsd	%xmm9, %xmm0, %xmm0	# wk1i, x0r, D.17765
	vmulsd	%xmm5, %xmm3, %xmm2	# wk3r, x0r, D.17765
	vmulsd	%xmm8, %xmm3, %xmm3	# wk3i, x0r, D.17765
	vsubsd	%xmm13, %xmm12, %xmm12	# D.17765, D.17765, D.17765
	vaddsd	%xmm11, %xmm0, %xmm0	# D.17765, D.17765, D.17765
	vmovsd	%xmm12, 2560(%rax)	# D.17765, MEM[base: _2094, offset: 2576B]
	vmovsd	%xmm0, 2568(%rax)	# D.17765, MEM[base: _2094, offset: 2584B]
	vmulsd	%xmm8, %xmm1, %xmm0	# wk3i, x0i, D.17765
	vmulsd	%xmm5, %xmm1, %xmm1	# wk3r, x0i, D.17765
	vaddsd	%xmm2, %xmm0, %xmm0	# D.17765, D.17765, D.17765
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17765, D.17765, D.17765
	vmovsd	%xmm0, 2816(%rax)	# D.17765, MEM[base: _2094, offset: 2832B]
	vmovsd	%xmm1, 2824(%rax)	# D.17765, MEM[base: _2094, offset: 2840B]
	vmovsd	2312(%r14), %xmm0	# MEM[base: _2078, offset: 2296B], D.17765
	vmovsd	2824(%r14), %xmm1	# MEM[base: _2078, offset: 2808B], D.17765
	vmovsd	2816(%r14), %xmm2	# MEM[base: _2078, offset: 2800B], D.17765
	vmovsd	2304(%r14), %xmm11	# MEM[base: _2078, offset: 2288B], D.17765
	vaddsd	%xmm0, %xmm1, %xmm4	# D.17765, D.17765, x0i
	vmovsd	2560(%r14), %xmm15	# MEM[base: _2078, offset: 2544B], D.17765
	vsubsd	%xmm1, %xmm0, %xmm1	# D.17765, D.17765, x1i
	vmovsd	3072(%r14), %xmm0	# MEM[base: _2078, offset: 3056B], D.17765
	vaddsd	%xmm11, %xmm2, %xmm12	# D.17765, D.17765, x0r
	vmovsd	2568(%r14), %xmm3	# MEM[base: _2078, offset: 2552B], D.17765
	vsubsd	%xmm2, %xmm11, %xmm11	# D.17765, D.17765, x1r
	vmovsd	3080(%r14), %xmm2	# MEM[base: _2078, offset: 3064B], D.17765
	vaddsd	%xmm15, %xmm0, %xmm14	# D.17765, D.17765, x2r
	vsubsd	%xmm0, %xmm15, %xmm0	# D.17765, D.17765, x3r
	vaddsd	%xmm3, %xmm2, %xmm13	# D.17765, D.17765, x2i
	vsubsd	%xmm2, %xmm3, %xmm3	# D.17765, D.17765, x3i
	vaddsd	%xmm12, %xmm14, %xmm2	# x0r, x2r, D.17765
	vsubsd	%xmm14, %xmm12, %xmm12	# x2r, x0r, D.17765
	vmovsd	%xmm2, 2304(%r14)	# D.17765, MEM[base: _2078, offset: 2288B]
	vaddsd	%xmm4, %xmm13, %xmm2	# x0i, x2i, D.17765
	vmovsd	%xmm12, 2560(%r14)	# D.17765, MEM[base: _2078, offset: 2544B]
	vsubsd	%xmm13, %xmm4, %xmm4	# x2i, x0i, D.17765
	vmovsd	%xmm2, 2312(%r14)	# D.17765, MEM[base: _2078, offset: 2296B]
	vaddsd	%xmm1, %xmm0, %xmm2	# x1i, x3r, x0i
	vmovsd	%xmm4, 2568(%r14)	# D.17765, MEM[base: _2078, offset: 2552B]
	vsubsd	%xmm3, %xmm11, %xmm4	# x3i, x1r, x0r
	vsubsd	%xmm0, %xmm1, %xmm0	# x3r, x1i, x0i
	vmulsd	%xmm10, %xmm2, %xmm13	# wk1r, x0i, D.17765
	vmulsd	%xmm9, %xmm4, %xmm12	# wk1i, x0r, D.17765
	vmulsd	%xmm9, %xmm2, %xmm9	# wk1i, x0i, D.17765
	vaddsd	%xmm11, %xmm3, %xmm2	# x1r, x3i, x0r
	vmulsd	%xmm5, %xmm0, %xmm1	# wk3r, x0i, D.17765
	vmulsd	%xmm10, %xmm4, %xmm4	# wk1r, x0r, D.17765
	vmulsd	%xmm8, %xmm2, %xmm3	# wk3i, x0r, D.17765
	vmulsd	%xmm8, %xmm0, %xmm0	# wk3i, x0i, D.17765
	vsubsd	%xmm13, %xmm12, %xmm12	# D.17765, D.17765, D.17765
	vmulsd	%xmm5, %xmm2, %xmm2	# wk3r, x0r, D.17765
	vmovsd	%xmm12, 2816(%r14)	# D.17765, MEM[base: _2078, offset: 2800B]
	vaddsd	%xmm9, %xmm4, %xmm4	# D.17765, D.17765, D.17765
	vaddsd	%xmm3, %xmm1, %xmm1	# D.17765, D.17765, D.17765
	vmovsd	%xmm4, 2824(%r14)	# D.17765, MEM[base: _2078, offset: 2808B]
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17765, D.17765, D.17765
	vmovsd	%xmm1, 3072(%r14)	# D.17765, MEM[base: _2078, offset: 3056B]
	vmovsd	%xmm0, 3080(%r14)	# D.17765, MEM[base: _2078, offset: 3064B]
	cmpq	$224, %rdx	#, ivtmp.1246
	jne	.L391	#,
	vmovsd	2696(%r12), %xmm1	# MEM[(double *)a_13(D) + 2696B], D.17765
	vxorpd	%xmm6, %xmm7, %xmm7	# wn4r, tmp1167, D.17765
	movq	%rbx, %rsi	# D.17767,
	movq	%r10, (%rsp)	# ip, %sfp
	vmovsd	2184(%r12), %xmm2	# MEM[(double *)a_13(D) + 2184B], D.17765
	leaq	3072(%r12), %r14	#, D.17767
	vmovsd	2688(%r12), %xmm0	# MEM[(double *)a_13(D) + 2688B], D.17765
	vmovsd	2176(%r12), %xmm8	# MEM[(double *)a_13(D) + 2176B], D.17765
	vaddsd	%xmm2, %xmm1, %xmm3	# D.17765, D.17765, x0i
	vmovsd	2432(%r12), %xmm5	# MEM[(double *)a_13(D) + 2432B], D.17765
	vsubsd	%xmm1, %xmm2, %xmm2	# D.17765, D.17765, x1i
	vmovsd	2944(%r12), %xmm1	# MEM[(double *)a_13(D) + 2944B], D.17765
	vaddsd	%xmm8, %xmm0, %xmm4	# D.17765, D.17765, x0r
	vmovsd	2440(%r12), %xmm10	# MEM[(double *)a_13(D) + 2440B], D.17765
	vsubsd	%xmm0, %xmm8, %xmm8	# D.17765, D.17765, x1r
	vmovsd	2952(%r12), %xmm0	# MEM[(double *)a_13(D) + 2952B], D.17765
	vaddsd	%xmm5, %xmm1, %xmm9	# D.17765, D.17765, x2r
	vsubsd	%xmm1, %xmm5, %xmm5	# D.17765, D.17765, x3r
	vaddsd	%xmm10, %xmm0, %xmm11	# D.17765, D.17765, x2i
	vaddsd	%xmm4, %xmm9, %xmm1	# x0r, x2r, D.17765
	vsubsd	%xmm0, %xmm10, %xmm0	# D.17765, D.17765, x3i
	vsubsd	%xmm9, %xmm4, %xmm4	# x2r, x0r, D.17765
	vmovsd	%xmm1, 2176(%r12)	# D.17765, MEM[(double *)a_13(D) + 2176B]
	vaddsd	%xmm3, %xmm11, %xmm1	# x0i, x2i, D.17765
	vsubsd	%xmm11, %xmm3, %xmm3	# x2i, x0i, D.17765
	vmovsd	%xmm4, 2432(%r12)	# D.17765, MEM[(double *)a_13(D) + 2432B]
	vsubsd	%xmm0, %xmm8, %xmm4	# x3i, x1r, x0r
	vmovsd	%xmm1, 2184(%r12)	# D.17765, MEM[(double *)a_13(D) + 2184B]
	vaddsd	%xmm2, %xmm5, %xmm1	# x1i, x3r, x0i
	vmovsd	%xmm3, 2440(%r12)	# D.17765, MEM[(double *)a_13(D) + 2440B]
	vaddsd	%xmm8, %xmm0, %xmm0	# x1r, x3i, x0r
	vsubsd	%xmm1, %xmm4, %xmm3	# x0i, x0r, D.17765
	vaddsd	%xmm4, %xmm1, %xmm1	# x0r, x0i, D.17765
	vmulsd	%xmm3, %xmm6, %xmm3	# D.17765, wn4r, D.17765
	vmulsd	%xmm1, %xmm6, %xmm1	# D.17765, wn4r, D.17765
	vmovsd	%xmm3, 2688(%r12)	# D.17765, MEM[(double *)a_13(D) + 2688B]
	vmovsd	%xmm1, 2696(%r12)	# D.17765, MEM[(double *)a_13(D) + 2696B]
	vsubsd	%xmm5, %xmm2, %xmm1	# x3r, x1i, x0i
	vaddsd	%xmm0, %xmm1, %xmm2	# x0r, x0i, D.17765
	vsubsd	%xmm1, %xmm0, %xmm0	# x0i, x0r, D.17765
	vmulsd	%xmm2, %xmm7, %xmm7	# D.17765, D.17765, D.17765
	vmulsd	%xmm0, %xmm6, %xmm0	# D.17765, wn4r, D.17765
	vmovsd	%xmm7, 2944(%r12)	# D.17765, MEM[(double *)a_13(D) + 2944B]
	vmovsd	%xmm0, 2952(%r12)	# D.17765, MEM[(double *)a_13(D) + 2952B]
	call	cftf161	#
	leaq	2304(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf162	#
	leaq	2560(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf161	#
	leaq	2816(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf161	#
	movq	%r15, %rdx	# D.17767,
	movq	%r14, %rsi	# D.17767,
	movl	$128, %edi	#,
	call	cftmdl1	#
	leaq	3840(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf161	#
	movq	%rbx, %rsi	# D.17767,
	movq	%r14, %rdi	# D.17767,
	call	cftf161	#
	leaq	3328(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf162	#
	leaq	3584(%r12), %rdi	#, D.17767
	movq	%rbx, %rsi	# D.17767,
	call	cftf161	#
	movq	(%rsp), %r10	# %sfp, ip
	jmp	.L387	#
.L426:
	movq	(%rsp), %r15	# %sfp, w
	salq	$3, %rbx	#, D.17766
	movq	%r12, %rdi	# a,
	leaq	-64(%r15,%rbx), %r13	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf161	#
	leaq	-256(%r15,%rbx), %rsi	#, D.17767
	leaq	256(%r12), %rdi	#, D.17767
	call	cftf162	#
	leaq	512(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf161	#
	leaq	768(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf161	#
	movq	8(%rsp), %r10	# %sfp, ip
	jmp	.L387	#
.L427:
	movq	(%rsp), %r15	# %sfp, w
	salq	$3, %rbx	#, D.17766
	movq	%r12, %rdi	# a,
	leaq	-64(%r15,%rbx), %r13	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf161	#
	leaq	-256(%r15,%rbx), %rsi	#, D.17767
	leaq	256(%r12), %rdi	#, D.17767
	call	cftf162	#
	leaq	512(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf161	#
	leaq	768(%r12), %rdi	#, D.17767
	movq	%r13, %rsi	# D.17767,
	call	cftf161	#
	movq	8(%rsp), %r10	# %sfp, ip
	jmp	.L402	#
	.cfi_endproc
.LFE36:
	.size	cdft, .-cdft
	.section	.text.unlikely
.LCOLDE43:
	.text
.LHOTE43:
	.section	.text.unlikely
.LCOLDB44:
	.text
.LHOTB44:
	.p2align 4,,15
	.globl	cftf040
	.type	cftf040, @function
cftf040:
.LFB77:
	.cfi_startproc
	vmovsd	8(%rdi), %xmm3	# MEM[(double *)a_2(D) + 8B], D.17772
	vmovsd	40(%rdi), %xmm0	# MEM[(double *)a_2(D) + 40B], D.17772
	vmovsd	32(%rdi), %xmm1	# MEM[(double *)a_2(D) + 32B], D.17772
	vaddsd	%xmm3, %xmm0, %xmm9	# D.17772, D.17772, x0i
	vmovsd	(%rdi), %xmm8	# *a_2(D), D.17772
	vsubsd	%xmm0, %xmm3, %xmm0	# D.17772, D.17772, x1i
	vmovsd	16(%rdi), %xmm6	# MEM[(double *)a_2(D) + 16B], D.17772
	vmovsd	48(%rdi), %xmm3	# MEM[(double *)a_2(D) + 48B], D.17772
	vaddsd	%xmm8, %xmm1, %xmm10	# D.17772, D.17772, x0r
	vmovsd	24(%rdi), %xmm2	# MEM[(double *)a_2(D) + 24B], D.17772
	vsubsd	%xmm1, %xmm8, %xmm8	# D.17772, D.17772, x1r
	vaddsd	%xmm6, %xmm3, %xmm4	# D.17772, D.17772, x2r
	vmovsd	56(%rdi), %xmm5	# MEM[(double *)a_2(D) + 56B], D.17772
	vsubsd	%xmm3, %xmm6, %xmm3	# D.17772, D.17772, x3r
	vaddsd	%xmm2, %xmm5, %xmm7	# D.17772, D.17772, x2i
	vsubsd	%xmm5, %xmm2, %xmm1	# D.17772, D.17772, x3i
	vaddsd	%xmm10, %xmm4, %xmm2	# x0r, x2r, D.17772
	vsubsd	%xmm4, %xmm10, %xmm4	# x2r, x0r, D.17772
	vmovsd	%xmm2, (%rdi)	# D.17772, *a_2(D)
	vaddsd	%xmm9, %xmm7, %xmm2	# x0i, x2i, D.17772
	vmovsd	%xmm4, 32(%rdi)	# D.17772, MEM[(double *)a_2(D) + 32B]
	vmovsd	%xmm2, 8(%rdi)	# D.17772, MEM[(double *)a_2(D) + 8B]
	vsubsd	%xmm1, %xmm8, %xmm2	# x3i, x1r, D.17772
	vaddsd	%xmm8, %xmm1, %xmm1	# x1r, x3i, D.17772
	vmovsd	%xmm2, 16(%rdi)	# D.17772, MEM[(double *)a_2(D) + 16B]
	vaddsd	%xmm0, %xmm3, %xmm2	# x1i, x3r, D.17772
	vsubsd	%xmm3, %xmm0, %xmm0	# x3r, x1i, D.17772
	vmovsd	%xmm1, 48(%rdi)	# D.17772, MEM[(double *)a_2(D) + 48B]
	vmovsd	%xmm2, 24(%rdi)	# D.17772, MEM[(double *)a_2(D) + 24B]
	vsubsd	%xmm7, %xmm9, %xmm2	# x2i, x0i, D.17772
	vmovsd	%xmm0, 56(%rdi)	# D.17772, MEM[(double *)a_2(D) + 56B]
	vmovsd	%xmm2, 40(%rdi)	# D.17772, MEM[(double *)a_2(D) + 40B]
	ret
	.cfi_endproc
.LFE77:
	.size	cftf040, .-cftf040
	.section	.text.unlikely
.LCOLDE44:
	.text
.LHOTE44:
	.section	.text.unlikely
.LCOLDB45:
	.text
.LHOTB45:
	.p2align 4,,15
	.globl	cftb040
	.type	cftb040, @function
cftb040:
.LFB78:
	.cfi_startproc
	vmovsd	32(%rdi), %xmm1	# MEM[(double *)a_2(D) + 32B], D.17775
	vmovsd	(%rdi), %xmm7	# *a_2(D), D.17775
	vmovsd	16(%rdi), %xmm6	# MEM[(double *)a_2(D) + 16B], D.17775
	vmovsd	48(%rdi), %xmm5	# MEM[(double *)a_2(D) + 48B], D.17775
	vaddsd	%xmm7, %xmm1, %xmm11	# D.17775, D.17775, x0r
	vmovsd	40(%rdi), %xmm0	# MEM[(double *)a_2(D) + 40B], D.17775
	vsubsd	%xmm1, %xmm7, %xmm7	# D.17775, D.17775, x1r
	vaddsd	%xmm6, %xmm5, %xmm3	# D.17775, D.17775, x2r
	vmovsd	24(%rdi), %xmm2	# MEM[(double *)a_2(D) + 24B], D.17775
	vmovsd	8(%rdi), %xmm8	# MEM[(double *)a_2(D) + 8B], D.17775
	vmovsd	56(%rdi), %xmm4	# MEM[(double *)a_2(D) + 56B], D.17775
	vaddsd	%xmm8, %xmm0, %xmm10	# D.17775, D.17775, x0i
	vaddsd	%xmm2, %xmm4, %xmm9	# D.17775, D.17775, x2i
	vsubsd	%xmm4, %xmm2, %xmm1	# D.17775, D.17775, x3i
	vaddsd	%xmm11, %xmm3, %xmm2	# x0r, x2r, D.17775
	vsubsd	%xmm0, %xmm8, %xmm8	# D.17775, D.17775, x1i
	vsubsd	%xmm5, %xmm6, %xmm0	# D.17775, D.17775, x3r
	vmovsd	%xmm2, (%rdi)	# D.17775, *a_2(D)
	vaddsd	%xmm10, %xmm9, %xmm2	# x0i, x2i, D.17775
	vsubsd	%xmm3, %xmm11, %xmm3	# x2r, x0r, D.17775
	vmovsd	%xmm2, 8(%rdi)	# D.17775, MEM[(double *)a_2(D) + 8B]
	vaddsd	%xmm7, %xmm1, %xmm2	# x1r, x3i, D.17775
	vsubsd	%xmm1, %xmm7, %xmm1	# x3i, x1r, D.17775
	vmovsd	%xmm3, 32(%rdi)	# D.17775, MEM[(double *)a_2(D) + 32B]
	vmovsd	%xmm2, 16(%rdi)	# D.17775, MEM[(double *)a_2(D) + 16B]
	vsubsd	%xmm0, %xmm8, %xmm2	# x3r, x1i, D.17775
	vaddsd	%xmm8, %xmm0, %xmm0	# x1i, x3r, D.17775
	vmovsd	%xmm1, 48(%rdi)	# D.17775, MEM[(double *)a_2(D) + 48B]
	vmovsd	%xmm2, 24(%rdi)	# D.17775, MEM[(double *)a_2(D) + 24B]
	vsubsd	%xmm9, %xmm10, %xmm2	# x2i, x0i, D.17775
	vmovsd	%xmm0, 56(%rdi)	# D.17775, MEM[(double *)a_2(D) + 56B]
	vmovsd	%xmm2, 40(%rdi)	# D.17775, MEM[(double *)a_2(D) + 40B]
	ret
	.cfi_endproc
.LFE78:
	.size	cftb040, .-cftb040
	.section	.text.unlikely
.LCOLDE45:
	.text
.LHOTE45:
	.section	.text.unlikely
.LCOLDB46:
	.text
.LHOTB46:
	.p2align 4,,15
	.globl	cftx020
	.type	cftx020, @function
cftx020:
.LFB79:
	.cfi_startproc
	vmovsd	(%rdi), %xmm1	# *a_2(D), D.17778
	vmovsd	16(%rdi), %xmm3	# MEM[(double *)a_2(D) + 16B], D.17778
	vmovsd	8(%rdi), %xmm0	# MEM[(double *)a_2(D) + 8B], D.17778
	vaddsd	%xmm1, %xmm3, %xmm4	# D.17778, D.17778, D.17778
	vmovsd	24(%rdi), %xmm2	# MEM[(double *)a_2(D) + 24B], D.17778
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17778, D.17778, x0r
	vmovsd	%xmm4, (%rdi)	# D.17778, *a_2(D)
	vaddsd	%xmm0, %xmm2, %xmm4	# D.17778, D.17778, D.17778
	vsubsd	%xmm2, %xmm0, %xmm0	# D.17778, D.17778, x0i
	vmovsd	%xmm1, 16(%rdi)	# x0r, MEM[(double *)a_2(D) + 16B]
	vmovsd	%xmm4, 8(%rdi)	# D.17778, MEM[(double *)a_2(D) + 8B]
	vmovsd	%xmm0, 24(%rdi)	# x0i, MEM[(double *)a_2(D) + 24B]
	ret
	.cfi_endproc
.LFE79:
	.size	cftx020, .-cftx020
	.section	.text.unlikely
.LCOLDE46:
	.text
.LHOTE46:
	.section	.text.unlikely
.LCOLDB47:
	.text
.LHOTB47:
	.p2align 4,,15
	.globl	rftfsub
	.type	rftfsub, @function
rftfsub:
.LFB80:
	.cfi_startproc
	movslq	%edx, %r8	# nc,
	movl	%edi, %r11d	# n, m
	leal	(%r8,%r8), %eax	#, D.17800
	sarl	%r11d	# m
	cltd
	idivl	%r11d	# m
	cmpl	$2, %r11d	#, m
	jle	.L436	#,
	vmovsd	.LC2(%rip), %xmm5	#, tmp175
	subl	$3, %r11d	#, D.17805
	movl	%eax, %r10d	# tmp147, D.17800
	shrl	%r11d	#
	cltq
	movslq	%edi, %rdi	# n, D.17807
	negl	%r10d	# D.17800
	addq	%r11, %r11	# D.17802
	leaq	(%rsi,%rdi,8), %rdx	#, ivtmp.1384
	subq	%rax, %r8	# D.17807, D.17807
	movslq	%r10d, %r10	# D.17800, D.17807
	salq	$3, %rax	#, D.17807
	subq	%r11, %rdi	# D.17802, D.17804
	salq	$3, %r10	#, D.17807
	leaq	(%rcx,%r8,8), %r9	#, ivtmp.1375
	addq	%rax, %rcx	# D.17807, ivtmp.1377
	leaq	24(%rsi), %r8	#, ivtmp.1385
	leaq	-16(%rsi,%rdi,8), %rsi	#, D.17802
	.p2align 4,,10
	.p2align 3
.L433:
	vsubsd	(%r9), %xmm5, %xmm0	# MEM[base: _110, offset: 0B], tmp175, wkr
	subq	$16, %rdx	#, ivtmp.1384
	addq	%r10, %r9	# D.17807, ivtmp.1375
	vmovsd	-8(%r8), %xmm4	# MEM[base: _108, offset: -8B], D.17801
	addq	$16, %r8	#, ivtmp.1385
	vsubsd	(%rdx), %xmm4, %xmm1	# MEM[base: _107, offset: -16B], D.17801, xr
	vmovsd	8(%rdx), %xmm2	# MEM[base: _107, offset: -8B], MEM[base: _107, offset: -8B]
	vaddsd	-16(%r8), %xmm2, %xmm3	# MEM[base: _108, offset: 0B], MEM[base: _107, offset: -8B], xi
	vmovsd	(%rcx), %xmm6	# MEM[base: _109, offset: 0B], wki
	vmulsd	%xmm0, %xmm1, %xmm2	# wkr, xr, D.17801
	addq	%rax, %rcx	# D.17807, ivtmp.1377
	vmulsd	%xmm6, %xmm1, %xmm1	# wki, xr, D.17801
	vmulsd	%xmm6, %xmm3, %xmm7	# wki, xi, D.17801
	vmulsd	%xmm0, %xmm3, %xmm0	# wkr, xi, D.17801
	vsubsd	%xmm7, %xmm2, %xmm2	# D.17801, D.17801, yr
	vaddsd	%xmm0, %xmm1, %xmm0	# D.17801, D.17801, yi
	vmovsd	-16(%r8), %xmm1	# MEM[base: _108, offset: 0B], MEM[base: _108, offset: 0B]
	vsubsd	%xmm2, %xmm4, %xmm4	# yr, D.17801, D.17801
	vsubsd	%xmm0, %xmm1, %xmm1	# yi, MEM[base: _108, offset: 0B], D.17801
	vmovsd	%xmm4, -24(%r8)	# D.17801, MEM[base: _108, offset: -8B]
	vmovsd	%xmm1, -16(%r8)	# D.17801, MEM[base: _108, offset: 0B]
	vmovsd	8(%rdx), %xmm1	# MEM[base: _107, offset: -8B], MEM[base: _107, offset: -8B]
	vaddsd	(%rdx), %xmm2, %xmm2	# MEM[base: _107, offset: -16B], yr, D.17801
	vsubsd	%xmm0, %xmm1, %xmm0	# yi, MEM[base: _107, offset: -8B], D.17801
	vmovsd	%xmm2, (%rdx)	# D.17801, MEM[base: _107, offset: -16B]
	vmovsd	%xmm0, 8(%rdx)	# D.17801, MEM[base: _107, offset: -8B]
	cmpq	%rsi, %rdx	# D.17802, ivtmp.1384
	jne	.L433	#,
.L436:
	ret
	.cfi_endproc
.LFE80:
	.size	rftfsub, .-rftfsub
	.section	.text.unlikely
.LCOLDE47:
	.text
.LHOTE47:
	.section	.text.unlikely
.LCOLDB48:
	.text
.LHOTB48:
	.p2align 4,,15
	.globl	dfct
	.type	dfct, @function
dfct:
.LFB40:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	movq	%rdx, %r11	# t, t
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12	# a, a
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx	#
	addq	$-128, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	(%rcx), %eax	# *ip_21(D), nw
	movl	%edi, -96(%rbp)	# n, %sfp
	movq	%rcx, -136(%rbp)	# ip, %sfp
	movq	%r8, -144(%rbp)	# w, %sfp
	movl	%eax, -120(%rbp)	# nw, %sfp
	sall	$3, %eax	#, D.17984
	cmpl	%edi, %eax	# n, D.17984
	jl	.L438	#,
	movl	4(%rcx), %edx	# MEM[(int *)ip_21(D) + 4B], D.17984
	leal	(%rdx,%rdx), %eax	#, D.17984
	movl	%edx, -92(%rbp)	# D.17984, %sfp
.L439:
	movl	-96(%rbp), %ebx	# %sfp, n
	cmpl	%eax, %ebx	# D.17984, n
	jg	.L440	#,
.L523:
	sarl	%ebx	# D.17984
.L441:
	movl	-96(%rbp), %edi	# %sfp, n
	movslq	%ebx, %rsi	# D.17984, D.17983
	vmovsd	(%r12), %xmm1	# *a_38(D), D.17982
	salq	$3, %rsi	#, D.17983
	leaq	(%r12,%rsi), %rcx	#, D.17980
	addq	%r11, %rsi	# t, D.17980
	vmovsd	(%rcx), %xmm0	# *_39, yi
	movslq	%edi, %rax	# n,
	leaq	0(,%rax,8), %r14	#, D.17983
	leaq	(%r12,%r14), %rdx	#, D.17980
	vmovsd	(%rdx), %xmm3	# *_44, D.17982
	movq	%rdx, -152(%rbp)	# D.17980, %sfp
	vaddsd	%xmm1, %xmm3, %xmm2	# D.17982, D.17982, xi
	vsubsd	%xmm3, %xmm1, %xmm1	# D.17982, D.17982, D.17982
	vmovsd	%xmm1, (%r12)	# D.17982, *a_38(D)
	vsubsd	%xmm0, %xmm2, %xmm1	# yi, xi, D.17982
	vaddsd	%xmm2, %xmm0, %xmm0	# xi, yi, D.17982
	vmovsd	%xmm1, (%r11)	# D.17982, *t_50(D)
	vmovsd	%xmm0, (%rsi)	# D.17982, *_52
	cmpl	$2, %edi	#, n
	jle	.L443	#,
	movl	%ebx, %r15d	# D.17984, m
	sarl	%r15d	# m
	cmpl	$1, %r15d	#, m
	jle	.L448	#,
	movq	-152(%rbp), %r9	# %sfp, D.17980
	leal	-2(%r15), %edi	#, D.17988
	movl	$1, %edx	#, tmp615
	subl	%ebx, %edx	# D.17984, D.17984
	addq	$1, %rdi	#, D.17988
	movslq	%edx, %rdx	# D.17984, D.17981
	addq	%rdx, %rax	# D.17981, D.17981
	xorl	%edx, %edx	# ivtmp.1510
	leaq	(%r12,%rax,8), %r8	#, D.17980
	xorl	%eax, %eax	# ivtmp.1503
	.p2align 4,,10
	.p2align 3
.L447:
	vmovsd	8(%r12,%rax,8), %xmm5	# MEM[base: a_38(D), index: ivtmp.1503_400, step: 8, offset: 8B], D.17982
	vmovsd	-8(%r9,%rdx), %xmm4	# MEM[base: _44, index: ivtmp.1510_368, offset: -8B], D.17982
	vmovsd	-8(%rcx,%rdx), %xmm3	# MEM[base: _39, index: ivtmp.1510_368, offset: -8B], D.17982
	vmovsd	(%r8,%rax,8), %xmm2	# MEM[base: _290, index: ivtmp.1503_400, step: 8, offset: 0B], D.17982
	vaddsd	%xmm5, %xmm4, %xmm0	# D.17982, D.17982, xi
	vsubsd	%xmm4, %xmm5, %xmm4	# D.17982, D.17982, xr
	vaddsd	%xmm3, %xmm2, %xmm1	# D.17982, D.17982, yi
	vsubsd	%xmm2, %xmm3, %xmm2	# D.17982, D.17982, yr
	vmovsd	%xmm4, 8(%r12,%rax,8)	# xr, MEM[base: a_38(D), index: ivtmp.1503_400, step: 8, offset: 8B]
	vmovsd	%xmm2, -8(%rcx,%rdx)	# yr, MEM[base: _39, index: ivtmp.1510_368, offset: -8B]
	vsubsd	%xmm1, %xmm0, %xmm2	# yi, xi, D.17982
	vaddsd	%xmm0, %xmm1, %xmm0	# xi, yi, D.17982
	vmovsd	%xmm2, 8(%r11,%rax,8)	# D.17982, MEM[base: t_50(D), index: ivtmp.1503_400, step: 8, offset: 8B]
	addq	$1, %rax	#, ivtmp.1503
	vmovsd	%xmm0, -8(%rsi,%rdx)	# D.17982, MEM[base: _52, index: ivtmp.1510_368, offset: -8B]
	subq	$8, %rdx	#, ivtmp.1510
	cmpq	%rdi, %rax	# D.17988, ivtmp.1503
	jne	.L447	#,
.L448:
	movl	-96(%rbp), %eax	# %sfp, D.17984
	movslq	%r15d, %r13	# m, D.17983
	leaq	(%r12,%r13,8), %r8	#, D.17980
	movq	-144(%rbp), %rdi	# %sfp, w
	subl	%r15d, %eax	# m, D.17984
	cltq
	leaq	(%r12,%rax,8), %rax	#, D.17980
	vmovsd	(%rax), %xmm0	# *_96, *_96
	vaddsd	(%r8), %xmm0, %xmm0	# *_91, *_96, D.17982
	vmovsd	%xmm0, (%r11,%r13,8)	# D.17982, *_90
	vmovsd	(%r8), %xmm0	# *_91, *_91
	vsubsd	(%rax), %xmm0, %xmm0	# *_96, *_91, D.17982
	movslq	-120(%rbp), %rax	# %sfp, D.17983
	vmovsd	%xmm0, (%r8)	# D.17982, *_91
	leaq	(%rdi,%rax,8), %rax	#, D.17980
	movq	%rax, -80(%rbp)	# D.17980, %sfp
	movl	-92(%rbp), %eax	# %sfp, tmp610
	cltd
	idivl	%ebx	# D.17984
	cmpl	$1, %r15d	#, m
	jle	.L517	#,
	movslq	%eax, %rdx	# tmp610, D.17983
	negl	%eax	# D.17984
	movq	-80(%rbp), %rsi	# %sfp, D.17980
	movslq	%eax, %r9	# D.17984, D.17983
	movslq	-92(%rbp), %rax	# %sfp, D.17983
	leaq	0(,%rdx,8), %r10	#, D.17983
	salq	$3, %r9	#, D.17983
	movq	%rsi, %rdi	# D.17980, D.17980
	subq	%rdx, %rax	# D.17983, D.17983
	movq	%rcx, %rdx	# D.17980, ivtmp.1501
	addq	%r10, %rdi	# D.17983, ivtmp.1492
	leal	-2(%r15), %ecx	#, D.17981
	leaq	(%rsi,%rax,8), %rsi	#, ivtmp.1494
	movq	%r12, %rax	# a, ivtmp.1498
	leaq	8(%r12,%rcx,8), %rcx	#, D.17988
	.p2align 4,,10
	.p2align 3
.L449:
	vmovsd	(%rdi), %xmm0	# MEM[base: _424, offset: 0B], D.17982
	addq	$8, %rax	#, ivtmp.1498
	addq	%r10, %rdi	# D.17983, ivtmp.1492
	subq	$8, %rdx	#, ivtmp.1501
	vmovsd	(%rsi), %xmm3	# MEM[base: _423, offset: 0B], D.17982
	addq	%r9, %rsi	# D.17983, ivtmp.1494
	vmovsd	(%rax), %xmm2	# MEM[base: _422, offset: 8B], D.17982
	vsubsd	%xmm3, %xmm0, %xmm1	# D.17982, D.17982, wkr
	vaddsd	%xmm0, %xmm3, %xmm3	# D.17982, D.17982, wki
	vmovsd	(%rdx), %xmm0	# MEM[base: _421, offset: -8B], D.17982
	vmulsd	%xmm2, %xmm1, %xmm4	# D.17982, wkr, D.17982
	vmulsd	%xmm0, %xmm3, %xmm5	# D.17982, wki, D.17982
	vmulsd	%xmm2, %xmm3, %xmm2	# D.17982, wki, D.17982
	vmulsd	%xmm0, %xmm1, %xmm0	# D.17982, wkr, D.17982
	vaddsd	%xmm4, %xmm5, %xmm4	# D.17982, D.17982, D.17982
	vsubsd	%xmm0, %xmm2, %xmm2	# D.17982, D.17982, xr
	vmovsd	%xmm4, (%rax)	# D.17982, MEM[base: _422, offset: 8B]
	vmovsd	%xmm2, (%rdx)	# xr, MEM[base: _421, offset: -8B]
	cmpq	%rcx, %rax	# D.17988, ivtmp.1498
	jne	.L449	#,
	movq	-80(%rbp), %rax	# %sfp, D.17980
	vmovsd	(%r8), %xmm0	# *_91, *_91
	vmulsd	(%rax), %xmm0, %xmm0	# *_106, *_91, D.17982
	vmovsd	%xmm0, (%r8)	# D.17982, *_91
	cmpl	$4, %ebx	#, D.17984
	jg	.L518	#,
.L450:
	cmpl	$4, %ebx	#, D.17984
	je	.L519	#,
.L451:
	vmovsd	(%r12), %xmm0	# *a_38(D), *a_38(D)
	subl	$2, %ebx	#, j
	vsubsd	8(%r12), %xmm0, %xmm0	# MEM[(double *)a_38(D) + 8B], *a_38(D), D.17982
	vmovsd	%xmm0, -8(%r12,%r14)	# D.17982, *_112
	vmovsd	8(%r12), %xmm0	# MEM[(double *)a_38(D) + 8B], MEM[(double *)a_38(D) + 8B]
	vaddsd	(%r12), %xmm0, %xmm0	# *a_38(D), MEM[(double *)a_38(D) + 8B], D.17982
	vmovsd	%xmm0, 8(%r12)	# D.17982, MEM[(double *)a_38(D) + 8B]
	cmpl	$1, %ebx	#, j
	jle	.L456	#,
.L452:
	leal	(%rbx,%rbx), %edx	#, D.17984
	movslq	%ebx, %rax	# j, D.17983
	leaq	(%r12,%rax,8), %rax	#, ivtmp.1479
	movslq	%edx, %rdx	# D.17984, D.17981
	leaq	8(%r12,%rdx,8), %rdx	#, ivtmp.1482
	.p2align 4,,10
	.p2align 3
.L455:
	vmovsd	8(%rax), %xmm0	# MEM[base: _332, offset: 8B], MEM[base: _332, offset: 8B]
	subl	$2, %ebx	#, j
	subq	$16, %rax	#, ivtmp.1479
	subq	$32, %rdx	#, ivtmp.1482
	vaddsd	16(%rax), %xmm0, %xmm0	# MEM[base: _332, offset: 0B], MEM[base: _332, offset: 8B], D.17982
	vmovsd	%xmm0, 32(%rdx)	# D.17982, MEM[base: _321, offset: 0B]
	vmovsd	16(%rax), %xmm0	# MEM[base: _332, offset: 0B], MEM[base: _332, offset: 0B]
	vsubsd	24(%rax), %xmm0, %xmm0	# MEM[base: _332, offset: 8B], MEM[base: _332, offset: 0B], D.17982
	vmovsd	%xmm0, 16(%rdx)	# D.17982, MEM[base: _321, offset: -16B]
	cmpl	$1, %ebx	#, j
	jg	.L455	#,
.L456:
	leaq	32(%r11), %rax	#, D.17980
	movl	$2, -72(%rbp)	#, %sfp
	movq	%rax, -112(%rbp)	# D.17980, %sfp
	movslq	-92(%rbp), %rax	# %sfp, D.17983
	movq	%rax, -128(%rbp)	# D.17983, %sfp
	movl	$16, %eax	#, D.17983
	cmpl	$1, %r15d	#, m
	jle	.L454	#,
	movq	%r12, -88(%rbp)	# a, %sfp
	movq	%r11, %rbx	# t, t
	.p2align 4,,10
	.p2align 3
.L501:
	movl	-92(%rbp), %eax	# %sfp, tmp658
	movl	%r15d, %r14d	# m, m
	sarl	%r14d	# m
	cltd
	idivl	%r15d	# m
	cmpl	$1, %r14d	#, m
	je	.L520	#,
	movslq	%eax, %rdx	# tmp658, D.17983
	negl	%eax	# D.17984
	movq	-80(%rbp), %rcx	# %sfp, D.17980
	movslq	%eax, %rdi	# D.17984, D.17983
	movq	-128(%rbp), %rax	# %sfp, D.17983
	leaq	0(,%rdx,8), %r8	#, D.17983
	salq	$3, %rdi	#, D.17983
	leal	-2(%r14), %r9d	#, D.17981
	leaq	(%rcx,%r8), %rsi	#, ivtmp.1464
	leaq	8(%rbx,%r9,8), %r9	#, D.17988
	subq	%rdx, %rax	# D.17983, D.17983
	leaq	(%rcx,%rax,8), %rcx	#, ivtmp.1466
	movq	%rbx, %rax	# t, ivtmp.1470
	leaq	(%rbx,%r13,8), %rdx	#, ivtmp.1473
	.p2align 4,,10
	.p2align 3
.L462:
	vmovsd	(%rsi), %xmm0	# MEM[base: _453, offset: 0B], D.17982
	addq	$8, %rax	#, ivtmp.1470
	addq	%r8, %rsi	# D.17983, ivtmp.1464
	subq	$8, %rdx	#, ivtmp.1473
	vmovsd	(%rcx), %xmm3	# MEM[base: _452, offset: 0B], D.17982
	addq	%rdi, %rcx	# D.17983, ivtmp.1466
	vmovsd	(%rax), %xmm2	# MEM[base: _451, offset: 8B], D.17982
	vsubsd	%xmm3, %xmm0, %xmm1	# D.17982, D.17982, wkr
	vaddsd	%xmm0, %xmm3, %xmm3	# D.17982, D.17982, wki
	vmovsd	(%rdx), %xmm0	# MEM[base: _450, offset: -8B], D.17982
	vmulsd	%xmm2, %xmm1, %xmm4	# D.17982, wkr, D.17982
	vmulsd	%xmm0, %xmm3, %xmm5	# D.17982, wki, D.17982
	vmulsd	%xmm2, %xmm3, %xmm2	# D.17982, wki, D.17982
	vmulsd	%xmm0, %xmm1, %xmm0	# D.17982, wkr, D.17982
	vaddsd	%xmm4, %xmm5, %xmm4	# D.17982, D.17982, D.17982
	vsubsd	%xmm0, %xmm2, %xmm2	# D.17982, D.17982, xr
	vmovsd	%xmm4, (%rax)	# D.17982, MEM[base: _451, offset: 8B]
	vmovsd	%xmm2, (%rdx)	# xr, MEM[base: _450, offset: -8B]
	cmpq	%r9, %rax	# D.17988, ivtmp.1470
	jne	.L462	#,
	movq	-80(%rbp), %rdi	# %sfp, D.17980
	movslq	%r14d, %r12	# m, D.17981
	leaq	(%rbx,%r12,8), %rax	#, D.17980
	vmovsd	(%rax), %xmm0	# *_342, *_342
	movq	%rax, -104(%rbp)	# D.17980, %sfp
	vmulsd	(%rdi), %xmm0, %xmm0	# *_106, *_342, D.17982
	vmovsd	%xmm0, (%rax)	# D.17982, *_342
	cmpl	$4, %r15d	#, m
	jg	.L521	#,
.L461:
	cmpl	$4, %r15d	#, m
	je	.L522	#,
.L464:
	movslq	-72(%rbp), %rcx	# %sfp,
	movl	-96(%rbp), %eax	# %sfp, D.17984
	movq	-88(%rbp), %rsi	# %sfp, a
	vmovsd	(%rbx), %xmm0	# *t_50(D), *t_50(D)
	vsubsd	8(%rbx), %xmm0, %xmm0	# MEM[(double *)t_50(D) + 8B], *t_50(D), D.17982
	subl	%ecx, %eax	# l, D.17984
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)	# D.17982, *_153
	vmovsd	8(%rbx), %xmm0	# MEM[(double *)t_50(D) + 8B], MEM[(double *)t_50(D) + 8B]
	vaddsd	(%rbx), %xmm0, %xmm0	# *t_50(D), MEM[(double *)t_50(D) + 8B], D.17982
	vmovsd	%xmm0, (%rsi,%rcx,8)	# D.17982, *_160
	cmpl	$2, %r15d	#, m
	je	.L470	#,
	movq	-88(%rbp), %rsi	# %sfp, a
	leal	0(,%rcx,4), %edx	#, D.17984
	leaq	24(%rbx), %rax	#, ivtmp.1454
	movslq	%edx, %rdx	# D.17984, D.17983
	leaq	0(,%rdx,8), %rdi	#, D.17983
	subq	%rcx, %rdx	# D.17983, D.17983
	salq	$4, %rcx	#, D.17981
	leaq	(%rsi,%rdx,8), %rdx	#, ivtmp.1455
	leal	-3(%r15), %esi	#, D.17987
	shrl	%esi	#
	salq	$4, %rsi	#, D.17988
	leaq	40(%rbx,%rsi), %rsi	#, D.17988
	.p2align 4,,10
	.p2align 3
.L469:
	vmovsd	-8(%rax), %xmm0	# MEM[base: _722, offset: -8B], MEM[base: _722, offset: -8B]
	addq	$16, %rax	#, ivtmp.1454
	vsubsd	-16(%rax), %xmm0, %xmm0	# MEM[base: _722, offset: 0B], MEM[base: _722, offset: -8B], D.17982
	vmovsd	%xmm0, (%rdx)	# D.17982, MEM[base: _720, offset: 0B]
	vmovsd	-16(%rax), %xmm0	# MEM[base: _722, offset: 0B], MEM[base: _722, offset: 0B]
	vaddsd	-24(%rax), %xmm0, %xmm0	# MEM[base: _722, offset: -8B], MEM[base: _722, offset: 0B], D.17982
	vmovsd	%xmm0, (%rdx,%rcx)	# D.17982, MEM[base: _720, index: _698, offset: 0B]
	addq	%rdi, %rdx	# D.17983, ivtmp.1455
	cmpq	%rsi, %rax	# D.17988, ivtmp.1454
	jne	.L469	#,
.L470:
	leaq	8(,%r13,8), %rcx	#, D.17981
	movq	%r13, %rax	# D.17983, D.17983
	sall	-72(%rbp)	# %sfp
	leaq	0(,%r12,8), %r10	#, D.17990
	salq	$4, %rax	#, D.17983
	negq	%r12	# tmp689
	salq	$3, %r12	#, tmp690
	leaq	8(%rax), %rdi	#, D.17981
	subq	$24, %rax	#, D.17981
	leaq	0(,%r13,8), %r8	#, D.17983
	cmpq	%rcx, %rax	# D.17981, D.17981
	leaq	-24(%r8), %r9	#, D.17981
	setge	%r11b	#, D.17986
	leaq	-8(%rcx), %rsi	#, D.17983
	cmpq	%r9, %rdi	# D.17981, D.17981
	leaq	(%rbx,%rsi), %rdx	#, D.17980
	setle	%r9b	#, D.17986
	orl	%r9d, %r11d	# D.17986, D.17986
	cmpq	-112(%rbp), %rdx	# %sfp, D.17980
	setae	%r9b	#, D.17986
	andl	%r9d, %r11d	# D.17986, D.17986
	cmpl	$7, %r14d	#, m
	seta	%r9b	#, D.17986
	addq	%r12, %rdi	# tmp690, D.17981
	andl	%r11d, %r9d	# D.17986, D.17986
	cmpq	%r10, %rdi	# D.17990, D.17981
	setge	%dil	#, D.17986
	testb	%dil, %r9b	# D.17986, D.17986
	je	.L468	#,
	addq	%rcx, %r12	# D.17981, D.17981
	cmpq	%r10, %r12	# D.17990, D.17981
	jl	.L468	#,
	leaq	(%rbx,%rax), %rdi	#, vectp.1390
	andl	$31, %edi	#, D.17988
	shrq	$3, %rdi	#, D.17988
	cmpl	%edi, %r14d	# D.17988, m
	cmovbe	%r14d, %edi	# m,, prolog_loop_niters.1391
	xorl	%edx, %edx	# j
	testl	%edi, %edi	# prolog_loop_niters.1391
	je	.L471	#,
	leal	(%r15,%r15), %edx	#, D.17984
	addq	%rbx, %r8	# t, D.17980
	movslq	%edx, %rdx	# D.17984, D.17983
	leaq	(%rbx,%rdx,8), %rdx	#, D.17980
	vmovsd	(%rdx), %xmm0	# *_519, *_519
	vsubsd	(%r8), %xmm0, %xmm0	# *_514, *_519, D.17982
	vmovsd	%xmm0, (%rbx)	# D.17982, *t_50(D)
	vmovsd	(%r8), %xmm0	# *_514, *_514
	vaddsd	(%rdx), %xmm0, %xmm0	# *_519, *_514, D.17982
	movl	$1, %edx	#, j
	vmovsd	%xmm0, (%r8)	# D.17982, *_514
	cmpl	$1, %edi	#, prolog_loop_niters.1391
	je	.L471	#,
	leal	-1(%r15,%r15), %edx	#, D.17984
	movslq	%edx, %rdx	# D.17984, D.17983
	leaq	(%rbx,%rdx,8), %r8	#, D.17980
	leaq	(%rbx,%rcx), %rdx	#, D.17980
	vmovsd	(%r8), %xmm0	# *_491, *_491
	vsubsd	(%rdx), %xmm0, %xmm0	# *_486, *_491, D.17982
	vmovsd	%xmm0, 8(%rbx)	# D.17982, MEM[(double *)t_50(D) + 8B]
	vmovsd	(%r8), %xmm0	# *_491, *_491
	vaddsd	(%rdx), %xmm0, %xmm0	# *_486, *_491, D.17982
	movl	$2, %edx	#, j
	vmovsd	%xmm0, -16(%rbx,%rcx)	# D.17982, *_480
	cmpl	$3, %edi	#, prolog_loop_niters.1391
	jne	.L471	#,
	leal	-2(%r15,%r15), %edx	#, D.17984
	movslq	%edx, %rdx	# D.17984, D.17983
	leaq	(%rbx,%rdx,8), %r8	#, D.17980
	leaq	8(%rbx,%rcx), %rdx	#, D.17980
	vmovsd	(%r8), %xmm0	# *_663, *_663
	vsubsd	(%rdx), %xmm0, %xmm0	# *_658, *_663, D.17982
	vmovsd	%xmm0, 16(%rbx)	# D.17982, MEM[(double *)t_50(D) + 16B]
	vmovsd	(%r8), %xmm0	# *_663, *_663
	vaddsd	(%rdx), %xmm0, %xmm0	# *_658, *_663, D.17982
	movl	$3, %edx	#, j
	vmovsd	%xmm0, -24(%rbx,%rcx)	# D.17982, *_652
.L471:
	movl	%r14d, %r12d	# m, niters.1393
	movl	%edi, %r10d	# prolog_loop_niters.1391, prolog_loop_adjusted_niters.1392
	xorl	%r11d, %r11d	# ivtmp.1427
	leaq	0(,%r10,8), %r9	#, D.17981
	subl	%edi, %r12d	# prolog_loop_niters.1391, niters.1393
	addq	%r10, %r13	# prolog_loop_adjusted_niters.1392, D.17981
	leal	-4(%r12), %r8d	#, D.17987
	addq	%r9, %rsi	# D.17981, D.17981
	addq	%rbx, %r9	# t, vectp_t.1406
	leaq	(%rbx,%r13,8), %r13	#, vectp.1412
	shrl	$2, %r8d	#, D.17987
	addq	%rbx, %rsi	# t, vectp.1402
	addl	$1, %r8d	#, bnd.1394
	leal	0(,%r8,4), %edi	#, ratio_mult_vf.1395
	movl	%edi, -116(%rbp)	# ratio_mult_vf.1395, %sfp
	movq	%r10, %rdi	# prolog_loop_adjusted_niters.1392, tmp753
	negq	%rdi	# tmp753
	salq	$3, %rdi	#, tmp754
	leaq	-32(%rcx,%rdi), %r10	#, D.17981
	addq	%rdi, %rax	# tmp754, D.17981
	xorl	%ecx, %ecx	# ivtmp.1434
	addq	%rbx, %rax	# t, vectp.1398
	addq	%rbx, %r10	# t, vectp.1416
	xorl	%edi, %edi	# ivtmp.1431
.L473:
	vmovapd	(%rax,%rdi), %ymm0	# MEM[base: vectp.1398_595, index: ivtmp.1431_726, offset: 0B], vect__200.1399
	addl	$1, %r11d	#, ivtmp.1427
	vmovupd	(%rsi,%rcx), %xmm1	# MEM[base: vectp.1402_586, index: ivtmp.1434_724, offset: 0B], MEM[base: vectp.1402_586, index: ivtmp.1434_724, offset: 0B]
	vinsertf128	$0x1, 16(%rsi,%rcx), %ymm1, %ymm1	# MEM[base: vectp.1402_586, index: ivtmp.1434_724, offset: 0B], MEM[base: vectp.1402_586, index: ivtmp.1434_724, offset: 0B], vect__205.1403
	vperm2f128	$33, %ymm0, %ymm0, %ymm0	#, vect__200.1399, vect__200.1399, tmp762
	vpermilpd	$5, %ymm0, %ymm0	#, tmp762, vect__200.1400
	vsubpd	%ymm1, %ymm0, %ymm0	# vect__205.1403, vect__200.1400, vect__206.1404
	vmovups	%xmm0, (%r9,%rcx)	#, MEM[base: vectp_t.1406_579, index: ivtmp.1434_724, offset: 0B]
	vextractf128	$0x1, %ymm0, 16(%r9,%rcx)	# vect__206.1404, MEM[base: vectp_t.1406_579, index: ivtmp.1434_724, offset: 0B]
	vmovapd	(%rax,%rdi), %ymm0	# MEM[base: vectp.1398_595, index: ivtmp.1431_726, offset: 0B], vect__211.1409
	vmovupd	0(%r13,%rcx), %xmm1	# MEM[base: vectp.1412_565, index: ivtmp.1434_724, offset: 0B], MEM[base: vectp.1412_565, index: ivtmp.1434_724, offset: 0B]
	vinsertf128	$0x1, 16(%r13,%rcx), %ymm1, %ymm1	# MEM[base: vectp.1412_565, index: ivtmp.1434_724, offset: 0B], MEM[base: vectp.1412_565, index: ivtmp.1434_724, offset: 0B], vect__212.1413
	addq	$32, %rcx	#, ivtmp.1434
	vperm2f128	$33, %ymm0, %ymm0, %ymm0	#, vect__211.1409, vect__211.1409, tmp767
	vpermilpd	$5, %ymm0, %ymm0	#, tmp767, vect__211.1410
	vaddpd	%ymm1, %ymm0, %ymm0	# vect__212.1413, vect__211.1410, vect__213.1414
	vperm2f128	$33, %ymm0, %ymm0, %ymm0	#, vect__213.1414, vect__213.1414, tmp771
	vpermilpd	$5, %ymm0, %ymm0	#, tmp771, vect__213.1417
	vmovups	%xmm0, (%r10,%rdi)	#, MEM[base: vectp.1416_557, index: ivtmp.1431_726, offset: 0B]
	vextractf128	$0x1, %ymm0, 16(%r10,%rdi)	# vect__213.1417, MEM[base: vectp.1416_557, index: ivtmp.1431_726, offset: 0B]
	subq	$32, %rdi	#, ivtmp.1431
	cmpl	%r11d, %r8d	# ivtmp.1427, bnd.1394
	ja	.L473	#,
	movl	-116(%rbp), %eax	# %sfp, ratio_mult_vf.1395
	addl	%eax, %edx	# ratio_mult_vf.1395, j
	cmpl	%r12d, %eax	# niters.1393, ratio_mult_vf.1395
	je	.L475	#,
	movl	%r15d, %eax	# m, k
	movslq	%edx, %rdi	# j, D.17983
	subl	%edx, %eax	# j, k
	leal	(%r15,%rax), %ecx	#, D.17984
	cltq
	movslq	%ecx, %rcx	# D.17984, D.17983
	leaq	(%rbx,%rcx,8), %rsi	#, D.17980
	leal	(%r15,%rdx), %ecx	#, D.17984
	vmovsd	(%rsi), %xmm0	# *_35, *_35
	movslq	%ecx, %rcx	# D.17984, D.17983
	leaq	(%rbx,%rcx,8), %rcx	#, D.17980
	vsubsd	(%rcx), %xmm0, %xmm0	# *_193, *_35, D.17982
	vmovsd	%xmm0, (%rbx,%rdi,8)	# D.17982, *_673
	vmovsd	(%rsi), %xmm0	# *_35, *_35
	vaddsd	(%rcx), %xmm0, %xmm0	# *_193, *_35, D.17982
	vmovsd	%xmm0, (%rbx,%rax,8)	# D.17982, *_199
	leal	1(%rdx), %eax	#, j
	cmpl	%eax, %r14d	# j, m
	jle	.L475	#,
	movl	%r15d, %ecx	# m, k
	addl	$2, %edx	#, j
	subl	%eax, %ecx	# j, k
	leal	(%r15,%rcx), %esi	#, D.17984
	movslq	%ecx, %rcx	# k, D.17983
	movslq	%esi, %rsi	# D.17984, D.17983
	leaq	(%rbx,%rsi,8), %rdi	#, D.17980
	leal	(%rax,%r15), %esi	#, D.17984
	vmovsd	(%rdi), %xmm0	# *_546, *_546
	cltq
	movslq	%esi, %rsi	# D.17984, D.17983
	leaq	(%rbx,%rsi,8), %rsi	#, D.17980
	vsubsd	(%rsi), %xmm0, %xmm0	# *_541, *_546, D.17982
	vmovsd	%xmm0, (%rbx,%rax,8)	# D.17982, *_211
	vmovsd	(%rdi), %xmm0	# *_546, *_546
	vaddsd	(%rsi), %xmm0, %xmm0	# *_541, *_546, D.17982
	vmovsd	%xmm0, (%rbx,%rcx,8)	# D.17982, *_535
	cmpl	%edx, %r14d	# j, m
	jle	.L475	#,
	movl	%r15d, %eax	# m, k
	subl	%edx, %eax	# j, k
	leal	(%r15,%rax), %ecx	#, D.17984
	cltq
	movslq	%ecx, %rcx	# D.17984, D.17983
	leaq	(%rbx,%rcx,8), %rsi	#, D.17980
	leal	(%r15,%rdx), %ecx	#, D.17984
	vmovsd	(%rsi), %xmm0	# *_623, *_623
	movslq	%edx, %rdx	# j, D.17983
	movslq	%ecx, %rcx	# D.17984, D.17983
	leaq	(%rbx,%rcx,8), %rcx	#, D.17980
	vsubsd	(%rcx), %xmm0, %xmm0	# *_618, *_623, D.17982
	vmovsd	%xmm0, (%rbx,%rdx,8)	# D.17982, *_627
	vmovsd	(%rsi), %xmm0	# *_623, *_623
	vaddsd	(%rcx), %xmm0, %xmm0	# *_618, *_623, D.17982
	vmovsd	%xmm0, (%rbx,%rax,8)	# D.17982, *_612
.L475:
	addl	%r14d, %r15d	# m, D.17984
	movq	-104(%rbp), %rax	# %sfp, D.17980
	movslq	%r15d, %r15	# D.17984, D.17983
	vmovsd	(%rbx,%r15,8), %xmm0	# *_34, D.17982
	movl	%r14d, %r15d	# m, m
	vmovsd	%xmm0, (%rax)	# D.17982, *_835
.L479:
	movslq	%r14d, %r13	# m, D.17983
	jmp	.L501	#
.L443:
	vmovsd	(%r12), %xmm0	# *a_38(D), *a_38(D)
	vmovsd	%xmm0, 8(%r12)	# *a_38(D), MEM[(double *)a_38(D) + 8B]
	vmovsd	(%r11), %xmm0	# *t_50(D), D.17982
	vmovsd	%xmm0, 16(%r12)	# D.17982, MEM[(double *)a_38(D) + 16B]
	vmovsd	8(%r11), %xmm0	# MEM[(double *)t_50(D) + 8B], D.17982
	vmovsd	%xmm0, (%r12)	# D.17982, *a_38(D)
.L508:
	subq	$-128, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
.L438:
	.cfi_restore_state
	movq	-136(%rbp), %rsi	# %sfp, ip
	movl	%edi, %eax	# n, nw
	movl	$1, -92(%rbp)	#, %sfp
	sarl	$3, %eax	#, nw
	movl	%eax, %ebx	# nw, nw
	movl	%eax, -120(%rbp)	# nw, %sfp
	movl	%eax, (%rsi)	# nw, *ip_21(D)
	movl	$2, %eax	#, D.17984
	movl	$1, 4(%rsi)	#, MEM[(int *)ip_21(D) + 4B]
	cmpl	$2, %ebx	#, nw
	jle	.L439	#,
	movq	%rdx, -72(%rbp)	# t, %sfp
	movq	-144(%rbp), %rdx	# %sfp,
	movl	%ebx, %edi	# nw,
	movq	%rsi, %rbx	# ip, ip
	call	makewt.part.0	#
	movl	4(%rbx), %edx	# MEM[(int *)ip_21(D) + 4B], D.17984
	movl	-96(%rbp), %ebx	# %sfp, n
	movq	-72(%rbp), %r11	# %sfp, t
	leal	(%rdx,%rdx), %eax	#, D.17984
	movl	%edx, -92(%rbp)	# D.17984, %sfp
	cmpl	%eax, %ebx	# D.17984, n
	jle	.L523	#,
.L440:
	movl	%ebx, %eax	# n, nc
	movq	-144(%rbp), %rsi	# %sfp, w
	movl	%ebx, %edi	# n, n
	sarl	%eax	# nc
	movl	%eax, %r15d	# nc, nc
	movl	%eax, -92(%rbp)	# nc, %sfp
	movslq	-120(%rbp), %rax	# %sfp, D.17983
	leaq	(%rsi,%rax,8), %r13	#, D.17980
	movq	-136(%rbp), %rax	# %sfp, ip
	movl	%r15d, 4(%rax)	# nc, MEM[(int *)ip_21(D) + 4B]
	cmpl	$1, %r15d	#, nc
	jle	.L482	#,
	movl	%edi, %eax	# n, nch
	vxorpd	%xmm0, %xmm0, %xmm0	# D.17982
	movq	%r11, -72(%rbp)	# t, %sfp
	vmovsd	.LC16(%rip), %xmm1	#, tmp582
	sarl	$2, %eax	#, nch
	vcvtsi2sd	%eax, %xmm0, %xmm0	# nch, D.17982, D.17982
	movl	%eax, %ebx	# nch, nch
	vdivsd	%xmm0, %xmm1, %xmm7	# D.17982, tmp582, delta
	vmulsd	%xmm7, %xmm0, %xmm0	# delta, D.17982, D.17982
	vmovsd	%xmm7, -80(%rbp)	# delta, %sfp
	call	cos	#
	movslq	%ebx, %rax	# nch, D.17983
	cmpl	$1, %ebx	#, nch
	movq	-72(%rbp), %r11	# %sfp, t
	vmovsd	.LC2(%rip), %xmm1	#, tmp834
	vmovsd	%xmm0, 0(%r13)	# D.17982, *_33
	vmulsd	%xmm1, %xmm0, %xmm0	# tmp834, D.17982, D.17982
	vmovsd	%xmm0, 0(%r13,%rax,8)	# D.17982, *_255
	je	.L483	#,
	leaq	8(%r13), %r14	#, ivtmp.1523
	movslq	%r15d, %rax	# nc,
	movq	%r12, -88(%rbp)	# a, %sfp
	movl	$1, %r15d	#, j
	leaq	0(%r13,%rax,8), %r13	#, ivtmp.1528
	movq	%r13, %r12	# ivtmp.1528, ivtmp.1528
	movq	%r11, %r13	# t, t
	.p2align 4,,10
	.p2align 3
.L442:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.17982
	vcvtsi2sd	%r15d, %xmm0, %xmm0	# j, D.17982, D.17982
	vmovsd	%xmm1, -72(%rbp)	# tmp834, %sfp
	addl	$1, %r15d	#, j
	vmulsd	-80(%rbp), %xmm0, %xmm0	# %sfp, D.17982, D.17982
	addq	$8, %r14	#, ivtmp.1523
	subq	$8, %r12	#, ivtmp.1528
	leaq	-64(%rbp), %rsi	#, tmp949
	leaq	-56(%rbp), %rdi	#, tmp950
	call	sincos	#
	vmovsd	-72(%rbp), %xmm1	# %sfp, tmp834
	vmulsd	-64(%rbp), %xmm1, %xmm0	#, tmp834, D.17982
	vmovsd	%xmm0, -8(%r14)	# D.17982, MEM[base: _63, offset: 0B]
	vmulsd	-56(%rbp), %xmm1, %xmm0	#, tmp834, D.17982
	vmovsd	%xmm0, (%r12)	# D.17982, MEM[base: _58, offset: -8B]
	cmpl	%ebx, %r15d	# nch, j
	jne	.L442	#,
	movq	-88(%rbp), %r12	# %sfp, a
	movq	%r13, %r11	# t, t
	movl	-92(%rbp), %ebx	# %sfp, D.17984
	jmp	.L441	#
	.p2align 4,,10
	.p2align 3
.L521:
	movq	-144(%rbp), %r8	# %sfp,
	movq	%rbx, %rsi	# t,
	movl	%r15d, %edi	# m,
	movl	-120(%rbp), %ecx	# %sfp,
	movq	-136(%rbp), %rdx	# %sfp,
	vzeroupper
	call	cftfsub	#
	movq	-80(%rbp), %rcx	# %sfp,
	movq	%rbx, %rsi	# t,
	movl	-92(%rbp), %edx	# %sfp,
	movl	%r15d, %edi	# m,
	call	rftfsub	#
	jmp	.L464	#
	.p2align 4,,10
	.p2align 3
.L468:
	leal	-1(%r14), %ecx	#, D.17981
	movq	%rbx, %rax	# t, ivtmp.1425
	leaq	8(%rbx,%rcx,8), %rcx	#, D.17988
	.p2align 4,,10
	.p2align 3
.L477:
	vmovsd	(%rdx,%r13,8), %xmm0	# MEM[base: _475, index: _385, step: 8, offset: 0B], MEM[base: _475, index: _385, step: 8, offset: 0B]
	vsubsd	(%rax,%r13,8), %xmm0, %xmm0	# MEM[base: _497, index: _385, step: 8, offset: 0B], MEM[base: _475, index: _385, step: 8, offset: 0B], D.17982
	vmovsd	%xmm0, (%rax)	# D.17982, MEM[base: _497, offset: 0B]
	vmovsd	(%rax,%r13,8), %xmm0	# MEM[base: _497, index: _385, step: 8, offset: 0B], MEM[base: _497, index: _385, step: 8, offset: 0B]
	addq	$8, %rax	#, ivtmp.1425
	vaddsd	(%rdx,%r13,8), %xmm0, %xmm0	# MEM[base: _475, index: _385, step: 8, offset: 0B], MEM[base: _497, index: _385, step: 8, offset: 0B], D.17982
	subq	$8, %rdx	#, ivtmp.1426
	vmovsd	%xmm0, 8(%rdx)	# D.17982, MEM[base: _475, offset: 0B]
	cmpq	%rcx, %rax	# D.17988, ivtmp.1425
	jne	.L477	#,
	addl	%r14d, %r15d	# m, D.17984
	movq	-104(%rbp), %rax	# %sfp, D.17980
	movslq	%r15d, %r15	# D.17984, D.17983
	vmovsd	(%rbx,%r15,8), %xmm0	# *_222, D.17982
	vmovsd	%xmm0, (%rax)	# D.17982, *_835
	cmpl	$1, %r14d	#, m
	je	.L524	#,
	movl	%r14d, %r15d	# m, m
	jmp	.L479	#
.L524:
	movslq	-72(%rbp), %rax	# %sfp, D.17983
	movq	%rbx, %r11	# t, t
	movq	-88(%rbp), %r12	# %sfp, a
	salq	$3, %rax	#, D.17983
	vzeroupper
.L454:
	vmovsd	(%r11), %xmm0	# *t_50(D), D.17982
	vmovsd	%xmm0, (%r12,%rax)	# D.17982, *_228
	movq	-152(%rbp), %rax	# %sfp, D.17980
	vmovsd	16(%r11), %xmm0	# MEM[(double *)t_50(D) + 16B], MEM[(double *)t_50(D) + 16B]
	vsubsd	8(%r11), %xmm0, %xmm0	# MEM[(double *)t_50(D) + 8B], MEM[(double *)t_50(D) + 16B], D.17982
	vmovsd	%xmm0, (%rax)	# D.17982, *_44
	vmovsd	8(%r11), %xmm0	# MEM[(double *)t_50(D) + 8B], MEM[(double *)t_50(D) + 8B]
	vaddsd	16(%r11), %xmm0, %xmm0	# MEM[(double *)t_50(D) + 16B], MEM[(double *)t_50(D) + 8B], D.17982
	vmovsd	%xmm0, (%r12)	# D.17982, *a_38(D)
	jmp	.L508	#
.L522:
	movq	-144(%rbp), %r8	# %sfp,
	movq	%rbx, %rsi	# t,
	movl	$4, %edi	#,
	movl	-120(%rbp), %ecx	# %sfp,
	movq	-136(%rbp), %rdx	# %sfp,
	vzeroupper
	call	cftfsub	#
	jmp	.L464	#
.L520:
	leaq	8(%rbx), %rax	#, D.17980
	vmovsd	8(%rbx), %xmm0	# *_826, *_826
	movl	$1, %r12d	#, D.17981
	movq	%rax, -104(%rbp)	# D.17980, %sfp
	movq	-80(%rbp), %rax	# %sfp, D.17980
	vmulsd	(%rax), %xmm0, %xmm0	# *_106, *_826, D.17982
	vmovsd	%xmm0, 8(%rbx)	# D.17982, *_826
	jmp	.L461	#
.L517:
	movq	-80(%rbp), %rax	# %sfp, D.17980
	vmulsd	(%rax), %xmm0, %xmm0	# *_106, D.17982, D.17982
	vmovsd	%xmm0, (%r8)	# D.17982, *_91
	jmp	.L450	#
.L518:
	movq	-144(%rbp), %r8	# %sfp,
	movq	%r12, %rsi	# a,
	movl	%ebx, %edi	# D.17984,
	movq	%r11, -72(%rbp)	# t, %sfp
	movl	-120(%rbp), %ecx	# %sfp,
	movq	-136(%rbp), %rdx	# %sfp,
	call	cftfsub	#
	movq	-80(%rbp), %rcx	# %sfp,
	movq	%r12, %rsi	# a,
	movl	%ebx, %edi	# D.17984,
	movl	-92(%rbp), %edx	# %sfp,
	call	rftfsub	#
	movq	-72(%rbp), %r11	# %sfp, t
	jmp	.L451	#
.L482:
	movl	%r15d, %ebx	# nc, D.17984
	jmp	.L441	#
.L519:
	movq	-144(%rbp), %r8	# %sfp,
	movq	%r12, %rsi	# a,
	movq	%r11, -72(%rbp)	# t, %sfp
	movb	$2, %bl	#, j
	movl	-120(%rbp), %ecx	# %sfp,
	movl	$4, %edi	#,
	movq	-136(%rbp), %rdx	# %sfp,
	call	cftfsub	#
	vmovsd	(%r12), %xmm0	# *a_38(D), *a_38(D)
	vsubsd	8(%r12), %xmm0, %xmm0	# MEM[(double *)a_38(D) + 8B], *a_38(D), D.17982
	movq	-72(%rbp), %r11	# %sfp, t
	vmovsd	%xmm0, -8(%r12,%r14)	# D.17982, *_2
	vmovsd	8(%r12), %xmm0	# MEM[(double *)a_38(D) + 8B], MEM[(double *)a_38(D) + 8B]
	vaddsd	(%r12), %xmm0, %xmm0	# *a_38(D), MEM[(double *)a_38(D) + 8B], D.17982
	vmovsd	%xmm0, 8(%r12)	# D.17982, MEM[(double *)a_38(D) + 8B]
	jmp	.L452	#
.L483:
	movl	-92(%rbp), %ebx	# %sfp, D.17984
	jmp	.L441	#
	.cfi_endproc
.LFE40:
	.size	dfct, .-dfct
	.section	.text.unlikely
.LCOLDE48:
	.text
.LHOTE48:
	.section	.text.unlikely
.LCOLDB49:
	.text
.LHOTB49:
	.p2align 4,,15
	.globl	dfst
	.type	dfst, @function
dfst:
.LFB41:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movq	%rdx, %r14	# t, t
	pushq	%r13	#
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rsi, %r13	# a, a
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	addq	$-128, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	(%rcx), %eax	# *ip_21(D), nw
	movl	%edi, -124(%rbp)	# n, %sfp
	movq	%rcx, -168(%rbp)	# ip, %sfp
	movq	%r8, -176(%rbp)	# w, %sfp
	movl	%eax, -128(%rbp)	# nw, %sfp
	sall	$3, %eax	#, D.18177
	cmpl	%edi, %eax	# n, D.18177
	jl	.L526	#,
	movl	4(%rcx), %edx	# MEM[(int *)ip_21(D) + 4B], D.18177
	leal	(%rdx,%rdx), %eax	#, D.18177
	movl	%edx, -116(%rbp)	# D.18177, %sfp
.L527:
	cmpl	%eax, -124(%rbp)	# D.18177, %sfp
	jg	.L603	#,
.L528:
	movl	-124(%rbp), %eax	# %sfp, n
	cmpl	$2, %eax	#, n
	jle	.L532	#,
	movl	%eax, %ebx	# n, m
	movl	%eax, %r11d	# n, m
	movq	-176(%rbp), %rdi	# %sfp, w
	movslq	-128(%rbp), %rax	# %sfp, D.18178
	sarl	$2, %r11d	#, m
	sarl	%ebx	# m
	movslq	%r11d, %r8	# m, D.18178
	leaq	(%rdi,%rax,8), %rax	#, D.18175
	movq	%rax, -104(%rbp)	# D.18175, %sfp
	leaq	0(,%r8,8), %rax	#, D.18178
	movq	%rax, -96(%rbp)	# D.18178, %sfp
	cmpl	$1, %r11d	#, m
	jle	.L604	#,
.L531:
	movslq	-124(%rbp), %r12	# %sfp, D.18178
	movl	$1, %eax	#, tmp628
	movslq	%ebx, %r9	# m, D.18178
	leaq	0(,%r9,8), %rcx	#, D.18178
	subl	%ebx, %eax	# m, D.18177
	leaq	0(%r13,%rcx), %rdx	#, ivtmp.1660
	cltq
	addq	%r14, %rcx	# t, ivtmp.1665
	addq	%r12, %rax	# D.18178, D.18173
	movq	%r12, %rdi	# D.18178, D.18173
	leaq	0(%r13,%rax,8), %r8	#, D.18175
	subq	%r9, %rdi	# D.18178, D.18173
	xorl	%eax, %eax	# ivtmp.1650
	.p2align 4,,10
	.p2align 3
.L534:
	vmovsd	8(%r13,%rax,8), %xmm4	# MEM[base: a_40(D), index: ivtmp.1650_373, step: 8, offset: 8B], D.18172
	subq	$8, %rcx	#, ivtmp.1665
	vmovsd	-8(%rdx,%rdi,8), %xmm5	# MEM[base: _270, index: _254, step: 8, offset: -8B], D.18172
	subq	$8, %rdx	#, ivtmp.1660
	vmovsd	(%rdx), %xmm3	# MEM[base: _270, offset: -8B], D.18172
	vmovsd	(%r8,%rax,8), %xmm2	# MEM[base: _780, index: ivtmp.1650_373, step: 8, offset: 0B], D.18172
	vsubsd	%xmm5, %xmm4, %xmm1	# D.18172, D.18172, xi
	vaddsd	%xmm4, %xmm5, %xmm4	# D.18172, D.18172, xr
	vsubsd	%xmm2, %xmm3, %xmm0	# D.18172, D.18172, yi
	vaddsd	%xmm2, %xmm3, %xmm2	# D.18172, D.18172, yr
	vmovsd	%xmm4, 8(%r13,%rax,8)	# xr, MEM[base: a_40(D), index: ivtmp.1650_373, step: 8, offset: 8B]
	vmovsd	%xmm2, (%rdx)	# yr, MEM[base: _270, offset: -8B]
	vaddsd	%xmm1, %xmm0, %xmm2	# xi, yi, D.18172
	vsubsd	%xmm0, %xmm1, %xmm0	# yi, xi, D.18172
	vmovsd	%xmm2, 8(%r14,%rax,8)	# D.18172, MEM[base: t_63(D), index: ivtmp.1650_373, step: 8, offset: 8B]
	addq	$1, %rax	#, ivtmp.1650
	leal	1(%rax), %esi	#, D.18174
	vmovsd	%xmm0, (%rcx)	# D.18172, MEM[base: _760, offset: -8B]
	cmpl	%esi, %r11d	# D.18174, m
	jg	.L534	#,
.L597:
	movq	-96(%rbp), %r8	# %sfp, D.18175
.L529:
	movl	-124(%rbp), %eax	# %sfp, D.18177
	leaq	0(%r13,%r9,8), %r10	#, D.18175
	addq	%r13, %r8	# a, D.18175
	vmovsd	(%r8), %xmm0	# *_73, *_73
	subl	%r11d, %eax	# m, D.18177
	cltq
	leaq	0(%r13,%rax,8), %rax	#, D.18175
	vsubsd	(%rax), %xmm0, %xmm0	# *_78, *_73, D.18172
	vmovsd	%xmm0, (%r14)	# D.18172, *t_63(D)
	vmovsd	(%r8), %xmm0	# *_73, *_73
	vaddsd	(%rax), %xmm0, %xmm0	# *_78, *_73, D.18172
	movl	-116(%rbp), %eax	# %sfp, tmp647
	vmovsd	%xmm0, (%r8)	# D.18172, *_73
	vmovsd	(%r10), %xmm0	# *_88, D.18172
	cltd
	vmovsd	%xmm0, 0(%r13)	# D.18172, *a_40(D)
	idivl	%ebx	# m
	cmpl	$1, %r11d	#, m
	jle	.L539	#,
	movslq	%eax, %rdx	# tmp647, D.18178
	negl	%eax	# D.18177
	movq	-104(%rbp), %rcx	# %sfp, D.18175
	movslq	%eax, %rdi	# D.18177, D.18178
	movslq	-116(%rbp), %rax	# %sfp, D.18178
	leaq	0(,%rdx,8), %r9	#, D.18178
	salq	$3, %rdi	#, D.18178
	leaq	(%rcx,%r9), %rsi	#, ivtmp.1639
	subq	%rdx, %rax	# D.18178, D.18178
	movq	%r10, %rdx	# D.18175, ivtmp.1645
	leal	-2(%r11), %r10d	#, D.18173
	leaq	(%rcx,%rax,8), %rcx	#, ivtmp.1641
	leaq	16(%r13,%r10,8), %r10	#, D.18182
	leaq	8(%r13), %rax	#, ivtmp.1646
	.p2align 4,,10
	.p2align 3
.L538:
	vmovsd	(%rsi), %xmm0	# MEM[base: _202, offset: 0B], D.18172
	addq	$8, %rax	#, ivtmp.1646
	addq	%r9, %rsi	# D.18178, ivtmp.1639
	subq	$8, %rdx	#, ivtmp.1645
	vmovsd	(%rcx), %xmm3	# MEM[base: _182, offset: 0B], D.18172
	addq	%rdi, %rcx	# D.18178, ivtmp.1641
	vmovsd	(%rdx), %xmm2	# MEM[base: _18, offset: -8B], D.18172
	vsubsd	%xmm3, %xmm0, %xmm1	# D.18172, D.18172, wkr
	vaddsd	%xmm0, %xmm3, %xmm3	# D.18172, D.18172, wki
	vmovsd	-8(%rax), %xmm0	# MEM[base: _17, offset: 0B], D.18172
	vmulsd	%xmm2, %xmm1, %xmm4	# D.18172, wkr, D.18172
	vmulsd	%xmm0, %xmm3, %xmm5	# D.18172, wki, D.18172
	vmulsd	%xmm2, %xmm3, %xmm2	# D.18172, wki, D.18172
	vmulsd	%xmm0, %xmm1, %xmm0	# D.18172, wkr, D.18172
	vaddsd	%xmm4, %xmm5, %xmm4	# D.18172, D.18172, D.18172
	vsubsd	%xmm0, %xmm2, %xmm2	# D.18172, D.18172, xr
	vmovsd	%xmm4, (%rdx)	# D.18172, MEM[base: _18, offset: -8B]
	vmovsd	%xmm2, -8(%rax)	# xr, MEM[base: _17, offset: 0B]
	cmpq	%r10, %rax	# D.18182, ivtmp.1646
	jne	.L538	#,
.L539:
	movq	-104(%rbp), %rax	# %sfp, D.18175
	vmovsd	(%r8), %xmm0	# *_73, *_73
	vmulsd	(%rax), %xmm0, %xmm0	# *_677, *_73, D.18172
	vmovsd	%xmm0, (%r8)	# D.18172, *_73
	cmpl	$4, %ebx	#, m
	jg	.L605	#,
	je	.L606	#,
.L540:
	vmovsd	8(%r13), %xmm0	# MEM[(double *)a_40(D) + 8B], MEM[(double *)a_40(D) + 8B]
	subl	$2, %ebx	#, j
	vsubsd	0(%r13), %xmm0, %xmm0	# *a_40(D), MEM[(double *)a_40(D) + 8B], D.18172
	vmovsd	%xmm0, -8(%r13,%r12,8)	# D.18172, *_101
	vmovsd	8(%r13), %xmm0	# MEM[(double *)a_40(D) + 8B], MEM[(double *)a_40(D) + 8B]
	vaddsd	0(%r13), %xmm0, %xmm0	# *a_40(D), MEM[(double *)a_40(D) + 8B], D.18172
	vmovsd	%xmm0, 8(%r13)	# D.18172, MEM[(double *)a_40(D) + 8B]
	cmpl	$1, %ebx	#, j
	jle	.L545	#,
.L541:
	vmovsd	.LC13(%rip), %xmm1	#, tmp896
	leal	(%rbx,%rbx), %edx	#, D.18177
	movslq	%ebx, %rax	# j, D.18178
	leaq	0(%r13,%rax,8), %rax	#, ivtmp.1626
	movslq	%edx, %rdx	# D.18177, D.18173
	leaq	8(%r13,%rdx,8), %rdx	#, ivtmp.1629
	.p2align 4,,10
	.p2align 3
.L544:
	vmovsd	(%rax), %xmm0	# MEM[base: _307, offset: 0B], MEM[base: _307, offset: 0B]
	subl	$2, %ebx	#, j
	subq	$16, %rax	#, ivtmp.1626
	subq	$32, %rdx	#, ivtmp.1629
	vsubsd	24(%rax), %xmm0, %xmm0	# MEM[base: _307, offset: 8B], MEM[base: _307, offset: 0B], D.18172
	vmovsd	%xmm0, 32(%rdx)	# D.18172, MEM[base: _296, offset: 0B]
	vmovsd	24(%rax), %xmm0	# MEM[base: _307, offset: 8B], MEM[base: _307, offset: 8B]
	vaddsd	16(%rax), %xmm0, %xmm0	# MEM[base: _307, offset: 0B], MEM[base: _307, offset: 8B], D.18172
	vxorpd	%xmm1, %xmm0, %xmm0	# tmp896, D.18172, D.18172
	vmovsd	%xmm0, 16(%rdx)	# D.18172, MEM[base: _296, offset: -16B]
	cmpl	$1, %ebx	#, j
	jg	.L544	#,
.L545:
	cmpl	$1, %r11d	#, m
	jle	.L542	#,
	leaq	8(%r14), %rax	#, D.18175
	movl	$2, -80(%rbp)	#, %sfp
	movl	%r11d, %ebx	# m, m
	vmovsd	.LC13(%rip), %xmm6	#, tmp899
	movq	%rax, -72(%rbp)	# D.18175, %sfp
	movslq	-116(%rbp), %rax	# %sfp, D.18178
	movq	%r13, -112(%rbp)	# a, %sfp
	movq	%rax, -152(%rbp)	# D.18178, %sfp
	leaq	40(%r14), %rax	#, D.18175
	movq	%rax, -160(%rbp)	# D.18175, %sfp
	.p2align 4,,10
	.p2align 3
.L543:
	movl	-116(%rbp), %eax	# %sfp, tmp688
	movl	%ebx, %r15d	# m, m
	sarl	%r15d	# m
	cltd
	idivl	%ebx	# m
	cmpl	$1, %r15d	#, m
	je	.L607	#,
	movslq	%eax, %rdx	# tmp688, D.18178
	negl	%eax	# D.18177
	movq	-104(%rbp), %rcx	# %sfp, D.18175
	movslq	%eax, %rdi	# D.18177, D.18178
	movq	-152(%rbp), %rax	# %sfp, D.18178
	leaq	0(,%rdx,8), %r8	#, D.18178
	salq	$3, %rdi	#, D.18178
	leal	-2(%r15), %r9d	#, D.18173
	leaq	(%rcx,%r8), %rsi	#, ivtmp.1611
	leaq	16(%r14,%r9,8), %r9	#, D.18182
	subq	%rdx, %rax	# D.18178, D.18178
	leaq	(%rcx,%rax,8), %rcx	#, ivtmp.1613
	movslq	%ebx, %rax	# m, D.18178
	leaq	(%r14,%rax,8), %rdx	#, ivtmp.1617
	movq	-72(%rbp), %rax	# %sfp, ivtmp.1618
	.p2align 4,,10
	.p2align 3
.L550:
	vmovsd	(%rsi), %xmm0	# MEM[base: _406, offset: 0B], D.18172
	addq	$8, %rax	#, ivtmp.1618
	addq	%r8, %rsi	# D.18178, ivtmp.1611
	subq	$8, %rdx	#, ivtmp.1617
	vmovsd	(%rcx), %xmm3	# MEM[base: _405, offset: 0B], D.18172
	addq	%rdi, %rcx	# D.18178, ivtmp.1613
	vmovsd	(%rdx), %xmm2	# MEM[base: _404, offset: -8B], D.18172
	vsubsd	%xmm3, %xmm0, %xmm1	# D.18172, D.18172, wkr
	vaddsd	%xmm0, %xmm3, %xmm3	# D.18172, D.18172, wki
	vmovsd	-8(%rax), %xmm0	# MEM[base: _403, offset: 0B], D.18172
	vmulsd	%xmm2, %xmm1, %xmm4	# D.18172, wkr, D.18172
	vmulsd	%xmm0, %xmm3, %xmm5	# D.18172, wki, D.18172
	vmulsd	%xmm2, %xmm3, %xmm2	# D.18172, wki, D.18172
	vmulsd	%xmm0, %xmm1, %xmm0	# D.18172, wkr, D.18172
	vaddsd	%xmm4, %xmm5, %xmm4	# D.18172, D.18172, D.18172
	vsubsd	%xmm0, %xmm2, %xmm2	# D.18172, D.18172, xr
	vmovsd	%xmm4, (%rdx)	# D.18172, MEM[base: _404, offset: -8B]
	vmovsd	%xmm2, -8(%rax)	# xr, MEM[base: _403, offset: 0B]
	cmpq	%r9, %rax	# D.18182, ivtmp.1618
	jne	.L550	#,
	movq	-104(%rbp), %rdi	# %sfp, D.18175
	movslq	%r15d, %rax	# m, D.18178
	leaq	(%r14,%rax,8), %rax	#, D.18175
	vmovsd	(%rax), %xmm0	# *_317, *_317
	vmulsd	(%rdi), %xmm0, %xmm0	# *_677, *_317, D.18172
	vmovsd	%xmm0, (%rax)	# D.18172, *_317
	cmpl	$4, %ebx	#, m
	jg	.L608	#,
.L549:
	cmpl	$4, %ebx	#, m
	je	.L609	#,
.L552:
	movl	-80(%rbp), %edi	# %sfp, l
	movl	-124(%rbp), %eax	# %sfp, D.18177
	movq	-112(%rbp), %rsi	# %sfp, a
	vmovsd	8(%r14), %xmm0	# MEM[(double *)t_63(D) + 8B], MEM[(double *)t_63(D) + 8B]
	vsubsd	(%r14), %xmm0, %xmm0	# *t_63(D), MEM[(double *)t_63(D) + 8B], D.18172
	movslq	%edi, %rcx	# l, D.18178
	subl	%edi, %eax	# l, D.18177
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)	# D.18172, *_143
	vmovsd	8(%r14), %xmm0	# MEM[(double *)t_63(D) + 8B], MEM[(double *)t_63(D) + 8B]
	vaddsd	(%r14), %xmm0, %xmm0	# *t_63(D), MEM[(double *)t_63(D) + 8B], D.18172
	vmovsd	%xmm0, (%rsi,%rcx,8)	# D.18172, *_150
	cmpl	$2, %ebx	#, m
	je	.L557	#,
	leal	0(,%rdi,4), %edx	#, D.18177
	leaq	24(%r14), %rax	#, ivtmp.1601
	movslq	%edx, %rdx	# D.18177, D.18178
	leaq	0(,%rdx,8), %rdi	#, D.18178
	subq	%rcx, %rdx	# D.18178, D.18178
	salq	$4, %rcx	#, D.18173
	leaq	(%rsi,%rdx,8), %rdx	#, ivtmp.1602
	leal	-3(%rbx), %esi	#, D.18174
	shrl	%esi	#
	salq	$4, %rsi	#, D.18182
	leaq	40(%r14,%rsi), %rsi	#, D.18182
	.p2align 4,,10
	.p2align 3
.L556:
	vmovsd	(%rax), %xmm0	# MEM[base: _688, offset: 0B], MEM[base: _688, offset: 0B]
	addq	$16, %rax	#, ivtmp.1601
	vaddsd	-24(%rax), %xmm0, %xmm0	# MEM[base: _688, offset: -8B], MEM[base: _688, offset: 0B], D.18172
	vxorpd	%xmm6, %xmm0, %xmm0	# tmp899, D.18172, D.18172
	vmovsd	%xmm0, (%rdx)	# D.18172, MEM[base: _686, offset: 0B]
	vmovsd	-24(%rax), %xmm0	# MEM[base: _688, offset: -8B], MEM[base: _688, offset: -8B]
	vsubsd	-16(%rax), %xmm0, %xmm0	# MEM[base: _688, offset: 0B], MEM[base: _688, offset: -8B], D.18172
	vmovsd	%xmm0, (%rdx,%rcx)	# D.18172, MEM[base: _686, index: _656, offset: 0B]
	addq	%rdi, %rdx	# D.18178, ivtmp.1602
	cmpq	%rsi, %rax	# D.18182, ivtmp.1601
	jne	.L556	#,
.L557:
	sall	-80(%rbp)	# %sfp
	cmpl	$1, %r15d	#, m
	je	.L610	#,
	leal	(%rbx,%rbx), %eax	#, D.18177
	movslq	%ebx, %rcx	# m, D.18178
	leal	-1(%r15), %edi	#,
	cltq
	leaq	0(,%rax,8), %r9	#, D.18178
	movq	%rdi, %rsi	# D.18173, tmp734
	movq	%rdi, %r12	#,
	movq	%rax, -144(%rbp)	# D.18178, %sfp
	leaq	1(%rcx), %r11	#, D.18173
	negq	%rsi	# tmp734
	leaq	-32(%r9), %rax	#, D.18173
	salq	$3, %rsi	#, tmp735
	movq	%r11, -136(%rbp)	# D.18173, %sfp
	leaq	0(,%rcx,8), %rdx	#, D.18178
	movq	%rax, -96(%rbp)	# D.18173, %sfp
	leaq	8(,%rdi,8), %rax	#, D.18181
	addq	%r11, %rdi	# D.18173, D.18173
	leaq	(%rdx,%rsi), %r13	#, D.18173
	salq	$3, %rdi	#, D.18173
	cmpq	%rdi, %r13	# D.18173, D.18173
	leaq	8(%rdx), %rdi	#, D.18173
	setge	%r11b	#, D.18179
	cmpq	%rdi, %rdx	# D.18173, D.18178
	setle	%r8b	#, D.18179
	addq	%r14, %rdi	# t, D.18175
	orl	%r8d, %r11d	# D.18179, D.18179
	cmpq	-160(%rbp), %rdi	# %sfp, D.18175
	leaq	40(%r14,%rdx), %r8	#, D.18175
	setae	%r10b	#, D.18179
	cmpq	%r8, -72(%rbp)	# D.18175, %sfp
	setae	%r8b	#, D.18179
	orl	%r8d, %r10d	# D.18179, D.18179
	cmpl	$7, %r12d	#, D.18174
	seta	%r8b	#, D.18179
	andl	%r8d, %r10d	# D.18179, D.18179
	cmpq	%rdx, -96(%rbp)	# D.18178, %sfp
	leaq	-32(%rdx), %r8	#, D.18173
	setge	-117(%rbp)	#, %sfp
	cmpq	%r9, %r8	# D.18178, D.18173
	setge	%r8b	#, D.18179
	orb	-117(%rbp), %r8b	# %sfp, D.18179
	addq	%r9, %rsi	# D.18178, D.18173
	andl	%r8d, %r10d	# D.18179, D.18179
	cmpq	%rax, %rsi	# D.18181, D.18173
	leaq	(%r14,%r9), %rsi	#, D.18175
	setge	%r8b	#, D.18179
	cmpq	%rsi, -72(%rbp)	# D.18175, %sfp
	setae	%sil	#, D.18179
	orl	%r8d, %esi	# D.18179, D.18179
	andl	%esi, %r10d	# D.18179, D.18179
	cmpq	%rax, %r13	# D.18181, D.18173
	leaq	(%r14,%rdx), %rsi	#, D.18175
	setge	%r8b	#, D.18179
	cmpq	%rsi, -72(%rbp)	# D.18175, %sfp
	setae	%sil	#, D.18179
	orl	%r8d, %esi	# D.18179, D.18179
	testb	%sil, %r10b	# D.18179, D.18179
	je	.L558	#,
	testb	%r11b, %r11b	# D.18179
	je	.L558	#,
	movq	-96(%rbp), %rcx	# %sfp, vectp.1532
	movl	$1, %eax	#, j
	addq	%r14, %rcx	# t, vectp.1532
	andl	$31, %ecx	#, D.18182
	shrq	$3, %rcx	#, D.18182
	cmpl	%ecx, %r12d	# D.18182, D.18174
	cmovbe	%r12d, %ecx	# D.18174,, prolog_loop_niters.1533
	testl	%ecx, %ecx	# prolog_loop_niters.1533
	je	.L559	#,
	leal	-1(%rbx,%rbx), %eax	#, D.18177
	cltq
	leaq	(%r14,%rax,8), %rax	#, D.18175
	vmovsd	(%rax), %xmm0	# *_478, *_478
	vaddsd	(%rdi), %xmm0, %xmm0	# *_473, *_478, D.18172
	vmovsd	%xmm0, 8(%r14)	# D.18172, MEM[(double *)t_63(D) + 8B]
	vmovsd	(%rax), %xmm0	# *_478, *_478
	movl	$2, %eax	#, j
	vsubsd	(%rdi), %xmm0, %xmm0	# *_473, *_478, D.18172
	vmovsd	%xmm0, -8(%r14,%rdx)	# D.18172, *_467
	cmpl	$1, %ecx	#, prolog_loop_niters.1533
	je	.L559	#,
	leal	-2(%rbx,%rbx), %eax	#, D.18177
	cltq
	leaq	(%r14,%rax,8), %rsi	#, D.18175
	leaq	16(%r14,%rdx), %rax	#, D.18175
	vmovsd	(%rsi), %xmm0	# *_450, *_450
	vaddsd	(%rax), %xmm0, %xmm0	# *_445, *_450, D.18172
	vmovsd	%xmm0, 16(%r14)	# D.18172, MEM[(double *)t_63(D) + 16B]
	vmovsd	(%rsi), %xmm0	# *_450, *_450
	vsubsd	(%rax), %xmm0, %xmm0	# *_445, *_450, D.18172
	movl	$3, %eax	#, j
	vmovsd	%xmm0, -16(%r14,%rdx)	# D.18172, *_439
	cmpl	$3, %ecx	#, prolog_loop_niters.1533
	jne	.L559	#,
	leal	-3(%rbx,%rbx), %eax	#, D.18177
	cltq
	leaq	(%r14,%rax,8), %rsi	#, D.18175
	leaq	24(%r14,%rdx), %rax	#, D.18175
	vmovsd	(%rsi), %xmm0	# *_627, *_627
	vaddsd	(%rax), %xmm0, %xmm0	# *_622, *_627, D.18172
	vmovsd	%xmm0, 24(%r14)	# D.18172, MEM[(double *)t_63(D) + 24B]
	vmovsd	(%rsi), %xmm0	# *_627, *_627
	vsubsd	(%rax), %xmm0, %xmm0	# *_622, *_627, D.18172
	movl	$4, %eax	#, j
	vmovsd	%xmm0, -24(%r14,%rdx)	# D.18172, *_616
.L559:
	movl	%ecx, %r11d	# prolog_loop_niters.1533, prolog_loop_adjusted_niters.1534
	movl	%r12d, %r8d	# D.18174, niters.1535
	xorl	%r13d, %r13d	# ivtmp.1574
	leaq	1(%r11), %r12	#, D.18173
	addq	-136(%rbp), %r11	# %sfp, D.18173
	subl	%ecx, %r8d	# prolog_loop_niters.1533, niters.1535
	movq	%r12, %rcx	# D.18173, tmp813
	leal	-4(%r8), %esi	#, D.18174
	negq	%rcx	# tmp813
	salq	$3, %rcx	#, tmp814
	shrl	$2, %esi	#, D.18174
	leaq	-24(%r9,%rcx), %rdi	#, D.18173
	addl	$1, %esi	#, bnd.1536
	leaq	(%r14,%r11,8), %r9	#, vectp.1544
	addq	%r14, %rdi	# t, vectp.1540
	leaq	(%r14,%r12,8), %r11	#, vectp_t.1548
	leaq	-24(%rdx,%rcx), %r12	#, D.18173
	xorl	%edx, %edx	# ivtmp.1581
	xorl	%ecx, %ecx	# ivtmp.1578
	leal	0(,%rsi,4), %r10d	#, ratio_mult_vf.1537
	addq	%r14, %r12	# t, vectp.1558
.L561:
	vmovapd	(%rdi,%rcx), %ymm0	# MEM[base: vectp.1540_559, index: ivtmp.1578_703, offset: 0B], vect__191.1541
	addl	$1, %r13d	#, ivtmp.1574
	vmovupd	(%r9,%rdx), %xmm1	# MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B], MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B]
	vinsertf128	$0x1, 16(%r9,%rdx), %ymm1, %ymm1	# MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B], MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B], vect__196.1545
	vperm2f128	$33, %ymm0, %ymm0, %ymm0	#, vect__191.1541, vect__191.1541, tmp823
	vpermilpd	$5, %ymm0, %ymm0	#, tmp823, vect__191.1542
	vaddpd	%ymm1, %ymm0, %ymm0	# vect__196.1545, vect__191.1542, vect__197.1546
	vmovups	%xmm0, (%r11,%rdx)	#, MEM[base: vectp_t.1548_540, index: ivtmp.1581_690, offset: 0B]
	vextractf128	$0x1, %ymm0, 16(%r11,%rdx)	# vect__197.1546, MEM[base: vectp_t.1548_540, index: ivtmp.1581_690, offset: 0B]
	vmovapd	(%rdi,%rcx), %ymm0	# MEM[base: vectp.1540_559, index: ivtmp.1578_703, offset: 0B], vect__203.1551
	vmovupd	(%r9,%rdx), %xmm1	# MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B], MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B]
	vinsertf128	$0x1, 16(%r9,%rdx), %ymm1, %ymm1	# MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B], MEM[base: vectp.1544_549, index: ivtmp.1581_690, offset: 0B], vect__204.1555
	addq	$32, %rdx	#, ivtmp.1581
	vperm2f128	$33, %ymm0, %ymm0, %ymm0	#, vect__203.1551, vect__203.1551, tmp828
	vpermilpd	$5, %ymm0, %ymm0	#, tmp828, vect__203.1552
	vsubpd	%ymm1, %ymm0, %ymm0	# vect__204.1555, vect__203.1552, vect__205.1556
	vperm2f128	$33, %ymm0, %ymm0, %ymm0	#, vect__205.1556, vect__205.1556, tmp832
	vpermilpd	$5, %ymm0, %ymm0	#, tmp832, vect__205.1559
	vmovups	%xmm0, (%r12,%rcx)	#, MEM[base: vectp.1558_514, index: ivtmp.1578_703, offset: 0B]
	vextractf128	$0x1, %ymm0, 16(%r12,%rcx)	# vect__205.1559, MEM[base: vectp.1558_514, index: ivtmp.1578_703, offset: 0B]
	subq	$32, %rcx	#, ivtmp.1578
	cmpl	%r13d, %esi	# ivtmp.1574, bnd.1536
	ja	.L561	#,
	addl	%r10d, %eax	# ratio_mult_vf.1537, j
	cmpl	%r8d, %r10d	# niters.1535, ratio_mult_vf.1537
	je	.L566	#,
	movl	%ebx, %edx	# m, k
	movslq	%eax, %rdi	# j, D.18178
	subl	%eax, %edx	# j, k
	leal	(%rbx,%rdx), %ecx	#, D.18177
	movslq	%edx, %rdx	# k, D.18178
	movslq	%ecx, %rcx	# D.18177, D.18178
	leaq	(%r14,%rcx,8), %rsi	#, D.18175
	leal	(%rbx,%rax), %ecx	#, D.18177
	vmovsd	(%rsi), %xmm0	# *_674, *_674
	movslq	%ecx, %rcx	# D.18177, D.18178
	leaq	(%r14,%rcx,8), %rcx	#, D.18175
	vaddsd	(%rcx), %xmm0, %xmm0	# *_29, *_674, D.18172
	vmovsd	%xmm0, (%r14,%rdi,8)	# D.18172, *_637
	vmovsd	(%rsi), %xmm0	# *_674, *_674
	vsubsd	(%rcx), %xmm0, %xmm0	# *_29, *_674, D.18172
	vmovsd	%xmm0, (%r14,%rdx,8)	# D.18172, *_187
	leal	1(%rax), %edx	#, j
	cmpl	%edx, %r15d	# j, m
	jle	.L566	#,
	movl	%ebx, %ecx	# m, k
	addl	$2, %eax	#, j
	subl	%edx, %ecx	# j, k
	leal	(%rbx,%rcx), %esi	#, D.18177
	movslq	%ecx, %rcx	# k, D.18178
	movslq	%esi, %rsi	# D.18177, D.18178
	leaq	(%r14,%rsi,8), %rdi	#, D.18175
	leal	(%rdx,%rbx), %esi	#, D.18177
	vmovsd	(%rdi), %xmm0	# *_204, *_204
	movslq	%edx, %rdx	# j, D.18178
	movslq	%esi, %rsi	# D.18177, D.18178
	leaq	(%r14,%rsi,8), %rsi	#, D.18175
	vaddsd	(%rsi), %xmm0, %xmm0	# *_500, *_204, D.18172
	vmovsd	%xmm0, (%r14,%rdx,8)	# D.18172, *_199
	vmovsd	(%rdi), %xmm0	# *_204, *_204
	vsubsd	(%rsi), %xmm0, %xmm0	# *_500, *_204, D.18172
	vmovsd	%xmm0, (%r14,%rcx,8)	# D.18172, *_494
	cmpl	%eax, %r15d	# j, m
	jle	.L566	#,
	movl	%ebx, %edx	# m, k
	subl	%eax, %edx	# j, k
	leal	(%rbx,%rdx), %ecx	#, D.18177
	movslq	%edx, %rdx	# k, D.18178
	movslq	%ecx, %rcx	# D.18177, D.18178
	leaq	(%r14,%rcx,8), %rsi	#, D.18175
	leal	(%rbx,%rax), %ecx	#, D.18177
	vmovsd	(%rsi), %xmm0	# *_587, *_587
	cltq
	movslq	%ecx, %rcx	# D.18177, D.18178
	leaq	(%r14,%rcx,8), %rcx	#, D.18175
	vaddsd	(%rcx), %xmm0, %xmm0	# *_582, *_587, D.18172
	vmovsd	%xmm0, (%r14,%rax,8)	# D.18172, *_591
	vmovsd	(%rsi), %xmm0	# *_587, *_587
	vsubsd	(%rcx), %xmm0, %xmm0	# *_582, *_587, D.18172
	vmovsd	%xmm0, (%r14,%rdx,8)	# D.18172, *_576
.L566:
	addl	%r15d, %ebx	# m, D.18177
	movslq	%ebx, %rbx	# D.18177, D.18178
	vmovsd	(%r14,%rbx,8), %xmm0	# *_355, D.18172
	movl	%r15d, %ebx	# m, m
	vmovsd	%xmm0, (%r14)	# D.18172, *t_63(D)
	jmp	.L543	#
.L610:
	leal	1(%rbx), %eax	#, D.18177
	movq	-112(%rbp), %r13	# %sfp, a
	cltq
	vmovsd	(%r14,%rax,8), %xmm0	# *_351, D.18172
	movslq	-80(%rbp), %rax	# %sfp, D.18178
	vmovsd	%xmm0, (%r14)	# D.18172, *t_63(D)
	salq	$3, %rax	#, D.18178
	vzeroupper
.L567:
	vmovsd	%xmm0, 0(%r13,%rax)	# D.18172, *_217
.L532:
	movq	$0, 0(%r13)	#, *a_40(D)
	subq	$-128, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
.L526:
	.cfi_restore_state
	movl	%edi, %eax	# n, nw
	movq	-168(%rbp), %rdi	# %sfp, ip
	movl	$1, -116(%rbp)	#, %sfp
	sarl	$3, %eax	#, nw
	movl	%eax, %ebx	# nw, nw
	movl	%eax, -128(%rbp)	# nw, %sfp
	movl	%eax, (%rdi)	# nw, *ip_21(D)
	movl	$2, %eax	#, D.18177
	movl	$1, 4(%rdi)	#, MEM[(int *)ip_21(D) + 4B]
	cmpl	$2, %ebx	#, nw
	jle	.L527	#,
	movq	-176(%rbp), %rdx	# %sfp,
	movq	%rdi, %rbx	# ip, ip
	movq	%rdi, %rsi	# ip,
	movl	-128(%rbp), %edi	# %sfp,
	call	makewt.part.0	#
	movl	4(%rbx), %edx	# MEM[(int *)ip_21(D) + 4B], D.18177
	leal	(%rdx,%rdx), %eax	#, D.18177
	movl	%edx, -116(%rbp)	# D.18177, %sfp
	cmpl	%eax, -124(%rbp)	# D.18177, %sfp
	jle	.L528	#,
.L603:
	movl	-124(%rbp), %r11d	# %sfp, n
	movq	-176(%rbp), %rdi	# %sfp, w
	movl	%r11d, %eax	# n, m
	sarl	%eax	# m
	movl	%eax, %ebx	# m, m
	movl	%eax, -116(%rbp)	# m, %sfp
	movslq	-128(%rbp), %rax	# %sfp, D.18178
	leaq	(%rdi,%rax,8), %rax	#, D.18175
	movq	%rax, %r15	# D.18175, D.18175
	movq	%rax, -104(%rbp)	# D.18175, %sfp
	movq	-168(%rbp), %rax	# %sfp, ip
	movl	%ebx, 4(%rax)	# m, MEM[(int *)ip_21(D) + 4B]
	cmpl	$1, %ebx	#, m
	jle	.L528	#,
	sarl	$2, %r11d	#, m
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18172
	vmovsd	.LC16(%rip), %xmm1	#, tmp606
	vcvtsi2sd	%r11d, %xmm0, %xmm0	# m, D.18172, D.18172
	movl	%r11d, -72(%rbp)	# m, %sfp
	vdivsd	%xmm0, %xmm1, %xmm7	# D.18172, tmp606, delta
	vmulsd	%xmm7, %xmm0, %xmm0	# delta, D.18172, D.18172
	vmovsd	%xmm7, -80(%rbp)	# delta, %sfp
	call	cos	#
	movslq	-72(%rbp), %rax	# %sfp,
	movq	%r15, %rdi	# D.18175, D.18175
	vmovsd	.LC2(%rip), %xmm1	#, tmp890
	vmovsd	%xmm0, (%r15)	# D.18172, *_33
	vmulsd	%xmm1, %xmm0, %xmm0	# tmp890, D.18172, D.18172
	leaq	0(,%rax,8), %rsi	#, D.18178
	movq	%rax, %r11	#,
	movq	%rsi, -96(%rbp)	# D.18178, %sfp
	vmovsd	%xmm0, (%r15,%rax,8)	# D.18172, *_230
	cmpl	$1, %eax	#, m
	je	.L569	#,
	movq	%r13, -112(%rbp)	# a, %sfp
	leaq	8(%r15), %r15	#, ivtmp.1670
	movslq	%ebx, %rax	# m, D.18178
	movl	$1, %ebx	#, j
	leaq	(%rdi,%rax,8), %r12	#, ivtmp.1675
	movq	%r12, %r13	# ivtmp.1675, ivtmp.1675
	movl	%r11d, %r12d	# m, m
	.p2align 4,,10
	.p2align 3
.L530:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18172
	vcvtsi2sd	%ebx, %xmm0, %xmm0	# j, D.18172, D.18172
	vmovsd	%xmm1, -72(%rbp)	# tmp890, %sfp
	addl	$1, %ebx	#, j
	vmulsd	-80(%rbp), %xmm0, %xmm0	# %sfp, D.18172, D.18172
	addq	$8, %r15	#, ivtmp.1670
	subq	$8, %r13	#, ivtmp.1675
	leaq	-64(%rbp), %rsi	#, tmp1012
	leaq	-56(%rbp), %rdi	#, tmp1013
	call	sincos	#
	vmovsd	-72(%rbp), %xmm1	# %sfp, tmp890
	vmulsd	-64(%rbp), %xmm1, %xmm0	#, tmp890, D.18172
	vmovsd	%xmm0, -8(%r15)	# D.18172, MEM[base: _45, offset: 0B]
	vmulsd	-56(%rbp), %xmm1, %xmm0	#, tmp890, D.18172
	vmovsd	%xmm0, 0(%r13)	# D.18172, MEM[base: _39, offset: -8B]
	cmpl	%r12d, %ebx	# m, j
	jne	.L530	#,
	movl	%r12d, %r11d	# m, m
	movq	-112(%rbp), %r13	# %sfp, a
	movl	-116(%rbp), %ebx	# %sfp, m
	jmp	.L531	#
	.p2align 4,,10
	.p2align 3
.L608:
	movl	-128(%rbp), %ecx	# %sfp,
	movq	%r14, %rsi	# t,
	movl	%ebx, %edi	# m,
	vmovaps	%xmm6, -96(%rbp)	# tmp899, %sfp
	movq	-176(%rbp), %r8	# %sfp,
	movq	-168(%rbp), %rdx	# %sfp,
	vzeroupper
	call	cftfsub	#
	movl	-116(%rbp), %edx	# %sfp,
	movq	%r14, %rsi	# t,
	movq	-104(%rbp), %rcx	# %sfp,
	movl	%ebx, %edi	# m,
	call	rftfsub	#
	vmovapd	-96(%rbp), %xmm6	# %sfp, tmp899
	jmp	.L552	#
	.p2align 4,,10
	.p2align 3
.L558:
	movq	-72(%rbp), %rax	# %sfp, ivtmp.1570
	leal	-2(%r15), %esi	#, D.18173
	movq	%rcx, %rdi	# D.18178, D.18173
	subq	-144(%rbp), %rdi	# %sfp, D.18173
	leaq	-8(%r14,%r9), %rdx	#, ivtmp.1564
	leaq	16(%r14,%rsi,8), %rsi	#, D.18182
	.p2align 4,,10
	.p2align 3
.L565:
	vmovsd	(%rax,%rcx,8), %xmm0	# MEM[base: _460, index: _675, step: 8, offset: 0B], MEM[base: _460, index: _675, step: 8, offset: 0B]
	vaddsd	(%rdx), %xmm0, %xmm0	# MEM[base: _458, offset: 0B], MEM[base: _460, index: _675, step: 8, offset: 0B], D.18172
	vmovsd	%xmm0, (%rax)	# D.18172, MEM[base: _460, offset: 0B]
	vmovsd	(%rdx), %xmm0	# MEM[base: _458, offset: 0B], MEM[base: _458, offset: 0B]
	vsubsd	(%rax,%rcx,8), %xmm0, %xmm0	# MEM[base: _460, index: _675, step: 8, offset: 0B], MEM[base: _458, offset: 0B], D.18172
	addq	$8, %rax	#, ivtmp.1570
	vmovsd	%xmm0, (%rdx,%rdi,8)	# D.18172, MEM[base: _458, index: _430, step: 8, offset: 0B]
	subq	$8, %rdx	#, ivtmp.1564
	cmpq	%rsi, %rax	# D.18182, ivtmp.1570
	jne	.L565	#,
	jmp	.L566	#
.L609:
	movl	-128(%rbp), %ecx	# %sfp,
	movq	%r14, %rsi	# t,
	movl	$4, %edi	#,
	vmovaps	%xmm6, -96(%rbp)	# tmp899, %sfp
	movq	-176(%rbp), %r8	# %sfp,
	movq	-168(%rbp), %rdx	# %sfp,
	vzeroupper
	call	cftfsub	#
	vmovapd	-96(%rbp), %xmm6	# %sfp, tmp899
	jmp	.L552	#
.L607:
	movq	-72(%rbp), %rax	# %sfp, D.18175
	movq	-104(%rbp), %rdi	# %sfp, D.18175
	vmovsd	(%rax), %xmm0	# *_348, *_348
	vmulsd	(%rdi), %xmm0, %xmm0	# *_677, *_348, D.18172
	vmovsd	%xmm0, (%rax)	# D.18172, *_348
	jmp	.L549	#
.L605:
	movq	-176(%rbp), %r8	# %sfp,
	movq	%r13, %rsi	# a,
	movl	%ebx, %edi	# m,
	movl	%r11d, -72(%rbp)	# m, %sfp
	movl	-128(%rbp), %ecx	# %sfp,
	movq	-168(%rbp), %rdx	# %sfp,
	call	cftfsub	#
	movq	-104(%rbp), %rcx	# %sfp,
	movq	%r13, %rsi	# a,
	movl	%ebx, %edi	# m,
	movl	-116(%rbp), %edx	# %sfp,
	call	rftfsub	#
	movl	-72(%rbp), %r11d	# %sfp, m
	jmp	.L540	#
.L606:
	movl	-128(%rbp), %ecx	# %sfp,
	movq	%r13, %rsi	# a,
	movl	$4, %edi	#,
	movl	%r11d, -72(%rbp)	# m, %sfp
	movq	-176(%rbp), %r8	# %sfp,
	movl	$2, %ebx	#, j
	movq	-168(%rbp), %rdx	# %sfp,
	call	cftfsub	#
	vmovsd	8(%r13), %xmm0	# MEM[(double *)a_40(D) + 8B], MEM[(double *)a_40(D) + 8B]
	vsubsd	0(%r13), %xmm0, %xmm0	# *a_40(D), MEM[(double *)a_40(D) + 8B], D.18172
	movl	-72(%rbp), %r11d	# %sfp, m
	vmovsd	%xmm0, -8(%r13,%r12,8)	# D.18172, *_12
	vmovsd	8(%r13), %xmm0	# MEM[(double *)a_40(D) + 8B], MEM[(double *)a_40(D) + 8B]
	vaddsd	0(%r13), %xmm0, %xmm0	# *a_40(D), MEM[(double *)a_40(D) + 8B], D.18172
	vmovsd	%xmm0, 8(%r13)	# D.18172, MEM[(double *)a_40(D) + 8B]
	jmp	.L541	#
.L604:
	movslq	%ebx, %r9	# m, D.18178
	movslq	-124(%rbp), %r12	# %sfp, D.18178
	movq	%rax, %r8	# D.18178, D.18175
	jmp	.L529	#
.L542:
	vmovsd	(%r14), %xmm0	# *t_63(D), D.18172
	movl	$16, %eax	#, D.18178
	jmp	.L567	#
.L569:
	movslq	-116(%rbp), %r9	# %sfp,
	movslq	-124(%rbp), %r12	# %sfp, D.18178
	movl	%r9d, %ebx	# m, m
	jmp	.L597	#
	.cfi_endproc
.LFE41:
	.size	dfst, .-dfst
	.section	.text.unlikely
.LCOLDE49:
	.text
.LHOTE49:
	.section	.text.unlikely
.LCOLDB50:
	.text
.LHOTB50:
	.p2align 4,,15
	.globl	rftbsub
	.type	rftbsub, @function
rftbsub:
.LFB81:
	.cfi_startproc
	movslq	%edx, %r8	# nc,
	movl	%edi, %r11d	# n, m
	leal	(%r8,%r8), %eax	#, D.18208
	sarl	%r11d	# m
	cltd
	idivl	%r11d	# m
	cmpl	$2, %r11d	#, m
	jle	.L616	#,
	vmovsd	.LC2(%rip), %xmm5	#, tmp175
	subl	$3, %r11d	#, D.18213
	movl	%eax, %r10d	# tmp147, D.18208
	shrl	%r11d	#
	cltq
	movslq	%edi, %rdi	# n, D.18215
	negl	%r10d	# D.18208
	addq	%r11, %r11	# D.18210
	leaq	(%rsi,%rdi,8), %rdx	#, ivtmp.1694
	subq	%rax, %r8	# D.18215, D.18215
	movslq	%r10d, %r10	# D.18208, D.18215
	salq	$3, %rax	#, D.18215
	subq	%r11, %rdi	# D.18210, D.18212
	salq	$3, %r10	#, D.18215
	leaq	(%rcx,%r8,8), %r9	#, ivtmp.1685
	addq	%rax, %rcx	# D.18215, ivtmp.1687
	leaq	24(%rsi), %r8	#, ivtmp.1695
	leaq	-16(%rsi,%rdi,8), %rsi	#, D.18210
	.p2align 4,,10
	.p2align 3
.L613:
	vsubsd	(%r9), %xmm5, %xmm0	# MEM[base: _110, offset: 0B], tmp175, wkr
	subq	$16, %rdx	#, ivtmp.1694
	addq	%r10, %r9	# D.18215, ivtmp.1685
	vmovsd	-8(%r8), %xmm3	# MEM[base: _108, offset: -8B], D.18209
	addq	$16, %r8	#, ivtmp.1695
	vsubsd	(%rdx), %xmm3, %xmm4	# MEM[base: _107, offset: -16B], D.18209, xr
	vmovsd	8(%rdx), %xmm1	# MEM[base: _107, offset: -8B], MEM[base: _107, offset: -8B]
	vaddsd	-16(%r8), %xmm1, %xmm1	# MEM[base: _108, offset: 0B], MEM[base: _107, offset: -8B], xi
	vmovsd	(%rcx), %xmm6	# MEM[base: _109, offset: 0B], wki
	vmulsd	%xmm0, %xmm4, %xmm7	# wkr, xr, D.18209
	addq	%rax, %rcx	# D.18215, ivtmp.1687
	vmulsd	%xmm6, %xmm1, %xmm2	# wki, xi, D.18209
	vmulsd	%xmm0, %xmm1, %xmm0	# wkr, xi, D.18209
	vmovsd	-16(%r8), %xmm1	# MEM[base: _108, offset: 0B], MEM[base: _108, offset: 0B]
	vmulsd	%xmm6, %xmm4, %xmm4	# wki, xr, D.18209
	vaddsd	%xmm7, %xmm2, %xmm2	# D.18209, D.18209, yr
	vsubsd	%xmm4, %xmm0, %xmm0	# D.18209, D.18209, yi
	vsubsd	%xmm2, %xmm3, %xmm3	# yr, D.18209, D.18209
	vsubsd	%xmm0, %xmm1, %xmm1	# yi, MEM[base: _108, offset: 0B], D.18209
	vmovsd	%xmm3, -24(%r8)	# D.18209, MEM[base: _108, offset: -8B]
	vmovsd	%xmm1, -16(%r8)	# D.18209, MEM[base: _108, offset: 0B]
	vmovsd	8(%rdx), %xmm1	# MEM[base: _107, offset: -8B], MEM[base: _107, offset: -8B]
	vaddsd	(%rdx), %xmm2, %xmm2	# MEM[base: _107, offset: -16B], yr, D.18209
	vsubsd	%xmm0, %xmm1, %xmm0	# yi, MEM[base: _107, offset: -8B], D.18209
	vmovsd	%xmm2, (%rdx)	# D.18209, MEM[base: _107, offset: -16B]
	vmovsd	%xmm0, 8(%rdx)	# D.18209, MEM[base: _107, offset: -8B]
	cmpq	%rsi, %rdx	# D.18210, ivtmp.1694
	jne	.L613	#,
.L616:
	ret
	.cfi_endproc
.LFE81:
	.size	rftbsub, .-rftbsub
	.section	.text.unlikely
.LCOLDE50:
	.text
.LHOTE50:
	.section	.text.unlikely
.LCOLDB51:
	.text
.LHOTB51:
	.p2align 4,,15
	.globl	rdft
	.type	rdft, @function
rdft:
.LFB37:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13	# ip, ip
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp	# n, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx	# a, a
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
	movl	(%rcx), %eax	# *ip_8(D), nw
	movl	%esi, 40(%rsp)	# isgn, %sfp
	movq	%r8, 32(%rsp)	# w, %sfp
	movl	%eax, 28(%rsp)	# nw, %sfp
	sall	$2, %eax	#, D.18234
	cmpl	%edi, %eax	# n, D.18234
	jge	.L634	#,
	movl	%edi, %eax	# n, nw
	movl	$1, 4(%r13)	#, MEM[(int *)ip_8(D) + 4B]
	sarl	$2, %eax	#, nw
	movl	$1, 44(%rsp)	#, %sfp
	movl	%eax, %ecx	# nw, nw
	movl	%eax, 28(%rsp)	# nw, %sfp
	movl	%eax, 0(%r13)	# nw, *ip_8(D)
	movl	$4, %eax	#, D.18234
	cmpl	$2, %ecx	#, nw
	jg	.L636	#,
	cmpl	%eax, %ebp	# D.18234, n
	jg	.L637	#,
.L620:
	movl	40(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	js	.L622	#,
.L640:
	cmpl	$4, %ebp	#, n
	jg	.L638	#,
	je	.L639	#,
.L624:
	vmovsd	(%rbx), %xmm0	# *a_23(D), D.18237
	vmovsd	8(%rbx), %xmm1	# MEM[(double *)a_23(D) + 8B], D.18237
	vaddsd	%xmm0, %xmm1, %xmm2	# D.18237, D.18237, D.18237
	vsubsd	%xmm1, %xmm0, %xmm0	# D.18237, D.18237, xi
	vmovsd	%xmm2, (%rbx)	# D.18237, *a_23(D)
	vmovsd	%xmm0, 8(%rbx)	# xi, MEM[(double *)a_23(D) + 8B]
.L632:
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L636:
	.cfi_restore_state
	movq	32(%rsp), %rdx	# %sfp,
	movq	%r13, %rsi	# ip,
	movl	%ecx, %edi	# nw,
	call	makewt.part.0	#
.L634:
	movl	4(%r13), %edx	# MEM[(int *)ip_8(D) + 4B], D.18234
	leal	0(,%rdx,4), %eax	#, D.18234
	movl	%edx, 44(%rsp)	# D.18234, %sfp
	cmpl	%eax, %ebp	# D.18234, n
	jle	.L620	#,
.L637:
	movl	%ebp, %eax	# n, nc
	movq	32(%rsp), %rsi	# %sfp, w
	sarl	$2, %eax	#, nc
	movl	%eax, %r15d	# nc, nc
	movl	%eax, 44(%rsp)	# nc, %sfp
	movslq	28(%rsp), %rax	# %sfp, D.18235
	movl	%r15d, 4(%r13)	# nc, MEM[(int *)ip_8(D) + 4B]
	leaq	(%rsi,%rax,8), %r14	#, D.18236
	cmpl	$1, %r15d	#, nc
	jle	.L620	#,
	vmovsd	.LC16(%rip), %xmm1	#, tmp143
	movl	%ebp, %eax	# n, nch
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18237
	sarl	$3, %eax	#, nch
	vcvtsi2sd	%eax, %xmm0, %xmm0	# nch, D.18237, D.18237
	movl	%eax, %r12d	# nch, nch
	movl	%eax, 24(%rsp)	# nch, %sfp
	vdivsd	%xmm0, %xmm1, %xmm4	# D.18237, tmp143, delta
	vmulsd	%xmm4, %xmm0, %xmm0	# delta, D.18237, D.18237
	vmovsd	%xmm4, 16(%rsp)	# delta, %sfp
	call	cos	#
	movslq	%r12d, %rdx	# nch,
	vmovsd	.LC2(%rip), %xmm1	#, tmp170
	vmovsd	%xmm0, (%r14)	# D.18237, *_20
	vmulsd	%xmm1, %xmm0, %xmm0	# tmp170, D.18237, D.18237
	vmovsd	%xmm0, (%r14,%rdx,8)	# D.18237, *_58
	cmpl	$1, %edx	#, nch
	je	.L620	#,
	leaq	8(%r14), %r12	#, ivtmp.1703
	movslq	%r15d, %rdx	# nc,
	movl	$1, %r15d	#, j
	leaq	(%r14,%rdx,8), %r14	#, ivtmp.1708
	.p2align 4,,10
	.p2align 3
.L621:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18237
	vcvtsi2sd	%r15d, %xmm0, %xmm0	# j, D.18237, D.18237
	addq	$8, %r12	#, ivtmp.1703
	vmovsd	%xmm1, 8(%rsp)	# tmp170, %sfp
	vmulsd	16(%rsp), %xmm0, %xmm0	# %sfp, D.18237, D.18237
	addl	$1, %r15d	#, j
	subq	$8, %r14	#, ivtmp.1708
	leaq	48(%rsp), %rsi	#,
	leaq	56(%rsp), %rdi	#, tmp189
	call	sincos	#
	vmovsd	8(%rsp), %xmm1	# %sfp, tmp170
	vmulsd	48(%rsp), %xmm1, %xmm0	#, tmp170, D.18237
	vmovsd	%xmm0, -8(%r12)	# D.18237, MEM[base: _119, offset: 0B]
	vmulsd	56(%rsp), %xmm1, %xmm0	#, tmp170, D.18237
	vmovsd	%xmm0, (%r14)	# D.18237, MEM[base: _118, offset: -8B]
	cmpl	24(%rsp), %r15d	# %sfp, j
	jne	.L621	#,
	movl	40(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jns	.L640	#,
.L622:
	vmovsd	(%rbx), %xmm0	# *a_23(D), D.18237
	vsubsd	8(%rbx), %xmm0, %xmm1	# MEM[(double *)a_23(D) + 8B], D.18237, D.18237
	vmulsd	.LC2(%rip), %xmm1, %xmm1	#, D.18237, D.18237
	vsubsd	%xmm1, %xmm0, %xmm0	# D.18237, D.18237, D.18237
	vmovsd	%xmm1, 8(%rbx)	# D.18237, MEM[(double *)a_23(D) + 8B]
	vmovsd	%xmm0, (%rbx)	# D.18237, *a_23(D)
	cmpl	$4, %ebp	#, n
	jg	.L641	#,
	jne	.L632	#,
	movq	32(%rsp), %r8	# %sfp,
	movq	%r13, %rdx	# ip,
	movq	%rbx, %rsi	# a,
	movl	$4, %edi	#,
	movl	28(%rsp), %ecx	# %sfp,
	jmp	.L635	#
	.p2align 4,,10
	.p2align 3
.L638:
	movq	32(%rsp), %r15	# %sfp, w
	movq	%r13, %rdx	# ip,
	movq	%rbx, %rsi	# a,
	movl	%ebp, %edi	# n,
	movl	28(%rsp), %r14d	# %sfp, nw
	movq	%r15, %r8	# w,
	movl	%r14d, %ecx	# nw,
	movslq	%r14d, %r12	# nw,
	call	cftfsub	#
	movl	44(%rsp), %edx	# %sfp,
	leaq	(%r15,%r12,8), %rcx	#, D.18236
	movq	%rbx, %rsi	# a,
	movl	%ebp, %edi	# n,
	call	rftfsub	#
	jmp	.L624	#
	.p2align 4,,10
	.p2align 3
.L639:
	movq	32(%rsp), %r8	# %sfp,
	movq	%r13, %rdx	# ip,
	movq	%rbx, %rsi	# a,
	movl	$4, %edi	#,
	movl	28(%rsp), %ecx	# %sfp,
	call	cftfsub	#
	jmp	.L624	#
	.p2align 4,,10
	.p2align 3
.L641:
	movl	28(%rsp), %r14d	# %sfp, nw
	movq	%rbx, %rsi	# a,
	movl	%ebp, %edi	# n,
	movq	32(%rsp), %r15	# %sfp, w
	movl	44(%rsp), %edx	# %sfp,
	movslq	%r14d, %rax	# nw,
	leaq	(%r15,%rax,8), %rcx	#, D.18236
	call	rftbsub	#
	movq	%r15, %r8	# w,
	movl	%r14d, %ecx	# nw,
	movq	%r13, %rdx	# ip,
	movq	%rbx, %rsi	# a,
	movl	%ebp, %edi	# n,
.L635:
	addq	$72, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	jmp	cftbsub	#
	.cfi_endproc
.LFE37:
	.size	rdft, .-rdft
	.section	.text.unlikely
.LCOLDE51:
	.text
.LHOTE51:
	.section	.text.unlikely
.LCOLDB55:
	.text
.LHOTB55:
	.p2align 4,,15
	.type	execute_ooura_fft, @function
execute_ooura_fft:
.LFB84:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%esi, %r13d	# n, n
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12	# wav, wav
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leal	(%rsi,%rsi,4), %edi	#, D.18257
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leal	3(%rdi), %eax	#, tmp128
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
	testl	%edi, %edi	# D.18257
	cmovs	%eax, %edi	# tmp128,, D.18257
	sarl	$2, %edi	#, D.18257
	movslq	%edi, %rdi	# D.18257, D.18258
	salq	$3, %rdi	#, D.18258
	call	malloc	#
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18259
	vmovsd	.LC54(%rip), %xmm1	#, tmp140
	vcvtsi2sd	%r13d, %xmm0, %xmm0	# n, D.18259, D.18259
	movq	%rax, %rbx	#, w
	vsqrtsd	%xmm0, %xmm0, %xmm0	# D.18259, tmp133
	vaddsd	.LC52(%rip), %xmm0, %xmm0	#, tmp133, D.18259
	vmulsd	.LC53(%rip), %xmm0, %xmm0	#, D.18259, D.18259
	vcomisd	%xmm1, %xmm0	# tmp140, D.18259
	vcvttsd2siq	%xmm0, %rdi	# D.18259, D.18258
	jb	.L644	#,
	movabsq	$-9223372036854775808, %rax	#, tmp143
	vsubsd	%xmm1, %xmm0, %xmm0	# tmp140, D.18259, tmp141
	vcvttsd2siq	%xmm0, %rdi	# tmp141, D.18258
	xorq	%rax, %rdi	# tmp143, D.18258
.L644:
	call	malloc	#
	movq	%rbx, %r8	# w,
	movq	%r12, %rdx	# wav,
	movl	$1, %esi	#,
	movl	$0, (%rax)	#, *ip_20
	movq	%rax, %rcx	# ip,
	movl	%r13d, %edi	# n,
	movq	%rax, %rbp	#, ip
	call	rdft	#
	vxorpd	%xmm0, %xmm0, %xmm0	# peak
	testl	%r13d, %r13d	# n
	jle	.L645	#,
	subl	$1, %r13d	#, D.18261
	movq	%r12, %rax	# wav, ivtmp.1715
	xorl	%r9d, %r9d	# i
	vxorpd	%xmm0, %xmm0, %xmm0	# peak
	shrl	%r13d	# D.18261
	leal	2(%r13,%r13), %edx	#, D.18257
	.p2align 4,,10
	.p2align 3
.L646:
	vmovsd	(%rax), %xmm2	# MEM[base: _67, offset: 0B], D.18259
	movl	%r9d, %esi	# i, tmp153
	addq	$16, %rax	#, ivtmp.1715
	vmovsd	-8(%rax), %xmm1	# MEM[base: _67, offset: 8B], D.18259
	shrl	$31, %esi	#, tmp153
	vmulsd	%xmm2, %xmm2, %xmm2	# D.18259, D.18259, D.18259
	addl	%r9d, %esi	# i, tmp154
	addl	$2, %r9d	#, i
	vmulsd	%xmm1, %xmm1, %xmm1	# D.18259, D.18259, D.18259
	sarl	%esi	# D.18257
	movslq	%esi, %rsi	# D.18257, D.18258
	vaddsd	%xmm2, %xmm1, %xmm1	# D.18259, D.18259, D.18259
	vsqrtsd	%xmm1, %xmm1, %xmm1	# D.18259, tmp148
	vmaxsd	%xmm1, %xmm0, %xmm0	# tmp148, peak, peak
	vmovsd	%xmm1, (%r12,%rsi,8)	# tmp148, *_38
	cmpl	%edx, %r9d	# D.18257, i
	jne	.L646	#,
.L645:
	movq	%rbx, %rdi	# w,
	vmovsd	%xmm0, 8(%rsp)	# peak, %sfp
	call	free	#
	movq	%rbp, %rdi	# ip,
	call	free	#
	vmovsd	8(%rsp), %xmm0	# %sfp, peak
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	execute_ooura_fft, .-execute_ooura_fft
	.section	.text.unlikely
.LCOLDE55:
	.text
.LHOTE55:
	.section	.text.unlikely
.LCOLDB56:
	.text
.LHOTB56:
	.p2align 4,,15
	.globl	ddct
	.type	ddct, @function
ddct:
.LFB38:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14	# a, a
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%edi, %rbx	# n,
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 144
	movl	(%rcx), %eax	# *ip_13(D), nw
	movl	%esi, 56(%rsp)	# isgn, %sfp
	movq	%rcx, 16(%rsp)	# ip, %sfp
	movq	%r8, 24(%rsp)	# w, %sfp
	movl	%eax, 12(%rsp)	# nw, %sfp
	sall	$2, %eax	#, D.18335
	cmpl	%ebx, %eax	# n, D.18335
	jl	.L651	#,
	movl	4(%rcx), %r11d	# MEM[(int *)ip_13(D) + 4B], n
.L652:
	movslq	12(%rsp), %rax	# %sfp, D.18336
	movq	24(%rsp), %rdi	# %sfp, w
	leaq	(%rdi,%rax,8), %r12	#, D.18338
	cmpl	%r11d, %ebx	# n, n
	jg	.L696	#,
.L654:
	movl	56(%rsp), %esi	# %sfp,
	movl	%ebx, %r9d	# n, D.18335
	sarl	%r9d	# D.18335
	movslq	%r9d, %rax	# D.18335, D.18336
	movl	%r9d, %r13d	# D.18335, m
	salq	$3, %rax	#, D.18336
	testl	%esi, %esi	#
	movq	%rax, 48(%rsp)	# D.18336, %sfp
	js	.L691	#,
.L664:
	movl	%r11d, %eax	# n, ks
	cltd
	idivl	%ebx	# n
	cmpl	$1, %r13d	#, m
	jle	.L666	#,
	movslq	%ebx, %rdi	# n, D.18336
	movq	%rdi, 40(%rsp)	# D.18336, %sfp
.L665:
	movslq	%eax, %rdx	# ks, D.18336
	negl	%eax	# D.18335
	movl	$1, %r15d	#, j
	leaq	0(,%rdx,8), %r8	#, D.18336
	movslq	%eax, %rdi	# D.18335, D.18336
	movslq	%r11d, %rax	# n, D.18336
	leaq	(%r12,%r8), %rsi	#, ivtmp.1740
	subq	%rdx, %rax	# D.18336, D.18336
	salq	$3, %rdi	#, D.18336
	leaq	(%r12,%rax,8), %rcx	#, ivtmp.1742
	movq	40(%rsp), %rax	# %sfp, D.18336
	leaq	8(%r14), %rdx	#, ivtmp.1744
	leaq	(%r14,%rax,8), %rax	#, ivtmp.1749
	.p2align 4,,10
	.p2align 3
.L667:
	vmovsd	(%rsi), %xmm0	# MEM[base: _182, offset: 0B], D.18339
	addl	$1, %r15d	#, j
	addq	%r8, %rsi	# D.18336, ivtmp.1740
	addq	$8, %rdx	#, ivtmp.1744
	vmovsd	(%rcx), %xmm3	# MEM[base: _191, offset: 0B], D.18339
	subq	$8, %rax	#, ivtmp.1749
	addq	%rdi, %rcx	# D.18336, ivtmp.1742
	vmovsd	-8(%rdx), %xmm2	# MEM[base: _183, offset: 0B], D.18339
	vsubsd	%xmm3, %xmm0, %xmm1	# D.18339, D.18339, wkr
	vaddsd	%xmm0, %xmm3, %xmm3	# D.18339, D.18339, wki
	vmovsd	(%rax), %xmm0	# MEM[base: _391, offset: -8B], D.18339
	vmulsd	%xmm2, %xmm1, %xmm4	# D.18339, wkr, D.18339
	vmulsd	%xmm0, %xmm3, %xmm5	# D.18339, wki, D.18339
	vmulsd	%xmm2, %xmm3, %xmm2	# D.18339, wki, D.18339
	vmulsd	%xmm0, %xmm1, %xmm0	# D.18339, wkr, D.18339
	vaddsd	%xmm4, %xmm5, %xmm4	# D.18339, D.18339, D.18339
	vsubsd	%xmm0, %xmm2, %xmm2	# D.18339, D.18339, xr
	vmovsd	%xmm4, -8(%rdx)	# D.18339, MEM[base: _183, offset: 0B]
	vmovsd	%xmm2, (%rax)	# xr, MEM[base: _391, offset: -8B]
	cmpl	%r13d, %r15d	# m, j
	jl	.L667	#,
.L666:
	movq	48(%rsp), %rax	# %sfp, D.18338
	movl	56(%rsp), %ecx	# %sfp,
	addq	%r14, %rax	# a, D.18338
	vmovsd	(%rax), %xmm0	# *_154, *_154
	vmulsd	(%r12), %xmm0, %xmm0	# *_215, *_154, D.18339
	vmovsd	%xmm0, (%rax)	# D.18339, *_154
	testl	%ecx, %ecx	#
	js	.L689	#,
.L676:
	cmpl	$4, %ebx	#, n
	jg	.L697	#,
	je	.L698	#,
	vmovsd	(%r14), %xmm1	# *a_29(D), D.18339
	vmovsd	8(%r14), %xmm0	# MEM[(double *)a_29(D) + 8B], D.18339
	vsubsd	%xmm0, %xmm1, %xmm3	# D.18339, D.18339, xr
	vaddsd	%xmm1, %xmm0, %xmm0	# D.18339, D.18339, D.18339
	vmovsd	%xmm0, (%r14)	# D.18339, *a_29(D)
	cmpl	$2, %ebx	#, n
	jle	.L672	#,
.L670:
	leaq	16(%r14), %rax	#, ivtmp.1729
	movl	$2, %edx	#, j
	.p2align 4,,10
	.p2align 3
.L673:
	vmovsd	(%rax), %xmm1	# MEM[base: _464, offset: 0B], D.18339
	addl	$2, %edx	#, j
	addq	$16, %rax	#, ivtmp.1729
	vmovsd	-8(%rax), %xmm0	# MEM[base: _464, offset: 8B], D.18339
	vsubsd	%xmm0, %xmm1, %xmm2	# D.18339, D.18339, D.18339
	vaddsd	%xmm0, %xmm1, %xmm0	# D.18339, D.18339, D.18339
	vmovsd	%xmm2, -24(%rax)	# D.18339, MEM[base: _464, offset: -8B]
	vmovsd	%xmm0, -16(%rax)	# D.18339, MEM[base: _464, offset: 0B]
	cmpl	%edx, %ebx	# j, n
	jg	.L673	#,
.L672:
	vmovsd	%xmm3, -8(%r14,%rbx,8)	# xr, *_93
.L689:
	addq	$88, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L651:
	.cfi_restore_state
	movq	16(%rsp), %rcx	# %sfp, ip
	movl	%ebx, %eax	# n, nw
	movl	$1, %r11d	#, n
	sarl	$2, %eax	#, nw
	movl	%eax, 12(%rsp)	# nw, %sfp
	movl	%eax, (%rcx)	# nw, *ip_13(D)
	movl	$1, 4(%rcx)	#, MEM[(int *)ip_13(D) + 4B]
	cmpl	$2, %eax	#, nw
	jle	.L652	#,
	movq	24(%rsp), %rdx	# %sfp,
	movq	%rcx, %r15	# ip, ip
	movq	%rcx, %rsi	# ip,
	movl	%eax, %edi	# nw,
	call	makewt.part.0	#
	movl	4(%r15), %r11d	# MEM[(int *)ip_13(D) + 4B], n
	jmp	.L652	#
	.p2align 4,,10
	.p2align 3
.L696:
	movq	16(%rsp), %rax	# %sfp, ip
	movl	%ebx, 4(%rax)	# n, MEM[(int *)ip_13(D) + 4B]
	cmpl	$1, %ebx	#, n
	jle	.L678	#,
	vmovsd	.LC16(%rip), %xmm1	#, tmp233
	movl	%ebx, %r13d	# n, m
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18339
	sarl	%r13d	# m
	vcvtsi2sd	%r13d, %xmm0, %xmm0	# m, D.18339, D.18339
	vdivsd	%xmm0, %xmm1, %xmm7	# D.18339, tmp233, delta
	vmulsd	%xmm7, %xmm0, %xmm0	# delta, D.18339, D.18339
	vmovsd	%xmm7, 32(%rsp)	# delta, %sfp
	call	cos	#
	movslq	%r13d, %rax	# m, D.18336
	vmovsd	.LC2(%rip), %xmm1	#, tmp298
	vmovsd	%xmm0, (%r12)	# D.18339, *_23
	leaq	0(,%rax,8), %rdi	#, D.18336
	vmulsd	%xmm1, %xmm0, %xmm0	# tmp298, D.18339, D.18339
	movq	%rdi, 48(%rsp)	# D.18336, %sfp
	vmovsd	%xmm0, (%r12,%rax,8)	# D.18339, *_104
	cmpl	$1, %r13d	#, m
	je	.L655	#,
	movslq	%ebx, %rax	# n, D.18336
	movl	%ebx, 60(%rsp)	# n, %sfp
	movl	$1, %r15d	#, j
	leaq	(%r12,%rax,8), %rbp	#, ivtmp.1769
	movq	%rax, 40(%rsp)	# D.18336, %sfp
	leaq	8(%r12), %rcx	#, ivtmp.1764
	movq	%rbp, %rbx	# ivtmp.1769, ivtmp.1769
	movq	%rcx, %rbp	# ivtmp.1764, ivtmp.1764
	.p2align 4,,10
	.p2align 3
.L656:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18339
	vcvtsi2sd	%r15d, %xmm0, %xmm0	# j, D.18339, D.18339
	vmovsd	%xmm1, (%rsp)	# tmp298, %sfp
	addl	$1, %r15d	#, j
	vmulsd	32(%rsp), %xmm0, %xmm0	# %sfp, D.18339, D.18339
	addq	$8, %rbp	#, ivtmp.1764
	subq	$8, %rbx	#, ivtmp.1769
	leaq	64(%rsp), %rsi	#,
	leaq	72(%rsp), %rdi	#, tmp352
	call	sincos	#
	vmovsd	(%rsp), %xmm1	# %sfp, tmp298
	vmulsd	64(%rsp), %xmm1, %xmm0	#, tmp298, D.18339
	vmovsd	%xmm0, -8(%rbp)	# D.18339, MEM[base: _1, offset: 0B]
	vmulsd	72(%rsp), %xmm1, %xmm0	#, tmp298, D.18339
	vmovsd	%xmm0, (%rbx)	# D.18339, MEM[base: _173, offset: -8B]
	cmpl	%r13d, %r15d	# m, j
	jne	.L656	#,
	movl	56(%rsp), %edx	# %sfp,
	movslq	60(%rsp), %rbx	# %sfp,
	testl	%edx, %edx	#
	js	.L699	#,
	movl	%ebx, %eax	# n, ks
	movl	%ebx, %r11d	# n, n
	cltd
	idivl	%ebx	# n
	jmp	.L665	#
	.p2align 4,,10
	.p2align 3
.L680:
	movl	%ebx, %r11d	# n, n
	.p2align 4,,10
	.p2align 3
.L691:
	movslq	%ebx, %rax	# n, D.18336
	movq	%rax, 40(%rsp)	# D.18336, %sfp
.L674:
	vmovsd	-8(%r14,%rax,8), %xmm3	# *_30, xr
	leal	-2(%rbx), %eax	#, j
	cmpl	$1, %eax	#, j
	jle	.L663	#,
	leal	-4(%rbx), %ecx	#, D.18340
	movslq	%eax, %rdx	# j, D.18336
	leaq	(%r14,%rdx,8), %rax	#, ivtmp.1755
	shrl	%ecx	#
	addq	%rcx, %rcx	# D.18334
	subq	%rcx, %rdx	# D.18334, D.18337
	leaq	-16(%r14,%rdx,8), %rdx	#, D.18334
	.p2align 4,,10
	.p2align 3
.L662:
	vmovsd	(%rax), %xmm1	# MEM[base: _126, offset: 0B], D.18339
	subq	$16, %rax	#, ivtmp.1755
	vmovsd	8(%rax), %xmm0	# MEM[base: _126, offset: -8B], D.18339
	vsubsd	%xmm0, %xmm1, %xmm2	# D.18339, D.18339, D.18339
	vaddsd	%xmm0, %xmm1, %xmm0	# D.18339, D.18339, D.18339
	vmovsd	%xmm2, 24(%rax)	# D.18339, MEM[base: _126, offset: 8B]
	vmovsd	%xmm0, 16(%rax)	# D.18339, MEM[base: _126, offset: 0B]
	cmpq	%rdx, %rax	# D.18334, ivtmp.1755
	jne	.L662	#,
.L663:
	vmovsd	(%r14), %xmm0	# *a_29(D), D.18339
	vsubsd	%xmm3, %xmm0, %xmm1	# xr, D.18339, D.18339
	vaddsd	%xmm0, %xmm3, %xmm3	# D.18339, xr, D.18339
	vmovsd	%xmm1, 8(%r14)	# D.18339, MEM[(double *)a_29(D) + 8B]
	vmovsd	%xmm3, (%r14)	# D.18339, *a_29(D)
	cmpl	$4, %ebx	#, n
	jg	.L700	#,
	jne	.L664	#,
	movl	12(%rsp), %ecx	# %sfp,
	movq	%r14, %rsi	# a,
	movl	$4, %edi	#,
	movl	%r11d, (%rsp)	# n, %sfp
	movq	24(%rsp), %r8	# %sfp,
	movq	16(%rsp), %rdx	# %sfp,
	call	cftbsub	#
	movl	(%rsp), %r11d	# %sfp, n
	leal	3(%r11), %eax	#, tmp265
	testl	%r11d, %r11d	# n
	cmovns	%r11d, %eax	# tmp265,, n, n
	sarl	$2, %eax	#, ks
	jmp	.L665	#
	.p2align 4,,10
	.p2align 3
.L697:
	movl	12(%rsp), %ecx	# %sfp,
	movq	%r14, %rsi	# a,
	movl	%ebx, %edi	# n,
	movl	%r11d, (%rsp)	# n, %sfp
	movq	16(%rsp), %rdx	# %sfp,
	movq	24(%rsp), %r8	# %sfp,
	call	cftfsub	#
	movl	(%rsp), %r11d	# %sfp, n
	movq	%r12, %rcx	# D.18338,
	movq	%r14, %rsi	# a,
	movl	%ebx, %edi	# n,
	movl	%r11d, %edx	# n,
	call	rftfsub	#
.L692:
	vmovsd	(%r14), %xmm1	# *a_29(D), D.18339
	vmovsd	8(%r14), %xmm0	# MEM[(double *)a_29(D) + 8B], D.18339
	vsubsd	%xmm0, %xmm1, %xmm3	# D.18339, D.18339, xr
	vaddsd	%xmm1, %xmm0, %xmm0	# D.18339, D.18339, D.18339
	vmovsd	%xmm0, (%r14)	# D.18339, *a_29(D)
	jmp	.L670	#
.L698:
	movq	24(%rsp), %r8	# %sfp,
	movq	%r14, %rsi	# a,
	movl	$4, %edi	#,
	movl	12(%rsp), %ecx	# %sfp,
	movq	16(%rsp), %rdx	# %sfp,
	call	cftfsub	#
	jmp	.L692	#
.L700:
	movl	%r11d, %edx	# n,
	movq	%r12, %rcx	# D.18338,
	movq	%r14, %rsi	# a,
	movl	%r11d, (%rsp)	# n, %sfp
	movl	%ebx, %edi	# n,
	call	rftbsub	#
	movq	24(%rsp), %r8	# %sfp,
	movq	%r14, %rsi	# a,
	movl	%ebx, %edi	# n,
	movl	12(%rsp), %ecx	# %sfp,
	movq	16(%rsp), %rdx	# %sfp,
	call	cftbsub	#
	movl	(%rsp), %r11d	# %sfp, n
	jmp	.L664	#
.L699:
	movl	%ebx, %r11d	# n, n
	movq	40(%rsp), %rax	# %sfp, D.18336
	jmp	.L674	#
.L678:
	movl	%ebx, %r11d	# n, n
	jmp	.L654	#
.L655:
	movl	56(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	js	.L680	#,
	movq	48(%rsp), %rax	# %sfp, D.18338
	movl	%ebx, %r11d	# n, n
	addq	%r14, %rax	# a, D.18338
	vmovsd	(%rax), %xmm0	# *_109, *_109
	vmulsd	(%r12), %xmm0, %xmm0	# *_23, *_109, D.18339
	vmovsd	%xmm0, (%rax)	# D.18339, *_109
	jmp	.L676	#
	.cfi_endproc
.LFE38:
	.size	ddct, .-ddct
	.section	.text.unlikely
.LCOLDE56:
	.text
.LHOTE56:
	.section	.text.unlikely
.LCOLDB57:
	.text
.LHOTB57:
	.p2align 4,,15
	.globl	ddst
	.type	ddst, @function
ddst:
.LFB39:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14	# a, a
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%edi, %rbx	# n,
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 144
	movl	(%rcx), %eax	# *ip_13(D), nw
	movl	%esi, 56(%rsp)	# isgn, %sfp
	movq	%rcx, 16(%rsp)	# ip, %sfp
	movq	%r8, 24(%rsp)	# w, %sfp
	movl	%eax, 12(%rsp)	# nw, %sfp
	sall	$2, %eax	#, D.18418
	cmpl	%ebx, %eax	# n, D.18418
	jl	.L702	#,
	movl	4(%rcx), %r11d	# MEM[(int *)ip_13(D) + 4B], n
.L703:
	movslq	12(%rsp), %rax	# %sfp, D.18419
	movq	24(%rsp), %rdi	# %sfp, w
	leaq	(%rdi,%rax,8), %r12	#, D.18421
	cmpl	%r11d, %ebx	# n, n
	jg	.L748	#,
.L705:
	movl	56(%rsp), %esi	# %sfp,
	movl	%ebx, %r9d	# n, D.18418
	sarl	%r9d	# D.18418
	movslq	%r9d, %rax	# D.18418, D.18419
	movl	%r9d, %r13d	# D.18418, m
	salq	$3, %rax	#, D.18419
	testl	%esi, %esi	#
	movq	%rax, 48(%rsp)	# D.18419, %sfp
	js	.L743	#,
.L715:
	movl	%r11d, %eax	# n, ks
	cltd
	idivl	%ebx	# n
	cmpl	$1, %r13d	#, m
	jle	.L717	#,
	movslq	%ebx, %rdi	# n, D.18419
	movq	%rdi, 40(%rsp)	# D.18419, %sfp
.L716:
	movslq	%eax, %rdx	# ks, D.18419
	negl	%eax	# D.18418
	movl	$1, %r15d	#, j
	leaq	0(,%rdx,8), %r8	#, D.18419
	movslq	%eax, %rdi	# D.18418, D.18419
	movslq	%r11d, %rax	# n, D.18419
	leaq	(%r12,%r8), %rsi	#, ivtmp.1792
	subq	%rdx, %rax	# D.18419, D.18419
	salq	$3, %rdi	#, D.18419
	leaq	(%r12,%rax,8), %rcx	#, ivtmp.1794
	movq	40(%rsp), %rax	# %sfp, D.18419
	leaq	(%r14,%rax,8), %rdx	#, ivtmp.1798
	leaq	8(%r14), %rax	#, ivtmp.1799
	.p2align 4,,10
	.p2align 3
.L718:
	vmovsd	(%rsi), %xmm0	# MEM[base: _185, offset: 0B], D.18422
	addl	$1, %r15d	#, j
	addq	%r8, %rsi	# D.18419, ivtmp.1792
	subq	$8, %rdx	#, ivtmp.1798
	vmovsd	(%rcx), %xmm3	# MEM[base: _194, offset: 0B], D.18422
	addq	$8, %rax	#, ivtmp.1799
	addq	%rdi, %rcx	# D.18419, ivtmp.1794
	vmovsd	(%rdx), %xmm2	# MEM[base: _186, offset: -8B], D.18422
	vsubsd	%xmm3, %xmm0, %xmm1	# D.18422, D.18422, wkr
	vaddsd	%xmm0, %xmm3, %xmm3	# D.18422, D.18422, wki
	vmovsd	-8(%rax), %xmm0	# MEM[base: _402, offset: 0B], D.18422
	vmulsd	%xmm2, %xmm1, %xmm4	# D.18422, wkr, D.18422
	vmulsd	%xmm0, %xmm3, %xmm5	# D.18422, wki, D.18422
	vmulsd	%xmm2, %xmm3, %xmm2	# D.18422, wki, D.18422
	vmulsd	%xmm0, %xmm1, %xmm0	# D.18422, wkr, D.18422
	vaddsd	%xmm4, %xmm5, %xmm4	# D.18422, D.18422, D.18422
	vsubsd	%xmm0, %xmm2, %xmm2	# D.18422, D.18422, xr
	vmovsd	%xmm4, (%rdx)	# D.18422, MEM[base: _186, offset: -8B]
	vmovsd	%xmm2, -8(%rax)	# xr, MEM[base: _402, offset: 0B]
	cmpl	%r13d, %r15d	# m, j
	jl	.L718	#,
.L717:
	movq	48(%rsp), %rax	# %sfp, D.18421
	movl	56(%rsp), %ecx	# %sfp,
	addq	%r14, %rax	# a, D.18421
	vmovsd	(%rax), %xmm0	# *_157, *_157
	vmulsd	(%r12), %xmm0, %xmm0	# *_218, *_157, D.18422
	vmovsd	%xmm0, (%rax)	# D.18422, *_157
	testl	%ecx, %ecx	#
	js	.L741	#,
.L727:
	cmpl	$4, %ebx	#, n
	jg	.L749	#,
	je	.L750	#,
	vmovsd	(%r14), %xmm1	# *a_29(D), D.18422
	vmovsd	8(%r14), %xmm0	# MEM[(double *)a_29(D) + 8B], D.18422
	vsubsd	%xmm0, %xmm1, %xmm4	# D.18422, D.18422, xr
	vaddsd	%xmm1, %xmm0, %xmm0	# D.18422, D.18422, D.18422
	vmovsd	%xmm0, (%r14)	# D.18422, *a_29(D)
	cmpl	$2, %ebx	#, n
	jle	.L751	#,
.L721:
	vmovsd	.LC13(%rip), %xmm3	#, tmp308
	leaq	16(%r14), %rax	#, ivtmp.1781
	movl	$2, %edx	#, j
	.p2align 4,,10
	.p2align 3
.L724:
	vmovsd	(%rax), %xmm1	# MEM[base: _476, offset: 0B], D.18422
	addl	$2, %edx	#, j
	addq	$16, %rax	#, ivtmp.1781
	vmovsd	-8(%rax), %xmm0	# MEM[base: _476, offset: 8B], D.18422
	vaddsd	%xmm1, %xmm0, %xmm2	# D.18422, D.18422, D.18422
	vsubsd	%xmm0, %xmm1, %xmm0	# D.18422, D.18422, D.18422
	vxorpd	%xmm3, %xmm2, %xmm2	# tmp308, D.18422, D.18422
	vmovsd	%xmm2, -24(%rax)	# D.18422, MEM[base: _476, offset: -8B]
	vmovsd	%xmm0, -16(%rax)	# D.18422, MEM[base: _476, offset: 0B]
	cmpl	%edx, %ebx	# j, n
	jg	.L724	#,
.L723:
	vxorpd	%xmm4, %xmm3, %xmm3	# xr, tmp308, D.18422
	vmovsd	%xmm3, -8(%r14,%rbx,8)	# D.18422, *_95
.L741:
	addq	$88, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L702:
	.cfi_restore_state
	movq	16(%rsp), %rcx	# %sfp, ip
	movl	%ebx, %eax	# n, nw
	movl	$1, %r11d	#, n
	sarl	$2, %eax	#, nw
	movl	%eax, 12(%rsp)	# nw, %sfp
	movl	%eax, (%rcx)	# nw, *ip_13(D)
	movl	$1, 4(%rcx)	#, MEM[(int *)ip_13(D) + 4B]
	cmpl	$2, %eax	#, nw
	jle	.L703	#,
	movq	24(%rsp), %rdx	# %sfp,
	movq	%rcx, %r15	# ip, ip
	movq	%rcx, %rsi	# ip,
	movl	%eax, %edi	# nw,
	call	makewt.part.0	#
	movl	4(%r15), %r11d	# MEM[(int *)ip_13(D) + 4B], n
	jmp	.L703	#
	.p2align 4,,10
	.p2align 3
.L748:
	movq	16(%rsp), %rax	# %sfp, ip
	movl	%ebx, 4(%rax)	# n, MEM[(int *)ip_13(D) + 4B]
	cmpl	$1, %ebx	#, n
	jle	.L729	#,
	vmovsd	.LC16(%rip), %xmm1	#, tmp236
	movl	%ebx, %r13d	# n, m
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18422
	sarl	%r13d	# m
	vcvtsi2sd	%r13d, %xmm0, %xmm0	# m, D.18422, D.18422
	vdivsd	%xmm0, %xmm1, %xmm7	# D.18422, tmp236, delta
	vmulsd	%xmm7, %xmm0, %xmm0	# delta, D.18422, D.18422
	vmovsd	%xmm7, 32(%rsp)	# delta, %sfp
	call	cos	#
	movslq	%r13d, %rax	# m, D.18419
	vmovsd	.LC2(%rip), %xmm1	#, tmp304
	vmovsd	%xmm0, (%r12)	# D.18422, *_23
	leaq	0(,%rax,8), %rdi	#, D.18419
	vmulsd	%xmm1, %xmm0, %xmm0	# tmp304, D.18422, D.18422
	movq	%rdi, 48(%rsp)	# D.18419, %sfp
	vmovsd	%xmm0, (%r12,%rax,8)	# D.18422, *_107
	cmpl	$1, %r13d	#, m
	je	.L706	#,
	movslq	%ebx, %rax	# n, D.18419
	movl	%ebx, 60(%rsp)	# n, %sfp
	movl	$1, %r15d	#, j
	leaq	(%r12,%rax,8), %rbp	#, ivtmp.1821
	movq	%rax, 40(%rsp)	# D.18419, %sfp
	leaq	8(%r12), %rcx	#, ivtmp.1816
	movq	%rbp, %rbx	# ivtmp.1821, ivtmp.1821
	movq	%rcx, %rbp	# ivtmp.1816, ivtmp.1816
	.p2align 4,,10
	.p2align 3
.L707:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18422
	vcvtsi2sd	%r15d, %xmm0, %xmm0	# j, D.18422, D.18422
	vmovsd	%xmm1, (%rsp)	# tmp304, %sfp
	addl	$1, %r15d	#, j
	vmulsd	32(%rsp), %xmm0, %xmm0	# %sfp, D.18422, D.18422
	addq	$8, %rbp	#, ivtmp.1816
	subq	$8, %rbx	#, ivtmp.1821
	leaq	64(%rsp), %rsi	#,
	leaq	72(%rsp), %rdi	#, tmp362
	call	sincos	#
	vmovsd	(%rsp), %xmm1	# %sfp, tmp304
	vmulsd	64(%rsp), %xmm1, %xmm0	#, tmp304, D.18422
	vmovsd	%xmm0, -8(%rbp)	# D.18422, MEM[base: _1, offset: 0B]
	vmulsd	72(%rsp), %xmm1, %xmm0	#, tmp304, D.18422
	vmovsd	%xmm0, (%rbx)	# D.18422, MEM[base: _176, offset: -8B]
	cmpl	%r13d, %r15d	# m, j
	jne	.L707	#,
	movl	56(%rsp), %edx	# %sfp,
	movslq	60(%rsp), %rbx	# %sfp,
	testl	%edx, %edx	#
	js	.L752	#,
	movl	%ebx, %eax	# n, ks
	movl	%ebx, %r11d	# n, n
	cltd
	idivl	%ebx	# n
	jmp	.L716	#
	.p2align 4,,10
	.p2align 3
.L731:
	movl	%ebx, %r11d	# n, n
	.p2align 4,,10
	.p2align 3
.L743:
	movslq	%ebx, %rax	# n, D.18419
	movq	%rax, 40(%rsp)	# D.18419, %sfp
.L725:
	vmovsd	-8(%r14,%rax,8), %xmm4	# *_30, xr
	leal	-2(%rbx), %eax	#, j
	cmpl	$1, %eax	#, j
	jle	.L714	#,
	vmovsd	.LC13(%rip), %xmm3	#, tmp308
	leal	-4(%rbx), %ecx	#, D.18423
	movslq	%eax, %rdx	# j, D.18419
	leaq	(%r14,%rdx,8), %rax	#, ivtmp.1807
	shrl	%ecx	#
	addq	%rcx, %rcx	# D.18417
	subq	%rcx, %rdx	# D.18417, D.18420
	leaq	-16(%r14,%rdx,8), %rdx	#, D.18417
	.p2align 4,,10
	.p2align 3
.L713:
	vmovsd	(%rax), %xmm1	# MEM[base: _129, offset: 0B], D.18422
	subq	$16, %rax	#, ivtmp.1807
	vmovsd	8(%rax), %xmm0	# MEM[base: _129, offset: -8B], D.18422
	vaddsd	%xmm1, %xmm0, %xmm2	# D.18422, D.18422, D.18422
	vsubsd	%xmm0, %xmm1, %xmm0	# D.18422, D.18422, D.18422
	vxorpd	%xmm3, %xmm2, %xmm2	# tmp308, D.18422, D.18422
	vmovsd	%xmm2, 24(%rax)	# D.18422, MEM[base: _129, offset: 8B]
	vmovsd	%xmm0, 16(%rax)	# D.18422, MEM[base: _129, offset: 0B]
	cmpq	%rdx, %rax	# D.18417, ivtmp.1807
	jne	.L713	#,
.L714:
	vmovsd	(%r14), %xmm0	# *a_29(D), D.18422
	vaddsd	%xmm0, %xmm4, %xmm1	# D.18422, xr, D.18422
	vsubsd	%xmm4, %xmm0, %xmm0	# xr, D.18422, D.18422
	vmovsd	%xmm1, 8(%r14)	# D.18422, MEM[(double *)a_29(D) + 8B]
	vmovsd	%xmm0, (%r14)	# D.18422, *a_29(D)
	cmpl	$4, %ebx	#, n
	jg	.L753	#,
	jne	.L715	#,
	movl	12(%rsp), %ecx	# %sfp,
	movq	%r14, %rsi	# a,
	movl	$4, %edi	#,
	movl	%r11d, (%rsp)	# n, %sfp
	movq	24(%rsp), %r8	# %sfp,
	movq	16(%rsp), %rdx	# %sfp,
	call	cftbsub	#
	movl	(%rsp), %r11d	# %sfp, n
	leal	3(%r11), %eax	#, tmp270
	testl	%r11d, %r11d	# n
	cmovns	%r11d, %eax	# tmp270,, n, n
	sarl	$2, %eax	#, ks
	jmp	.L716	#
	.p2align 4,,10
	.p2align 3
.L749:
	movl	12(%rsp), %ecx	# %sfp,
	movq	%r14, %rsi	# a,
	movl	%ebx, %edi	# n,
	movl	%r11d, (%rsp)	# n, %sfp
	movq	16(%rsp), %rdx	# %sfp,
	movq	24(%rsp), %r8	# %sfp,
	call	cftfsub	#
	movl	(%rsp), %r11d	# %sfp, n
	movq	%r12, %rcx	# D.18421,
	movq	%r14, %rsi	# a,
	movl	%ebx, %edi	# n,
	movl	%r11d, %edx	# n,
	call	rftfsub	#
.L744:
	vmovsd	(%r14), %xmm1	# *a_29(D), D.18422
	vmovsd	8(%r14), %xmm0	# MEM[(double *)a_29(D) + 8B], D.18422
	vsubsd	%xmm0, %xmm1, %xmm4	# D.18422, D.18422, xr
	vaddsd	%xmm1, %xmm0, %xmm0	# D.18422, D.18422, D.18422
	vmovsd	%xmm0, (%r14)	# D.18422, *a_29(D)
	jmp	.L721	#
.L750:
	movq	24(%rsp), %r8	# %sfp,
	movq	%r14, %rsi	# a,
	movl	$4, %edi	#,
	movl	12(%rsp), %ecx	# %sfp,
	movq	16(%rsp), %rdx	# %sfp,
	call	cftfsub	#
	jmp	.L744	#
.L753:
	movl	%r11d, %edx	# n,
	movq	%r12, %rcx	# D.18421,
	movq	%r14, %rsi	# a,
	movl	%r11d, (%rsp)	# n, %sfp
	movl	%ebx, %edi	# n,
	call	rftbsub	#
	movq	24(%rsp), %r8	# %sfp,
	movq	%r14, %rsi	# a,
	movl	%ebx, %edi	# n,
	movl	12(%rsp), %ecx	# %sfp,
	movq	16(%rsp), %rdx	# %sfp,
	call	cftbsub	#
	movl	(%rsp), %r11d	# %sfp, n
	jmp	.L715	#
.L752:
	movl	%ebx, %r11d	# n, n
	movq	40(%rsp), %rax	# %sfp, D.18419
	jmp	.L725	#
.L751:
	vmovsd	.LC13(%rip), %xmm3	#, tmp308
	jmp	.L723	#
.L729:
	movl	%ebx, %r11d	# n, n
	jmp	.L705	#
.L706:
	movl	56(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	js	.L731	#,
	movq	48(%rsp), %rax	# %sfp, D.18421
	movl	%ebx, %r11d	# n, n
	addq	%r14, %rax	# a, D.18421
	vmovsd	(%rax), %xmm0	# *_112, *_112
	vmulsd	(%r12), %xmm0, %xmm0	# *_23, *_112, D.18422
	vmovsd	%xmm0, (%rax)	# D.18422, *_112
	jmp	.L727	#
	.cfi_endproc
.LFE39:
	.size	ddst, .-ddst
	.section	.text.unlikely
.LCOLDE57:
	.text
.LHOTE57:
	.section	.text.unlikely
.LCOLDB58:
	.text
.LHOTB58:
	.p2align 4,,15
	.globl	dctsub
	.type	dctsub, @function
dctsub:
.LFB82:
	.cfi_startproc
	movslq	%edx, %r8	# nc,
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx	# n, m
	movl	%r8d, %eax	# nc, tmp136
	sarl	%ebx	# m
	cltd
	idivl	%edi	# n
	cmpl	$1, %ebx	#, m
	jle	.L757	#,
	movslq	%eax, %rdx	# tmp136, D.18448
	movslq	%edi, %rdi	# n, D.18448
	negl	%eax	# D.18454
	subq	%rdx, %r8	# D.18448, D.18448
	leaq	0(,%rdx,8), %r11	#, D.18448
	movslq	%eax, %r10	# D.18454, D.18448
	movq	%rsi, %rax	# a, ivtmp.1836
	leaq	(%rsi,%rdi,8), %rdx	#, ivtmp.1839
	salq	$3, %r10	#, D.18448
	leal	-2(%rbx), %edi	#, D.18451
	leaq	(%rcx,%r11), %r9	#, ivtmp.1830
	leaq	(%rcx,%r8,8), %r8	#, ivtmp.1832
	leaq	8(%rsi,%rdi,8), %rdi	#, D.18450
	.p2align 4,,10
	.p2align 3
.L756:
	vmovsd	(%r8), %xmm1	# MEM[base: _81, offset: 0B], D.18447
	addq	$8, %rax	#, ivtmp.1836
	addq	%r10, %r8	# D.18448, ivtmp.1832
	subq	$8, %rdx	#, ivtmp.1839
	vmovsd	(%r9), %xmm0	# MEM[base: _82, offset: 0B], D.18447
	addq	%r11, %r9	# D.18448, ivtmp.1830
	vmovsd	(%rax), %xmm4	# MEM[base: _80, offset: 8B], D.18447
	vsubsd	%xmm1, %xmm0, %xmm2	# D.18447, D.18447, wkr
	vmovsd	(%rdx), %xmm3	# MEM[base: _79, offset: -8B], D.18447
	vaddsd	%xmm0, %xmm1, %xmm0	# D.18447, D.18447, wki
	vmulsd	%xmm4, %xmm2, %xmm5	# D.18447, wkr, D.18447
	vmulsd	%xmm3, %xmm0, %xmm1	# D.18447, wki, D.18447
	vmulsd	%xmm3, %xmm2, %xmm2	# D.18447, wkr, D.18447
	vmulsd	%xmm4, %xmm0, %xmm0	# D.18447, wki, D.18447
	vaddsd	%xmm5, %xmm1, %xmm1	# D.18447, D.18447, D.18447
	vsubsd	%xmm2, %xmm0, %xmm0	# D.18447, D.18447, xr
	vmovsd	%xmm1, (%rax)	# D.18447, MEM[base: _80, offset: 8B]
	vmovsd	%xmm0, (%rdx)	# xr, MEM[base: _79, offset: -8B]
	cmpq	%rdi, %rax	# D.18450, ivtmp.1836
	jne	.L756	#,
.L757:
	movslq	%ebx, %rbx	# m, D.18448
	leaq	(%rsi,%rbx,8), %rax	#, D.18449
	vmovsd	(%rax), %xmm0	# *_43, *_43
	vmulsd	(%rcx), %xmm0, %xmm0	# *c_13(D), *_43, D.18447
	vmovsd	%xmm0, (%rax)	# D.18447, *_43
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	dctsub, .-dctsub
	.section	.text.unlikely
.LCOLDE58:
	.text
.LHOTE58:
	.section	.text.unlikely
.LCOLDB59:
	.text
.LHOTB59:
	.p2align 4,,15
	.globl	dstsub
	.type	dstsub, @function
dstsub:
.LFB83:
	.cfi_startproc
	movslq	%edx, %r8	# nc,
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx	# n, m
	movl	%r8d, %eax	# nc, tmp137
	sarl	%ebx	# m
	cltd
	idivl	%edi	# n
	cmpl	$1, %ebx	#, m
	jle	.L765	#,
	movslq	%eax, %rdx	# tmp137, D.18474
	movslq	%edi, %rdi	# n, D.18474
	negl	%eax	# D.18480
	subq	%rdx, %r8	# D.18474, D.18474
	leaq	0(,%rdx,8), %r11	#, D.18474
	movslq	%eax, %r10	# D.18480, D.18474
	leaq	(%rsi,%rdi,8), %rdx	#, ivtmp.1854
	salq	$3, %r10	#, D.18474
	leal	-2(%rbx), %edi	#, D.18477
	leaq	(%rcx,%r11), %r9	#, ivtmp.1848
	leaq	(%rcx,%r8,8), %r8	#, ivtmp.1850
	leaq	8(%rsi), %rax	#, ivtmp.1855
	leaq	16(%rsi,%rdi,8), %rdi	#, D.18476
	.p2align 4,,10
	.p2align 3
.L764:
	vmovsd	(%r8), %xmm1	# MEM[base: _80, offset: 0B], D.18473
	addq	$8, %rax	#, ivtmp.1855
	addq	%r10, %r8	# D.18474, ivtmp.1850
	subq	$8, %rdx	#, ivtmp.1854
	vmovsd	(%r9), %xmm0	# MEM[base: _81, offset: 0B], D.18473
	addq	%r11, %r9	# D.18474, ivtmp.1848
	vmovsd	(%rdx), %xmm4	# MEM[base: _79, offset: -8B], D.18473
	vsubsd	%xmm1, %xmm0, %xmm2	# D.18473, D.18473, wkr
	vmovsd	-8(%rax), %xmm3	# MEM[base: _78, offset: 0B], D.18473
	vaddsd	%xmm0, %xmm1, %xmm0	# D.18473, D.18473, wki
	vmulsd	%xmm4, %xmm2, %xmm5	# D.18473, wkr, D.18473
	vmulsd	%xmm3, %xmm0, %xmm1	# D.18473, wki, D.18473
	vmulsd	%xmm3, %xmm2, %xmm2	# D.18473, wkr, D.18473
	vmulsd	%xmm4, %xmm0, %xmm0	# D.18473, wki, D.18473
	vaddsd	%xmm5, %xmm1, %xmm1	# D.18473, D.18473, D.18473
	vsubsd	%xmm2, %xmm0, %xmm0	# D.18473, D.18473, xr
	vmovsd	%xmm1, (%rdx)	# D.18473, MEM[base: _79, offset: -8B]
	vmovsd	%xmm0, -8(%rax)	# xr, MEM[base: _78, offset: 0B]
	cmpq	%rdi, %rax	# D.18476, ivtmp.1855
	jne	.L764	#,
.L765:
	movslq	%ebx, %rbx	# m, D.18474
	leaq	(%rsi,%rbx,8), %rax	#, D.18475
	vmovsd	(%rax), %xmm0	# *_43, *_43
	vmulsd	(%rcx), %xmm0, %xmm0	# *c_13(D), *_43, D.18473
	vmovsd	%xmm0, (%rax)	# D.18473, *_43
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:
	.size	dstsub, .-dstsub
	.section	.text.unlikely
.LCOLDE59:
	.text
.LHOTE59:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC60:
	.string	"using Blackman-Harris (order %.1f) window..\n"
	.align 8
.LC61:
	.string	"using Kaiser (beta %.1f) window..\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC62:
	.string	"using Ooura FFT\n"
.LC63:
	.string	"ERROR: wrong parameter...\n"
.LC64:
	.string	"b:k:r:o"
.LC65:
	.string	"AUDIODEV"
	.section	.rodata.str1.8
	.align 8
.LC66:
	.string	"ERROR: Missing required environment variable AUDIODEV\n export AUDIODEV=\"hw:CARD=`cat /proc/asound/card0/id`,DEV=0\"\n"
	.section	.rodata.str1.1
.LC67:
	.string	"setting input: %s\n"
.LC68:
	.string	"sample rate: %u\n"
.LC69:
	.string	"error: snd_pcm_open(): %s\n"
	.section	.rodata.str1.8
	.align 8
.LC70:
	.string	"error: snd_pcm_set_params(): %s\n"
	.section	.rodata.str1.1
.LC71:
	.string	"FFT size: %u\n"
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"Calibrating... selected FFT + Windowing combination\n"
	.section	.rodata.str1.1
.LC74:
	.string	"DFT out @ 1kHz, 0 dBFS = %f\n"
	.section	.rodata.str1.8
	.align 8
.LC75:
	.string	"ERROR: got %d samples.. (requested %d)\n"
	.section	.rodata.str1.1
.LC76:
	.string	"ERROR: snd_pcm_readi(): %s\n"
.LC79:
	.string	"set grid"
.LC80:
	.string	"show grid"
.LC81:
	.string	"set ytics 10"
.LC82:
	.string	"set xtics 1000"
.LC83:
	.string	"set yrange [-160:0]"
	.section	.rodata.str1.8
	.align 8
.LC84:
	.string	"set term png medium size 1366,768"
	.align 8
.LC85:
	.string	"set term png background \"#FFFFFF\""
	.section	.rodata.str1.1
.LC86:
	.string	"set xrange [0:20000]"
.LC87:
	.string	"f0 = %u\n"
	.section	.rodata.str1.8
	.align 8
.LC90:
	.string	"THD = %f%% (f0 = %.1fHz, %f dBFS)\n"
	.align 8
.LC91:
	.string	"set label \"THD = %f%% (f0 = %.1fHz, %f dBFS)\" at graph 0.5,0.9\n"
	.section	.rodata.str1.1
.LC92:
	.string	"plot \"-\" using 1:2 with lines"
.LC93:
	.string	"end\nquit"
.LC94:
	.string	"%4d %12f\n"
	.section	.text.unlikely
.LCOLDB95:
	.section	.text.startup,"ax",@progbits
.LHOTB95:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB92:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	%edi, %r15d	# argc, argc
	pushq	%r14	#
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	xorl	%r14d, %r14d	# fft_ooura
	pushq	%r13	#
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	xorl	%r13d, %r13d	# window_function
	pushq	%r12	#
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12	# argv, argv
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx	#
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	$96000, %ebx	#, fft_width
	subq	$64, %rsp	#,
	movq	$0, -72(%rbp)	#, %sfp
.L771:
	movl	$.LC64, %edx	#,
	movq	%r12, %rsi	# argv,
	movl	%r15d, %edi	# argc,
	call	getopt	#
	cmpl	$-1, %eax	#, i
	je	.L845	#,
	cmpl	$107, %eax	#, i
	je	.L773	#,
	jle	.L846	#,
	cmpl	$111, %eax	#, i
	je	.L776	#,
	cmpl	$114, %eax	#, i
	jne	.L772	#,
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol	#
	movl	%eax, %ebx	# D.18571, fft_width
	jmp	.L771	#
	.p2align 4,,10
	.p2align 3
.L846:
	cmpl	$98, %eax	#, i
	jne	.L772	#,
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movl	$1, %r13d	#, window_function
	call	strtol	#
	vxorpd	%xmm2, %xmm2, %xmm2	# window_parameter
	movl	$.LC60, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	vcvtsi2sd	%eax, %xmm2, %xmm2	# D.18571, window_parameter, window_parameter
	movl	$1, %eax	#,
	vmovapd	%xmm2, %xmm0	# window_parameter,
	vmovsd	%xmm2, -72(%rbp)	# window_parameter, %sfp
	call	fprintf	#
	jmp	.L771	#
	.p2align 4,,10
	.p2align 3
.L773:
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movl	$2, %r13d	#, window_function
	call	strtol	#
	vxorpd	%xmm5, %xmm5, %xmm5	# window_parameter
	movl	$.LC61, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	vcvtsi2sd	%eax, %xmm5, %xmm5	# D.18571, window_parameter, window_parameter
	movl	$1, %eax	#,
	vmovapd	%xmm5, %xmm0	# window_parameter,
	vmovsd	%xmm5, -72(%rbp)	# window_parameter, %sfp
	call	fprintf	#
	jmp	.L771	#
	.p2align 4,,10
	.p2align 3
.L772:
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC63, %edi	#,
	movq	stderr(%rip), %rcx	# stderr,
	call	fwrite	#
	movl	$1, %eax	#, D.18563
.L838:
	leaq	-48(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L776:
	.cfi_restore_state
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC62, %edi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %r14d	#, fft_ooura
	call	fwrite	#
	jmp	.L771	#
.L845:
	movl	$.LC65, %edi	#,
	movl	%ebx, -88(%rbp)	# fft_width, %sfp
	call	getenv	#
	movq	%rax, %r12	#, input
	testq	%rax, %rax	# input
	je	.L781	#,
	cmpb	$0, (%rax)	#, *input_39
	je	.L781	#,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %rdx	# input,
	movl	$.LC67, %esi	#,
	xorl	%eax, %eax	#
	call	fprintf	#
	movl	%ebx, %edx	# fft_width,
	movl	$.LC68, %esi	#,
	xorl	%eax, %eax	#
	movq	stderr(%rip), %rdi	# stderr,
	call	fprintf	#
	xorl	%ecx, %ecx	#
	movl	$1, %edx	#,
	movq	%r12, %rsi	# input,
	leaq	-56(%rbp), %rdi	#, tmp335
	call	snd_pcm_open	#
	testl	%eax, %eax	# err
	js	.L847	#,
	movq	-56(%rbp), %rdi	# handle,
	movl	$2, %ecx	#,
	pushq	%rax	#
	movl	$3, %edx	#,
	pushq	$500000	#
	xorl	%r9d, %r9d	#
	movl	%ebx, %r8d	# fft_width,
	movl	$10, %esi	#,
	call	snd_pcm_set_params	#
	popq	%rdx	#
	popq	%rcx	#
	testl	%eax, %eax	# err
	js	.L848	#,
	movq	-56(%rbp), %rax	# handle, D.18577
	movq	%rax, -104(%rbp)	# D.18577, %sfp
	testl	%r14d, %r14d	# fft_ooura
	je	.L785	#,
	cmpl	$2, %ebx	#, fft_width
	jle	.L786	#,
	movl	$2, %ebx	#, fft_width
	.p2align 4,,10
	.p2align 3
.L787:
	addl	%ebx, %ebx	# fft_width
	cmpl	-88(%rbp), %ebx	# %sfp, fft_width
	jl	.L787	#,
	movq	stderr(%rip), %rdi	# stderr,
	leal	(%rbx,%rbx), %r12d	#, D.18563
	movl	%ebx, %edx	# fft_width,
	xorl	%eax, %eax	#
	movslq	%r12d, %r12	# D.18563, D.18569
	movl	$.LC71, %esi	#,
	salq	$2, %r12	#, D.18569
	call	fprintf	#
	movq	%r12, %rdi	# D.18569,
	call	malloc	#
	leaq	16(%r12), %rdi	#, D.18569
	movq	%rax, -96(%rbp)	#, %sfp
	call	fftw_malloc	#
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC72, %edi	#,
	movq	%rax, %r12	#, wav
	call	fwrite	#
.L818:
	vmovsd	.LC0(%rip), %xmm0	#, tmp261
	vxorpd	%xmm1, %xmm1, %xmm1	# D.18568
	xorl	%r15d, %r15d	# ivtmp.1915
	vcvtsi2sd	-88(%rbp), %xmm1, %xmm1	# %sfp, D.18568, D.18568
	vdivsd	%xmm1, %xmm0, %xmm0	# D.18568, tmp261, D.18568
	vmulsd	.LC73(%rip), %xmm0, %xmm3	#, D.18568, D.18568
	vmovsd	%xmm3, -80(%rbp)	# D.18568, %sfp
	.p2align 4,,10
	.p2align 3
.L790:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18568
	vcvtsi2sd	%r15d, %xmm0, %xmm0	# ivtmp.1915, D.18568, D.18568
	vmulsd	-80(%rbp), %xmm0, %xmm0	# %sfp, D.18568, D.18568
	call	sin	#
	vmovsd	%xmm0, (%r12,%r15,8)	# D.18568, MEM[base: wav_267, index: ivtmp.1915_354, step: 8, offset: 0B]
	addq	$1, %r15	#, ivtmp.1915
	cmpl	%r15d, %ebx	# ivtmp.1915, fft_width
	jg	.L790	#,
.L789:
	cmpl	$1, %r13d	#, window_function
	je	.L792	#,
	cmpl	$2, %r13d	#, window_function
	jne	.L849	#,
	vmovsd	-72(%rbp), %xmm0	# %sfp,
	movl	%ebx, %esi	# fft_width,
	movq	%r12, %rdi	# wav,
	call	window_kaiser	#
.L794:
	movl	%ebx, %esi	# fft_width,
	movq	%r12, %rdi	# wav,
	testl	%r14d, %r14d	# fft_ooura
	je	.L795	#,
	call	execute_ooura_fft	#
	vmovsd	%xmm0, -80(%rbp)	#, %sfp
.L796:
	vmovsd	-80(%rbp), %xmm0	# %sfp,
	movl	$.LC74, %esi	#,
	movl	$1, %eax	#,
	movq	stderr(%rip), %rdi	# stderr,
	call	fprintf	#
	movq	-96(%rbp), %rsi	# %sfp,
	movslq	%ebx, %rdx	# fft_width, D.18569
	movq	-104(%rbp), %rdi	# %sfp,
	call	snd_pcm_readi	#
	movq	%rax, %r8	#, D.18571
	cmpl	%ebx, %r8d	# fft_width, D.18571
	jne	.L797	#,
	testl	%ebx, %ebx	# fft_width
	jle	.L807	#,
	leal	-9(%r8), %ecx	#, D.18574
	leal	-1(%r8), %esi	#, D.18574
	shrl	$3, %ecx	#, D.18574
	addl	$1, %ecx	#, bnd.1862
	leal	0(,%rcx,8), %edx	#, ratio_mult_vf.1863
	cmpl	$7, %esi	#, D.18574
	jbe	.L819	#,
	vmovapd	.LC77(%rip), %ymm3	#, tmp329
	xorl	%esi, %esi	# ivtmp.1907
	xorl	%edi, %edi	# ivtmp.1903
.L803:
	movq	-96(%rbp), %rbx	# %sfp, pcm
	addl	$1, %edi	#, ivtmp.1903
	vmovdqu	4(%rbx,%rsi), %xmm1	# MEM[base: pcm_266, index: ivtmp.1907_376, offset: 4B], MEM[base: pcm_266, index: ivtmp.1907_376, offset: 4B]
	vinsertf128	$0x1, 20(%rbx,%rsi), %ymm1, %ymm0	# MEM[base: pcm_266, index: ivtmp.1907_376, offset: 4B], MEM[base: pcm_266, index: ivtmp.1907_376, offset: 4B], tmp271
	vmovdqu	36(%rbx,%rsi), %xmm1	# MEM[base: pcm_266, index: ivtmp.1907_376, offset: 36B], MEM[base: pcm_266, index: ivtmp.1907_376, offset: 36B]
	vinsertf128	$0x1, 52(%rbx,%rsi), %ymm1, %ymm1	# MEM[base: pcm_266, index: ivtmp.1907_376, offset: 36B], MEM[base: pcm_266, index: ivtmp.1907_376, offset: 36B], tmp274
	vshufps	$136, %ymm1, %ymm0, %ymm1	#, tmp274, tmp271, tmp277
	vperm2f128	$3, %ymm1, %ymm1, %ymm2	#, tmp277, tmp277, tmp278
	vshufps	$68, %ymm2, %ymm1, %ymm0	#, tmp278, tmp277, tmp279
	vshufps	$238, %ymm2, %ymm1, %ymm2	#, tmp278, tmp277, tmp278
	vinsertf128	$1, %xmm2, %ymm0, %ymm0	# tmp278, tmp279, tmp276
	vcvtdq2pd	%xmm0, %ymm1	# tmp276, vect__98.1869
	vextractf128	$0x1, %ymm0, %xmm0	# tmp276, tmp284
	vmulpd	%ymm3, %ymm1, %ymm1	# tmp329, vect__98.1869, vect__99.1870
	vcvtdq2pd	%xmm0, %ymm0	# tmp284, vect__98.1869
	vmovups	%xmm1, (%r12,%rsi)	#, MEM[base: wav_268, index: ivtmp.1907_376, offset: 0B]
	vmulpd	%ymm3, %ymm0, %ymm0	# tmp329, vect__98.1869, vect__99.1870
	vextractf128	$0x1, %ymm1, 16(%r12,%rsi)	# vect__99.1870, MEM[base: wav_268, index: ivtmp.1907_376, offset: 0B]
	vmovups	%xmm0, 32(%r12,%rsi)	#, MEM[base: wav_268, index: ivtmp.1907_376, offset: 32B]
	vextractf128	$0x1, %ymm0, 48(%r12,%rsi)	# vect__99.1870, MEM[base: wav_268, index: ivtmp.1907_376, offset: 32B]
	addq	$64, %rsi	#, ivtmp.1907
	cmpl	%ecx, %edi	# bnd.1862, ivtmp.1903
	jb	.L803	#,
	cmpl	%edx, %r8d	# i, D.18571
	je	.L850	#,
	vzeroupper
.L802:
	movq	-96(%rbp), %rcx	# %sfp, pcm
	leal	(%rdx,%rdx), %edi	#, D.18563
	vmovsd	.LC78(%rip), %xmm1	#, tmp330
	movslq	%edi, %rdi	# D.18563, D.18572
	salq	$2, %rdi	#, D.18572
	leaq	(%rcx,%rdi), %r9	#, D.18573
	addq	%r12, %rdi	# wav, D.18567
	xorl	%ecx, %ecx	# ivtmp.1896
	.p2align 4,,10
	.p2align 3
.L805:
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18568
	vcvtsi2sd	4(%r9,%rcx,8), %xmm0, %xmm0	# MEM[base: _92, index: ivtmp.1896_147, step: 8, offset: 4B], D.18568, D.18568
	vmulsd	%xmm1, %xmm0, %xmm0	# tmp330, D.18568, D.18568
	vmovsd	%xmm0, (%rdi,%rcx,8)	# D.18568, MEM[base: _95, index: ivtmp.1896_147, step: 8, offset: 0B]
	addq	$1, %rcx	#, ivtmp.1896
	leal	(%rdx,%rcx), %esi	#, D.18574
	cmpl	%esi, %eax	# D.18574, err
	jg	.L805	#,
.L807:
	cmpl	$1, %r13d	#, window_function
	je	.L800	#,
	cmpl	$2, %r13d	#, window_function
	jne	.L851	#,
	vmovsd	-72(%rbp), %xmm0	# %sfp,
	movl	%r8d, %esi	# D.18571,
	movq	%r12, %rdi	# wav,
	movl	%eax, -112(%rbp)	# err, %sfp
	movq	%r8, -72(%rbp)	# D.18571, %sfp
	call	window_kaiser	#
	movq	-72(%rbp), %r8	# %sfp, D.18571
	movl	-112(%rbp), %eax	# %sfp, err
.L808:
	movl	%eax, -112(%rbp)	# err, %sfp
	movl	%r8d, %esi	# D.18571,
	movq	%r12, %rdi	# wav,
	movq	%r8, -72(%rbp)	# D.18571, %sfp
	testl	%r14d, %r14d	# fft_ooura
	je	.L809	#,
	call	execute_ooura_fft	#
	movq	-72(%rbp), %r8	# %sfp, D.18571
	movl	-112(%rbp), %eax	# %sfp, err
.L810:
	movl	$2, %ecx	#, tmp296
	cltd
	vxorpd	%xmm1, %xmm1, %xmm1	# D.18568
	vxorpd	%xmm0, %xmm0, %xmm0	# D.18568
	idivl	%ecx	# tmp296
	movl	$.LC79, %edi	#,
	vcvtsi2sd	-88(%rbp), %xmm1, %xmm1	# %sfp, D.18568, D.18568
	vcvtsi2sd	%r8d, %xmm0, %xmm0	# D.18571, D.18568, D.18568
	vdivsd	%xmm0, %xmm1, %xmm7	# D.18568, D.18568, D.18568
	leal	1(%rax), %ebx	#, fn
	vmovsd	%xmm7, -72(%rbp)	# D.18568, %sfp
	call	puts	#
	movl	$.LC80, %edi	#,
	call	puts	#
	movl	$.LC81, %edi	#,
	call	puts	#
	movl	$.LC82, %edi	#,
	call	puts	#
	movl	$.LC83, %edi	#,
	call	puts	#
	movl	$.LC84, %edi	#,
	call	puts	#
	movl	$.LC85, %edi	#,
	call	puts	#
	movl	$.LC86, %edi	#,
	call	puts	#
	cmpl	$10, %ebx	#, fn
	jle	.L820	#,
	leaq	80(%r12), %rdx	#, ivtmp.1892
	movl	$1, %r14d	#, f0
	movl	$10, %eax	#, f0
	vxorpd	%xmm0, %xmm0, %xmm0	# peak
	.p2align 4,,10
	.p2align 3
.L812:
	vmovsd	(%rdx), %xmm1	# MEM[base: _161, offset: 0B], peak
	vcomisd	%xmm0, %xmm1	# peak, peak
	vmaxsd	%xmm1, %xmm0, %xmm0	# peak, peak, peak
	cmova	%eax, %r14d	# f0,, f0
	addl	$1, %eax	#, f0
	addq	$8, %rdx	#, ivtmp.1892
	cmpl	%ebx, %eax	# fn, f0
	jne	.L812	#,
.L811:
	movl	%r14d, %edx	# f0,
	xorl	%eax, %eax	#
	movl	$.LC87, %esi	#,
	vmovsd	%xmm0, -88(%rbp)	# peak, %sfp
	movq	stderr(%rip), %rdi	# stderr,
	call	fprintf	#
	leal	(%r14,%r14), %edx	#, i
	vmovsd	-88(%rbp), %xmm0	# %sfp, peak
	cmpl	%edx, %ebx	# i, fn
	jle	.L821	#,
	movslq	%r14d, %rsi	# f0, D.18569
	movslq	%edx, %rax	# i, D.18569
	vxorpd	%xmm2, %xmm2, %xmm2	# harmonics
	vmovsd	.LC0(%rip), %xmm3	#, tmp298
	leaq	0(,%rsi,8), %rcx	#, D.18569
	vdivsd	-80(%rbp), %xmm3, %xmm3	# %sfp, tmp298, D.18568
	leaq	(%r12,%rax,8), %rax	#, ivtmp.1884
	.p2align 4,,10
	.p2align 3
.L814:
	vmovsd	-8(%rax), %xmm6	# MEM[base: _70, offset: -8B], tmp347
	addl	%r14d, %edx	# f0, i
	vmaxsd	(%rax), %xmm6, %xmm1	# MEM[base: _70, offset: 0B], tmp347, D.18568
	vmaxsd	8(%rax), %xmm1, %xmm1	# MEM[base: _70, offset: 8B], D.18568, max
	addq	%rcx, %rax	# D.18569, ivtmp.1884
	vmulsd	%xmm3, %xmm1, %xmm1	# D.18568, max, D.18568
	vmulsd	%xmm1, %xmm1, %xmm1	# D.18568, D.18568, D.18568
	vaddsd	%xmm1, %xmm2, %xmm2	# D.18568, harmonics, harmonics
	cmpl	%edx, %ebx	# i, fn
	jg	.L814	#,
.L813:
	vmovsd	-80(%rbp), %xmm6	# %sfp, scale_mag
	vsqrtsd	%xmm2, %xmm1, %xmm1	# harmonics, tmp304
	vmulsd	.LC88(%rip), %xmm1, %xmm1	#, tmp304, D.18568
	vdivsd	%xmm6, %xmm0, %xmm0	# scale_mag, peak, D.18568
	vdivsd	(%r12,%rsi,8), %xmm1, %xmm1	# *_179, D.18568, D.18568
	vmulsd	%xmm6, %xmm1, %xmm3	# scale_mag, D.18568, thd
	vmovq	%xmm3, %r13	# thd, thd
	call	__log10_finite	#
	vxorpd	%xmm3, %xmm3, %xmm3	# D.18568
	movl	$.LC90, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	vmulsd	.LC89(%rip), %xmm0, %xmm4	#, D.18568, D.18568
	movl	$3, %eax	#,
	vmovq	%r13, %xmm0	# thd,
	vcvtsi2sd	%r14d, %xmm3, %xmm3	# f0, D.18568, D.18568
	vmulsd	-72(%rbp), %xmm3, %xmm3	# %sfp, D.18568, D.18568
	vmovapd	%xmm4, %xmm2	# D.18568,
	vmovsd	%xmm4, -112(%rbp)	# D.18568, %sfp
	vmovapd	%xmm3, %xmm1	# D.18568,
	vmovsd	%xmm3, -88(%rbp)	# D.18568, %sfp
	call	fprintf	#
	vmovsd	-112(%rbp), %xmm4	# %sfp, D.18568
	movl	$.LC91, %edi	#,
	vmovq	%r13, %xmm0	# thd,
	vmovsd	-88(%rbp), %xmm3	# %sfp, D.18568
	movl	$3, %eax	#,
	vmovapd	%xmm4, %xmm2	# D.18568,
	vmovapd	%xmm3, %xmm1	# D.18568,
	call	printf	#
	movl	$.LC92, %edi	#,
	call	puts	#
	testl	%ebx, %ebx	# fn
	jle	.L817	#,
	vmovsd	.LC0(%rip), %xmm0	#, tmp312
	xorl	%r14d, %r14d	# ivtmp.1875
	vdivsd	-80(%rbp), %xmm0, %xmm3	# %sfp, tmp312, D.18568
	vmovq	%xmm3, %r13	# D.18568, D.18568
	.p2align 4,,10
	.p2align 3
.L816:
	vmovq	%r13, %xmm7	# D.18568, D.18568
	vmulsd	(%r12,%r14,8), %xmm7, %xmm0	# MEM[base: wav_268, index: ivtmp.1875_229, step: 8, offset: 0B], D.18568, D.18568
	call	__log10_finite	#
	vxorpd	%xmm1, %xmm1, %xmm1	# D.18568
	movl	$.LC94, %edi	#,
	movl	$1, %eax	#,
	vcvtsi2sd	%r14d, %xmm1, %xmm1	# ivtmp.1875, D.18568, D.18568
	addq	$1, %r14	#, ivtmp.1875
	vmulsd	-72(%rbp), %xmm1, %xmm1	# %sfp, D.18568, D.18568
	vmulsd	.LC89(%rip), %xmm0, %xmm0	#, D.18568, dB
	vcvttsd2si	%xmm1, %esi	# D.18568, D.18563
	call	printf	#
	cmpl	%r14d, %ebx	# ivtmp.1875, fn
	jg	.L816	#,
.L817:
	movl	$.LC93, %edi	#,
	call	puts	#
	movq	-96(%rbp), %rdi	# %sfp,
	call	free	#
	movq	%r12, %rdi	# wav,
	call	fftw_free	#
	movq	-104(%rbp), %rdi	# %sfp,
	call	snd_pcm_close	#
	xorl	%eax, %eax	# D.18563
	jmp	.L838	#
.L785:
	movq	stderr(%rip), %rdi	# stderr,
	leal	(%rbx,%rbx), %r12d	#, D.18563
	movl	%ebx, %edx	# fft_width,
	xorl	%eax, %eax	#
	movslq	%r12d, %r12	# D.18563, D.18569
	movl	$.LC71, %esi	#,
	salq	$2, %r12	#, D.18569
	call	fprintf	#
	movq	%r12, %rdi	# D.18569,
	call	malloc	#
	leaq	16(%r12), %rdi	#, D.18569
	movq	%rax, -96(%rbp)	#, %sfp
	call	fftw_malloc	#
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC72, %edi	#,
	movq	%rax, %r12	#, wav
	call	fwrite	#
	testl	%ebx, %ebx	# fft_width
	jg	.L818	#,
	jmp	.L789	#
.L795:
	call	execute_fftw	#
	vmovsd	%xmm0, -80(%rbp)	#, %sfp
	jmp	.L796	#
.L809:
	call	execute_fftw	#
	movl	-112(%rbp), %eax	# %sfp, err
	movq	-72(%rbp), %r8	# %sfp, D.18571
	jmp	.L810	#
.L851:
	movl	%r8d, %esi	# D.18571,
	movq	%r12, %rdi	# wav,
	movl	%eax, -112(%rbp)	# err, %sfp
	movq	%r8, -72(%rbp)	# D.18571, %sfp
	call	window_hanning	#
	movl	-112(%rbp), %eax	# %sfp, err
	movq	-72(%rbp), %r8	# %sfp, D.18571
	jmp	.L808	#
.L792:
	vmovsd	-72(%rbp), %xmm0	# %sfp,
	movl	%ebx, %esi	# fft_width,
	movq	%r12, %rdi	# wav,
	call	window_blackman_harris	#
	jmp	.L794	#
.L849:
	movl	%ebx, %esi	# fft_width,
	movq	%r12, %rdi	# wav,
	call	window_hanning	#
	jmp	.L794	#
.L800:
	vmovsd	-72(%rbp), %xmm0	# %sfp,
	movl	%r8d, %esi	# D.18571,
	movq	%r12, %rdi	# wav,
	movl	%eax, -112(%rbp)	# err, %sfp
	movq	%r8, -72(%rbp)	# D.18571, %sfp
	call	window_blackman_harris	#
	movq	-72(%rbp), %r8	# %sfp, D.18571
	movl	-112(%rbp), %eax	# %sfp, err
	jmp	.L808	#
.L819:
	xorl	%edx, %edx	# i
	jmp	.L802	#
.L850:
	vzeroupper
	jmp	.L807	#
.L781:
	movl	$115, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC66, %edi	#,
	movq	stderr(%rip), %rcx	# stderr,
	call	fwrite	#
	orl	$-1, %eax	#, D.18563
	jmp	.L838	#
.L821:
	vxorpd	%xmm2, %xmm2, %xmm2	# harmonics
	movslq	%r14d, %rsi	# f0, D.18569
	jmp	.L813	#
.L820:
	movl	$1, %r14d	#, f0
	vxorpd	%xmm0, %xmm0, %xmm0	# peak
	jmp	.L811	#
.L786:
	movq	stderr(%rip), %rdi	# stderr,
	movl	$2, %edx	#,
	movl	$.LC71, %esi	#,
	xorl	%eax, %eax	#
	movl	$2, %ebx	#, fft_width
	call	fprintf	#
	movl	$16, %edi	#,
	call	malloc	#
	movl	$32, %edi	#,
	movq	%rax, -96(%rbp)	#, %sfp
	call	fftw_malloc	#
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC72, %edi	#,
	movq	%rax, %r12	#, wav
	call	fwrite	#
	jmp	.L818	#
.L848:
	movl	%eax, %edi	# err,
	call	snd_strerror	#
	movl	$.LC70, %esi	#,
	movq	%rax, %rdx	# D.18575,
.L840:
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	call	fprintf	#
	movl	$1, %edi	#,
	call	exit	#
.L797:
	movq	-104(%rbp), %rdi	# %sfp,
	movq	%r8, -72(%rbp)	# D.18571, %sfp
	call	snd_pcm_prepare	#
	movq	-72(%rbp), %r8	# %sfp, D.18571
	movl	$.LC75, %esi	#,
	movl	%ebx, %ecx	# fft_width,
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	movl	%r8d, %edx	# D.18571,
	call	fprintf	#
	movq	-72(%rbp), %r8	# %sfp, D.18571
	movl	%r8d, %edi	# D.18571,
	call	snd_strerror	#
	movl	$.LC76, %esi	#,
	movq	%rax, %rdx	# D.18575,
	jmp	.L840	#
.L847:
	movl	%eax, %edi	# err,
	call	snd_strerror	#
	movl	$.LC69, %esi	#,
	movq	%rax, %rdx	# D.18575,
	jmp	.L840	#
	.cfi_endproc
.LFE92:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE95:
	.section	.text.startup
.LHOTE95:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	1413754136
	.long	1075388923
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	1413754136
	.long	1076437499
	.align 8
.LC5:
	.long	2134057426
	.long	1077074300
	.align 8
.LC6:
	.long	2311723197
	.long	1069684086
	.align 8
.LC7:
	.long	3007164302
	.long	1071595556
	.align 8
.LC8:
	.long	270754738
	.long	1065872303
	.align 8
.LC9:
	.long	2405181686
	.long	1071052226
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	1413754136
	.long	1072243195
	.align 8
.LC17:
	.long	0
	.long	1075314688
	.align 8
.LC18:
	.long	0
	.long	1074266112
	.align 8
.LC52:
	.long	0
	.long	1073741824
	.align 8
.LC53:
	.long	0
	.long	1074790400
	.align 8
.LC54:
	.long	0
	.long	1138753536
	.align 8
.LC73:
	.long	1883935753
	.long	1085836079
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC77:
	.long	2097152
	.long	1040187392
	.long	2097152
	.long	1040187392
	.long	2097152
	.long	1040187392
	.long	2097152
	.long	1040187392
	.section	.rodata.cst8
	.align 8
.LC78:
	.long	2097152
	.long	1040187392
	.align 8
.LC88:
	.long	0
	.long	1079574528
	.align 8
.LC89:
	.long	0
	.long	1077149696
	.ident	"GCC: (GNU) 4.9.0 20140521 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
