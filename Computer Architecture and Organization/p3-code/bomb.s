
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000003000 <_init>:
    3000:	f3 0f 1e fa          	endbr64 
    3004:	48 83 ec 08          	sub    $0x8,%rsp
    3008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 7fe8 <__gmon_start__>
    300f:	48 85 c0             	test   %rax,%rax
    3012:	74 02                	je     3016 <_init+0x16>
    3014:	ff d0                	callq  *%rax
    3016:	48 83 c4 08          	add    $0x8,%rsp
    301a:	c3                   	retq   

Disassembly of section .plt:

0000000000003020 <.plt>:
    3020:	ff 35 c2 4e 00 00    	pushq  0x4ec2(%rip)        # 7ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
    3026:	f2 ff 25 c3 4e 00 00 	bnd jmpq *0x4ec3(%rip)        # 7ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    302d:	0f 1f 00             	nopl   (%rax)
    3030:	f3 0f 1e fa          	endbr64 
    3034:	68 00 00 00 00       	pushq  $0x0
    3039:	f2 e9 e1 ff ff ff    	bnd jmpq 3020 <.plt>
    303f:	90                   	nop
    3040:	f3 0f 1e fa          	endbr64 
    3044:	68 01 00 00 00       	pushq  $0x1
    3049:	f2 e9 d1 ff ff ff    	bnd jmpq 3020 <.plt>
    304f:	90                   	nop
    3050:	f3 0f 1e fa          	endbr64 
    3054:	68 02 00 00 00       	pushq  $0x2
    3059:	f2 e9 c1 ff ff ff    	bnd jmpq 3020 <.plt>
    305f:	90                   	nop
    3060:	f3 0f 1e fa          	endbr64 
    3064:	68 03 00 00 00       	pushq  $0x3
    3069:	f2 e9 b1 ff ff ff    	bnd jmpq 3020 <.plt>
    306f:	90                   	nop
    3070:	f3 0f 1e fa          	endbr64 
    3074:	68 04 00 00 00       	pushq  $0x4
    3079:	f2 e9 a1 ff ff ff    	bnd jmpq 3020 <.plt>
    307f:	90                   	nop
    3080:	f3 0f 1e fa          	endbr64 
    3084:	68 05 00 00 00       	pushq  $0x5
    3089:	f2 e9 91 ff ff ff    	bnd jmpq 3020 <.plt>
    308f:	90                   	nop
    3090:	f3 0f 1e fa          	endbr64 
    3094:	68 06 00 00 00       	pushq  $0x6
    3099:	f2 e9 81 ff ff ff    	bnd jmpq 3020 <.plt>
    309f:	90                   	nop
    30a0:	f3 0f 1e fa          	endbr64 
    30a4:	68 07 00 00 00       	pushq  $0x7
    30a9:	f2 e9 71 ff ff ff    	bnd jmpq 3020 <.plt>
    30af:	90                   	nop
    30b0:	f3 0f 1e fa          	endbr64 
    30b4:	68 08 00 00 00       	pushq  $0x8
    30b9:	f2 e9 61 ff ff ff    	bnd jmpq 3020 <.plt>
    30bf:	90                   	nop
    30c0:	f3 0f 1e fa          	endbr64 
    30c4:	68 09 00 00 00       	pushq  $0x9
    30c9:	f2 e9 51 ff ff ff    	bnd jmpq 3020 <.plt>
    30cf:	90                   	nop
    30d0:	f3 0f 1e fa          	endbr64 
    30d4:	68 0a 00 00 00       	pushq  $0xa
    30d9:	f2 e9 41 ff ff ff    	bnd jmpq 3020 <.plt>
    30df:	90                   	nop
    30e0:	f3 0f 1e fa          	endbr64 
    30e4:	68 0b 00 00 00       	pushq  $0xb
    30e9:	f2 e9 31 ff ff ff    	bnd jmpq 3020 <.plt>
    30ef:	90                   	nop
    30f0:	f3 0f 1e fa          	endbr64 
    30f4:	68 0c 00 00 00       	pushq  $0xc
    30f9:	f2 e9 21 ff ff ff    	bnd jmpq 3020 <.plt>
    30ff:	90                   	nop
    3100:	f3 0f 1e fa          	endbr64 
    3104:	68 0d 00 00 00       	pushq  $0xd
    3109:	f2 e9 11 ff ff ff    	bnd jmpq 3020 <.plt>
    310f:	90                   	nop
    3110:	f3 0f 1e fa          	endbr64 
    3114:	68 0e 00 00 00       	pushq  $0xe
    3119:	f2 e9 01 ff ff ff    	bnd jmpq 3020 <.plt>
    311f:	90                   	nop
    3120:	f3 0f 1e fa          	endbr64 
    3124:	68 0f 00 00 00       	pushq  $0xf
    3129:	f2 e9 f1 fe ff ff    	bnd jmpq 3020 <.plt>
    312f:	90                   	nop
    3130:	f3 0f 1e fa          	endbr64 
    3134:	68 10 00 00 00       	pushq  $0x10
    3139:	f2 e9 e1 fe ff ff    	bnd jmpq 3020 <.plt>
    313f:	90                   	nop
    3140:	f3 0f 1e fa          	endbr64 
    3144:	68 11 00 00 00       	pushq  $0x11
    3149:	f2 e9 d1 fe ff ff    	bnd jmpq 3020 <.plt>
    314f:	90                   	nop
    3150:	f3 0f 1e fa          	endbr64 
    3154:	68 12 00 00 00       	pushq  $0x12
    3159:	f2 e9 c1 fe ff ff    	bnd jmpq 3020 <.plt>
    315f:	90                   	nop
    3160:	f3 0f 1e fa          	endbr64 
    3164:	68 13 00 00 00       	pushq  $0x13
    3169:	f2 e9 b1 fe ff ff    	bnd jmpq 3020 <.plt>
    316f:	90                   	nop
    3170:	f3 0f 1e fa          	endbr64 
    3174:	68 14 00 00 00       	pushq  $0x14
    3179:	f2 e9 a1 fe ff ff    	bnd jmpq 3020 <.plt>
    317f:	90                   	nop
    3180:	f3 0f 1e fa          	endbr64 
    3184:	68 15 00 00 00       	pushq  $0x15
    3189:	f2 e9 91 fe ff ff    	bnd jmpq 3020 <.plt>
    318f:	90                   	nop
    3190:	f3 0f 1e fa          	endbr64 
    3194:	68 16 00 00 00       	pushq  $0x16
    3199:	f2 e9 81 fe ff ff    	bnd jmpq 3020 <.plt>
    319f:	90                   	nop
    31a0:	f3 0f 1e fa          	endbr64 
    31a4:	68 17 00 00 00       	pushq  $0x17
    31a9:	f2 e9 71 fe ff ff    	bnd jmpq 3020 <.plt>
    31af:	90                   	nop
    31b0:	f3 0f 1e fa          	endbr64 
    31b4:	68 18 00 00 00       	pushq  $0x18
    31b9:	f2 e9 61 fe ff ff    	bnd jmpq 3020 <.plt>
    31bf:	90                   	nop
    31c0:	f3 0f 1e fa          	endbr64 
    31c4:	68 19 00 00 00       	pushq  $0x19
    31c9:	f2 e9 51 fe ff ff    	bnd jmpq 3020 <.plt>
    31cf:	90                   	nop
    31d0:	f3 0f 1e fa          	endbr64 
    31d4:	68 1a 00 00 00       	pushq  $0x1a
    31d9:	f2 e9 41 fe ff ff    	bnd jmpq 3020 <.plt>
    31df:	90                   	nop
    31e0:	f3 0f 1e fa          	endbr64 
    31e4:	68 1b 00 00 00       	pushq  $0x1b
    31e9:	f2 e9 31 fe ff ff    	bnd jmpq 3020 <.plt>
    31ef:	90                   	nop

Disassembly of section .plt.got:

