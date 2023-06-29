
binaries/110-is_bst:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 2f 00 00 	mov    0x2fd1(%rip),%rax        # 403fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <free@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <free@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 404000 <free@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <puts@plt>:
  401040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 404008 <puts@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <printf@plt>:
  401050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 404010 <printf@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <memset@plt>:
  401060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 404018 <memset@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <malloc@plt>:
  401070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 404020 <malloc@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <sprintf@plt>:
  401080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 404028 <sprintf@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401090 <_start>:
  401090:	f3 0f 1e fa          	endbr64
  401094:	31 ed                	xor    %ebp,%ebp
  401096:	49 89 d1             	mov    %rdx,%r9
  401099:	5e                   	pop    %rsi
  40109a:	48 89 e2             	mov    %rsp,%rdx
  40109d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4010a1:	50                   	push   %rax
  4010a2:	54                   	push   %rsp
  4010a3:	45 31 c0             	xor    %r8d,%r8d
  4010a6:	31 c9                	xor    %ecx,%ecx
  4010a8:	48 c7 c7 10 16 40 00 	mov    $0x401610,%rdi
  4010af:	ff 15 23 2f 00 00    	call   *0x2f23(%rip)        # 403fd8 <__libc_start_main@GLIBC_2.34>
  4010b5:	f4                   	hlt

00000000004010b6 <.annobin_abi_note.c>:
  4010b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010bd:	00 00 00 

00000000004010c0 <_dl_relocate_static_pie>:
  4010c0:	f3 0f 1e fa          	endbr64
  4010c4:	c3                   	ret

00000000004010c5 <.annobin__dl_relocate_static_pie.end>:
  4010c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010cc:	00 00 00 
  4010cf:	90                   	nop

00000000004010d0 <deregister_tm_clones>:
  4010d0:	b8 38 40 40 00       	mov    $0x404038,%eax
  4010d5:	48 3d 38 40 40 00    	cmp    $0x404038,%rax
  4010db:	74 13                	je     4010f0 <deregister_tm_clones+0x20>
  4010dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e2:	48 85 c0             	test   %rax,%rax
  4010e5:	74 09                	je     4010f0 <deregister_tm_clones+0x20>
  4010e7:	bf 38 40 40 00       	mov    $0x404038,%edi
  4010ec:	ff e0                	jmp    *%rax
  4010ee:	66 90                	xchg   %ax,%ax
  4010f0:	c3                   	ret
  4010f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <register_tm_clones>:
  401100:	be 38 40 40 00       	mov    $0x404038,%esi
  401105:	48 81 ee 38 40 40 00 	sub    $0x404038,%rsi
  40110c:	48 89 f0             	mov    %rsi,%rax
  40110f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401113:	48 c1 f8 03          	sar    $0x3,%rax
  401117:	48 01 c6             	add    %rax,%rsi
  40111a:	48 d1 fe             	sar    %rsi
  40111d:	74 11                	je     401130 <register_tm_clones+0x30>
  40111f:	b8 00 00 00 00       	mov    $0x0,%eax
  401124:	48 85 c0             	test   %rax,%rax
  401127:	74 07                	je     401130 <register_tm_clones+0x30>
  401129:	bf 38 40 40 00       	mov    $0x404038,%edi
  40112e:	ff e0                	jmp    *%rax
  401130:	c3                   	ret
  401131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401140 <__do_global_dtors_aux>:
  401140:	f3 0f 1e fa          	endbr64
  401144:	80 3d e9 2e 00 00 00 	cmpb   $0x0,0x2ee9(%rip)        # 404034 <completed.0>
  40114b:	75 13                	jne    401160 <__do_global_dtors_aux+0x20>
  40114d:	55                   	push   %rbp
  40114e:	48 89 e5             	mov    %rsp,%rbp
  401151:	e8 7a ff ff ff       	call   4010d0 <deregister_tm_clones>
  401156:	c6 05 d7 2e 00 00 01 	movb   $0x1,0x2ed7(%rip)        # 404034 <completed.0>
  40115d:	5d                   	pop    %rbp
  40115e:	c3                   	ret
  40115f:	90                   	nop
  401160:	c3                   	ret
  401161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401170 <frame_dummy>:
  401170:	f3 0f 1e fa          	endbr64
  401174:	eb 8a                	jmp    401100 <register_tm_clones>

0000000000401176 <print_t>:
  401176:	55                   	push   %rbp
  401177:	48 89 e5             	mov    %rsp,%rbp
  40117a:	48 83 ec 40          	sub    $0x40,%rsp
  40117e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401182:	89 75 d4             	mov    %esi,-0x2c(%rbp)
  401185:	89 55 d0             	mov    %edx,-0x30(%rbp)
  401188:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  40118c:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  401191:	75 0a                	jne    40119d <print_t+0x27>
  401193:	b8 00 00 00 00       	mov    $0x0,%eax
  401198:	e9 37 02 00 00       	jmp    4013d4 <print_t+0x25e>
  40119d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011a1:	48 8b 40 08          	mov    0x8(%rax),%rax
  4011a5:	48 85 c0             	test   %rax,%rax
  4011a8:	74 19                	je     4011c3 <print_t+0x4d>
  4011aa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011ae:	48 8b 40 08          	mov    0x8(%rax),%rax
  4011b2:	48 8b 40 10          	mov    0x10(%rax),%rax
  4011b6:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
  4011ba:	75 07                	jne    4011c3 <print_t+0x4d>
  4011bc:	b8 01 00 00 00       	mov    $0x1,%eax
  4011c1:	eb 05                	jmp    4011c8 <print_t+0x52>
  4011c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4011c8:	89 45 f8             	mov    %eax,-0x8(%rbp)
  4011cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011cf:	8b 10                	mov    (%rax),%edx
  4011d1:	48 8d 45 e6          	lea    -0x1a(%rbp),%rax
  4011d5:	be 10 20 40 00       	mov    $0x402010,%esi
  4011da:	48 89 c7             	mov    %rax,%rdi
  4011dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4011e2:	e8 99 fe ff ff       	call   401080 <sprintf@plt>
  4011e7:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4011ea:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4011ed:	8d 78 01             	lea    0x1(%rax),%edi
  4011f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011f4:	48 8b 40 10          	mov    0x10(%rax),%rax
  4011f8:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4011fc:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  4011ff:	48 89 d1             	mov    %rdx,%rcx
  401202:	89 fa                	mov    %edi,%edx
  401204:	48 89 c7             	mov    %rax,%rdi
  401207:	e8 6a ff ff ff       	call   401176 <print_t>
  40120c:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40120f:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401212:	8d 78 01             	lea    0x1(%rax),%edi
  401215:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401218:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40121b:	01 c2                	add    %eax,%edx
  40121d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401220:	8d 34 02             	lea    (%rdx,%rax,1),%esi
  401223:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401227:	48 8b 40 18          	mov    0x18(%rax),%rax
  40122b:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40122f:	48 89 d1             	mov    %rdx,%rcx
  401232:	89 fa                	mov    %edi,%edx
  401234:	48 89 c7             	mov    %rax,%rdi
  401237:	e8 3a ff ff ff       	call   401176 <print_t>
  40123c:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40123f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401246:	eb 39                	jmp    401281 <print_t+0x10b>
  401248:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40124b:	48 98                	cltq
  40124d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401254:	00 
  401255:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401259:	48 01 d0             	add    %rdx,%rax
  40125c:	48 8b 10             	mov    (%rax),%rdx
  40125f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  401262:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401265:	01 c1                	add    %eax,%ecx
  401267:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40126a:	01 c8                	add    %ecx,%eax
  40126c:	48 98                	cltq
  40126e:	48 01 c2             	add    %rax,%rdx
  401271:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401274:	48 98                	cltq
  401276:	0f b6 44 05 e6       	movzbl -0x1a(%rbp,%rax,1),%eax
  40127b:	88 02                	mov    %al,(%rdx)
  40127d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  401281:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401284:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  401287:	7c bf                	jl     401248 <print_t+0xd2>
  401289:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
  40128d:	0f 84 98 00 00 00    	je     40132b <print_t+0x1b5>
  401293:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  401297:	0f 84 8e 00 00 00    	je     40132b <print_t+0x1b5>
  40129d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4012a4:	eb 3e                	jmp    4012e4 <print_t+0x16e>
  4012a6:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4012a9:	48 98                	cltq
  4012ab:	48 c1 e0 03          	shl    $0x3,%rax
  4012af:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
  4012b3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4012b7:	48 01 d0             	add    %rdx,%rax
  4012ba:	48 8b 10             	mov    (%rax),%rdx
  4012bd:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  4012c0:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4012c3:	01 c1                	add    %eax,%ecx
  4012c5:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4012c8:	89 c6                	mov    %eax,%esi
  4012ca:	c1 ee 1f             	shr    $0x1f,%esi
  4012cd:	01 f0                	add    %esi,%eax
  4012cf:	d1 f8                	sar    %eax
  4012d1:	01 c1                	add    %eax,%ecx
  4012d3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012d6:	01 c8                	add    %ecx,%eax
  4012d8:	48 98                	cltq
  4012da:	48 01 d0             	add    %rdx,%rax
  4012dd:	c6 00 2d             	movb   $0x2d,(%rax)
  4012e0:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4012e4:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4012e7:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4012ea:	01 d0                	add    %edx,%eax
  4012ec:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  4012ef:	7c b5                	jl     4012a6 <print_t+0x130>
  4012f1:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4012f4:	48 98                	cltq
  4012f6:	48 c1 e0 03          	shl    $0x3,%rax
  4012fa:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
  4012fe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401302:	48 01 d0             	add    %rdx,%rax
  401305:	48 8b 10             	mov    (%rax),%rdx
  401308:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  40130b:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40130e:	01 c1                	add    %eax,%ecx
  401310:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401313:	89 c6                	mov    %eax,%esi
  401315:	c1 ee 1f             	shr    $0x1f,%esi
  401318:	01 f0                	add    %esi,%eax
  40131a:	d1 f8                	sar    %eax
  40131c:	01 c8                	add    %ecx,%eax
  40131e:	48 98                	cltq
  401320:	48 01 d0             	add    %rdx,%rax
  401323:	c6 00 2e             	movb   $0x2e,(%rax)
  401326:	e9 9c 00 00 00       	jmp    4013c7 <print_t+0x251>
  40132b:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
  40132f:	0f 84 92 00 00 00    	je     4013c7 <print_t+0x251>
  401335:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  401339:	0f 85 88 00 00 00    	jne    4013c7 <print_t+0x251>
  40133f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401346:	eb 3d                	jmp    401385 <print_t+0x20f>
  401348:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40134b:	48 98                	cltq
  40134d:	48 c1 e0 03          	shl    $0x3,%rax
  401351:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
  401355:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401359:	48 01 d0             	add    %rdx,%rax
  40135c:	48 8b 10             	mov    (%rax),%rdx
  40135f:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401362:	89 c1                	mov    %eax,%ecx
  401364:	c1 e9 1f             	shr    $0x1f,%ecx
  401367:	01 c8                	add    %ecx,%eax
  401369:	d1 f8                	sar    %eax
  40136b:	f7 d8                	neg    %eax
  40136d:	89 c1                	mov    %eax,%ecx
  40136f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401372:	01 c1                	add    %eax,%ecx
  401374:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401377:	01 c8                	add    %ecx,%eax
  401379:	48 98                	cltq
  40137b:	48 01 d0             	add    %rdx,%rax
  40137e:	c6 00 2d             	movb   $0x2d,(%rax)
  401381:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  401385:	8b 55 f0             	mov    -0x10(%rbp),%edx
  401388:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40138b:	01 d0                	add    %edx,%eax
  40138d:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  401390:	7c b6                	jl     401348 <print_t+0x1d2>
  401392:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401395:	48 98                	cltq
  401397:	48 c1 e0 03          	shl    $0x3,%rax
  40139b:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
  40139f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4013a3:	48 01 d0             	add    %rdx,%rax
  4013a6:	48 8b 10             	mov    (%rax),%rdx
  4013a9:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  4013ac:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4013af:	01 c1                	add    %eax,%ecx
  4013b1:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4013b4:	89 c6                	mov    %eax,%esi
  4013b6:	c1 ee 1f             	shr    $0x1f,%esi
  4013b9:	01 f0                	add    %esi,%eax
  4013bb:	d1 f8                	sar    %eax
  4013bd:	01 c8                	add    %ecx,%eax
  4013bf:	48 98                	cltq
  4013c1:	48 01 d0             	add    %rdx,%rax
  4013c4:	c6 00 2e             	movb   $0x2e,(%rax)
  4013c7:	8b 55 f0             	mov    -0x10(%rbp),%edx
  4013ca:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4013cd:	01 c2                	add    %eax,%edx
  4013cf:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4013d2:	01 d0                	add    %edx,%eax
  4013d4:	c9                   	leave
  4013d5:	c3                   	ret