00000000000031f0 <__cxa_finalize@plt>:
    31f0:	f3 0f 1e fa          	endbr64 
    31f4:	f2 ff 25 fd 4d 00 00 	bnd jmpq *0x4dfd(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    31fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000003200 <getenv@plt>:
    3200:	f3 0f 1e fa          	endbr64 
    3204:	f2 ff 25 ed 4c 00 00 	bnd jmpq *0x4ced(%rip)        # 7ef8 <getenv@GLIBC_2.2.5>
    320b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003210 <__snprintf_chk@plt>:
    3210:	f3 0f 1e fa          	endbr64 
    3214:	f2 ff 25 e5 4c 00 00 	bnd jmpq *0x4ce5(%rip)        # 7f00 <__snprintf_chk@GLIBC_2.3.4>
    321b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003220 <strcasecmp@plt>:
    3220:	f3 0f 1e fa          	endbr64 
    3224:	f2 ff 25 dd 4c 00 00 	bnd jmpq *0x4cdd(%rip)        # 7f08 <strcasecmp@GLIBC_2.2.5>
    322b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003230 <__errno_location@plt>:
    3230:	f3 0f 1e fa          	endbr64 
    3234:	f2 ff 25 d5 4c 00 00 	bnd jmpq *0x4cd5(%rip)        # 7f10 <__errno_location@GLIBC_2.2.5>
    323b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003240 <strcpy@plt>:
    3240:	f3 0f 1e fa          	endbr64 
    3244:	f2 ff 25 cd 4c 00 00 	bnd jmpq *0x4ccd(%rip)        # 7f18 <strcpy@GLIBC_2.2.5>
    324b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003250 <puts@plt>:
    3250:	f3 0f 1e fa          	endbr64 
    3254:	f2 ff 25 c5 4c 00 00 	bnd jmpq *0x4cc5(%rip)        # 7f20 <puts@GLIBC_2.2.5>
    325b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003260 <write@plt>:
    3260:	f3 0f 1e fa          	endbr64 
    3264:	f2 ff 25 bd 4c 00 00 	bnd jmpq *0x4cbd(%rip)        # 7f28 <write@GLIBC_2.2.5>
    326b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003270 <__stack_chk_fail@plt>:
    3270:	f3 0f 1e fa          	endbr64 
    3274:	f2 ff 25 b5 4c 00 00 	bnd jmpq *0x4cb5(%rip)        # 7f30 <__stack_chk_fail@GLIBC_2.4>
    327b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003280 <alarm@plt>:
    3280:	f3 0f 1e fa          	endbr64 
    3284:	f2 ff 25 ad 4c 00 00 	bnd jmpq *0x4cad(%rip)        # 7f38 <alarm@GLIBC_2.2.5>
    328b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003290 <close@plt>:
    3290:	f3 0f 1e fa          	endbr64 
    3294:	f2 ff 25 a5 4c 00 00 	bnd jmpq *0x4ca5(%rip)        # 7f40 <close@GLIBC_2.2.5>
    329b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032a0 <read@plt>:
    32a0:	f3 0f 1e fa          	endbr64 
    32a4:	f2 ff 25 9d 4c 00 00 	bnd jmpq *0x4c9d(%rip)        # 7f48 <read@GLIBC_2.2.5>
    32ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032b0 <fgets@plt>:
    32b0:	f3 0f 1e fa          	endbr64 
    32b4:	f2 ff 25 95 4c 00 00 	bnd jmpq *0x4c95(%rip)        # 7f50 <fgets@GLIBC_2.2.5>
    32bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032c0 <signal@plt>:
    32c0:	f3 0f 1e fa          	endbr64 
    32c4:	f2 ff 25 8d 4c 00 00 	bnd jmpq *0x4c8d(%rip)        # 7f58 <signal@GLIBC_2.2.5>
    32cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032d0 <gethostbyname@plt>:
    32d0:	f3 0f 1e fa          	endbr64 
    32d4:	f2 ff 25 85 4c 00 00 	bnd jmpq *0x4c85(%rip)        # 7f60 <gethostbyname@GLIBC_2.2.5>
    32db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032e0 <__memmove_chk@plt>:
    32e0:	f3 0f 1e fa          	endbr64 
    32e4:	f2 ff 25 7d 4c 00 00 	bnd jmpq *0x4c7d(%rip)        # 7f68 <__memmove_chk@GLIBC_2.3.4>
    32eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032f0 <strtol@plt>:
    32f0:	f3 0f 1e fa          	endbr64 
    32f4:	f2 ff 25 75 4c 00 00 	bnd jmpq *0x4c75(%rip)        # 7f70 <strtol@GLIBC_2.2.5>
    32fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003300 <fflush@plt>:
    3300:	f3 0f 1e fa          	endbr64 
    3304:	f2 ff 25 6d 4c 00 00 	bnd jmpq *0x4c6d(%rip)        # 7f78 <fflush@GLIBC_2.2.5>
    330b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003310 <__isoc99_sscanf@plt>:
    3310:	f3 0f 1e fa          	endbr64 
    3314:	f2 ff 25 65 4c 00 00 	bnd jmpq *0x4c65(%rip)        # 7f80 <__isoc99_sscanf@GLIBC_2.7>
    331b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003320 <__printf_chk@plt>:
    3320:	f3 0f 1e fa          	endbr64 
    3324:	f2 ff 25 5d 4c 00 00 	bnd jmpq *0x4c5d(%rip)        # 7f88 <__printf_chk@GLIBC_2.3.4>
    332b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003330 <fopen@plt>:
    3330:	f3 0f 1e fa          	endbr64 
    3334:	f2 ff 25 55 4c 00 00 	bnd jmpq *0x4c55(%rip)        # 7f90 <fopen@GLIBC_2.2.5>
    333b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003340 <gethostname@plt>:
    3340:	f3 0f 1e fa          	endbr64 
    3344:	f2 ff 25 4d 4c 00 00 	bnd jmpq *0x4c4d(%rip)        # 7f98 <gethostname@GLIBC_2.2.5>
    334b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003350 <exit@plt>:
    3350:	f3 0f 1e fa          	endbr64 
    3354:	f2 ff 25 45 4c 00 00 	bnd jmpq *0x4c45(%rip)        # 7fa0 <exit@GLIBC_2.2.5>
    335b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003360 <connect@plt>:
    3360:	f3 0f 1e fa          	endbr64 
    3364:	f2 ff 25 3d 4c 00 00 	bnd jmpq *0x4c3d(%rip)        # 7fa8 <connect@GLIBC_2.2.5>
    336b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003370 <__fprintf_chk@plt>:
    3370:	f3 0f 1e fa          	endbr64 
    3374:	f2 ff 25 35 4c 00 00 	bnd jmpq *0x4c35(%rip)        # 7fb0 <__fprintf_chk@GLIBC_2.3.4>
    337b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003380 <sleep@plt>:
    3380:	f3 0f 1e fa          	endbr64 
    3384:	f2 ff 25 2d 4c 00 00 	bnd jmpq *0x4c2d(%rip)        # 7fb8 <sleep@GLIBC_2.2.5>
    338b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003390 <__ctype_b_loc@plt>:
    3390:	f3 0f 1e fa          	endbr64 
    3394:	f2 ff 25 25 4c 00 00 	bnd jmpq *0x4c25(%rip)        # 7fc0 <__ctype_b_loc@GLIBC_2.3>
    339b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033a0 <__sprintf_chk@plt>:
    33a0:	f3 0f 1e fa          	endbr64 
    33a4:	f2 ff 25 1d 4c 00 00 	bnd jmpq *0x4c1d(%rip)        # 7fc8 <__sprintf_chk@GLIBC_2.3.4>
    33ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033b0 <socket@plt>:
    33b0:	f3 0f 1e fa          	endbr64 
    33b4:	f2 ff 25 15 4c 00 00 	bnd jmpq *0x4c15(%rip)        # 7fd0 <socket@GLIBC_2.2.5>
    33bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000033c0 <_start>:
    33c0:	f3 0f 1e fa          	endbr64 
    33c4:	31 ed                	xor    %ebp,%ebp
    33c6:	49 89 d1             	mov    %rdx,%r9
    33c9:	5e                   	pop    %rsi
    33ca:	48 89 e2             	mov    %rsp,%rdx
    33cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    33d1:	50                   	push   %rax
    33d2:	54                   	push   %rsp
    33d3:	4c 8d 05 06 1b 00 00 	lea    0x1b06(%rip),%r8        # 4ee0 <__libc_csu_fini>
    33da:	48 8d 0d 8f 1a 00 00 	lea    0x1a8f(%rip),%rcx        # 4e70 <__libc_csu_init>
    33e1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 34a9 <main>
    33e8:	ff 15 f2 4b 00 00    	callq  *0x4bf2(%rip)        # 7fe0 <__libc_start_main@GLIBC_2.2.5>
    33ee:	f4                   	hlt    
    33ef:	90                   	nop

00000000000033f0 <deregister_tm_clones>:
    33f0:	48 8d 3d 89 56 00 00 	lea    0x5689(%rip),%rdi        # 8a80 <stdout@@GLIBC_2.2.5>
    33f7:	48 8d 05 82 56 00 00 	lea    0x5682(%rip),%rax        # 8a80 <stdout@@GLIBC_2.2.5>
    33fe:	48 39 f8             	cmp    %rdi,%rax
    3401:	74 15                	je     3418 <deregister_tm_clones+0x28>
    3403:	48 8b 05 ce 4b 00 00 	mov    0x4bce(%rip),%rax        # 7fd8 <_ITM_deregisterTMCloneTable>
    340a:	48 85 c0             	test   %rax,%rax
    340d:	74 09                	je     3418 <deregister_tm_clones+0x28>
    340f:	ff e0                	jmpq   *%rax
    3411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3418:	c3                   	retq   
    3419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003420 <register_tm_clones>:
    3420:	48 8d 3d 59 56 00 00 	lea    0x5659(%rip),%rdi        # 8a80 <stdout@@GLIBC_2.2.5>
    3427:	48 8d 35 52 56 00 00 	lea    0x5652(%rip),%rsi        # 8a80 <stdout@@GLIBC_2.2.5>
    342e:	48 29 fe             	sub    %rdi,%rsi
    3431:	48 89 f0             	mov    %rsi,%rax
    3434:	48 c1 ee 3f          	shr    $0x3f,%rsi
    3438:	48 c1 f8 03          	sar    $0x3,%rax
    343c:	48 01 c6             	add    %rax,%rsi
    343f:	48 d1 fe             	sar    %rsi
    3442:	74 14                	je     3458 <register_tm_clones+0x38>
    3444:	48 8b 05 a5 4b 00 00 	mov    0x4ba5(%rip),%rax        # 7ff0 <_ITM_registerTMCloneTable>
    344b:	48 85 c0             	test   %rax,%rax
    344e:	74 08                	je     3458 <register_tm_clones+0x38>
    3450:	ff e0                	jmpq   *%rax
    3452:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3458:	c3                   	retq   
    3459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003460 <__do_global_dtors_aux>:
    3460:	f3 0f 1e fa          	endbr64 
    3464:	80 3d 3d 56 00 00 00 	cmpb   $0x0,0x563d(%rip)        # 8aa8 <completed.8060>
    346b:	75 2b                	jne    3498 <__do_global_dtors_aux+0x38>
    346d:	55                   	push   %rbp
    346e:	48 83 3d 82 4b 00 00 	cmpq   $0x0,0x4b82(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    3475:	00 
    3476:	48 89 e5             	mov    %rsp,%rbp
    3479:	74 0c                	je     3487 <__do_global_dtors_aux+0x27>
    347b:	48 8b 3d 86 4b 00 00 	mov    0x4b86(%rip),%rdi        # 8008 <__dso_handle>
    3482:	e8 69 fd ff ff       	callq  31f0 <__cxa_finalize@plt>
    3487:	e8 64 ff ff ff       	callq  33f0 <deregister_tm_clones>
    348c:	c6 05 15 56 00 00 01 	movb   $0x1,0x5615(%rip)        # 8aa8 <completed.8060>
    3493:	5d                   	pop    %rbp
    3494:	c3                   	retq   
    3495:	0f 1f 00             	nopl   (%rax)
    3498:	c3                   	retq   
    3499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000034a0 <frame_dummy>:
    34a0:	f3 0f 1e fa          	endbr64 
    34a4:	e9 77 ff ff ff       	jmpq   3420 <register_tm_clones>

00000000000034a9 <main>:
    34a9:	f3 0f 1e fa          	endbr64 
    34ad:	53                   	push   %rbx
    34ae:	83 ff 01             	cmp    $0x1,%edi
    34b1:	0f 84 f8 00 00 00    	je     35af <main+0x106>
    34b7:	48 89 f3             	mov    %rsi,%rbx
    34ba:	83 ff 02             	cmp    $0x2,%edi
    34bd:	0f 85 21 01 00 00    	jne    35e4 <main+0x13b>
    34c3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    34c7:	48 8d 35 36 1b 00 00 	lea    0x1b36(%rip),%rsi        # 5004 <_IO_stdin_used+0x4>
    34ce:	e8 5d fe ff ff       	callq  3330 <fopen@plt>
    34d3:	48 89 05 d6 55 00 00 	mov    %rax,0x55d6(%rip)        # 8ab0 <infile>
    34da:	48 85 c0             	test   %rax,%rax
    34dd:	0f 84 df 00 00 00    	je     35c2 <main+0x119>
    34e3:	e8 cc 06 00 00       	callq  3bb4 <initialize_bomb>
    34e8:	48 8d 3d 99 1b 00 00 	lea    0x1b99(%rip),%rdi        # 5088 <_IO_stdin_used+0x88>
    34ef:	e8 5c fd ff ff       	callq  3250 <puts@plt>
    34f4:	48 8d 3d cd 1b 00 00 	lea    0x1bcd(%rip),%rdi        # 50c8 <_IO_stdin_used+0xc8>
    34fb:	e8 50 fd ff ff       	callq  3250 <puts@plt>
    3500:	e8 20 0a 00 00       	callq  3f25 <read_line>
    3505:	48 89 c7             	mov    %rax,%rdi
    3508:	e8 fa 00 00 00       	callq  3607 <phase_1>
    350d:	e8 5b 0b 00 00       	callq  406d <phase_defused>
    3512:	48 8d 3d df 1b 00 00 	lea    0x1bdf(%rip),%rdi        # 50f8 <_IO_stdin_used+0xf8>
    3519:	e8 32 fd ff ff       	callq  3250 <puts@plt>
    351e:	e8 02 0a 00 00       	callq  3f25 <read_line>
    3523:	48 89 c7             	mov    %rax,%rdi
    3526:	e8 00 01 00 00       	callq  362b <phase_2>
    352b:	e8 3d 0b 00 00       	callq  406d <phase_defused>
    3530:	48 8d 3d 06 1b 00 00 	lea    0x1b06(%rip),%rdi        # 503d <_IO_stdin_used+0x3d>
    3537:	e8 14 fd ff ff       	callq  3250 <puts@plt>
    353c:	e8 e4 09 00 00       	callq  3f25 <read_line>
    3541:	48 89 c7             	mov    %rax,%rdi
    3544:	e8 50 01 00 00       	callq  3699 <phase_3>
    3549:	e8 1f 0b 00 00       	callq  406d <phase_defused>
    354e:	48 8d 3d 06 1b 00 00 	lea    0x1b06(%rip),%rdi        # 505b <_IO_stdin_used+0x5b>
    3555:	e8 f6 fc ff ff       	callq  3250 <puts@plt>
    355a:	e8 c6 09 00 00       	callq  3f25 <read_line>
    355f:	48 89 c7             	mov    %rax,%rdi
    3562:	e8 6a 02 00 00       	callq  37d1 <phase_4>
    3567:	e8 01 0b 00 00       	callq  406d <phase_defused>
    356c:	48 8d 3d b5 1b 00 00 	lea    0x1bb5(%rip),%rdi        # 5128 <_IO_stdin_used+0x128>
    3573:	e8 d8 fc ff ff       	callq  3250 <puts@plt>
    3578:	e8 a8 09 00 00       	callq  3f25 <read_line>
    357d:	48 89 c7             	mov    %rax,%rdi
    3580:	e8 c1 02 00 00       	callq  3846 <phase_5>
    3585:	e8 e3 0a 00 00       	callq  406d <phase_defused>
    358a:	48 8d 3d d9 1a 00 00 	lea    0x1ad9(%rip),%rdi        # 506a <_IO_stdin_used+0x6a>
    3591:	e8 ba fc ff ff       	callq  3250 <puts@plt>
    3596:	e8 8a 09 00 00       	callq  3f25 <read_line>
    359b:	48 89 c7             	mov    %rax,%rdi
    359e:	e8 3b 03 00 00       	callq  38de <phase_6>
    35a3:	e8 c5 0a 00 00       	callq  406d <phase_defused>
    35a8:	b8 00 00 00 00       	mov    $0x0,%eax
    35ad:	5b                   	pop    %rbx
    35ae:	c3                   	retq   
    35af:	48 8b 05 da 54 00 00 	mov    0x54da(%rip),%rax        # 8a90 <stdin@@GLIBC_2.2.5>
    35b6:	48 89 05 f3 54 00 00 	mov    %rax,0x54f3(%rip)        # 8ab0 <infile>
    35bd:	e9 21 ff ff ff       	jmpq   34e3 <main+0x3a>
    35c2:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    35c6:	48 8b 13             	mov    (%rbx),%rdx
    35c9:	48 8d 35 36 1a 00 00 	lea    0x1a36(%rip),%rsi        # 5006 <_IO_stdin_used+0x6>
    35d0:	bf 01 00 00 00       	mov    $0x1,%edi
    35d5:	e8 46 fd ff ff       	callq  3320 <__printf_chk@plt>
    35da:	bf 08 00 00 00       	mov    $0x8,%edi
    35df:	e8 6c fd ff ff       	callq  3350 <exit@plt>
    35e4:	48 8b 16             	mov    (%rsi),%rdx
    35e7:	48 8d 35 35 1a 00 00 	lea    0x1a35(%rip),%rsi        # 5023 <_IO_stdin_used+0x23>
    35ee:	bf 01 00 00 00       	mov    $0x1,%edi
    35f3:	b8 00 00 00 00       	mov    $0x0,%eax
    35f8:	e8 23 fd ff ff       	callq  3320 <__printf_chk@plt>
    35fd:	bf 08 00 00 00       	mov    $0x8,%edi
    3602:	e8 49 fd ff ff       	callq  3350 <exit@plt>

0000000000003607 <phase_1>:
    3607:	f3 0f 1e fa          	endbr64 
    360b:	48 83 ec 08          	sub    $0x8,%rsp
    360f:	48 8d 35 3a 1b 00 00 	lea    0x1b3a(%rip),%rsi        # 5150 <_IO_stdin_used+0x150>
    3616:	e8 39 05 00 00       	callq  3b54 <strings_not_equal>
    361b:	85 c0                	test   %eax,%eax
    361d:	75 05                	jne    3624 <phase_1+0x1d>
    361f:	48 83 c4 08          	add    $0x8,%rsp
    3623:	c3                   	retq   
    3624:	e8 75 08 00 00       	callq  3e9e <explode_bomb>
    3629:	eb f4                	jmp    361f <phase_1+0x18>

000000000000362b <phase_2>:
    362b:	f3 0f 1e fa          	endbr64 
    362f:	55                   	push   %rbp
    3630:	53                   	push   %rbx
    3631:	48 83 ec 28          	sub    $0x28,%rsp
    3635:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    363c:	00 00 
    363e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3643:	31 c0                	xor    %eax,%eax
    3645:	48 89 e6             	mov    %rsp,%rsi
    3648:	e8 93 08 00 00       	callq  3ee0 <read_six_numbers>
    364d:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    3651:	75 0a                	jne    365d <phase_2+0x32>
    3653:	48 89 e3             	mov    %rsp,%rbx
    3656:	48 8d 6c 24 14       	lea    0x14(%rsp),%rbp
    365b:	eb 15                	jmp    3672 <phase_2+0x47>
    365d:	e8 3c 08 00 00       	callq  3e9e <explode_bomb>
    3662:	eb ef                	jmp    3653 <phase_2+0x28>
    3664:	e8 35 08 00 00       	callq  3e9e <explode_bomb>
    3669:	48 83 c3 04          	add    $0x4,%rbx
    366d:	48 39 eb             	cmp    %rbp,%rbx
    3670:	74 0b                	je     367d <phase_2+0x52>
    3672:	8b 03                	mov    (%rbx),%eax
    3674:	01 c0                	add    %eax,%eax
    3676:	39 43 04             	cmp    %eax,0x4(%rbx)
    3679:	74 ee                	je     3669 <phase_2+0x3e>
    367b:	eb e7                	jmp    3664 <phase_2+0x39>
    367d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3682:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3689:	00 00 
    368b:	75 07                	jne    3694 <phase_2+0x69>
    368d:	48 83 c4 28          	add    $0x28,%rsp
    3691:	5b                   	pop    %rbx
    3692:	5d                   	pop    %rbp
    3693:	c3                   	retq   
    3694:	e8 d7 fb ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003699 <phase_3>:
    3699:	f3 0f 1e fa          	endbr64 
    369d:	48 83 ec 68          	sub    $0x68,%rsp
    36a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    36a8:	00 00 
    36aa:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    36af:	31 c0                	xor    %eax,%eax
    36b1:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    36b8:	00 
    36b9:	c7 44 24 14 04 00 00 	movl   $0x4,0x14(%rsp)
    36c0:	00 
    36c1:	c7 44 24 18 08 00 00 	movl   $0x8,0x18(%rsp)
    36c8:	00 
    36c9:	c7 44 24 1c 0c 00 00 	movl   $0xc,0x1c(%rsp)
    36d0:	00 
    36d1:	c7 44 24 20 10 00 00 	movl   $0x10,0x20(%rsp)
    36d8:	00 
    36d9:	c7 44 24 24 14 00 00 	movl   $0x14,0x24(%rsp)
    36e0:	00 
    36e1:	c7 44 24 28 18 00 00 	movl   $0x18,0x28(%rsp)
    36e8:	00 
    36e9:	c7 44 24 2c 1c 00 00 	movl   $0x1c,0x2c(%rsp)
    36f0:	00 
    36f1:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%rsp)
    36f8:	00 
    36f9:	c7 44 24 34 24 00 00 	movl   $0x24,0x34(%rsp)
    3700:	00 
    3701:	c7 44 24 38 28 00 00 	movl   $0x28,0x38(%rsp)
    3708:	00 
    3709:	c7 44 24 3c 2c 00 00 	movl   $0x2c,0x3c(%rsp)
    3710:	00 
    3711:	c7 44 24 40 30 00 00 	movl   $0x30,0x40(%rsp)
    3718:	00 
    3719:	c7 44 24 44 34 00 00 	movl   $0x34,0x44(%rsp)
    3720:	00 
    3721:	c7 44 24 48 38 00 00 	movl   $0x38,0x48(%rsp)
    3728:	00 
    3729:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    3730:	00 
    3731:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    3736:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    373b:	48 8d 35 82 1d 00 00 	lea    0x1d82(%rip),%rsi        # 54c4 <array.3475+0x304>
    3742:	e8 c9 fb ff ff       	callq  3310 <__isoc99_sscanf@plt>
    3747:	83 f8 01             	cmp    $0x1,%eax
    374a:	7e 30                	jle    377c <phase_3+0xe3>
    374c:	8b 44 24 08          	mov    0x8(%rsp),%eax
    3750:	83 e8 04             	sub    $0x4,%eax
    3753:	83 f8 0a             	cmp    $0xa,%eax
    3756:	77 2b                	ja     3783 <phase_3+0xea>
    3758:	48 63 44 24 08       	movslq 0x8(%rsp),%rax
    375d:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    3761:	39 74 84 10          	cmp    %esi,0x10(%rsp,%rax,4)
    3765:	75 23                	jne    378a <phase_3+0xf1>
    3767:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    376c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3773:	00 00 
    3775:	75 1a                	jne    3791 <phase_3+0xf8>
    3777:	48 83 c4 68          	add    $0x68,%rsp
    377b:	c3                   	retq   
    377c:	e8 1d 07 00 00       	callq  3e9e <explode_bomb>
    3781:	eb c9                	jmp    374c <phase_3+0xb3>
    3783:	e8 16 07 00 00       	callq  3e9e <explode_bomb>
    3788:	eb ce                	jmp    3758 <phase_3+0xbf>
    378a:	e8 0f 07 00 00       	callq  3e9e <explode_bomb>
    378f:	eb d6                	jmp    3767 <phase_3+0xce>
    3791:	e8 da fa ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003796 <func4>:
    3796:	f3 0f 1e fa          	endbr64 
    379a:	b8 00 00 00 00       	mov    $0x0,%eax
    379f:	85 ff                	test   %edi,%edi
    37a1:	7e 2d                	jle    37d0 <func4+0x3a>
    37a3:	41 54                	push   %r12
    37a5:	55                   	push   %rbp
    37a6:	53                   	push   %rbx
    37a7:	89 fb                	mov    %edi,%ebx
    37a9:	89 f5                	mov    %esi,%ebp
    37ab:	89 f0                	mov    %esi,%eax
    37ad:	83 ff 01             	cmp    $0x1,%edi
    37b0:	74 19                	je     37cb <func4+0x35>
    37b2:	8d 7f ff             	lea    -0x1(%rdi),%edi
    37b5:	e8 dc ff ff ff       	callq  3796 <func4>
    37ba:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d
    37be:	8d 7b fe             	lea    -0x2(%rbx),%edi
    37c1:	89 ee                	mov    %ebp,%esi
    37c3:	e8 ce ff ff ff       	callq  3796 <func4>
    37c8:	44 01 e0             	add    %r12d,%eax
    37cb:	5b                   	pop    %rbx
    37cc:	5d                   	pop    %rbp
    37cd:	41 5c                	pop    %r12
    37cf:	c3                   	retq   
    37d0:	c3                   	retq   

00000000000037d1 <phase_4>:
    37d1:	f3 0f 1e fa          	endbr64 
    37d5:	48 83 ec 18          	sub    $0x18,%rsp
    37d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    37e0:	00 00 
    37e2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    37e7:	31 c0                	xor    %eax,%eax
    37e9:	48 89 e1             	mov    %rsp,%rcx
    37ec:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    37f1:	48 8d 35 cc 1c 00 00 	lea    0x1ccc(%rip),%rsi        # 54c4 <array.3475+0x304>
    37f8:	e8 13 fb ff ff       	callq  3310 <__isoc99_sscanf@plt>
    37fd:	83 f8 02             	cmp    $0x2,%eax
    3800:	75 0b                	jne    380d <phase_4+0x3c>
    3802:	8b 04 24             	mov    (%rsp),%eax
    3805:	83 e8 02             	sub    $0x2,%eax
    3808:	83 f8 02             	cmp    $0x2,%eax
    380b:	76 05                	jbe    3812 <phase_4+0x41>
    380d:	e8 8c 06 00 00       	callq  3e9e <explode_bomb>
    3812:	8b 34 24             	mov    (%rsp),%esi
    3815:	bf 06 00 00 00       	mov    $0x6,%edi
    381a:	e8 77 ff ff ff       	callq  3796 <func4>
    381f:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    3823:	75 15                	jne    383a <phase_4+0x69>
    3825:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    382a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3831:	00 00 
    3833:	75 0c                	jne    3841 <phase_4+0x70>
    3835:	48 83 c4 18          	add    $0x18,%rsp
    3839:	c3                   	retq   
    383a:	e8 5f 06 00 00       	callq  3e9e <explode_bomb>
    383f:	eb e4                	jmp    3825 <phase_4+0x54>
    3841:	e8 2a fa ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003846 <phase_5>:
    3846:	f3 0f 1e fa          	endbr64 
    384a:	48 83 ec 18          	sub    $0x18,%rsp
    384e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3855:	00 00 
    3857:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    385c:	31 c0                	xor    %eax,%eax
    385e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    3863:	48 89 e2             	mov    %rsp,%rdx
    3866:	48 8d 35 57 1c 00 00 	lea    0x1c57(%rip),%rsi        # 54c4 <array.3475+0x304>
    386d:	e8 9e fa ff ff       	callq  3310 <__isoc99_sscanf@plt>
    3872:	83 f8 01             	cmp    $0x1,%eax
    3875:	7e 5b                	jle    38d2 <phase_5+0x8c>
    3877:	8b 04 24             	mov    (%rsp),%eax
    387a:	83 e0 0f             	and    $0xf,%eax
    387d:	89 04 24             	mov    %eax,(%rsp)
    3880:	83 f8 0f             	cmp    $0xf,%eax
    3883:	74 33                	je     38b8 <phase_5+0x72>
    3885:	be 00 00 00 00       	mov    $0x0,%esi
    388a:	b9 00 00 00 00       	mov    $0x0,%ecx
    388f:	48 8d 3d 2a 19 00 00 	lea    0x192a(%rip),%rdi        # 51c0 <array.3475>
    3896:	83 c1 01             	add    $0x1,%ecx
    3899:	01 c6                	add    %eax,%esi
    389b:	48 63 d0             	movslq %eax,%rdx
    389e:	03 04 97             	add    (%rdi,%rdx,4),%eax
    38a1:	83 f8 0f             	cmp    $0xf,%eax
    38a4:	75 f0                	jne    3896 <phase_5+0x50>
    38a6:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    38ad:	83 f9 0e             	cmp    $0xe,%ecx
    38b0:	75 06                	jne    38b8 <phase_5+0x72>
    38b2:	39 74 24 04          	cmp    %esi,0x4(%rsp)
    38b6:	74 05                	je     38bd <phase_5+0x77>
    38b8:	e8 e1 05 00 00       	callq  3e9e <explode_bomb>
    38bd:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    38c2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    38c9:	00 00 
    38cb:	75 0c                	jne    38d9 <phase_5+0x93>
    38cd:	48 83 c4 18          	add    $0x18,%rsp
    38d1:	c3                   	retq   
    38d2:	e8 c7 05 00 00       	callq  3e9e <explode_bomb>
    38d7:	eb 9e                	jmp    3877 <phase_5+0x31>
    38d9:	e8 92 f9 ff ff       	callq  3270 <__stack_chk_fail@plt>

00000000000038de <phase_6>:
    38de:	f3 0f 1e fa          	endbr64 
    38e2:	41 56                	push   %r14
    38e4:	41 55                	push   %r13
    38e6:	41 54                	push   %r12
    38e8:	55                   	push   %rbp
    38e9:	53                   	push   %rbx
    38ea:	48 83 ec 60          	sub    $0x60,%rsp
    38ee:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    38f5:	00 00 
    38f7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    38fc:	31 c0                	xor    %eax,%eax
    38fe:	49 89 e5             	mov    %rsp,%r13
    3901:	4c 89 ee             	mov    %r13,%rsi
    3904:	e8 d7 05 00 00       	callq  3ee0 <read_six_numbers>
    3909:	41 be 01 00 00 00    	mov    $0x1,%r14d
    390f:	49 89 e4             	mov    %rsp,%r12
    3912:	eb 28                	jmp    393c <phase_6+0x5e>
    3914:	e8 85 05 00 00       	callq  3e9e <explode_bomb>
    3919:	eb 30                	jmp    394b <phase_6+0x6d>
    391b:	48 83 c3 01          	add    $0x1,%rbx
    391f:	83 fb 05             	cmp    $0x5,%ebx
    3922:	7f 10                	jg     3934 <phase_6+0x56>
    3924:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    3928:	39 45 00             	cmp    %eax,0x0(%rbp)
    392b:	75 ee                	jne    391b <phase_6+0x3d>
    392d:	e8 6c 05 00 00       	callq  3e9e <explode_bomb>
    3932:	eb e7                	jmp    391b <phase_6+0x3d>
    3934:	49 83 c6 01          	add    $0x1,%r14
    3938:	49 83 c5 04          	add    $0x4,%r13
    393c:	4c 89 ed             	mov    %r13,%rbp
    393f:	41 8b 45 00          	mov    0x0(%r13),%eax
    3943:	83 e8 01             	sub    $0x1,%eax
    3946:	83 f8 05             	cmp    $0x5,%eax
    3949:	77 c9                	ja     3914 <phase_6+0x36>
    394b:	41 83 fe 05          	cmp    $0x5,%r14d
    394f:	7f 05                	jg     3956 <phase_6+0x78>
    3951:	4c 89 f3             	mov    %r14,%rbx
    3954:	eb ce                	jmp    3924 <phase_6+0x46>
    3956:	be 00 00 00 00       	mov    $0x0,%esi
    395b:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    395e:	b8 01 00 00 00       	mov    $0x1,%eax
    3963:	48 8d 15 c6 48 00 00 	lea    0x48c6(%rip),%rdx        # 8230 <node1>
    396a:	83 f9 01             	cmp    $0x1,%ecx
    396d:	7e 0b                	jle    397a <phase_6+0x9c>
    396f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    3973:	83 c0 01             	add    $0x1,%eax
    3976:	39 c8                	cmp    %ecx,%eax
    3978:	75 f5                	jne    396f <phase_6+0x91>
    397a:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    397f:	48 83 c6 01          	add    $0x1,%rsi
    3983:	48 83 fe 06          	cmp    $0x6,%rsi
    3987:	75 d2                	jne    395b <phase_6+0x7d>
    3989:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    398e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    3993:	48 89 43 08          	mov    %rax,0x8(%rbx)
    3997:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    399c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    39a0:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    39a5:	48 89 42 08          	mov    %rax,0x8(%rdx)
    39a9:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    39ae:	48 89 50 08          	mov    %rdx,0x8(%rax)
    39b2:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    39b7:	48 89 42 08          	mov    %rax,0x8(%rdx)
    39bb:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    39c2:	00 
    39c3:	bd 05 00 00 00       	mov    $0x5,%ebp
    39c8:	eb 09                	jmp    39d3 <phase_6+0xf5>
    39ca:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    39ce:	83 ed 01             	sub    $0x1,%ebp
    39d1:	74 11                	je     39e4 <phase_6+0x106>
    39d3:	48 8b 43 08          	mov    0x8(%rbx),%rax
    39d7:	8b 00                	mov    (%rax),%eax
    39d9:	39 03                	cmp    %eax,(%rbx)
    39db:	7d ed                	jge    39ca <phase_6+0xec>
    39dd:	e8 bc 04 00 00       	callq  3e9e <explode_bomb>
    39e2:	eb e6                	jmp    39ca <phase_6+0xec>
    39e4:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    39e9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    39f0:	00 00 
    39f2:	75 0d                	jne    3a01 <phase_6+0x123>
    39f4:	48 83 c4 60          	add    $0x60,%rsp
    39f8:	5b                   	pop    %rbx
    39f9:	5d                   	pop    %rbp
    39fa:	41 5c                	pop    %r12
    39fc:	41 5d                	pop    %r13
    39fe:	41 5e                	pop    %r14
    3a00:	c3                   	retq   
    3a01:	e8 6a f8 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003a06 <fun7>:
    3a06:	f3 0f 1e fa          	endbr64 
    3a0a:	48 85 ff             	test   %rdi,%rdi
    3a0d:	74 32                	je     3a41 <fun7+0x3b>
    3a0f:	48 83 ec 08          	sub    $0x8,%rsp
    3a13:	8b 17                	mov    (%rdi),%edx
    3a15:	39 f2                	cmp    %esi,%edx
    3a17:	7f 0c                	jg     3a25 <fun7+0x1f>
    3a19:	b8 00 00 00 00       	mov    $0x0,%eax
    3a1e:	75 12                	jne    3a32 <fun7+0x2c>
    3a20:	48 83 c4 08          	add    $0x8,%rsp
    3a24:	c3                   	retq   
    3a25:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    3a29:	e8 d8 ff ff ff       	callq  3a06 <fun7>
    3a2e:	01 c0                	add    %eax,%eax
    3a30:	eb ee                	jmp    3a20 <fun7+0x1a>
    3a32:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    3a36:	e8 cb ff ff ff       	callq  3a06 <fun7>
    3a3b:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    3a3f:	eb df                	jmp    3a20 <fun7+0x1a>
    3a41:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a46:	c3                   	retq   

0000000000003a47 <secret_phase>:
    3a47:	f3 0f 1e fa          	endbr64 
    3a4b:	53                   	push   %rbx
    3a4c:	e8 d4 04 00 00       	callq  3f25 <read_line>
    3a51:	48 89 c7             	mov    %rax,%rdi
    3a54:	ba 0a 00 00 00       	mov    $0xa,%edx
    3a59:	be 00 00 00 00       	mov    $0x0,%esi
    3a5e:	e8 8d f8 ff ff       	callq  32f0 <strtol@plt>
    3a63:	48 89 c3             	mov    %rax,%rbx
    3a66:	8d 40 ff             	lea    -0x1(%rax),%eax
    3a69:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    3a6e:	77 26                	ja     3a96 <secret_phase+0x4f>
    3a70:	89 de                	mov    %ebx,%esi
    3a72:	48 8d 3d d7 46 00 00 	lea    0x46d7(%rip),%rdi        # 8150 <n1>
    3a79:	e8 88 ff ff ff       	callq  3a06 <fun7>
    3a7e:	83 f8 01             	cmp    $0x1,%eax
    3a81:	75 1a                	jne    3a9d <secret_phase+0x56>
    3a83:	48 8d 3d fe 16 00 00 	lea    0x16fe(%rip),%rdi        # 5188 <_IO_stdin_used+0x188>
    3a8a:	e8 c1 f7 ff ff       	callq  3250 <puts@plt>
    3a8f:	e8 d9 05 00 00       	callq  406d <phase_defused>
    3a94:	5b                   	pop    %rbx
    3a95:	c3                   	retq   
    3a96:	e8 03 04 00 00       	callq  3e9e <explode_bomb>
    3a9b:	eb d3                	jmp    3a70 <secret_phase+0x29>
    3a9d:	e8 fc 03 00 00       	callq  3e9e <explode_bomb>
    3aa2:	eb df                	jmp    3a83 <secret_phase+0x3c>

0000000000003aa4 <sig_handler>:
    3aa4:	f3 0f 1e fa          	endbr64 
    3aa8:	50                   	push   %rax
    3aa9:	58                   	pop    %rax
    3aaa:	48 83 ec 08          	sub    $0x8,%rsp
    3aae:	48 8d 3d 4b 17 00 00 	lea    0x174b(%rip),%rdi        # 5200 <array.3475+0x40>
    3ab5:	e8 96 f7 ff ff       	callq  3250 <puts@plt>
    3aba:	bf 03 00 00 00       	mov    $0x3,%edi
    3abf:	e8 bc f8 ff ff       	callq  3380 <sleep@plt>
    3ac4:	48 8d 35 53 19 00 00 	lea    0x1953(%rip),%rsi        # 541e <array.3475+0x25e>
    3acb:	bf 01 00 00 00       	mov    $0x1,%edi
    3ad0:	b8 00 00 00 00       	mov    $0x0,%eax
    3ad5:	e8 46 f8 ff ff       	callq  3320 <__printf_chk@plt>
    3ada:	48 8b 3d 9f 4f 00 00 	mov    0x4f9f(%rip),%rdi        # 8a80 <stdout@@GLIBC_2.2.5>
    3ae1:	e8 1a f8 ff ff       	callq  3300 <fflush@plt>
    3ae6:	bf 01 00 00 00       	mov    $0x1,%edi
    3aeb:	e8 90 f8 ff ff       	callq  3380 <sleep@plt>
    3af0:	48 8d 3d 2f 19 00 00 	lea    0x192f(%rip),%rdi        # 5426 <array.3475+0x266>
    3af7:	e8 54 f7 ff ff       	callq  3250 <puts@plt>
    3afc:	bf 10 00 00 00       	mov    $0x10,%edi
    3b01:	e8 4a f8 ff ff       	callq  3350 <exit@plt>

0000000000003b06 <invalid_phase>:
    3b06:	f3 0f 1e fa          	endbr64 
    3b0a:	50                   	push   %rax
    3b0b:	58                   	pop    %rax
    3b0c:	48 83 ec 08          	sub    $0x8,%rsp
    3b10:	48 89 fa             	mov    %rdi,%rdx
    3b13:	48 8d 35 14 19 00 00 	lea    0x1914(%rip),%rsi        # 542e <array.3475+0x26e>
    3b1a:	bf 01 00 00 00       	mov    $0x1,%edi
    3b1f:	b8 00 00 00 00       	mov    $0x0,%eax
    3b24:	e8 f7 f7 ff ff       	callq  3320 <__printf_chk@plt>
    3b29:	bf 08 00 00 00       	mov    $0x8,%edi
    3b2e:	e8 1d f8 ff ff       	callq  3350 <exit@plt>

0000000000003b33 <string_length>:
    3b33:	f3 0f 1e fa          	endbr64 
    3b37:	80 3f 00             	cmpb   $0x0,(%rdi)
    3b3a:	74 12                	je     3b4e <string_length+0x1b>
    3b3c:	b8 00 00 00 00       	mov    $0x0,%eax
    3b41:	48 83 c7 01          	add    $0x1,%rdi
    3b45:	83 c0 01             	add    $0x1,%eax
    3b48:	80 3f 00             	cmpb   $0x0,(%rdi)
    3b4b:	75 f4                	jne    3b41 <string_length+0xe>
    3b4d:	c3                   	retq   
    3b4e:	b8 00 00 00 00       	mov    $0x0,%eax
    3b53:	c3                   	retq   

0000000000003b54 <strings_not_equal>:
    3b54:	f3 0f 1e fa          	endbr64 
    3b58:	41 54                	push   %r12
    3b5a:	55                   	push   %rbp
    3b5b:	53                   	push   %rbx
    3b5c:	48 89 fb             	mov    %rdi,%rbx
    3b5f:	48 89 f5             	mov    %rsi,%rbp
    3b62:	e8 cc ff ff ff       	callq  3b33 <string_length>
    3b67:	41 89 c4             	mov    %eax,%r12d
    3b6a:	48 89 ef             	mov    %rbp,%rdi
    3b6d:	e8 c1 ff ff ff       	callq  3b33 <string_length>
    3b72:	89 c2                	mov    %eax,%edx
    3b74:	b8 01 00 00 00       	mov    $0x1,%eax
    3b79:	41 39 d4             	cmp    %edx,%r12d
    3b7c:	75 31                	jne    3baf <strings_not_equal+0x5b>
    3b7e:	0f b6 13             	movzbl (%rbx),%edx
    3b81:	84 d2                	test   %dl,%dl
    3b83:	74 1e                	je     3ba3 <strings_not_equal+0x4f>
    3b85:	b8 00 00 00 00       	mov    $0x0,%eax
    3b8a:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    3b8e:	75 1a                	jne    3baa <strings_not_equal+0x56>
    3b90:	48 83 c0 01          	add    $0x1,%rax
    3b94:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    3b98:	84 d2                	test   %dl,%dl
    3b9a:	75 ee                	jne    3b8a <strings_not_equal+0x36>
    3b9c:	b8 00 00 00 00       	mov    $0x0,%eax
    3ba1:	eb 0c                	jmp    3baf <strings_not_equal+0x5b>
    3ba3:	b8 00 00 00 00       	mov    $0x0,%eax
    3ba8:	eb 05                	jmp    3baf <strings_not_equal+0x5b>
    3baa:	b8 01 00 00 00       	mov    $0x1,%eax
    3baf:	5b                   	pop    %rbx
    3bb0:	5d                   	pop    %rbp
    3bb1:	41 5c                	pop    %r12
    3bb3:	c3                   	retq   

0000000000003bb4 <initialize_bomb>:
    3bb4:	f3 0f 1e fa          	endbr64 
    3bb8:	55                   	push   %rbp
    3bb9:	53                   	push   %rbx
    3bba:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    3bc1:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3bc6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    3bcd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3bd2:	48 83 ec 58          	sub    $0x58,%rsp
    3bd6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3bdd:	00 00 
    3bdf:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    3be6:	00 
    3be7:	31 c0                	xor    %eax,%eax
    3be9:	48 8d 35 b4 fe ff ff 	lea    -0x14c(%rip),%rsi        # 3aa4 <sig_handler>
    3bf0:	bf 02 00 00 00       	mov    $0x2,%edi
    3bf5:	e8 c6 f6 ff ff       	callq  32c0 <signal@plt>
    3bfa:	48 89 e7             	mov    %rsp,%rdi
    3bfd:	be 40 00 00 00       	mov    $0x40,%esi
    3c02:	e8 39 f7 ff ff       	callq  3340 <gethostname@plt>
    3c07:	85 c0                	test   %eax,%eax
    3c09:	0f 85 9b 00 00 00    	jne    3caa <initialize_bomb+0xf6>
    3c0f:	48 8b 3d 6a 46 00 00 	mov    0x466a(%rip),%rdi        # 8280 <host_table>
    3c16:	48 8d 1d 6b 46 00 00 	lea    0x466b(%rip),%rbx        # 8288 <host_table+0x8>
    3c1d:	48 89 e5             	mov    %rsp,%rbp
    3c20:	48 85 ff             	test   %rdi,%rdi
    3c23:	74 1d                	je     3c42 <initialize_bomb+0x8e>
    3c25:	48 89 ee             	mov    %rbp,%rsi
    3c28:	e8 f3 f5 ff ff       	callq  3220 <strcasecmp@plt>
    3c2d:	85 c0                	test   %eax,%eax
    3c2f:	0f 84 b0 00 00 00    	je     3ce5 <initialize_bomb+0x131>
    3c35:	48 83 c3 08          	add    $0x8,%rbx
    3c39:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    3c3d:	48 85 ff             	test   %rdi,%rdi
    3c40:	75 e3                	jne    3c25 <initialize_bomb+0x71>
    3c42:	48 89 e2             	mov    %rsp,%rdx
    3c45:	48 8d 35 24 16 00 00 	lea    0x1624(%rip),%rsi        # 5270 <array.3475+0xb0>
    3c4c:	bf 01 00 00 00       	mov    $0x1,%edi
    3c51:	b8 00 00 00 00       	mov    $0x0,%eax
    3c56:	e8 c5 f6 ff ff       	callq  3320 <__printf_chk@plt>
    3c5b:	48 8d 3d fd 17 00 00 	lea    0x17fd(%rip),%rdi        # 545f <array.3475+0x29f>
    3c62:	e8 e9 f5 ff ff       	callq  3250 <puts@plt>
    3c67:	48 8b 15 12 46 00 00 	mov    0x4612(%rip),%rdx        # 8280 <host_table>
    3c6e:	48 8d 1d 13 46 00 00 	lea    0x4613(%rip),%rbx        # 8288 <host_table+0x8>
    3c75:	48 8d 2d c3 17 00 00 	lea    0x17c3(%rip),%rbp        # 543f <array.3475+0x27f>
    3c7c:	48 85 d2             	test   %rdx,%rdx
    3c7f:	74 1f                	je     3ca0 <initialize_bomb+0xec>
    3c81:	48 89 ee             	mov    %rbp,%rsi
    3c84:	bf 01 00 00 00       	mov    $0x1,%edi
    3c89:	b8 00 00 00 00       	mov    $0x0,%eax
    3c8e:	e8 8d f6 ff ff       	callq  3320 <__printf_chk@plt>
    3c93:	48 83 c3 08          	add    $0x8,%rbx
    3c97:	48 8b 53 f8          	mov    -0x8(%rbx),%rdx
    3c9b:	48 85 d2             	test   %rdx,%rdx
    3c9e:	75 e1                	jne    3c81 <initialize_bomb+0xcd>
    3ca0:	bf 08 00 00 00       	mov    $0x8,%edi
    3ca5:	e8 a6 f6 ff ff       	callq  3350 <exit@plt>
    3caa:	48 8d 3d 87 15 00 00 	lea    0x1587(%rip),%rdi        # 5238 <array.3475+0x78>
    3cb1:	e8 9a f5 ff ff       	callq  3250 <puts@plt>
    3cb6:	bf 08 00 00 00       	mov    $0x8,%edi
    3cbb:	e8 90 f6 ff ff       	callq  3350 <exit@plt>
    3cc0:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    3cc5:	48 8d 35 79 17 00 00 	lea    0x1779(%rip),%rsi        # 5445 <array.3475+0x285>
    3ccc:	bf 01 00 00 00       	mov    $0x1,%edi
    3cd1:	b8 00 00 00 00       	mov    $0x0,%eax
    3cd6:	e8 45 f6 ff ff       	callq  3320 <__printf_chk@plt>
    3cdb:	bf 08 00 00 00       	mov    $0x8,%edi
    3ce0:	e8 6b f6 ff ff       	callq  3350 <exit@plt>
    3ce5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3cea:	e8 09 0f 00 00       	callq  4bf8 <init_driver>
    3cef:	85 c0                	test   %eax,%eax
    3cf1:	78 cd                	js     3cc0 <initialize_bomb+0x10c>
    3cf3:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    3cfa:	00 
    3cfb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3d02:	00 00 
    3d04:	75 0a                	jne    3d10 <initialize_bomb+0x15c>
    3d06:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    3d0d:	5b                   	pop    %rbx
    3d0e:	5d                   	pop    %rbp
    3d0f:	c3                   	retq   
    3d10:	e8 5b f5 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003d15 <initialize_bomb_solve>:
    3d15:	f3 0f 1e fa          	endbr64 
    3d19:	c3                   	retq   

0000000000003d1a <blank_line>:
    3d1a:	f3 0f 1e fa          	endbr64 
    3d1e:	55                   	push   %rbp
    3d1f:	53                   	push   %rbx
    3d20:	48 83 ec 08          	sub    $0x8,%rsp
    3d24:	48 89 fd             	mov    %rdi,%rbp
    3d27:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    3d2b:	84 db                	test   %bl,%bl
    3d2d:	74 1e                	je     3d4d <blank_line+0x33>
    3d2f:	e8 5c f6 ff ff       	callq  3390 <__ctype_b_loc@plt>
    3d34:	48 83 c5 01          	add    $0x1,%rbp
    3d38:	48 0f be db          	movsbq %bl,%rbx
    3d3c:	48 8b 00             	mov    (%rax),%rax
    3d3f:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    3d44:	75 e1                	jne    3d27 <blank_line+0xd>
    3d46:	b8 00 00 00 00       	mov    $0x0,%eax
    3d4b:	eb 05                	jmp    3d52 <blank_line+0x38>
    3d4d:	b8 01 00 00 00       	mov    $0x1,%eax
    3d52:	48 83 c4 08          	add    $0x8,%rsp
    3d56:	5b                   	pop    %rbx
    3d57:	5d                   	pop    %rbp
    3d58:	c3                   	retq   

0000000000003d59 <skip>:
    3d59:	f3 0f 1e fa          	endbr64 
    3d5d:	55                   	push   %rbp
    3d5e:	53                   	push   %rbx
    3d5f:	48 83 ec 08          	sub    $0x8,%rsp
    3d63:	48 8d 2d 56 4d 00 00 	lea    0x4d56(%rip),%rbp        # 8ac0 <input_strings>
    3d6a:	48 63 05 3b 4d 00 00 	movslq 0x4d3b(%rip),%rax        # 8aac <num_input_strings>
    3d71:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    3d75:	48 c1 e7 04          	shl    $0x4,%rdi
    3d79:	48 01 ef             	add    %rbp,%rdi
    3d7c:	48 8b 15 2d 4d 00 00 	mov    0x4d2d(%rip),%rdx        # 8ab0 <infile>
    3d83:	be 50 00 00 00       	mov    $0x50,%esi
    3d88:	e8 23 f5 ff ff       	callq  32b0 <fgets@plt>
    3d8d:	48 89 c3             	mov    %rax,%rbx
    3d90:	48 85 c0             	test   %rax,%rax
    3d93:	74 0c                	je     3da1 <skip+0x48>
    3d95:	48 89 c7             	mov    %rax,%rdi
    3d98:	e8 7d ff ff ff       	callq  3d1a <blank_line>
    3d9d:	85 c0                	test   %eax,%eax
    3d9f:	75 c9                	jne    3d6a <skip+0x11>
    3da1:	48 89 d8             	mov    %rbx,%rax
    3da4:	48 83 c4 08          	add    $0x8,%rsp
    3da8:	5b                   	pop    %rbx
    3da9:	5d                   	pop    %rbp
    3daa:	c3                   	retq   

0000000000003dab <send_msg>:
    3dab:	f3 0f 1e fa          	endbr64 
    3daf:	53                   	push   %rbx
    3db0:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    3db7:	ff 
    3db8:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    3dbf:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3dc4:	4c 39 dc             	cmp    %r11,%rsp
    3dc7:	75 ef                	jne    3db8 <send_msg+0xd>
    3dc9:	48 83 ec 10          	sub    $0x10,%rsp
    3dcd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3dd4:	00 00 
    3dd6:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    3ddd:	00 
    3dde:	31 c0                	xor    %eax,%eax
    3de0:	8b 15 c6 4c 00 00    	mov    0x4cc6(%rip),%edx        # 8aac <num_input_strings>
    3de6:	8d 42 ff             	lea    -0x1(%rdx),%eax
    3de9:	48 98                	cltq   
    3deb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    3def:	48 c1 e0 04          	shl    $0x4,%rax
    3df3:	48 8d 0d c6 4c 00 00 	lea    0x4cc6(%rip),%rcx        # 8ac0 <input_strings>
    3dfa:	48 01 c8             	add    %rcx,%rax
    3dfd:	85 ff                	test   %edi,%edi
    3dff:	4c 8d 0d 75 16 00 00 	lea    0x1675(%rip),%r9        # 547b <array.3475+0x2bb>
    3e06:	48 8d 0d 76 16 00 00 	lea    0x1676(%rip),%rcx        # 5483 <array.3475+0x2c3>
    3e0d:	4c 0f 44 c9          	cmove  %rcx,%r9
    3e11:	48 89 e3             	mov    %rsp,%rbx
    3e14:	50                   	push   %rax
    3e15:	52                   	push   %rdx
    3e16:	44 8b 05 27 43 00 00 	mov    0x4327(%rip),%r8d        # 8144 <bomb_id>
    3e1d:	48 8d 0d 68 16 00 00 	lea    0x1668(%rip),%rcx        # 548c <array.3475+0x2cc>
    3e24:	ba 00 20 00 00       	mov    $0x2000,%edx
    3e29:	be 01 00 00 00       	mov    $0x1,%esi
    3e2e:	48 89 df             	mov    %rbx,%rdi
    3e31:	b8 00 00 00 00       	mov    $0x0,%eax
    3e36:	e8 65 f5 ff ff       	callq  33a0 <__sprintf_chk@plt>
    3e3b:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    3e42:	00 
    3e43:	b9 00 00 00 00       	mov    $0x0,%ecx
    3e48:	48 89 da             	mov    %rbx,%rdx
    3e4b:	48 8d 35 ce 42 00 00 	lea    0x42ce(%rip),%rsi        # 8120 <user_password>
    3e52:	48 8d 3d df 42 00 00 	lea    0x42df(%rip),%rdi        # 8138 <userid>
    3e59:	e8 8f 0f 00 00       	callq  4ded <driver_post>
    3e5e:	48 83 c4 10          	add    $0x10,%rsp
    3e62:	85 c0                	test   %eax,%eax
    3e64:	78 1c                	js     3e82 <send_msg+0xd7>
    3e66:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    3e6d:	00 
    3e6e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3e75:	00 00 
    3e77:	75 20                	jne    3e99 <send_msg+0xee>
    3e79:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    3e80:	5b                   	pop    %rbx
    3e81:	c3                   	retq   
    3e82:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    3e89:	00 
    3e8a:	e8 c1 f3 ff ff       	callq  3250 <puts@plt>
    3e8f:	bf 00 00 00 00       	mov    $0x0,%edi
    3e94:	e8 b7 f4 ff ff       	callq  3350 <exit@plt>
    3e99:	e8 d2 f3 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003e9e <explode_bomb>:
    3e9e:	f3 0f 1e fa          	endbr64 
    3ea2:	50                   	push   %rax
    3ea3:	58                   	pop    %rax
    3ea4:	48 83 ec 08          	sub    $0x8,%rsp
    3ea8:	48 8d 3d e9 15 00 00 	lea    0x15e9(%rip),%rdi        # 5498 <array.3475+0x2d8>
    3eaf:	e8 9c f3 ff ff       	callq  3250 <puts@plt>
    3eb4:	48 8d 3d e6 15 00 00 	lea    0x15e6(%rip),%rdi        # 54a1 <array.3475+0x2e1>
    3ebb:	e8 90 f3 ff ff       	callq  3250 <puts@plt>
    3ec0:	bf 00 00 00 00       	mov    $0x0,%edi
    3ec5:	e8 e1 fe ff ff       	callq  3dab <send_msg>
    3eca:	48 8d 3d cf 13 00 00 	lea    0x13cf(%rip),%rdi        # 52a0 <array.3475+0xe0>
    3ed1:	e8 7a f3 ff ff       	callq  3250 <puts@plt>
    3ed6:	bf 08 00 00 00       	mov    $0x8,%edi
    3edb:	e8 70 f4 ff ff       	callq  3350 <exit@plt>

0000000000003ee0 <read_six_numbers>:
    3ee0:	f3 0f 1e fa          	endbr64 
    3ee4:	48 83 ec 08          	sub    $0x8,%rsp
    3ee8:	48 89 f2             	mov    %rsi,%rdx
    3eeb:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    3eef:	48 8d 46 14          	lea    0x14(%rsi),%rax
    3ef3:	50                   	push   %rax
    3ef4:	48 8d 46 10          	lea    0x10(%rsi),%rax
    3ef8:	50                   	push   %rax
    3ef9:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    3efd:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    3f01:	48 8d 35 b0 15 00 00 	lea    0x15b0(%rip),%rsi        # 54b8 <array.3475+0x2f8>
    3f08:	b8 00 00 00 00       	mov    $0x0,%eax
    3f0d:	e8 fe f3 ff ff       	callq  3310 <__isoc99_sscanf@plt>
    3f12:	48 83 c4 10          	add    $0x10,%rsp
    3f16:	83 f8 05             	cmp    $0x5,%eax
    3f19:	7e 05                	jle    3f20 <read_six_numbers+0x40>
    3f1b:	48 83 c4 08          	add    $0x8,%rsp
    3f1f:	c3                   	retq   
    3f20:	e8 79 ff ff ff       	callq  3e9e <explode_bomb>

0000000000003f25 <read_line>:
    3f25:	f3 0f 1e fa          	endbr64 
    3f29:	48 83 ec 08          	sub    $0x8,%rsp
    3f2d:	b8 00 00 00 00       	mov    $0x0,%eax
    3f32:	e8 22 fe ff ff       	callq  3d59 <skip>
    3f37:	48 85 c0             	test   %rax,%rax
    3f3a:	74 6f                	je     3fab <read_line+0x86>
    3f3c:	8b 35 6a 4b 00 00    	mov    0x4b6a(%rip),%esi        # 8aac <num_input_strings>
    3f42:	48 63 c6             	movslq %esi,%rax
    3f45:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    3f49:	48 c1 e2 04          	shl    $0x4,%rdx
    3f4d:	48 8d 05 6c 4b 00 00 	lea    0x4b6c(%rip),%rax        # 8ac0 <input_strings>
    3f54:	48 01 c2             	add    %rax,%rdx
    3f57:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    3f5e:	b8 00 00 00 00       	mov    $0x0,%eax
    3f63:	48 89 d7             	mov    %rdx,%rdi
    3f66:	f2 ae                	repnz scas %es:(%rdi),%al
    3f68:	48 f7 d1             	not    %rcx
    3f6b:	48 83 e9 01          	sub    $0x1,%rcx
    3f6f:	83 f9 4e             	cmp    $0x4e,%ecx
    3f72:	0f 8f ab 00 00 00    	jg     4023 <read_line+0xfe>
    3f78:	83 e9 01             	sub    $0x1,%ecx
    3f7b:	48 63 c9             	movslq %ecx,%rcx
    3f7e:	48 63 c6             	movslq %esi,%rax
    3f81:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    3f85:	48 c1 e0 04          	shl    $0x4,%rax
    3f89:	48 89 c7             	mov    %rax,%rdi
    3f8c:	48 8d 05 2d 4b 00 00 	lea    0x4b2d(%rip),%rax        # 8ac0 <input_strings>
    3f93:	48 01 f8             	add    %rdi,%rax
    3f96:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    3f9a:	83 c6 01             	add    $0x1,%esi
    3f9d:	89 35 09 4b 00 00    	mov    %esi,0x4b09(%rip)        # 8aac <num_input_strings>
    3fa3:	48 89 d0             	mov    %rdx,%rax
    3fa6:	48 83 c4 08          	add    $0x8,%rsp
    3faa:	c3                   	retq   
    3fab:	48 8b 05 de 4a 00 00 	mov    0x4ade(%rip),%rax        # 8a90 <stdin@@GLIBC_2.2.5>
    3fb2:	48 39 05 f7 4a 00 00 	cmp    %rax,0x4af7(%rip)        # 8ab0 <infile>
    3fb9:	74 1b                	je     3fd6 <read_line+0xb1>
    3fbb:	48 8d 3d 26 15 00 00 	lea    0x1526(%rip),%rdi        # 54e8 <array.3475+0x328>
    3fc2:	e8 39 f2 ff ff       	callq  3200 <getenv@plt>
    3fc7:	48 85 c0             	test   %rax,%rax
    3fca:	74 20                	je     3fec <read_line+0xc7>
    3fcc:	bf 00 00 00 00       	mov    $0x0,%edi
    3fd1:	e8 7a f3 ff ff       	callq  3350 <exit@plt>
    3fd6:	48 8d 3d ed 14 00 00 	lea    0x14ed(%rip),%rdi        # 54ca <array.3475+0x30a>
    3fdd:	e8 6e f2 ff ff       	callq  3250 <puts@plt>
    3fe2:	bf 08 00 00 00       	mov    $0x8,%edi
    3fe7:	e8 64 f3 ff ff       	callq  3350 <exit@plt>
    3fec:	48 8b 05 9d 4a 00 00 	mov    0x4a9d(%rip),%rax        # 8a90 <stdin@@GLIBC_2.2.5>
    3ff3:	48 89 05 b6 4a 00 00 	mov    %rax,0x4ab6(%rip)        # 8ab0 <infile>
    3ffa:	b8 00 00 00 00       	mov    $0x0,%eax
    3fff:	e8 55 fd ff ff       	callq  3d59 <skip>
    4004:	48 85 c0             	test   %rax,%rax
    4007:	0f 85 2f ff ff ff    	jne    3f3c <read_line+0x17>
    400d:	48 8d 3d b6 14 00 00 	lea    0x14b6(%rip),%rdi        # 54ca <array.3475+0x30a>
    4014:	e8 37 f2 ff ff       	callq  3250 <puts@plt>
    4019:	bf 00 00 00 00       	mov    $0x0,%edi
    401e:	e8 2d f3 ff ff       	callq  3350 <exit@plt>
    4023:	48 8d 3d c9 14 00 00 	lea    0x14c9(%rip),%rdi        # 54f3 <array.3475+0x333>
    402a:	e8 21 f2 ff ff       	callq  3250 <puts@plt>
    402f:	8b 05 77 4a 00 00    	mov    0x4a77(%rip),%eax        # 8aac <num_input_strings>
    4035:	8d 50 01             	lea    0x1(%rax),%edx
    4038:	89 15 6e 4a 00 00    	mov    %edx,0x4a6e(%rip)        # 8aac <num_input_strings>
    403e:	48 98                	cltq   
    4040:	48 6b c0 50          	imul   $0x50,%rax,%rax
    4044:	48 8d 15 75 4a 00 00 	lea    0x4a75(%rip),%rdx        # 8ac0 <input_strings>
    404b:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    4052:	75 6e 63 
    4055:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    405c:	2a 2a 00 
    405f:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    4063:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    4068:	e8 31 fe ff ff       	callq  3e9e <explode_bomb>

000000000000406d <phase_defused>:
    406d:	f3 0f 1e fa          	endbr64 
    4071:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    4078:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    407f:	00 00 
    4081:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    4088:	00 
    4089:	31 c0                	xor    %eax,%eax
    408b:	bf 01 00 00 00       	mov    $0x1,%edi
    4090:	e8 16 fd ff ff       	callq  3dab <send_msg>
    4095:	83 3d 10 4a 00 00 06 	cmpl   $0x6,0x4a10(%rip)        # 8aac <num_input_strings>
    409c:	74 1f                	je     40bd <phase_defused+0x50>
    409e:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    40a5:	00 
    40a6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    40ad:	00 00 
    40af:	0f 85 77 01 00 00    	jne    422c <phase_defused+0x1bf>
    40b5:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    40bc:	c3                   	retq   
    40bd:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    40c2:	48 8d 4c 24 14       	lea    0x14(%rsp),%rcx
    40c7:	48 83 ec 08          	sub    $0x8,%rsp
    40cb:	48 8d 44 24 38       	lea    0x38(%rsp),%rax
    40d0:	50                   	push   %rax
    40d1:	48 8d 44 24 34       	lea    0x34(%rsp),%rax
    40d6:	50                   	push   %rax
    40d7:	48 8d 44 24 38       	lea    0x38(%rsp),%rax
    40dc:	50                   	push   %rax
    40dd:	4c 8d 4c 24 3c       	lea    0x3c(%rsp),%r9
    40e2:	4c 8d 44 24 38       	lea    0x38(%rsp),%r8
    40e7:	48 8d 35 20 14 00 00 	lea    0x1420(%rip),%rsi        # 550e <array.3475+0x34e>
    40ee:	48 8d 3d 1b 4a 00 00 	lea    0x4a1b(%rip),%rdi        # 8b10 <input_strings+0x50>
    40f5:	b8 00 00 00 00       	mov    $0x0,%eax
    40fa:	e8 11 f2 ff ff       	callq  3310 <__isoc99_sscanf@plt>
    40ff:	48 83 c4 20          	add    $0x20,%rsp
    4103:	83 f8 07             	cmp    $0x7,%eax
    4106:	0f 84 e0 00 00 00    	je     41ec <phase_defused+0x17f>
    410c:	48 8d 3d 1d 12 00 00 	lea    0x121d(%rip),%rdi        # 5330 <array.3475+0x170>
    4113:	e8 38 f1 ff ff       	callq  3250 <puts@plt>
    4118:	48 8d 3d 41 12 00 00 	lea    0x1241(%rip),%rdi        # 5360 <array.3475+0x1a0>
    411f:	e8 2c f1 ff ff       	callq  3250 <puts@plt>
    4124:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    4129:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    412e:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    4133:	48 8d 35 e0 13 00 00 	lea    0x13e0(%rip),%rsi        # 551a <array.3475+0x35a>
    413a:	48 8d 3d 6f 4a 00 00 	lea    0x4a6f(%rip),%rdi        # 8bb0 <input_strings+0xf0>
    4141:	b8 00 00 00 00       	mov    $0x0,%eax
    4146:	e8 c5 f1 ff ff       	callq  3310 <__isoc99_sscanf@plt>
    414b:	83 f8 03             	cmp    $0x3,%eax
    414e:	0f 85 4a ff ff ff    	jne    409e <phase_defused+0x31>
    4154:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    4159:	48 8d 35 cc 13 00 00 	lea    0x13cc(%rip),%rsi        # 552c <array.3475+0x36c>
    4160:	e8 ef f9 ff ff       	callq  3b54 <strings_not_equal>
    4165:	85 c0                	test   %eax,%eax
    4167:	0f 85 31 ff ff ff    	jne    409e <phase_defused+0x31>
    416d:	48 8d 3d e4 13 00 00 	lea    0x13e4(%rip),%rdi        # 5558 <array.3475+0x398>
    4174:	e8 d7 f0 ff ff       	callq  3250 <puts@plt>
    4179:	bf 02 00 00 00       	mov    $0x2,%edi
    417e:	e8 fd f1 ff ff       	callq  3380 <sleep@plt>
    4183:	48 8d 3d a9 13 00 00 	lea    0x13a9(%rip),%rdi        # 5533 <array.3475+0x373>
    418a:	e8 c1 f0 ff ff       	callq  3250 <puts@plt>
    418f:	bf 03 00 00 00       	mov    $0x3,%edi
    4194:	e8 e7 f1 ff ff       	callq  3380 <sleep@plt>
    4199:	48 8d 3d a6 13 00 00 	lea    0x13a6(%rip),%rdi        # 5546 <array.3475+0x386>
    41a0:	e8 ab f0 ff ff       	callq  3250 <puts@plt>
    41a5:	bf 04 00 00 00       	mov    $0x4,%edi
    41aa:	e8 d1 f1 ff ff       	callq  3380 <sleep@plt>
    41af:	48 8d 3d a6 13 00 00 	lea    0x13a6(%rip),%rdi        # 555c <array.3475+0x39c>
    41b6:	e8 95 f0 ff ff       	callq  3250 <puts@plt>
    41bb:	bf 05 00 00 00       	mov    $0x5,%edi
    41c0:	e8 bb f1 ff ff       	callq  3380 <sleep@plt>
    41c5:	48 8d 3d dc 11 00 00 	lea    0x11dc(%rip),%rdi        # 53a8 <array.3475+0x1e8>
    41cc:	e8 7f f0 ff ff       	callq  3250 <puts@plt>
    41d1:	bf 05 00 00 00       	mov    $0x5,%edi
    41d6:	e8 a5 f1 ff ff       	callq  3380 <sleep@plt>
    41db:	48 8d 3d fe 11 00 00 	lea    0x11fe(%rip),%rdi        # 53e0 <array.3475+0x220>
    41e2:	e8 69 f0 ff ff       	callq  3250 <puts@plt>
    41e7:	e9 b2 fe ff ff       	jmpq   409e <phase_defused+0x31>
    41ec:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    41f1:	48 8d 35 2b 13 00 00 	lea    0x132b(%rip),%rsi        # 5523 <array.3475+0x363>
    41f8:	e8 57 f9 ff ff       	callq  3b54 <strings_not_equal>
    41fd:	85 c0                	test   %eax,%eax
    41ff:	0f 85 07 ff ff ff    	jne    410c <phase_defused+0x9f>
    4205:	48 8d 3d bc 10 00 00 	lea    0x10bc(%rip),%rdi        # 52c8 <array.3475+0x108>
    420c:	e8 3f f0 ff ff       	callq  3250 <puts@plt>
    4211:	48 8d 3d e0 10 00 00 	lea    0x10e0(%rip),%rdi        # 52f8 <array.3475+0x138>
    4218:	e8 33 f0 ff ff       	callq  3250 <puts@plt>
    421d:	b8 00 00 00 00       	mov    $0x0,%eax
    4222:	e8 20 f8 ff ff       	callq  3a47 <secret_phase>
    4227:	e9 e0 fe ff ff       	jmpq   410c <phase_defused+0x9f>
    422c:	e8 3f f0 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000004231 <sigalrm_handler>:
    4231:	f3 0f 1e fa          	endbr64 
    4235:	50                   	push   %rax
    4236:	58                   	pop    %rax
    4237:	48 83 ec 08          	sub    $0x8,%rsp
    423b:	b9 00 00 00 00       	mov    $0x0,%ecx
    4240:	48 8d 15 31 1e 00 00 	lea    0x1e31(%rip),%rdx        # 6078 <array.3475+0xeb8>
    4247:	be 01 00 00 00       	mov    $0x1,%esi
    424c:	48 8b 3d 4d 48 00 00 	mov    0x484d(%rip),%rdi        # 8aa0 <stderr@@GLIBC_2.2.5>
    4253:	b8 00 00 00 00       	mov    $0x0,%eax
    4258:	e8 13 f1 ff ff       	callq  3370 <__fprintf_chk@plt>
    425d:	bf 01 00 00 00       	mov    $0x1,%edi
    4262:	e8 e9 f0 ff ff       	callq  3350 <exit@plt>

0000000000004267 <rio_readlineb>:
    4267:	41 56                	push   %r14
    4269:	41 55                	push   %r13
    426b:	41 54                	push   %r12
    426d:	55                   	push   %rbp
    426e:	53                   	push   %rbx
    426f:	48 89 f5             	mov    %rsi,%rbp
    4272:	48 83 fa 01          	cmp    $0x1,%rdx
    4276:	0f 86 90 00 00 00    	jbe    430c <rio_readlineb+0xa5>
    427c:	48 89 fb             	mov    %rdi,%rbx
    427f:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    4284:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    428a:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    428e:	eb 54                	jmp    42e4 <rio_readlineb+0x7d>
    4290:	e8 9b ef ff ff       	callq  3230 <__errno_location@plt>
    4295:	83 38 04             	cmpl   $0x4,(%rax)
    4298:	75 53                	jne    42ed <rio_readlineb+0x86>
    429a:	ba 00 20 00 00       	mov    $0x2000,%edx
    429f:	4c 89 e6             	mov    %r12,%rsi
    42a2:	8b 3b                	mov    (%rbx),%edi
    42a4:	e8 f7 ef ff ff       	callq  32a0 <read@plt>
    42a9:	89 c2                	mov    %eax,%edx
    42ab:	89 43 04             	mov    %eax,0x4(%rbx)
    42ae:	85 c0                	test   %eax,%eax
    42b0:	78 de                	js     4290 <rio_readlineb+0x29>
    42b2:	85 c0                	test   %eax,%eax
    42b4:	74 40                	je     42f6 <rio_readlineb+0x8f>
    42b6:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    42ba:	48 8b 43 08          	mov    0x8(%rbx),%rax
    42be:	0f b6 08             	movzbl (%rax),%ecx
    42c1:	48 83 c0 01          	add    $0x1,%rax
    42c5:	48 89 43 08          	mov    %rax,0x8(%rbx)
    42c9:	83 ea 01             	sub    $0x1,%edx
    42cc:	89 53 04             	mov    %edx,0x4(%rbx)
    42cf:	48 83 c5 01          	add    $0x1,%rbp
    42d3:	88 4d ff             	mov    %cl,-0x1(%rbp)
    42d6:	80 f9 0a             	cmp    $0xa,%cl
    42d9:	74 3c                	je     4317 <rio_readlineb+0xb0>
    42db:	41 83 c5 01          	add    $0x1,%r13d
    42df:	4c 39 f5             	cmp    %r14,%rbp
    42e2:	74 30                	je     4314 <rio_readlineb+0xad>
    42e4:	8b 53 04             	mov    0x4(%rbx),%edx
    42e7:	85 d2                	test   %edx,%edx
    42e9:	7e af                	jle    429a <rio_readlineb+0x33>
    42eb:	eb cd                	jmp    42ba <rio_readlineb+0x53>
    42ed:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    42f4:	eb 05                	jmp    42fb <rio_readlineb+0x94>
    42f6:	b8 00 00 00 00       	mov    $0x0,%eax
    42fb:	85 c0                	test   %eax,%eax
    42fd:	75 28                	jne    4327 <rio_readlineb+0xc0>
    42ff:	b8 00 00 00 00       	mov    $0x0,%eax
    4304:	41 83 fd 01          	cmp    $0x1,%r13d
    4308:	75 0d                	jne    4317 <rio_readlineb+0xb0>
    430a:	eb 12                	jmp    431e <rio_readlineb+0xb7>
    430c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    4312:	eb 03                	jmp    4317 <rio_readlineb+0xb0>
    4314:	4c 89 f5             	mov    %r14,%rbp
    4317:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    431b:	49 63 c5             	movslq %r13d,%rax
    431e:	5b                   	pop    %rbx
    431f:	5d                   	pop    %rbp
    4320:	41 5c                	pop    %r12
    4322:	41 5d                	pop    %r13
    4324:	41 5e                	pop    %r14
    4326:	c3                   	retq   
    4327:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    432e:	eb ee                	jmp    431e <rio_readlineb+0xb7>

0000000000004330 <submitr>:
    4330:	f3 0f 1e fa          	endbr64 
    4334:	41 57                	push   %r15
    4336:	41 56                	push   %r14
    4338:	41 55                	push   %r13
    433a:	41 54                	push   %r12
    433c:	55                   	push   %rbp
    433d:	53                   	push   %rbx
    433e:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    4345:	ff 
    4346:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    434d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    4352:	4c 39 dc             	cmp    %r11,%rsp
    4355:	75 ef                	jne    4346 <submitr+0x16>
    4357:	48 83 ec 68          	sub    $0x68,%rsp
    435b:	49 89 fd             	mov    %rdi,%r13
    435e:	89 f5                	mov    %esi,%ebp
    4360:	48 89 14 24          	mov    %rdx,(%rsp)
    4364:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    4369:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    436e:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    4373:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    437a:	00 
    437b:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    4382:	00 
    4383:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    438a:	00 00 
    438c:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    4393:	00 
    4394:	31 c0                	xor    %eax,%eax
    4396:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    439d:	00 
    439e:	ba 00 00 00 00       	mov    $0x0,%edx
    43a3:	be 01 00 00 00       	mov    $0x1,%esi
    43a8:	bf 02 00 00 00       	mov    $0x2,%edi
    43ad:	e8 fe ef ff ff       	callq  33b0 <socket@plt>
    43b2:	85 c0                	test   %eax,%eax
    43b4:	0f 88 17 01 00 00    	js     44d1 <submitr+0x1a1>
    43ba:	41 89 c4             	mov    %eax,%r12d
    43bd:	4c 89 ef             	mov    %r13,%rdi
    43c0:	e8 0b ef ff ff       	callq  32d0 <gethostbyname@plt>
    43c5:	48 85 c0             	test   %rax,%rax
    43c8:	0f 84 53 01 00 00    	je     4521 <submitr+0x1f1>
    43ce:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    43d3:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    43da:	00 00 
    43dc:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    43e3:	00 00 
    43e5:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    43ec:	48 63 50 14          	movslq 0x14(%rax),%rdx
    43f0:	48 8b 40 18          	mov    0x18(%rax),%rax
    43f4:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    43f9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    43fe:	48 8b 30             	mov    (%rax),%rsi
    4401:	e8 da ee ff ff       	callq  32e0 <__memmove_chk@plt>
    4406:	66 c1 c5 08          	rol    $0x8,%bp
    440a:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    440f:	ba 10 00 00 00       	mov    $0x10,%edx
    4414:	4c 89 ee             	mov    %r13,%rsi
    4417:	44 89 e7             	mov    %r12d,%edi
    441a:	e8 41 ef ff ff       	callq  3360 <connect@plt>
    441f:	85 c0                	test   %eax,%eax
    4421:	0f 88 65 01 00 00    	js     458c <submitr+0x25c>
    4427:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    442e:	b8 00 00 00 00       	mov    $0x0,%eax
    4433:	4c 89 c9             	mov    %r9,%rcx
    4436:	48 89 df             	mov    %rbx,%rdi
    4439:	f2 ae                	repnz scas %es:(%rdi),%al
    443b:	48 f7 d1             	not    %rcx
    443e:	48 89 ce             	mov    %rcx,%rsi
    4441:	4c 89 c9             	mov    %r9,%rcx
    4444:	48 8b 3c 24          	mov    (%rsp),%rdi
    4448:	f2 ae                	repnz scas %es:(%rdi),%al
    444a:	49 89 c8             	mov    %rcx,%r8
    444d:	4c 89 c9             	mov    %r9,%rcx
    4450:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    4455:	f2 ae                	repnz scas %es:(%rdi),%al
    4457:	48 89 ca             	mov    %rcx,%rdx
    445a:	48 f7 d2             	not    %rdx
    445d:	4c 89 c9             	mov    %r9,%rcx
    4460:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    4465:	f2 ae                	repnz scas %es:(%rdi),%al
    4467:	4c 29 c2             	sub    %r8,%rdx
    446a:	48 29 ca             	sub    %rcx,%rdx
    446d:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    4472:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    4477:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    447d:	0f 87 66 01 00 00    	ja     45e9 <submitr+0x2b9>
    4483:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    448a:	00 
    448b:	b9 00 04 00 00       	mov    $0x400,%ecx
    4490:	b8 00 00 00 00       	mov    $0x0,%eax
    4495:	48 89 d7             	mov    %rdx,%rdi
    4498:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    449b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    44a2:	48 89 df             	mov    %rbx,%rdi
    44a5:	f2 ae                	repnz scas %es:(%rdi),%al
    44a7:	48 f7 d1             	not    %rcx
    44aa:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    44ae:	83 f9 01             	cmp    $0x1,%ecx
    44b1:	0f 84 84 06 00 00    	je     4b3b <submitr+0x80b>
    44b7:	8d 40 ff             	lea    -0x1(%rax),%eax
    44ba:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    44bf:	48 89 d5             	mov    %rdx,%rbp
    44c2:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    44c9:	00 20 00 
    44cc:	e9 a6 01 00 00       	jmpq   4677 <submitr+0x347>
    44d1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    44d8:	3a 20 43 
    44db:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    44e2:	20 75 6e 
    44e5:	49 89 07             	mov    %rax,(%r15)
    44e8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    44ec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    44f3:	74 6f 20 
    44f6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    44fd:	65 20 73 
    4500:	49 89 47 10          	mov    %rax,0x10(%r15)
    4504:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4508:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    450f:	65 
    4510:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    4517:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    451c:	e9 92 04 00 00       	jmpq   49b3 <submitr+0x683>
    4521:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    4528:	3a 20 44 
    452b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    4532:	20 75 6e 
    4535:	49 89 07             	mov    %rax,(%r15)
    4538:	49 89 57 08          	mov    %rdx,0x8(%r15)
    453c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4543:	74 6f 20 
    4546:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    454d:	76 65 20 
    4550:	49 89 47 10          	mov    %rax,0x10(%r15)
    4554:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4558:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    455f:	72 20 61 
    4562:	49 89 47 20          	mov    %rax,0x20(%r15)
    4566:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    456d:	65 
    456e:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    4575:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    457a:	44 89 e7             	mov    %r12d,%edi
    457d:	e8 0e ed ff ff       	callq  3290 <close@plt>
    4582:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4587:	e9 27 04 00 00       	jmpq   49b3 <submitr+0x683>
    458c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    4593:	3a 20 55 
    4596:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    459d:	20 74 6f 
    45a0:	49 89 07             	mov    %rax,(%r15)
    45a3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    45a7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    45ae:	65 63 74 
    45b1:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    45b8:	68 65 20 
    45bb:	49 89 47 10          	mov    %rax,0x10(%r15)
    45bf:	49 89 57 18          	mov    %rdx,0x18(%r15)
    45c3:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    45ca:	76 
    45cb:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    45d2:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    45d7:	44 89 e7             	mov    %r12d,%edi
    45da:	e8 b1 ec ff ff       	callq  3290 <close@plt>
    45df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    45e4:	e9 ca 03 00 00       	jmpq   49b3 <submitr+0x683>
    45e9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    45f0:	3a 20 52 
    45f3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    45fa:	20 73 74 
    45fd:	49 89 07             	mov    %rax,(%r15)
    4600:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4604:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    460b:	74 6f 6f 
    460e:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    4615:	65 2e 20 
    4618:	49 89 47 10          	mov    %rax,0x10(%r15)
    461c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4620:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    4627:	61 73 65 
    462a:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    4631:	49 54 52 
    4634:	49 89 47 20          	mov    %rax,0x20(%r15)
    4638:	49 89 57 28          	mov    %rdx,0x28(%r15)
    463c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    4643:	55 46 00 
    4646:	49 89 47 30          	mov    %rax,0x30(%r15)
    464a:	44 89 e7             	mov    %r12d,%edi
    464d:	e8 3e ec ff ff       	callq  3290 <close@plt>
    4652:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4657:	e9 57 03 00 00       	jmpq   49b3 <submitr+0x683>
    465c:	49 0f a3 c5          	bt     %rax,%r13
    4660:	73 21                	jae    4683 <submitr+0x353>
    4662:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    4666:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    466a:	48 83 c3 01          	add    $0x1,%rbx
    466e:	4c 39 f3             	cmp    %r14,%rbx
    4671:	0f 84 c4 04 00 00    	je     4b3b <submitr+0x80b>
    4677:	44 0f b6 03          	movzbl (%rbx),%r8d
    467b:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    467f:	3c 35                	cmp    $0x35,%al
    4681:	76 d9                	jbe    465c <submitr+0x32c>
    4683:	44 89 c0             	mov    %r8d,%eax
    4686:	83 e0 df             	and    $0xffffffdf,%eax
    4689:	83 e8 41             	sub    $0x41,%eax
    468c:	3c 19                	cmp    $0x19,%al
    468e:	76 d2                	jbe    4662 <submitr+0x332>
    4690:	41 80 f8 20          	cmp    $0x20,%r8b
    4694:	74 63                	je     46f9 <submitr+0x3c9>
    4696:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    469a:	3c 5f                	cmp    $0x5f,%al
    469c:	76 0a                	jbe    46a8 <submitr+0x378>
    469e:	41 80 f8 09          	cmp    $0x9,%r8b
    46a2:	0f 85 06 04 00 00    	jne    4aae <submitr+0x77e>
    46a8:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    46af:	00 
    46b0:	45 0f b6 c0          	movzbl %r8b,%r8d
    46b4:	48 8d 0d 93 1a 00 00 	lea    0x1a93(%rip),%rcx        # 614e <array.3475+0xf8e>
    46bb:	ba 08 00 00 00       	mov    $0x8,%edx
    46c0:	be 01 00 00 00       	mov    $0x1,%esi
    46c5:	b8 00 00 00 00       	mov    $0x0,%eax
    46ca:	e8 d1 ec ff ff       	callq  33a0 <__sprintf_chk@plt>
    46cf:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    46d6:	00 
    46d7:	88 45 00             	mov    %al,0x0(%rbp)
    46da:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    46e1:	00 
    46e2:	88 45 01             	mov    %al,0x1(%rbp)
    46e5:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    46ec:	00 
    46ed:	88 45 02             	mov    %al,0x2(%rbp)
    46f0:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    46f4:	e9 71 ff ff ff       	jmpq   466a <submitr+0x33a>
    46f9:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    46fd:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    4701:	e9 64 ff ff ff       	jmpq   466a <submitr+0x33a>
    4706:	48 b8 45 72 72 6f 72 	movabs $0x47203a726f727245,%rax
    470d:	3a 20 47 
    4710:	48 ba 45 54 20 72 65 	movabs $0x6575716572205445,%rdx
    4717:	71 75 65 
    471a:	49 89 07             	mov    %rax,(%r15)
    471d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4721:	48 b8 73 74 20 65 78 	movabs $0x6565637865207473,%rax
    4728:	63 65 65 
    472b:	48 ba 64 73 20 62 75 	movabs $0x6566667562207364,%rdx
    4732:	66 66 65 
    4735:	49 89 47 10          	mov    %rax,0x10(%r15)
    4739:	49 89 57 18          	mov    %rdx,0x18(%r15)
    473d:	41 c7 47 20 72 20 73 	movl   $0x69732072,0x20(%r15)
    4744:	69 
    4745:	66 41 c7 47 24 7a 65 	movw   $0x657a,0x24(%r15)
    474c:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    4751:	44 89 e7             	mov    %r12d,%edi
    4754:	e8 37 eb ff ff       	callq  3290 <close@plt>
    4759:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    475e:	e9 50 02 00 00       	jmpq   49b3 <submitr+0x683>
    4763:	48 01 c5             	add    %rax,%rbp
    4766:	48 29 c3             	sub    %rax,%rbx
    4769:	74 26                	je     4791 <submitr+0x461>
    476b:	48 89 da             	mov    %rbx,%rdx
    476e:	48 89 ee             	mov    %rbp,%rsi
    4771:	44 89 e7             	mov    %r12d,%edi
    4774:	e8 e7 ea ff ff       	callq  3260 <write@plt>
    4779:	48 85 c0             	test   %rax,%rax
    477c:	7f e5                	jg     4763 <submitr+0x433>
    477e:	e8 ad ea ff ff       	callq  3230 <__errno_location@plt>
    4783:	83 38 04             	cmpl   $0x4,(%rax)
    4786:	0f 85 c3 02 00 00    	jne    4a4f <submitr+0x71f>
    478c:	4c 89 e8             	mov    %r13,%rax
    478f:	eb d2                	jmp    4763 <submitr+0x433>
    4791:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    4796:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    479d:	00 
    479e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    47a3:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    47a8:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    47ad:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    47b4:	00 
    47b5:	ba 00 20 00 00       	mov    $0x2000,%edx
    47ba:	e8 a8 fa ff ff       	callq  4267 <rio_readlineb>
    47bf:	48 85 c0             	test   %rax,%rax
    47c2:	0f 8e ec 00 00 00    	jle    48b4 <submitr+0x584>
    47c8:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    47cd:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    47d4:	00 
    47d5:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    47dc:	00 
    47dd:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    47e4:	00 
    47e5:	48 8d 35 69 19 00 00 	lea    0x1969(%rip),%rsi        # 6155 <array.3475+0xf95>
    47ec:	b8 00 00 00 00       	mov    $0x0,%eax
    47f1:	e8 1a eb ff ff       	callq  3310 <__isoc99_sscanf@plt>
    47f6:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    47fb:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    4802:	0f 85 20 01 00 00    	jne    4928 <submitr+0x5f8>
    4808:	48 8d 1d 57 19 00 00 	lea    0x1957(%rip),%rbx        # 6166 <array.3475+0xfa6>
    480f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4816:	00 
    4817:	b9 03 00 00 00       	mov    $0x3,%ecx
    481c:	48 89 df             	mov    %rbx,%rdi
    481f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    4821:	0f 97 c0             	seta   %al
    4824:	1c 00                	sbb    $0x0,%al
    4826:	84 c0                	test   %al,%al
    4828:	0f 84 31 01 00 00    	je     495f <submitr+0x62f>
    482e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4835:	00 
    4836:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    483b:	ba 00 20 00 00       	mov    $0x2000,%edx
    4840:	e8 22 fa ff ff       	callq  4267 <rio_readlineb>
    4845:	48 85 c0             	test   %rax,%rax
    4848:	7f c5                	jg     480f <submitr+0x4df>
    484a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4851:	3a 20 43 
    4854:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    485b:	20 75 6e 
    485e:	49 89 07             	mov    %rax,(%r15)
    4861:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4865:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    486c:	74 6f 20 
    486f:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    4876:	68 65 61 
    4879:	49 89 47 10          	mov    %rax,0x10(%r15)
    487d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4881:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    4888:	66 72 6f 
    488b:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    4892:	76 65 72 
    4895:	49 89 47 20          	mov    %rax,0x20(%r15)
    4899:	49 89 57 28          	mov    %rdx,0x28(%r15)
    489d:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    48a2:	44 89 e7             	mov    %r12d,%edi
    48a5:	e8 e6 e9 ff ff       	callq  3290 <close@plt>
    48aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    48af:	e9 ff 00 00 00       	jmpq   49b3 <submitr+0x683>
    48b4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    48bb:	3a 20 43 
    48be:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    48c5:	20 75 6e 
    48c8:	49 89 07             	mov    %rax,(%r15)
    48cb:	49 89 57 08          	mov    %rdx,0x8(%r15)
    48cf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    48d6:	74 6f 20 
    48d9:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    48e0:	66 69 72 
    48e3:	49 89 47 10          	mov    %rax,0x10(%r15)
    48e7:	49 89 57 18          	mov    %rdx,0x18(%r15)
    48eb:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    48f2:	61 64 65 
    48f5:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    48fc:	6d 20 73 
    48ff:	49 89 47 20          	mov    %rax,0x20(%r15)
    4903:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4907:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    490e:	65 
    490f:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    4916:	44 89 e7             	mov    %r12d,%edi
    4919:	e8 72 e9 ff ff       	callq  3290 <close@plt>
    491e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4923:	e9 8b 00 00 00       	jmpq   49b3 <submitr+0x683>
    4928:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    492f:	00 
    4930:	48 8d 0d 69 17 00 00 	lea    0x1769(%rip),%rcx        # 60a0 <array.3475+0xee0>
    4937:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    493e:	be 01 00 00 00       	mov    $0x1,%esi
    4943:	4c 89 ff             	mov    %r15,%rdi
    4946:	b8 00 00 00 00       	mov    $0x0,%eax
    494b:	e8 50 ea ff ff       	callq  33a0 <__sprintf_chk@plt>
    4950:	44 89 e7             	mov    %r12d,%edi
    4953:	e8 38 e9 ff ff       	callq  3290 <close@plt>
    4958:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    495d:	eb 54                	jmp    49b3 <submitr+0x683>
    495f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4966:	00 
    4967:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    496c:	ba 00 20 00 00       	mov    $0x2000,%edx
    4971:	e8 f1 f8 ff ff       	callq  4267 <rio_readlineb>
    4976:	48 85 c0             	test   %rax,%rax
    4979:	7e 61                	jle    49dc <submitr+0x6ac>
    497b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4982:	00 
    4983:	4c 89 ff             	mov    %r15,%rdi
    4986:	e8 b5 e8 ff ff       	callq  3240 <strcpy@plt>
    498b:	44 89 e7             	mov    %r12d,%edi
    498e:	e8 fd e8 ff ff       	callq  3290 <close@plt>
    4993:	b9 03 00 00 00       	mov    $0x3,%ecx
    4998:	48 8d 3d ca 17 00 00 	lea    0x17ca(%rip),%rdi        # 6169 <array.3475+0xfa9>
    499f:	4c 89 fe             	mov    %r15,%rsi
    49a2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    49a4:	0f 97 c0             	seta   %al
    49a7:	1c 00                	sbb    $0x0,%al
    49a9:	84 c0                	test   %al,%al
    49ab:	0f 95 c0             	setne  %al
    49ae:	0f b6 c0             	movzbl %al,%eax
    49b1:	f7 d8                	neg    %eax
    49b3:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    49ba:	00 
    49bb:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    49c2:	00 00 
    49c4:	0f 85 fb 01 00 00    	jne    4bc5 <submitr+0x895>
    49ca:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    49d1:	5b                   	pop    %rbx
    49d2:	5d                   	pop    %rbp
    49d3:	41 5c                	pop    %r12
    49d5:	41 5d                	pop    %r13
    49d7:	41 5e                	pop    %r14
    49d9:	41 5f                	pop    %r15
    49db:	c3                   	retq   
    49dc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    49e3:	3a 20 43 
    49e6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    49ed:	20 75 6e 
    49f0:	49 89 07             	mov    %rax,(%r15)
    49f3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    49f7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    49fe:	74 6f 20 
    4a01:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    4a08:	73 74 61 
    4a0b:	49 89 47 10          	mov    %rax,0x10(%r15)
    4a0f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4a13:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    4a1a:	65 73 73 
    4a1d:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    4a24:	72 6f 6d 
    4a27:	49 89 47 20          	mov    %rax,0x20(%r15)
    4a2b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4a2f:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    4a36:	65 72 00 
    4a39:	49 89 47 30          	mov    %rax,0x30(%r15)
    4a3d:	44 89 e7             	mov    %r12d,%edi
    4a40:	e8 4b e8 ff ff       	callq  3290 <close@plt>
    4a45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4a4a:	e9 64 ff ff ff       	jmpq   49b3 <submitr+0x683>
    4a4f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4a56:	3a 20 43 
    4a59:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4a60:	20 75 6e 
    4a63:	49 89 07             	mov    %rax,(%r15)
    4a66:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4a6a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4a71:	74 6f 20 
    4a74:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    4a7b:	20 74 6f 
    4a7e:	49 89 47 10          	mov    %rax,0x10(%r15)
    4a82:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4a86:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    4a8d:	73 65 72 
    4a90:	49 89 47 20          	mov    %rax,0x20(%r15)
    4a94:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    4a9b:	00 
    4a9c:	44 89 e7             	mov    %r12d,%edi
    4a9f:	e8 ec e7 ff ff       	callq  3290 <close@plt>
    4aa4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4aa9:	e9 05 ff ff ff       	jmpq   49b3 <submitr+0x683>
    4aae:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    4ab5:	3a 20 52 
    4ab8:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    4abf:	20 73 74 
    4ac2:	49 89 07             	mov    %rax,(%r15)
    4ac5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4ac9:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    4ad0:	63 6f 6e 
    4ad3:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    4ada:	20 61 6e 
    4add:	49 89 47 10          	mov    %rax,0x10(%r15)
    4ae1:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4ae5:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    4aec:	67 61 6c 
    4aef:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    4af6:	6e 70 72 
    4af9:	49 89 47 20          	mov    %rax,0x20(%r15)
    4afd:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4b01:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    4b08:	6c 65 20 
    4b0b:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    4b12:	63 74 65 
    4b15:	49 89 47 30          	mov    %rax,0x30(%r15)
    4b19:	49 89 57 38          	mov    %rdx,0x38(%r15)
    4b1d:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    4b24:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    4b29:	44 89 e7             	mov    %r12d,%edi
    4b2c:	e8 5f e7 ff ff       	callq  3290 <close@plt>
    4b31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4b36:	e9 78 fe ff ff       	jmpq   49b3 <submitr+0x683>
    4b3b:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    4b42:	00 
    4b43:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
    4b4a:	00 
    4b4b:	50                   	push   %rax
    4b4c:	ff 74 24 18          	pushq  0x18(%rsp)
    4b50:	ff 74 24 28          	pushq  0x28(%rsp)
    4b54:	ff 74 24 20          	pushq  0x20(%rsp)
    4b58:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    4b5d:	4c 8d 05 6c 15 00 00 	lea    0x156c(%rip),%r8        # 60d0 <array.3475+0xf10>
    4b64:	b9 00 20 00 00       	mov    $0x2000,%ecx
    4b69:	ba 01 00 00 00       	mov    $0x1,%edx
    4b6e:	be 00 20 00 00       	mov    $0x2000,%esi
    4b73:	b8 00 00 00 00       	mov    $0x0,%eax
    4b78:	e8 93 e6 ff ff       	callq  3210 <__snprintf_chk@plt>
    4b7d:	48 83 c4 20          	add    $0x20,%rsp
    4b81:	3d ff 1f 00 00       	cmp    $0x1fff,%eax
    4b86:	0f 8f 7a fb ff ff    	jg     4706 <submitr+0x3d6>
    4b8c:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    4b93:	00 
    4b94:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    4b9b:	b8 00 00 00 00       	mov    $0x0,%eax
    4ba0:	f2 ae                	repnz scas %es:(%rdi),%al
    4ba2:	48 f7 d1             	not    %rcx
    4ba5:	48 89 cb             	mov    %rcx,%rbx
    4ba8:	48 83 eb 01          	sub    $0x1,%rbx
    4bac:	0f 84 df fb ff ff    	je     4791 <submitr+0x461>
    4bb2:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    4bb9:	00 
    4bba:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    4bc0:	e9 a6 fb ff ff       	jmpq   476b <submitr+0x43b>
    4bc5:	e8 a6 e6 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000004bca <init_timeout>:
    4bca:	f3 0f 1e fa          	endbr64 
    4bce:	85 ff                	test   %edi,%edi
    4bd0:	75 01                	jne    4bd3 <init_timeout+0x9>
    4bd2:	c3                   	retq   
    4bd3:	53                   	push   %rbx
    4bd4:	89 fb                	mov    %edi,%ebx
    4bd6:	48 8d 35 54 f6 ff ff 	lea    -0x9ac(%rip),%rsi        # 4231 <sigalrm_handler>
    4bdd:	bf 0e 00 00 00       	mov    $0xe,%edi
    4be2:	e8 d9 e6 ff ff       	callq  32c0 <signal@plt>
    4be7:	85 db                	test   %ebx,%ebx
    4be9:	bf 00 00 00 00       	mov    $0x0,%edi
    4bee:	0f 49 fb             	cmovns %ebx,%edi
    4bf1:	e8 8a e6 ff ff       	callq  3280 <alarm@plt>
    4bf6:	5b                   	pop    %rbx
    4bf7:	c3                   	retq   

0000000000004bf8 <init_driver>:
    4bf8:	f3 0f 1e fa          	endbr64 
    4bfc:	41 54                	push   %r12
    4bfe:	55                   	push   %rbp
    4bff:	53                   	push   %rbx
    4c00:	48 83 ec 20          	sub    $0x20,%rsp
    4c04:	48 89 fd             	mov    %rdi,%rbp
    4c07:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4c0e:	00 00 
    4c10:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    4c15:	31 c0                	xor    %eax,%eax
    4c17:	be 01 00 00 00       	mov    $0x1,%esi
    4c1c:	bf 0d 00 00 00       	mov    $0xd,%edi
    4c21:	e8 9a e6 ff ff       	callq  32c0 <signal@plt>
    4c26:	be 01 00 00 00       	mov    $0x1,%esi
    4c2b:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4c30:	e8 8b e6 ff ff       	callq  32c0 <signal@plt>
    4c35:	be 01 00 00 00       	mov    $0x1,%esi
    4c3a:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4c3f:	e8 7c e6 ff ff       	callq  32c0 <signal@plt>
    4c44:	ba 00 00 00 00       	mov    $0x0,%edx
    4c49:	be 01 00 00 00       	mov    $0x1,%esi
    4c4e:	bf 02 00 00 00       	mov    $0x2,%edi
    4c53:	e8 58 e7 ff ff       	callq  33b0 <socket@plt>
    4c58:	85 c0                	test   %eax,%eax
    4c5a:	0f 88 9c 00 00 00    	js     4cfc <init_driver+0x104>
    4c60:	89 c3                	mov    %eax,%ebx
    4c62:	48 8d 3d 03 15 00 00 	lea    0x1503(%rip),%rdi        # 616c <array.3475+0xfac>
    4c69:	e8 62 e6 ff ff       	callq  32d0 <gethostbyname@plt>
    4c6e:	48 85 c0             	test   %rax,%rax
    4c71:	0f 84 d1 00 00 00    	je     4d48 <init_driver+0x150>
    4c77:	49 89 e4             	mov    %rsp,%r12
    4c7a:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    4c81:	00 
    4c82:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    4c89:	00 00 
    4c8b:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    4c91:	48 63 50 14          	movslq 0x14(%rax),%rdx
    4c95:	48 8b 40 18          	mov    0x18(%rax),%rax
    4c99:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    4c9e:	b9 0c 00 00 00       	mov    $0xc,%ecx
    4ca3:	48 8b 30             	mov    (%rax),%rsi
    4ca6:	e8 35 e6 ff ff       	callq  32e0 <__memmove_chk@plt>
    4cab:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    4cb2:	ba 10 00 00 00       	mov    $0x10,%edx
    4cb7:	4c 89 e6             	mov    %r12,%rsi
    4cba:	89 df                	mov    %ebx,%edi
    4cbc:	e8 9f e6 ff ff       	callq  3360 <connect@plt>
    4cc1:	85 c0                	test   %eax,%eax
    4cc3:	0f 88 e7 00 00 00    	js     4db0 <init_driver+0x1b8>
    4cc9:	89 df                	mov    %ebx,%edi
    4ccb:	e8 c0 e5 ff ff       	callq  3290 <close@plt>
    4cd0:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    4cd6:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    4cda:	b8 00 00 00 00       	mov    $0x0,%eax
    4cdf:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    4ce4:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4ceb:	00 00 
    4ced:	0f 85 f5 00 00 00    	jne    4de8 <init_driver+0x1f0>
    4cf3:	48 83 c4 20          	add    $0x20,%rsp
    4cf7:	5b                   	pop    %rbx
    4cf8:	5d                   	pop    %rbp
    4cf9:	41 5c                	pop    %r12
    4cfb:	c3                   	retq   
    4cfc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4d03:	3a 20 43 
    4d06:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4d0d:	20 75 6e 
    4d10:	48 89 45 00          	mov    %rax,0x0(%rbp)
    4d14:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    4d18:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4d1f:	74 6f 20 
    4d22:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    4d29:	65 20 73 
    4d2c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    4d30:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    4d34:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    4d3b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    4d41:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4d46:	eb 97                	jmp    4cdf <init_driver+0xe7>
    4d48:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    4d4f:	3a 20 44 
    4d52:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    4d59:	20 75 6e 
    4d5c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    4d60:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    4d64:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4d6b:	74 6f 20 
    4d6e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    4d75:	76 65 20 
    4d78:	48 89 45 10          	mov    %rax,0x10(%rbp)
    4d7c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    4d80:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    4d87:	72 20 61 
    4d8a:	48 89 45 20          	mov    %rax,0x20(%rbp)
    4d8e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    4d95:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    4d9b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    4d9f:	89 df                	mov    %ebx,%edi
    4da1:	e8 ea e4 ff ff       	callq  3290 <close@plt>
    4da6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4dab:	e9 2f ff ff ff       	jmpq   4cdf <init_driver+0xe7>
    4db0:	4c 8d 05 b5 13 00 00 	lea    0x13b5(%rip),%r8        # 616c <array.3475+0xfac>
    4db7:	48 8d 0d 6a 13 00 00 	lea    0x136a(%rip),%rcx        # 6128 <array.3475+0xf68>
    4dbe:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    4dc5:	be 01 00 00 00       	mov    $0x1,%esi
    4dca:	48 89 ef             	mov    %rbp,%rdi
    4dcd:	b8 00 00 00 00       	mov    $0x0,%eax
    4dd2:	e8 c9 e5 ff ff       	callq  33a0 <__sprintf_chk@plt>
    4dd7:	89 df                	mov    %ebx,%edi
    4dd9:	e8 b2 e4 ff ff       	callq  3290 <close@plt>
    4dde:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4de3:	e9 f7 fe ff ff       	jmpq   4cdf <init_driver+0xe7>
    4de8:	e8 83 e4 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000004ded <driver_post>:
    4ded:	f3 0f 1e fa          	endbr64 
    4df1:	53                   	push   %rbx
    4df2:	4c 89 c3             	mov    %r8,%rbx
    4df5:	85 c9                	test   %ecx,%ecx
    4df7:	75 17                	jne    4e10 <driver_post+0x23>
    4df9:	48 85 ff             	test   %rdi,%rdi
    4dfc:	74 05                	je     4e03 <driver_post+0x16>
    4dfe:	80 3f 00             	cmpb   $0x0,(%rdi)
    4e01:	75 33                	jne    4e36 <driver_post+0x49>
    4e03:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    4e08:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    4e0c:	89 c8                	mov    %ecx,%eax
    4e0e:	5b                   	pop    %rbx
    4e0f:	c3                   	retq   
    4e10:	48 8d 35 70 13 00 00 	lea    0x1370(%rip),%rsi        # 6187 <array.3475+0xfc7>
    4e17:	bf 01 00 00 00       	mov    $0x1,%edi
    4e1c:	b8 00 00 00 00       	mov    $0x0,%eax
    4e21:	e8 fa e4 ff ff       	callq  3320 <__printf_chk@plt>
    4e26:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    4e2b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    4e2f:	b8 00 00 00 00       	mov    $0x0,%eax
    4e34:	eb d8                	jmp    4e0e <driver_post+0x21>
    4e36:	41 50                	push   %r8
    4e38:	52                   	push   %rdx
    4e39:	4c 8d 0d 5e 13 00 00 	lea    0x135e(%rip),%r9        # 619e <array.3475+0xfde>
    4e40:	49 89 f0             	mov    %rsi,%r8
    4e43:	48 89 f9             	mov    %rdi,%rcx
    4e46:	48 8d 15 55 13 00 00 	lea    0x1355(%rip),%rdx        # 61a2 <array.3475+0xfe2>
    4e4d:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    4e52:	48 8d 3d 13 13 00 00 	lea    0x1313(%rip),%rdi        # 616c <array.3475+0xfac>
    4e59:	e8 d2 f4 ff ff       	callq  4330 <submitr>
    4e5e:	48 83 c4 10          	add    $0x10,%rsp
    4e62:	eb aa                	jmp    4e0e <driver_post+0x21>
    4e64:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    4e6b:	00 00 00 
    4e6e:	66 90                	xchg   %ax,%ax

0000000000004e70 <__libc_csu_init>:
    4e70:	f3 0f 1e fa          	endbr64 
    4e74:	41 57                	push   %r15
    4e76:	4c 8d 3d 63 2e 00 00 	lea    0x2e63(%rip),%r15        # 7ce0 <__frame_dummy_init_array_entry>
    4e7d:	41 56                	push   %r14
    4e7f:	49 89 d6             	mov    %rdx,%r14
    4e82:	41 55                	push   %r13
    4e84:	49 89 f5             	mov    %rsi,%r13
    4e87:	41 54                	push   %r12
    4e89:	41 89 fc             	mov    %edi,%r12d
    4e8c:	55                   	push   %rbp
    4e8d:	48 8d 2d 54 2e 00 00 	lea    0x2e54(%rip),%rbp        # 7ce8 <__do_global_dtors_aux_fini_array_entry>
    4e94:	53                   	push   %rbx
    4e95:	4c 29 fd             	sub    %r15,%rbp
    4e98:	48 83 ec 08          	sub    $0x8,%rsp
    4e9c:	e8 5f e1 ff ff       	callq  3000 <_init>
    4ea1:	48 c1 fd 03          	sar    $0x3,%rbp
    4ea5:	74 1f                	je     4ec6 <__libc_csu_init+0x56>
    4ea7:	31 db                	xor    %ebx,%ebx
    4ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4eb0:	4c 89 f2             	mov    %r14,%rdx
    4eb3:	4c 89 ee             	mov    %r13,%rsi
    4eb6:	44 89 e7             	mov    %r12d,%edi
    4eb9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    4ebd:	48 83 c3 01          	add    $0x1,%rbx
    4ec1:	48 39 dd             	cmp    %rbx,%rbp
    4ec4:	75 ea                	jne    4eb0 <__libc_csu_init+0x40>
    4ec6:	48 83 c4 08          	add    $0x8,%rsp
    4eca:	5b                   	pop    %rbx
    4ecb:	5d                   	pop    %rbp
    4ecc:	41 5c                	pop    %r12
    4ece:	41 5d                	pop    %r13
    4ed0:	41 5e                	pop    %r14
    4ed2:	41 5f                	pop    %r15
    4ed4:	c3                   	retq   
    4ed5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4edc:	00 00 00 00 

0000000000004ee0 <__libc_csu_fini>:
    4ee0:	f3 0f 1e fa          	endbr64 
    4ee4:	c3                   	retq   

Disassembly of section .fini:

0000000000004ee8 <_fini>:
    4ee8:	f3 0f 1e fa          	endbr64 
    4eec:	48 83 ec 08          	sub    $0x8,%rsp
    4ef0:	48 83 c4 08          	add    $0x8,%rsp
    4ef4:	c3                   	retq   