00000000004013d6 <_height>:
  4013d6:	55                   	push   %rbp
  4013d7:	48 89 e5             	mov    %rsp,%rbp
  4013da:	48 83 ec 20          	sub    $0x20,%rsp
  4013de:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4013e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013e6:	48 8b 40 10          	mov    0x10(%rax),%rax
  4013ea:	48 85 c0             	test   %rax,%rax
  4013ed:	74 16                	je     401405 <_height+0x2f>
  4013ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013f3:	48 8b 40 10          	mov    0x10(%rax),%rax
  4013f7:	48 89 c7             	mov    %rax,%rdi
  4013fa:	e8 d7 ff ff ff       	call   4013d6 <_height>
  4013ff:	48 83 c0 01          	add    $0x1,%rax
  401403:	eb 05                	jmp    40140a <_height+0x34>
  401405:	b8 00 00 00 00       	mov    $0x0,%eax
  40140a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40140e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401412:	48 8b 40 18          	mov    0x18(%rax),%rax
  401416:	48 85 c0             	test   %rax,%rax
  401419:	74 16                	je     401431 <_height+0x5b>
  40141b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40141f:	48 8b 40 18          	mov    0x18(%rax),%rax
  401423:	48 89 c7             	mov    %rax,%rdi
  401426:	e8 ab ff ff ff       	call   4013d6 <_height>
  40142b:	48 83 c0 01          	add    $0x1,%rax
  40142f:	eb 05                	jmp    401436 <_height+0x60>
  401431:	b8 00 00 00 00       	mov    $0x0,%eax
  401436:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40143a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40143e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401442:	48 39 c2             	cmp    %rax,%rdx
  401445:	48 0f 43 c2          	cmovae %rdx,%rax
  401449:	c9                   	leave
  40144a:	c3                   	ret

000000000040144b <binary_tree_print>:
  40144b:	55                   	push   %rbp
  40144c:	48 89 e5             	mov    %rsp,%rbp
  40144f:	53                   	push   %rbx
  401450:	48 83 ec 38          	sub    $0x38,%rsp
  401454:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  401458:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
  40145d:	0f 84 a0 01 00 00    	je     401603 <binary_tree_print+0x1b8>
  401463:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401467:	48 89 c7             	mov    %rax,%rdi
  40146a:	e8 67 ff ff ff       	call   4013d6 <_height>
  40146f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401473:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401477:	48 83 c0 01          	add    $0x1,%rax
  40147b:	48 c1 e0 03          	shl    $0x3,%rax
  40147f:	48 89 c7             	mov    %rax,%rdi
  401482:	e8 e9 fb ff ff       	call   401070 <malloc@plt>
  401487:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40148b:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  401490:	0f 84 70 01 00 00    	je     401606 <binary_tree_print+0x1bb>
  401496:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  40149d:	00 
  40149e:	eb 6d                	jmp    40150d <binary_tree_print+0xc2>
  4014a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014a4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4014ab:	00 
  4014ac:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4014b0:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
  4014b4:	bf ff 00 00 00       	mov    $0xff,%edi
  4014b9:	e8 b2 fb ff ff       	call   401070 <malloc@plt>
  4014be:	48 89 03             	mov    %rax,(%rbx)
  4014c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014c5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4014cc:	00 
  4014cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4014d1:	48 01 d0             	add    %rdx,%rax
  4014d4:	48 8b 00             	mov    (%rax),%rax
  4014d7:	48 85 c0             	test   %rax,%rax
  4014da:	0f 84 29 01 00 00    	je     401609 <binary_tree_print+0x1be>
  4014e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014e4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4014eb:	00 
  4014ec:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4014f0:	48 01 d0             	add    %rdx,%rax
  4014f3:	48 8b 00             	mov    (%rax),%rax
  4014f6:	ba ff 00 00 00       	mov    $0xff,%edx
  4014fb:	be 20 00 00 00       	mov    $0x20,%esi
  401500:	48 89 c7             	mov    %rax,%rdi
  401503:	e8 58 fb ff ff       	call   401060 <memset@plt>
  401508:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  40150d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401511:	48 83 c0 01          	add    $0x1,%rax
  401515:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
  401519:	72 85                	jb     4014a0 <binary_tree_print+0x55>
  40151b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  40151f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401523:	48 89 d1             	mov    %rdx,%rcx
  401526:	ba 00 00 00 00       	mov    $0x0,%edx
  40152b:	be 00 00 00 00       	mov    $0x0,%esi
  401530:	48 89 c7             	mov    %rax,%rdi
  401533:	e8 3e fc ff ff       	call   401176 <print_t>
  401538:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  40153f:	00 
  401540:	e9 9e 00 00 00       	jmp    4015e3 <binary_tree_print+0x198>
  401545:	48 c7 45 e0 fe 00 00 	movq   $0xfe,-0x20(%rbp)
  40154c:	00 
  40154d:	eb 49                	jmp    401598 <binary_tree_print+0x14d>
  40154f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401553:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40155a:	00 
  40155b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40155f:	48 01 d0             	add    %rdx,%rax
  401562:	48 8b 10             	mov    (%rax),%rdx
  401565:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401569:	48 01 d0             	add    %rdx,%rax
  40156c:	0f b6 00             	movzbl (%rax),%eax
  40156f:	3c 20                	cmp    $0x20,%al
  401571:	75 2e                	jne    4015a1 <binary_tree_print+0x156>
  401573:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401577:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40157e:	00 
  40157f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401583:	48 01 d0             	add    %rdx,%rax
  401586:	48 8b 10             	mov    (%rax),%rdx
  401589:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40158d:	48 01 d0             	add    %rdx,%rax
  401590:	c6 00 00             	movb   $0x0,(%rax)
  401593:	48 83 6d e0 01       	subq   $0x1,-0x20(%rbp)
  401598:	48 83 7d e0 01       	cmpq   $0x1,-0x20(%rbp)
  40159d:	77 b0                	ja     40154f <binary_tree_print+0x104>
  40159f:	eb 01                	jmp    4015a2 <binary_tree_print+0x157>
  4015a1:	90                   	nop
  4015a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015a6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4015ad:	00 
  4015ae:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4015b2:	48 01 d0             	add    %rdx,%rax
  4015b5:	48 8b 00             	mov    (%rax),%rax
  4015b8:	48 89 c7             	mov    %rax,%rdi
  4015bb:	e8 80 fa ff ff       	call   401040 <puts@plt>
  4015c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015c4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4015cb:	00 
  4015cc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4015d0:	48 01 d0             	add    %rdx,%rax
  4015d3:	48 8b 00             	mov    (%rax),%rax
  4015d6:	48 89 c7             	mov    %rax,%rdi
  4015d9:	e8 52 fa ff ff       	call   401030 <free@plt>
  4015de:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  4015e3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4015e7:	48 83 c0 01          	add    $0x1,%rax
  4015eb:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
  4015ef:	0f 82 50 ff ff ff    	jb     401545 <binary_tree_print+0xfa>
  4015f5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4015f9:	48 89 c7             	mov    %rax,%rdi
  4015fc:	e8 2f fa ff ff       	call   401030 <free@plt>
  401601:	eb 07                	jmp    40160a <binary_tree_print+0x1bf>
  401603:	90                   	nop
  401604:	eb 04                	jmp    40160a <binary_tree_print+0x1bf>
  401606:	90                   	nop
  401607:	eb 01                	jmp    40160a <binary_tree_print+0x1bf>
  401609:	90                   	nop
  40160a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40160e:	c9                   	leave
  40160f:	c3                   	ret

0000000000401610 <main>:
  401610:	55                   	push   %rbp
  401611:	48 89 e5             	mov    %rsp,%rbp
  401614:	53                   	push   %rbx
  401615:	48 83 ec 18          	sub    $0x18,%rsp
  401619:	be 62 00 00 00       	mov    $0x62,%esi
  40161e:	bf 00 00 00 00       	mov    $0x0,%edi
  401623:	e8 24 03 00 00       	call   40194c <binary_tree_node>
  401628:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40162c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401630:	be 0c 00 00 00       	mov    $0xc,%esi
  401635:	48 89 c7             	mov    %rax,%rdi
  401638:	e8 0f 03 00 00       	call   40194c <binary_tree_node>
  40163d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401641:	48 89 42 10          	mov    %rax,0x10(%rdx)
  401645:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401649:	be 80 00 00 00       	mov    $0x80,%esi
  40164e:	48 89 c7             	mov    %rax,%rdi
  401651:	e8 f6 02 00 00       	call   40194c <binary_tree_node>
  401656:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40165a:	48 89 42 18          	mov    %rax,0x18(%rdx)
  40165e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401662:	48 8b 40 10          	mov    0x10(%rax),%rax
  401666:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40166a:	48 8b 5a 10          	mov    0x10(%rdx),%rbx
  40166e:	be 36 00 00 00       	mov    $0x36,%esi
  401673:	48 89 c7             	mov    %rax,%rdi
  401676:	e8 d1 02 00 00       	call   40194c <binary_tree_node>
  40167b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40167f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401683:	48 8b 58 18          	mov    0x18(%rax),%rbx
  401687:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40168b:	be 92 01 00 00       	mov    $0x192,%esi
  401690:	48 89 c7             	mov    %rax,%rdi
  401693:	e8 b4 02 00 00       	call   40194c <binary_tree_node>
  401698:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40169c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016a0:	48 8b 40 10          	mov    0x10(%rax),%rax
  4016a4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4016a8:	48 8b 5a 10          	mov    0x10(%rdx),%rbx
  4016ac:	be 0a 00 00 00       	mov    $0xa,%esi
  4016b1:	48 89 c7             	mov    %rax,%rdi
  4016b4:	e8 93 02 00 00       	call   40194c <binary_tree_node>
  4016b9:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4016bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016c1:	48 89 c7             	mov    %rax,%rdi
  4016c4:	e8 82 fd ff ff       	call   40144b <binary_tree_print>
  4016c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 4f 02 00 00       	call   401924 <binary_tree_is_bst>
  4016d5:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4016d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016dc:	8b 00                	mov    (%rax),%eax
  4016de:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4016e1:	89 c6                	mov    %eax,%esi
  4016e3:	bf 17 20 40 00       	mov    $0x402017,%edi
  4016e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ed:	e8 5e f9 ff ff       	call   401050 <printf@plt>
  4016f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016f6:	48 8b 40 10          	mov    0x10(%rax),%rax
  4016fa:	48 89 c7             	mov    %rax,%rdi
  4016fd:	e8 22 02 00 00       	call   401924 <binary_tree_is_bst>
  401702:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  401705:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401709:	48 8b 40 10          	mov    0x10(%rax),%rax
  40170d:	8b 00                	mov    (%rax),%eax
  40170f:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401712:	89 c6                	mov    %eax,%esi
  401714:	bf 17 20 40 00       	mov    $0x402017,%edi
  401719:	b8 00 00 00 00       	mov    $0x0,%eax
  40171e:	e8 2d f9 ff ff       	call   401050 <printf@plt>
  401723:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401727:	48 8b 40 18          	mov    0x18(%rax),%rax
  40172b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40172f:	48 8b 5a 18          	mov    0x18(%rdx),%rbx
  401733:	be 61 00 00 00       	mov    $0x61,%esi
  401738:	48 89 c7             	mov    %rax,%rdi
  40173b:	e8 0c 02 00 00       	call   40194c <binary_tree_node>
  401740:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401744:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401748:	48 89 c7             	mov    %rax,%rdi
  40174b:	e8 fb fc ff ff       	call   40144b <binary_tree_print>
  401750:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401754:	48 89 c7             	mov    %rax,%rdi
  401757:	e8 c8 01 00 00       	call   401924 <binary_tree_is_bst>
  40175c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40175f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401763:	8b 00                	mov    (%rax),%eax
  401765:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401768:	89 c6                	mov    %eax,%esi
  40176a:	bf 17 20 40 00       	mov    $0x402017,%edi
  40176f:	b8 00 00 00 00       	mov    $0x0,%eax
  401774:	e8 d7 f8 ff ff       	call   401050 <printf@plt>
  401779:	b8 00 00 00 00       	mov    $0x0,%eax
  40177e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401782:	c9                   	leave
  401783:	c3                   	ret

0000000000401784 <get_max>:
  401784:	55                   	push   %rbp
  401785:	48 89 e5             	mov    %rsp,%rbp
  401788:	48 83 ec 20          	sub    $0x20,%rsp
  40178c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401790:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  401795:	75 07                	jne    40179e <get_max+0x1a>
  401797:	b8 00 00 00 00       	mov    $0x0,%eax
  40179c:	eb 5a                	jmp    4017f8 <get_max+0x74>
  40179e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017a2:	48 8b 40 10          	mov    0x10(%rax),%rax
  4017a6:	48 89 c7             	mov    %rax,%rdi
  4017a9:	e8 d6 ff ff ff       	call   401784 <get_max>
  4017ae:	89 45 f8             	mov    %eax,-0x8(%rbp)
  4017b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017b5:	48 8b 40 18          	mov    0x18(%rax),%rax
  4017b9:	48 89 c7             	mov    %rax,%rdi
  4017bc:	e8 c3 ff ff ff       	call   401784 <get_max>
  4017c1:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4017c4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4017cb:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4017ce:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  4017d1:	7e 08                	jle    4017db <get_max+0x57>
  4017d3:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4017d6:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4017d9:	eb 06                	jmp    4017e1 <get_max+0x5d>
  4017db:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4017de:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4017e1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017e5:	8b 00                	mov    (%rax),%eax
  4017e7:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  4017ea:	7d 09                	jge    4017f5 <get_max+0x71>
  4017ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017f0:	8b 00                	mov    (%rax),%eax
  4017f2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4017f5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4017f8:	c9                   	leave
  4017f9:	c3                   	ret

00000000004017fa <get_min>:
  4017fa:	55                   	push   %rbp
  4017fb:	48 89 e5             	mov    %rsp,%rbp
  4017fe:	48 83 ec 20          	sub    $0x20,%rsp
  401802:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401806:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40180b:	75 07                	jne    401814 <get_min+0x1a>
  40180d:	b8 40 42 0f 00       	mov    $0xf4240,%eax
  401812:	eb 5a                	jmp    40186e <get_min+0x74>
  401814:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401818:	48 8b 40 10          	mov    0x10(%rax),%rax
  40181c:	48 89 c7             	mov    %rax,%rdi
  40181f:	e8 d6 ff ff ff       	call   4017fa <get_min>
  401824:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401827:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40182b:	48 8b 40 18          	mov    0x18(%rax),%rax
  40182f:	48 89 c7             	mov    %rax,%rdi
  401832:	e8 c3 ff ff ff       	call   4017fa <get_min>
  401837:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40183a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401841:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401844:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  401847:	7d 08                	jge    401851 <get_min+0x57>
  401849:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40184c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40184f:	eb 06                	jmp    401857 <get_min+0x5d>
  401851:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401854:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401857:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40185b:	8b 00                	mov    (%rax),%eax
  40185d:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  401860:	7e 09                	jle    40186b <get_min+0x71>
  401862:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401866:	8b 00                	mov    (%rax),%eax
  401868:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40186b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40186e:	c9                   	leave
  40186f:	c3                   	ret

0000000000401870 <get_if_bst>:
  401870:	55                   	push   %rbp
  401871:	48 89 e5             	mov    %rsp,%rbp
  401874:	53                   	push   %rbx
  401875:	48 83 ec 18          	sub    $0x18,%rsp
  401879:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40187d:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  401882:	75 0a                	jne    40188e <get_if_bst+0x1e>
  401884:	b8 01 00 00 00       	mov    $0x1,%eax
  401889:	e9 90 00 00 00       	jmp    40191e <get_if_bst+0xae>
  40188e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401892:	48 8b 40 10          	mov    0x10(%rax),%rax
  401896:	48 85 c0             	test   %rax,%rax
  401899:	74 21                	je     4018bc <get_if_bst+0x4c>
  40189b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40189f:	8b 18                	mov    (%rax),%ebx
  4018a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018a5:	48 8b 40 10          	mov    0x10(%rax),%rax
  4018a9:	48 89 c7             	mov    %rax,%rdi
  4018ac:	e8 d3 fe ff ff       	call   401784 <get_max>
  4018b1:	39 c3                	cmp    %eax,%ebx
  4018b3:	7d 07                	jge    4018bc <get_if_bst+0x4c>
  4018b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ba:	eb 62                	jmp    40191e <get_if_bst+0xae>
  4018bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018c0:	48 8b 40 18          	mov    0x18(%rax),%rax
  4018c4:	48 85 c0             	test   %rax,%rax
  4018c7:	74 21                	je     4018ea <get_if_bst+0x7a>
  4018c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018cd:	8b 18                	mov    (%rax),%ebx
  4018cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018d3:	48 8b 40 18          	mov    0x18(%rax),%rax
  4018d7:	48 89 c7             	mov    %rax,%rdi
  4018da:	e8 1b ff ff ff       	call   4017fa <get_min>
  4018df:	39 c3                	cmp    %eax,%ebx
  4018e1:	7e 07                	jle    4018ea <get_if_bst+0x7a>
  4018e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e8:	eb 34                	jmp    40191e <get_if_bst+0xae>
  4018ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018ee:	48 8b 40 10          	mov    0x10(%rax),%rax
  4018f2:	48 89 c7             	mov    %rax,%rdi
  4018f5:	e8 76 ff ff ff       	call   401870 <get_if_bst>
  4018fa:	85 c0                	test   %eax,%eax
  4018fc:	74 14                	je     401912 <get_if_bst+0xa2>
  4018fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401902:	48 8b 40 18          	mov    0x18(%rax),%rax
  401906:	48 89 c7             	mov    %rax,%rdi
  401909:	e8 62 ff ff ff       	call   401870 <get_if_bst>
  40190e:	85 c0                	test   %eax,%eax
  401910:	75 07                	jne    401919 <get_if_bst+0xa9>
  401912:	b8 00 00 00 00       	mov    $0x0,%eax
  401917:	eb 05                	jmp    40191e <get_if_bst+0xae>
  401919:	b8 01 00 00 00       	mov    $0x1,%eax
  40191e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401922:	c9                   	leave
  401923:	c3                   	ret

0000000000401924 <binary_tree_is_bst>:
  401924:	55                   	push   %rbp
  401925:	48 89 e5             	mov    %rsp,%rbp
  401928:	48 83 ec 10          	sub    $0x10,%rsp
  40192c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401930:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401935:	75 07                	jne    40193e <binary_tree_is_bst+0x1a>
  401937:	b8 00 00 00 00       	mov    $0x0,%eax
  40193c:	eb 0c                	jmp    40194a <binary_tree_is_bst+0x26>
  40193e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401942:	48 89 c7             	mov    %rax,%rdi
  401945:	e8 26 ff ff ff       	call   401870 <get_if_bst>
  40194a:	c9                   	leave
  40194b:	c3                   	ret

000000000040194c <binary_tree_node>:
  40194c:	55                   	push   %rbp
  40194d:	48 89 e5             	mov    %rsp,%rbp
  401950:	48 83 ec 20          	sub    $0x20,%rsp
  401954:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401958:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  40195b:	bf 20 00 00 00       	mov    $0x20,%edi
  401960:	e8 0b f7 ff ff       	call   401070 <malloc@plt>
  401965:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401969:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40196e:	75 07                	jne    401977 <binary_tree_node+0x2b>
  401970:	b8 00 00 00 00       	mov    $0x0,%eax
  401975:	eb 31                	jmp    4019a8 <binary_tree_node+0x5c>
  401977:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40197b:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  40197e:	89 10                	mov    %edx,(%rax)
  401980:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401984:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401988:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40198c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401990:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  401997:	00 
  401998:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40199c:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
  4019a3:	00 
  4019a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019a8:	c9                   	leave
  4019a9:	c3                   	ret

Disassembly of section .fini:

00000000004019ac <_fini>:
  4019ac:	f3 0f 1e fa          	endbr64
  4019b0:	48 83 ec 08          	sub    $0x8,%rsp
  4019b4:	48 83 c4 08          	add    $0x8,%rsp
  4019b8:	c3                   	ret
