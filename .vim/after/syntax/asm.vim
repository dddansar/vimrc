"==============================================================================
" File: asm.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all assembly
"              files.
"------------------------------------------------------------------------------
" Authors: Danny Sarraf
"------------------------------------------------------------------------------
" URL: https://github.com/dddansar/vimrc
"------------------------------------------------------------------------------
" Copyright: MIT License
"
" Copyright (c) 2026 Danny Sarraf
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.
"==============================================================================


" NOTE: removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:asm_loaded")
"    finish
" endif
if exists("b:disable_after_syntax")
   finish
endif
if !exists("g:syntax_on")
   finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif
if exists("g:debug_syntax")
   echom "asm.vim syntax file loaded"
endif
let b:asm_loaded = 1

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "asm"
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim

   call AllFilesDefaultSyntax()

   call AllDefineDollar()
endif


" Keep autoindent, but remove cindent
set nocindent

"------------------------------------------------------------------------------
" MIPS instruction set
" https://jarrettbillingsley.github.io/teaching/classes/cs0447/guides/instructions.html
"------------------------------------------------------------------------------

hi  link  AsmArithm    Statement
" Arithmetic and Bitwise Instructions
" NEG[IU]\{0,2}   "a, b       a = -b     gives the negative of b.
" ADD[IU]\{0,2}   "a, b, c    a = b + c  adds signed numbers.
" SUB[IU]\{0,2}   "a, b, c    a = b - c  subtracts signed numbers.
" MUL[IU]\{0,2}   "a, b, c    a = b * c  gives low 32 bits of signed multiplication.
" DIV[IU]\{0,2}   "a, b, c    a = b / c  gives quotient of signed division.
" REM[IU]\{0,2}   "a, b, c    a = b % c  gives remainder of signed division.
" ADDU[IU]\{0,2}  "a, b, c    a = b + c  adds unsigned numbers.
" SUBU[IU]\{0,2}  "a, b, c    a = b - c  subtracts unsigned numbers.
" MULU[IU]\{0,2}  "a, b, c    a = b * c  gives low 32 bits of unsigned multiplication.
" DIVU[IU]\{0,2}  "a, b, c    a = b / c  gives quotient of unsigned division.
" REMU[IU]\{0,2}  "a, b, c    a = b % c  gives remainder of unsigned division.
" MFHI[IU]\{0,2}  "a          a = HI     after mul, gives high 32 bits. after div, gives remainder.
" MFLO[IU]\{0,2}  "a          a = LO     after mul, gives low 32 bits. after div, gives quotient.
" NOT[IU]\{0,2}   "a, b       a = ~b     gives the bitwise complement of b (all bits flipped).
" AND[IU]\{0,2}   "a, b, c    a = b & c  bitwise ANDs numbers.
" OR[IU]\{0,2}    "a, b, c    a = b | c  bitwise ORs numbers.
" XOR[IU]\{0,2}   "a, b, c    a = b ^ c  bitwise XORs numbers.
syn keyword AsmArithm  NEGI NEGU NEG
syn keyword AsmArithm  ADDI ADDU ADDIU ADD
syn keyword AsmArithm  SUBI SUBU SUBIU SUB
syn keyword AsmArithm  MULI MULU MULIU MUL
syn keyword AsmArithm  DIVI DIVU DIVIU DIV
syn keyword AsmArithm  REMI REMU REMIU REM
syn keyword AsmArithm  ADDUI ADDUU ADDUIU ADDU
syn keyword AsmArithm  SUBUI SUBUU SUBUIU SUBU
syn keyword AsmArithm  MULUI MULUU MULUIU MULU
syn keyword AsmArithm  DIVUI DIVUU DIVUIU DIVU
syn keyword AsmArithm  REMUI REMUU REMUIU REMU
syn keyword AsmArithm  MFHII MFHIU MFHI
syn keyword AsmArithm  MFLOI MFLOU MFLO
syn keyword AsmArithm  NOTI NOTU NOT
syn keyword AsmArithm  ANDI ANDU AND
syn keyword AsmArithm  ORI ORU OR
syn keyword AsmArithm  XORI XORU XOR

" Shift Instructions
" SLL  "a, b, imm  a = b << imm   shift left by a constant amount.
" SRL  "a, b, imm  a = b >>> imm  shift right unsigned (logical) by a constant amount.
" SRA  "a, b, imm  a = b >> imm   shift right arithmetic by a constant amount.
" SLLV "a, b, reg  a = b << reg   shift left by the amount in a register.
" SRLV "a, b, reg  a = b >>> reg  shift right unsigned (logical) by the amount in a register.
" SRAV "a, b, reg  a = b >> reg   shift right arithmetic by the amount in a register.
syn keyword AsmArithm  SLL SRL SRA SLLV SRLV SRAV

" Data Transfer Instructions
" LI   "a, imm     a = imm                 put a constant value into a register.
" LA   "a, label   a = &label              put the address that a label points to into a register.
" MOVE "a, b       ` a = b `               copy value from one register to another.
" LW   "reg, addr  reg = MEM[addr]         loads the 4 bytes at addr as a 32-bit value into reg.
" LH   "reg, addr  reg = sxt(MEM[addr])    loads the 2 bytes at addr as a signed 16-bit value into reg.
" LB   "reg, addr  reg = sxt(MEM[addr])    loads the 1 byte at addr as a signed 8-bit value into reg.
" LHU  "reg, addr  reg = zxt(MEM[addr])    loads the 2 bytes at addr as an unsigned 16-bit value into reg.
" LBU  "reg, addr  reg = zxt(MEM[addr])    loads the 1 byte at addr as an unsigned 8-bit value into reg.
" SW   "reg, addr  MEM[addr] = reg         stores the value of reg into memory as 4 bytes starting at addr.
" SH   "reg, addr  MEM[addr] = lo16(reg)   stores the low 16 bits of reg into memory as 2 bytes starting at addr.
" SB   "reg, addr  MEM[addr] = lo8(reg)    stores the low 8 bits of reg into memory as 1 byte at addr.
" PUSH "reg        sp -= 4; MEM[sp] = reg  pushes the value of reg onto the call stack
" POP  "reg        reg = MEM[sp]; sp += 4  pops the top call stack value and puts it into reg
syn keyword AsmArithm  LI LA MOVE LW LH LB LHU LBU SW SH SB PUSH POP

" Unconditional Control Flow Instructions
" B       "
" J       "label      PC = label                goes to the instruction at label.
" JAL     "label      ra = PC + 4; PC = label   function call to label. stores return address in ra.
" JR      "reg        PC = reg                  goes to the instruction whose address is in reg, often ra.
" SYSCALL "           --->                      runs the system call function whose number is in v0.
syn keyword AsmArithm  B J JAL JR SYSCALL

" Conditional Control Flow Instructions
" BEQ  "a, b, label   if(a == b) { PC = label } if a is equal to b, goes to label .
" BNE  "a, b, label   if(a != b) { PC = label } if a is NOT equal to b, goes to label .
" BLT  "a, b, label   if(a < b) { PC = label }  if a is less than b, goes to label .
" BLE  "a, b, label   if(a <= b) { PC = label } if a is less than or equal to b, goes to label .
" BGT  "a, b, label   if(a > b) { PC = label }  if a is greater than b, goes to label .
" BGE  "a, b, label   if(a >= b) { PC = label } if a is greater than or equal to b, goes to label .
" BLTU "a, b, label   if(a < b) { PC = label }  same as blt but does an unsigned comparison.
" BLEU "a, b, label   if(a <= b) { PC = label } same as ble but does an unsigned comparison.
" BGTU "a, b, label   if(a > b) { PC = label }  same as bgt but does an unsigned comparison.
" BGEU "a, b, label   if(a >= b) { PC = label } same as bge but does an unsigned comparison.
syn keyword AsmArithm  BEQ BNE BLT BLE BGT BGE BLTU BLEU BGTU BGEU
"------------------------------------------------------------------------------
" same matches as above but all lowercase
"------------------------------------------------------------------------------
syn keyword AsmArithm  negi negu neg
syn keyword AsmArithm  addi addu addiu add
syn keyword AsmArithm  subi subu subiu sub
syn keyword AsmArithm  muli mulu muliu mul
syn keyword AsmArithm  divi divu diviu div
syn keyword AsmArithm  remi remu remiu rem
syn keyword AsmArithm  addui adduu adduiu addu
syn keyword AsmArithm  subui subuu subuiu subu
syn keyword AsmArithm  mului muluu muluiu mulu lui
syn keyword AsmArithm  divui divuu divuiu divu
syn keyword AsmArithm  remui remuu remuiu remu
syn keyword AsmArithm  mfhii mfhiu mfhi
syn keyword AsmArithm  mfloi mflou mflo
syn keyword AsmArithm  noti notu not
syn keyword AsmArithm  andi andu and
syn keyword AsmArithm  ori oru or
syn keyword AsmArithm  xori xoru xor

" Shift Instructions
syn keyword AsmArithm  sll srl sra sllv srlv srav

" Data Transfer Instructions
syn keyword AsmArithm  li la move lw lh lb lhu lbu sw sh sb push pop

" Unconditional Control Flow Instructions
syn keyword AsmArithm  b j jal jr syscall

" Conditional Control Flow Instructions
syn keyword AsmArithm  beq bne blt ble bgt bge bltu bleu bgtu bgeu
"-----------------------------------------------------------


"------------------------------------------------------------------------------
" https://cse.unl.edu/~goddard/Courses/CSCE351/IntelArchitecture/InstructionSetSummary.pdf
"------------------------------------------------------------------------------
" 30.2.1. Integer Instructions
" Integer instructions perform the integer arithmetic, logic, and program flow
" control operations that programmers commonly use to write application and
" system software to run on an Intel Architecture processor.

hi  link  AsmData Conditional
" 30.2.1.1. Data Transfer Instructions
" MOV                               "Move
" MOVB                              "Move into the single byte
" MOVW                              "Move into the 2 bytes
" MOVL                              "Move into the 4 bytes
" \%(CMOVE[WLQ]\?\|CMOVZ[WLQ]\?\)   "Conditional move if equal/Conditional move if zero
" \%(CMOVNE[WLQ]\?\|CMOVNZ[WLQ]\?\) "Conditional move if not equal/Conditional move if not zero
" \%(CMOVA[WLQ]\?\|CMOVNBE[WLQ]\?\) "Conditional move if above/Conditional move if not below or equal
" \%(CMOVAE[WLQ]\?\|CMOVNB[WLQ]\?\) "Conditional move if above or equal/Conditional move if not below
" \%(CMOVB[WLQ]\?\|CMOVNAE[WLQ]\?\) "Conditional move if below/Conditional move if not above or equal
" \%(CMOVBE[WLQ]\?\|CMOVNA[WLQ]\?\) "Conditional move if below or equal/Conditional move if not above
" \%(CMOVG[WLQ]\?\|CMOVNLE[WLQ]\?\) "Conditional move if greater/Conditional move if not less or equal
" \%(CMOVGE[WLQ]\?\|CMOVNL[WLQ]\?\) "Conditional move if greater or equal/Conditional move if not less
" \%(CMOVL[WLQ]\?\|CMOVNGE[WLQ]\?\) "Conditional move if less/Conditional move if not greater or equal
" \%(CMOVLE[WLQ]\?\|CMOVNG[WLQ]\?\) "Conditional move if less or equal/Conditional move if not greater
" CMOVC[WLQ]\?                      "Conditional move if carry
" CMOVNC[WLQ]\?                     "Conditional move if not carry
" CMOVO[WLQ]\?                      "Conditional move if overflow
" CMOVNO[WLQ]\?                     "Conditional move if not overflow
" CMOVS[WLQ]\?                      "Conditional move if sign (negative)
" CMOVNS[WLQ]\?                     "Conditional move if not sign (non-negative)
" \%(CMOVP[WLQ]\?\|CMOVPE[WLQ]\?\)  "Conditional move if parity/Conditional move if parity even
" \%(CMOVNP[WLQ]\?\|CMOVPO[WLQ]\?\) "Conditional move if not parity/Conditional move if parity odd
" XCHG[BWLQ]\?                      "Exchange
" BSWAP[LQ]\?                       "Byte swap
" XADD[BWLQ]\?                      "Exchange and add
" CMPXCHG[BWLQ]\?                   "Compare and exchange
" CMPXCHG8B                         "Compare and exchange 8 bytes
" PUSH[WLQ]\?                       "Push onto stack
" POP[WLQ]\?                        "Pop off of stack
" \%(PUSHA\|PUSHAD\)                "Push general-purpose registers onto stack
" \%(POPA\|POPAD\)                  "Pop general-purpose registers from stack
" IN                                "Read from a port
" OUT                               "Write to a port
" \%(CWD\|CDQ\)                     "Convert word to doubleword/Convert doubleword to quadword
" \%(CBW\|CWDE\)                    "Convert byte to word/Convert word to doubleword in EAX register
" MOVSX                             "Move and sign extend
" MOVZX                             "Move and zero extend
"
" MOVABS[BWLQ]\?                    "move immediate value to register    valid only under –m64
" MOVABS[BWLQ]\?A                   "move immediate value to register {AL, AX, GAX, RAX}   valid only under –m64
" \%(MOVSB[WLQ]\?\|MOVSW[LQ]\?\)    "move and sign extend    valid only under –m64
" \%(MOVZB[WLQ]\?\|MOVZW[LQ]\?\)    "move and zero extend    valid only under –m64
" POPAW                             "pop general-purpose registers from stack     invalid under –m64
" POPAL, POPA                       "pop general-purpose registers from stack     invalid under –m64
" PUSHAW                            "push general-purpose registers onto stack    invalid under –m64
" PUSHAL, PUSHA                     "push general-purpose registers onto stack    invalid under –m64
" XCHG[BWLQ]\?A                     "exchange    xchgqA valid only under –m64
syn keyword AsmData MOV MOVB MOVW MOVL
syn keyword AsmData CMOVEW CMOVEL CMOVEQ CMOVZW CMOVZL CMOVZQ
syn keyword AsmData CMOVNEW CMOVNEL CMOVNEQ CMOVNZW CMOVNZL CMOVNZQ
syn keyword AsmData CMOVAW CMOVAL CMOVAQ CMOVNBEW CMOVNBEL CMOVNBEQ
syn keyword AsmData CMOVAEW CMOVAEL CMOVAEQ CMOVNBW CMOVNBL CMOVNBQ
syn keyword AsmData CMOVBW CMOVBL CMOVBQ CMOVNAEW CMOVNAEL CMOVNAEQ
syn keyword AsmData CMOVBEW CMOVBEL CMOVBEQ CMOVNAW CMOVNAL CMOVNAQ
syn keyword AsmData CMOVGW CMOVGL CMOVGQ CMOVNLEW CMOVNLEL CMOVNLEQ
syn keyword AsmData CMOVGEW CMOVGEL CMOVGEQ CMOVNLW CMOVNLL CMOVNLQ
syn keyword AsmData CMOVLW CMOVLL CMOVLQ CMOVNGEW CMOVNGEL CMOVNGEQ
syn keyword AsmData CMOVLEW CMOVLEL CMOVLEQ CMOVNGW CMOVNGL CMOVNGQ
syn keyword AsmData CMOVCW CMOVCL CMOVCQ CMOVNC CMOVNCW CMOVNCL CMOVNCQ
syn keyword AsmData CMOVOW CMOVOL CMOVOQ CMOVNOW CMOVNOL CMOVNOQ
syn keyword AsmData CMOVSW CMOVSL CMOVSQ CMOVNSW CMOVNSL CMOVNSQ
syn keyword AsmData CMOVPW CMOVPL CMOVPQ CMOVPEW CMOVPEL CMOVPEQ
syn keyword AsmData CMOVNPW CMOVNPL CMOVNPQ CMOVPOW CMOVPOL CMOVPOQ
syn keyword AsmData CMOVE CMOVZ CMOVNE CMOVNZ CMOVA CMOVNBE CMOVAE CMOVNB
syn keyword AsmData CMOVB CMOVNAE CMOVBE CMOVNA CMOVG CMOVNLE CMOVGE CMOVNL
syn keyword AsmData CMOVL CMOVNGE CMOVLE CMOVNG CMOVC CMOVNC CMOVO CMOVNO
syn keyword AsmData CMOVS CMOVNS CMOVP CMOVPE CMOVNP CMOVPO
syn keyword AsmData XCHGB XCHGW XCHGL XCHGQ XCHG
syn keyword AsmData BSWAPL BSWAPQ BSWAP
syn keyword AsmData XADDB XADDW XADDL XADDQ XADD
syn keyword AsmData CMPXCHGB CMPXCHGW CMPXCHGL CMPXCHGQ CMPXCHG CMPXCHG8B
syn keyword AsmData PUSHW PUSHL PUSHQ PUSH POPW POPL POPQ POP
syn keyword AsmData PUSHA PUSHAD POPA POPAD
syn keyword AsmData IN OUT
syn keyword AsmData CWD CDQ CBW CWDE
syn keyword AsmData MOVSX MOVZX
syn keyword AsmData MOVABSB MOVABSW MOVABSL MOVABSQ MOVABS
syn keyword AsmData MOVABSBA MOVABSWA MOVABSLA MOVABSQA MOVABSA
syn keyword AsmData MOVSBW MOVSBL MOVSBQ MOVSBL MOVSWL MOVSWQ
syn keyword AsmData MOVZBW MOVZBL MOVZBQ MOVZWL MOVZWQ
syn keyword AsmData POPAW POPAL POPA PUSHAW PUSHAL PUSHA
syn keyword AsmData XCHGBA XCHGWA XCHGLA XCHGQA XCHGA
syn keyword AsmData MOVAPS MOVSLQ

hi  link  AsmLogic Operator
" 30.2.1.2. Binary Arithmetic Instructions
" ADD[BWQL]\?  "Integer add
" ADC[BWLQ]\?  "Add with carry
" SUB[BWLQ]\?  "Subtract
" SBB[BWLQ]\?  "Subtract with borrow
" IMUL[BWLQ]\? "Signed multiply
" MUL[BWLQ]\?  "Unsigned multiply
" IDIV[BWLQ]\? "Signed divide
" DIV[BWLQ]\?  "Unsigned divide
" INC[BWLQ]\?  "Increment
" DEC[BWLQ]\?  "Decrement
" NEG[BWLQ]\?  "Negate
" CMP[BWQL]\?  "Compare
syn keyword AsmLogic ADDW ADDL ADDQ ADD
syn keyword AsmLogic ADCB ADCW ADCL ADCQ ADC
syn keyword AsmLogic SUBB SUBW SUBL SUBQ SUB
syn keyword AsmLogic SBBB SBBW SBBL SBBQ SBB
syn keyword AsmLogic IMULB IMULW IMULL IMULQ IMUL
syn keyword AsmLogic MULB MULW MULL MULQ MUL
syn keyword AsmLogic IDIVB IDIVW IDIVL IDIVQ IDIV
syn keyword AsmLogic DIVB DIVW DIVL DIVQ DIV
syn keyword AsmLogic INCB INCW INCL INCQ INC
syn keyword AsmLogic DECB DECW DECL DECQ DEC
syn keyword AsmLogic NEGB NEGW NEGL NEGQ NEG
syn keyword AsmLogic CMPW CMPL CMPQ CMP

" 30.2.1.3. Decimal Arithmetic
" DAA "Decimal adjust after addition
" DAS "Decimal adjust after subtraction
" AAA "ASCII adjust after addition
" AAS "ASCII adjust after subtraction
" AAM "ASCII adjust after multiplication
" AAD "ASCII adjust before division
syn keyword AsmLogic DAA DAS AAA AAS AAM AAD

" 30.2.1.4. Logic Instructions
" AND[BWLQ]\? "And
" OR[BWLQ]\?  "Or
" XOR[BWLQ]\? "Exclusive or
" NOT[BWLQ]\? "Not
syn keyword AsmLogic ANDB ANDW ANDL ANDQ AND
syn keyword AsmLogic ORB ORW ORL ORQ OR
syn keyword AsmLogic XORB XORW XORL XORQ XOR
syn keyword AsmLogic NOTB NOTW NOTL NOTQ NOT

" 30.2.1.5. Shift and Rotate Instructions
" SAR[BWLQ]\?           "Shift arithmetic right
" SHR[BWLQ]\?           "Shift logical right
" \%(SAL\|SHL\)[BWLQ]\? "Shift arithmetic left/Shift logical left
" SHRD[BWLQ]\?          "Shift right double
" SHLD[BWLQ]\?          "Shift left double
" ROR[BWLQ]\?           "Rotate right
" ROL[BWLQ]\?           "Rotate left
" RCR[BWLQ]\?           "Rotate through carry right
" RCL[BWLQ]\?           "Rotate through carry left
syn keyword AsmLogic SARB SARW SARL SARQ SAR
syn keyword AsmLogic SHRB SHRW SHRL SHRQ SHR
syn keyword AsmLogic SALB SALW SALL SALQ SAL SHLB SHLW SHLL SHLQ SHL
syn keyword AsmLogic SHRDB SHRDW SHRDL SHRDQ SHRD
syn keyword AsmLogic SHLDB SHLDW SHLDL SHLDQ SHLD
syn keyword AsmLogic RORB RORW RORL RORQ ROR
syn keyword AsmLogic ROLB ROLW ROLL ROLQ ROL
syn keyword AsmLogic RCRB RCRW RCRL RCRQ RCR
syn keyword AsmLogic RCLB RCLW RCLL RCLQ RCL

hi  link  AsmBit Question
" 30.2.1.6. Bit and Byte Instructions
" BT[WLQ]\?                "Bit test
" BTS[WLQ]\?               "Bit test and set
" BTR[WLQ]\?               "Bit test and reset
" BTC[WLQ]\?               "Bit test and complement
" BSF[WLQ]\?               "Bit scan forward
" BSR[WLQ]\?               "Bit scan reverse
" \%(SETE\|SETZ\)          "Set byte if equal/Set byte if zero
" \%(SETNE\|SETNZ\)        "Set byte if not equal/Set byte if not zero
" \%(SETA\|SETNBE\)        "Set byte if above/Set byte if not below or equal
" \%(SETAE\|SETNB\|SETNC\) "Set byte if above or equal/Set byte if not below/Set byte if not carry
" \%(SETB\|SETNAE\|SETC\)  "Set byte if below/Set byte if not above or equal/Set byte if carry
" \%(SETBE\|SETNA\)        "Set byte if below or equal/Set byte if not above
" \%(SETG\|SETNLE\)        "Set byte if greater/Set byte if not less or equal
" \%(SETGE\|SETNL\)        "Set byte if greater or equal/Set byte if not less
" \%(SETL\|SETNGE\)        "Set byte if less/Set byte if not greater or equal
" \%(SETLE\|SETNG\)        "Set byte if less or equal/Set byte if not greater
" SETS                     "Set byte if sign (negative)
" SETNS                    "Set byte if not sign (non-negative)
" SETO                     "Set byte if overflow
" SETNO                    "Set byte if not overflow
" \%(SETPE\|SETP\)         "Set byte if parity even/Set byte if parity
" \%(SETPO\|SETNP\)        "Set byte if parity odd/Set byte if not parity
" TEST[WLQ]\?              "Logical compare
syn keyword AsmBit BTW BTL BTQ BT
syn keyword AsmBit BTSW BTSL BTSQ BTS
syn keyword AsmBit BTRW BTRL BTRQ BTR
syn keyword AsmBit BTCW BTCL BTCQ BTC
syn keyword AsmBit BSFW BSFL BSFQ BSF
syn keyword AsmBit BSRW BSRL BSRQ BSR
syn keyword AsmBit SETE SETZ SETNE SETNZ
syn keyword AsmBit SETA SETNBE SETAE SETNB SETNC SETB SETNAE SETC
syn keyword AsmBit SETBE SETNA SETG SETNLE SETGE SETNL SETL SETNGE SETLE SETNG
syn keyword AsmBit SETS SETNS SETO SETNO SETPE SETP SETPO SETNP
syn keyword AsmBit TESTW TESTL TESTQ TEST

hi  link  AsmControl Type
" 30.2.1.7. Control Transfer Instructions
" JMP                 "Jump
" \%(JE\|JZ\)         "Jump if equal/Jump if zero
" \%(JNE\|JNZ\)       "Jump if not equal/Jump if not zero
" \%(JA\|JNBE\)       "Jump if above/Jump if not below or equal
" \%(JAE\|JNB\)       "Jump if above or equal/Jump if not below
" \%(JB\|JNAE\)       "Jump if below/Jump if not above or equal
" \%(JBE\|JNA\)       "Jump if below or equal/Jump if not above
" \%(JG\|JNLE\)       "Jump if greater/Jump if not less or equal
" \%(JGE\|JNL\)       "Jump if greater or equal/Jump if not less
" \%(JL\|JNGE\)       "Jump if less/Jump if not greater or equal
" \%(JLE\|JNG\)       "Jump if less or equal/Jump if not greater
" JC                  "Jump if carry
" JNC                 "Jump if not carry
" JO                  "Jump if overflow
" JNO                 "Jump if not overflow
" JS                  "Jump if sign (negative)
" JNS                 "Jump if not sign (non-negative)
" \%(JPO\|JNP\)       "Jump if parity odd/Jump if not parity
" \%(JPE\|JP\)        "Jump if parity even/Jump if parity
" \%(JCXZ\|JECXZ\)    "Jump register CX zero/Jump register ECX zero
" LOOP                "Loop with ECX counter
" \%(LOOPZ\|LOOPE\)   "Loop with ECX and zero/Loop with ECX and equal
" \%(LOOPNZ\|LOOPNE\) "Loop with ECX and not zero/Loop with ECX and not equal
" CALL                "Call procedure
" RET                 "Return
" IRET                "Return from interrupt
" INT                 "Software interrupt
" INTO                "Interrupt on overflow
" BOUND[WL]\?         "Detect value out of range
" ENTER               "High-level procedure entry
" LEAVE               "High-level procedure exit
syn keyword AsmControl JMP
syn keyword AsmControl JE JZ JNE JNZ
syn keyword AsmControl JA JNBE JAE JNB JB JNAE JBE JNA
syn keyword AsmControl JG JNLE JGE JNL JL JNGE JLE JNG
syn keyword AsmControl JC JNC JO JNO JS JNS JPO JNP JPE JP
syn keyword AsmControl JCXZ JECXZ
syn keyword AsmControl LOOP LOOPZ LOOPE LOOPNZ LOOPNE
syn keyword AsmControl CALL RET IRET INT INTO
syn keyword AsmControl BOUNDW BOUNDL BOUND
syn keyword AsmControl ENTER LEAVE

hi  link  AsmString Define
" 30.2.1.8. String Instructions
" \%(MOVSQ\)            "Move string/Move byte string
" \%(MOVS[Q]\?\|MOVSB\) "Move string/Move byte string
" \%(MOVS\|MOVSW\)      "Move string/Move word string
" \%(MOVS\|MOVSD\)      "Move string/Move doubleword string
" \%(CMPS[Q]\?\|CMPSB\) "Compare string/Compare byte string
" \%(CMPS\|CMPSW\)      "Compare string/Compare word string
" \%(CMPS\|CMPSD\)      "Compare string/Compare doubleword string
" \%(SCAS[Q]\?\|SCASB\) "Scan string/Scan byte string
" \%(SCAS\|SCASW\)      "Scan string/Scan word string
" \%(SCAS\|SCASD\)      "Scan string/Scan doubleword string
" \%(LODS[Q]\?\|LODSB\) "Load string/Load byte string
" \%(LODS\|LODSW\)      "Load string/Load word string
" \%(LODS\|LODSD\)      "Load string/Load doubleword string
" \%(STOS[Q]\?\|STOSB\) "Store string/Store byte string
" \%(STOS\|STOSW\)      "Store string/Store word string
" \%(STOS\|STOSD\)      "Store string/Store doubleword string
" REP                   "Repeat while ECX not zero
" \%(REPE\|REPZ\)       "Repeat while equal/Repeat while zero
" \%(REPNE\|REPNZ\)     "Repeat while not equal/Repeat while not zero
" \%(INS\|INSB\)        "Input string from port/Input byte string from port
" \%(INS\|INSW\)        "Input string from port/Input word string from port
" \%(INS\|INSD\)        "Input string from port/Input doubleword string from port
" \%(OUTS\|OUTSB\)      "Output string to port/Output byte string to port
" \%(OUTS\|OUTSW\)      "Output string to port/Output word string to port
" \%(OUTS\|OUTSD\)      "Output string to port/Output doubleword string to port
syn keyword AsmString MOVSQ MOVSB MOVSW MOVSD MOVS
syn keyword AsmString CMPSQ CMPSB CMPSW CMPSD CMPS
syn keyword AsmString SCASQ SCASB SCASW SCASD SCAS
syn keyword AsmString LODSQ LODSB LODSW LODSD LODS
syn keyword AsmString STOSQ STOSB STOSW STOSD STOS
syn keyword AsmString REP REPE REPZ REPNE REPNZ
syn keyword AsmString INSB INSW INSD INS
syn keyword AsmString OUTSB OUTSW OUTSD OUTS

hi  link  AsmFlag Statement
" 30.2.1.9. Flag Control Instructions
" STC                      "Set carry flag
" CLC                      "Clear the carry flag
" CMC                      "Complement the carry flag
" CLD                      "Clear the direction flag
" STD                      "Set direction flag
" LAHF                     "Load flags into AH register
" SAHF                     "Store AH register into flags
" \%(PUSHF[LQ]\?\|PUSHFD\) "Push EFLAGS onto stack
" \%(POPF[LQ]\?\|POPFD\)   "Pop EFLAGS from stack
" STI                      "Set interrupt flag
" CLI                      "Clear the interrupt flag
syn keyword AsmFlag STC CLC CMC CLD STD LAHF SAHF STI CLI
syn keyword AsmFlag PUSHFL PUSHFQ PUSHFD PUSHF
syn keyword AsmFlag POPFL POPFQ POPFD POPF

hi  link  AsmSegment Define
" 30.2.1.10. Segment Register Instructions
" LDS[WL]\? "Load far pointer using DS
" LES[WL]\? "Load far pointer using ES
" LFS[WL]\? "Load far pointer using FS
" LGS[WL]\? "Load far pointer using GS
" LSS[WL]\? "Load far pointer using SS
syn keyword AsmSegment LDSW LDSL LDS LESW LESL LES
syn keyword AsmSegment LFSW LFSL LFS LGSW LGSL LGS LSSW LSSL LSS

hi  link  AsmMisc Statement
" 30.2.1.11. Miscellaneous Instructions
" LEA[WLQ]\?       "Load effective address
" NOP              "No operation
" NOPL             "Long-sized No operation
" NOPW             "Word-sized No operation
" UB2              "Undefined instruction
" \%(XLAT\|XLATB\) "Table lookup translation
" CPUID            "Processor Identification
" ENDBR32          "Terminate indirect branch in 32-bit mode[b]
" ENDBR64          "Terminate indirect branch in 64-bit mode[b]
" NOTRACK          "Prefix used with indirect CALL/JMP nestructions (opcodes FF /2 and FF /4) to indicate that the branch target is not required to start with an ENDBR32/64 instruction. Prefix only honored when NO_TRACK_EN flag is set.
syn keyword AsmMisc LEAW LEAL LEAQ LEA
syn keyword AsmMisc NOP NOPL NOPW UB2
syn keyword AsmMisc XLAT XLATB CPUID
syn keyword AsmMisc ENDBR32 ENDBR64 NOTRACK


" 30.2.2. MMX™ Technology Instructions
" The MMX instructions execute on those Intel Architecture processors that
" implement the Intel MMX technology. These instructions operate on
" packed-byte, packed-word, packed-doubleword, and quadword operands.

hi  link  AsmMMX SpecialKey
" 30.2.2.1. MMX™ Data Transfer Instructions
" MOVD "Move doubleword
" MOVQ "Move quadword
syn keyword AsmMMX MOVD MOVQ

" 30.2.2.2. MMX™ Conversion Instructions
" PACKSSWB  "Pack words into bytes with signed saturation
" PACKSSDW  "Pack doublewords into words with signed saturation
" PACKUSWB  "Pack words into bytes with unsigned saturation
" PUNPCKHBW "Unpack high-order bytes from words
" PUNPCKHWD "Unpack high-order words from doublewords
" PUNPCKHDQ "Unpack high-order doublewords from quadword
" PUNPCKLBW "Unpack low-order bytes from words
" PUNPCKLWD "Unpack low-order words from doublewords
" PUNPCKLDQ "Unpack low-order doublewords from quadword
syn keyword AsmMMX PACKSSWB PACKSSDW PACKUSWB
syn keyword AsmMMX PUNPCKHBW PUNPCKHWD PUNPCKHDQ
syn keyword AsmMMX PUNPCKLBW PUNPCKLWD PUNPCKLDQ

" 30.2.2.3. MMX™ Packed Arithmetic Instructions
" PADDB   "Add packed bytes
" PADDW   "Add packed words
" PADDD   "Add packed doublewords
" PADDSB  "Add packed bytes with saturation
" PADDSW  "Add packed words with saturation
" PADDUSB "Add packed unsigned bytes with saturation
" PADDUSW "Add packed unsigned words with saturation
" PSUBB   "Subtract packed bytes
" PSUBW   "Subtract packed words
" PSUBD   "Subtract packed doublewords
" PSUBSB  "Subtract packed bytes with saturation
" PSUBSW  "Subtract packed words with saturation
" PSUBUSB "Subtract packed unsigned bytes with saturation
" PSUBUSW "Subtract packed unsigned words with saturation
" PMULHW  "Multiply packed words and store high result
" PMULLW  "Multiply packed words and store low result
" PMADDWD "Multiply and add packed words
syn keyword AsmMMX PADDB PADDW PADDD PADDSB PADDSW PADDUSB PADDUSW
syn keyword AsmMMX PSUBB PSUBW PSUBD PSUBSB PSUBSW PSUBUSB PSUBUSW
syn keyword AsmMMX PMULHW PMULLW PMADDWD

" 30.2.2.4. MMX™ Comparison Instructions
" PCMPEQB "Compare packed bytes for equal
" PCMPEQW "Compare packed words for equal
" PCMPEQD "Compare packed doublewords for equal
" PCMPGTB "Compare packed bytes for greater than
" PCMPGTW "Compare packed words for greater than
" PCMPGTD "Compare packed doublewords for greater than
syn keyword AsmMMX PCMPEQB PCMPEQW PCMPEQD PCMPGTB PCMPGTW PCMPGTD

" 30.2.2.5. MMX™ Logic Instructions
" PAND  "Bitwise logical and
" PANDN "Bitwise logical and not
" POR   "Bitwise logical or
" PXOR  "Bitwise logical exclusive or
syn keyword AsmMMX PAND PANDN POR PXOR

" 30.2.2.6. MMX™ Shift and Rotate Instructions
" PSLLW "Shift packed words left logical
" PSLLD "Shift packed doublewords left logical
" PSLLQ "Shift packed quadword left logical
" PSRLW "Shift packed words right logical
" PSRLD "Shift packed doublewords right logical
" PSRLQ "Shift packed quadword right logical
" PSRAW "Shift packed words right arithmetic
" PSRAD "Shift packed doublewords right arithmetic
syn keyword AsmMMX PSLLW PSLLD PSLLQ PSRLW PSRLD PSRLQ PSRAW PSRAD

" 30.2.2.7. MMX™ State Management
" EMMS                               "Empty MMX state
syn keyword AsmMMX EMMS

" 30.2.3. Floating-Point Instructions

" The floating-point instructions are those that are executed by the
" processor's floating-point unit (FPU). These instructions operate on
" floating-point (real), extended integer, and binary-coded decimal (BCD)
" operands. As with the integer instructions, the following list of
" floating-point instructions is divided into subgroups.

hi  link  AsmFData Conditional
" 30.2.3.1. Data Transfer
" FLD      "Load real
" FST      "Store real
" FSTP     "Store real and pop
" FILD     "Load integer
" FIST     "Store integer
" FISTP    "Store integer and pop
" FBLD     "Load BCD
" FBSTP    "Store BCD and pop
" FXCH     "Exchange registers
" FCMOVE   "Floating-point conditional move if equal
" FCMOVNE  "Floating-point conditional move if not equal
" FCMOVB   "Floating-point conditional move if below
" FCMOVBE  "Floating-point conditional move if below or equal
" FCMOVNB  "Floating-point conditional move if not below
" FCMOVNBE "Floating-point conditional move if not below or equal
" FCMOVU   "Floating-point conditional move if unordered
" FCMOVNU  "Floating-point conditional move if not unordered
syn keyword AsmFData FLD FST FSTP FILD FIST FISTP FBLD FBSTP FXCH
syn keyword AsmFData FCMOVE FCMOVNE FCMOVB FCMOVBE FCMOVNB FCMOVNBE FCMOVU FCMOVNU

hi  link  AsmFArith Operator
" 30.2.3.2. Basic Arithmetic
" FADD    "Add real
" FADDP   "Add real and pop
" FIADD   "Add integer
" FSUB    "Subtract real
" FSUBP   "Subtract real and pop
" FISUB   "Subtract integer
" FSUBR   "Subtract real reverse
" FSUBRP  "Subtract real reverse and pop
" FISUBR  "Subtract integer reverse
" FMUL    "Multiply real
" FMULP   "Multiply real and pop
" FIMUL   "Multiply integer
" FDIV    "Divide real
" FDIVP   "Divide real and pop
" FIDIV   "Divide integer
" FDIVR   "Divide real reverse
" FDIVRP  "Divide real reverse and pop
" FIDIVR  "Divide integer reverse
" FPREM   "Partial remainder
" FPREMI  "IEEE Partial remainder
" FABS    "Absolute value
" FCHS    "Change sign
" FRNDINT "Round to integer
" FSCALE  "Scale by power of two
" FSQRT   "Square root
" FXTRACT "Extract exponent and significand
syn keyword AsmFArith FADD FADDP FIADD FSUB FSUBP FISUB FSUBR FSUBRP FISUBR
syn keyword AsmFArith FMUL FMULP FIMUL FDIV FDIVP FIDIV FDIVR FDIVRP FIDIVR
syn keyword AsmFArith FPREM FPREMI FABS FCHS FRNDINT FSCALE FSQRT FXTRACT

hi  link  AsmFComp Statement
" 30.2.3.3. Comparison
" FCOM    "Compare real
" FCOMP   "Compare real and pop
" FCOMPP  "Compare real and pop twice
" FUCOM   "Unordered compare real
" FUCOMP  "Unordered compare real and pop
" FUCOMPP "Unordered compare real and pop twice
" FICOM   "Compare integer
" FICOMP  "Compare integer and pop
" FCOMI   "Compare real and set EFLAGS
" FUCOMI  "Unordered compare real and set EFLAGS
" FCOMIP  "Compare real, set EFLAGS, and pop
" FUCOMIP "Unordered compare real, set EFLAGS, and pop
" FTST    "Test real
" FXAM    "Examine real
" COMISD  "Compare Scalar Ordered Double Precision Floating-Point Values and Set EFLAGS
syn keyword AsmFComp FCOM FCOMP FCOMPP FUCOM FUCOMP FUCOMPP FICOM FICOMP
syn keyword AsmFComp FCOMI FUCOMI FCOMIP FUCOMIP FTST FXAM COMISD


" 30.2.3.4. Transcendental
" FSIN    "Sine
" FCOS    "Cosine
" FSINCOS "Sine and cosine
" FPTAN   "Partial tangent
" FPATAN  "Partial arctangent
" F2XM1   "2 x − 1
" FYL2X   "y∗log 2x
" FYL2XP1 "y∗log 2(x+1)
syn keyword AsmFComp FSIN FCOS FSINCOS FPTAN FPATAN F2XM1 FYL2X FYL2XP1

" 30.2.3.5. Load Constants
" FLD1   "Load +1.0
" FLDZ   "Load +0.0
" FLDPI  "Load π
" FLDL2E "Load log 2 e
" FLDLN2 "Load log e 2
" FLDL2T "Load log 2 10
" FLDLG2 "Load log 10 2
syn keyword AsmFComp FLD1 FLDZ FLDPI FLDL2E FLDLN2 FLDL2T FLDLG2

" 30.2.3.6. FPU Control
" FINCSTP          "Increment FPU register stack pointer
" FDECSTP          "Decrement FPU register stack pointer
" FFREE            "Free floating-point register
" FINIT            "Initialize FPU after checking error conditions
" FNINIT           "Initialize FPU without checking error conditions
" FCLEX            "Clear floating-point exception flags after checking for error conditions
" FNCLEX           "Clear floating-point exception flags without checking for error conditions
" FSTCW            "Store FPU control word after checking error conditions
" FNSTCW           "Store FPU control word without checking error conditions
" FLDCW            "Load FPU control word
" FSTENV           "Store FPU environment after checking error conditions
" FNSTENV          "Store FPU environment without checking error conditions
" FLDENV           "Load FPU environment
" FSAVE            "Save FPU state after checking error conditions
" FNSAVE           "Save FPU state without checking error conditions
" FRSTOR           "Restore FPU state
" FSTSW            "Store FPU status word after checking error conditions
" FNSTSW           "Store FPU status word without checking error conditions
" \%(WAIT\|FWAIT\) "Wait for FPU
" FNOP             "FPU no operation
syn keyword AsmFComp FINCSTP FDECSTP FFREE FINIT FNINIT FCLEX FNCLEX
syn keyword AsmFComp FSTCW FNSTCW FLDCW FSTENV FNSTENV FLDENV
syn keyword AsmFComp FSAVE FNSAVE FRSTOR FSTSW FNSTSW WAIT FWAIT FNOP

" 30.2.4. System Instructions

" The following system instructions are used to control those functions of the
" processor that are provided to support for operating systems and executives.
" LGDT   "Load global descriptor table (GDT) register
" SGDT   "Store global descriptor table (GDT) register
" LLDT   "Load local descriptor table (LDT) register
" SLDT   "Store local descriptor table (LDT) register
" LTR    "Load task register
" STR    "Store task register
" LIDT   "Load interrupt descriptor table (IDT) register
" SIDT   "Store interrupt descriptor table (IDT) register
" MOV    "Load and store control registers
" LMSW   "Load machine status word
" SMSW   "Store machine status word
" CLTS   "Clear the task-switched flag
" ARPL   "Adjust requested privilege level
" LAR    "Load access rights
" LSL    "Load segment limit
" VERR   "Verify segment for reading
" VERW   "Verify segment for writing
" INVD   "Invalidate cache, no writeback
" WBINVD "Invalidate cache, with writeback
" INVLPG "Invalidate TLB Entry
" LOCK   "(prefix) Lock Bus
" HLT    "Halt processor
" RSM    "Return from system management mode (SSM)
" RDMSR  "Read model-specific register
" WRMSR  "Write model-specific register
" RDPMC  "Read performance monitoring counters
" RDTSC  "Read time stamp counter
syn keyword AsmFComp LGDT SGDT LLDT SLDT LTR STR LIDT SIDT
syn keyword AsmFComp LMSW SMSW CLTS ARPL LAR LSL VERR VERW
syn keyword AsmFComp INVD WBINVD INVLPG LOCK HLT RSM RDMSR WRMSR RDPMC RDTSC
"------------------------------------------------------------------------------
" same matches as above but all lowercase
"------------------------------------------------------------------------------
syn keyword AsmData mov movb movw movl
syn keyword AsmData cmovew cmovel cmoveq cmovzw cmovzl cmovzq
syn keyword AsmData cmovnew cmovnel cmovneq cmovnzw cmovnzl cmovnzq
syn keyword AsmData cmovaw cmoval cmovaq cmovnbew cmovnbel cmovnbeq
syn keyword AsmData cmovaew cmovael cmovaeq cmovnbw cmovnbl cmovnbq
syn keyword AsmData cmovbw cmovbl cmovbq cmovnaew cmovnael cmovnaeq
syn keyword AsmData cmovbew cmovbel cmovbeq cmovnaw cmovnal cmovnaq
syn keyword AsmData cmovgw cmovgl cmovgq cmovnlew cmovnlel cmovnleq
syn keyword AsmData cmovgew cmovgel cmovgeq cmovnlw cmovnll cmovnlq
syn keyword AsmData cmovlw cmovll cmovlq cmovngew cmovngel cmovngeq
syn keyword AsmData cmovlew cmovlel cmovleq cmovngw cmovngl cmovngq
syn keyword AsmData cmovcw cmovcl cmovcq cmovncw cmovncl cmovncq
syn keyword AsmData cmovow cmovol cmovoq cmovnow cmovnol cmovnoq
syn keyword AsmData cmovsw cmovsl cmovsq cmovnsw cmovnsl cmovnsq
syn keyword AsmData cmovpw cmovpl cmovpq cmovpew cmovpel cmovpeq
syn keyword AsmData cmovnpw cmovnpl cmovnpq cmovpow cmovpol cmovpoq
syn keyword AsmData cmove cmovz cmovne cmovnz cmova cmovnbe cmovae cmovnb
syn keyword AsmData cmovb cmovnae cmovbe cmovna cmovg cmovnle cmovge cmovnl
syn keyword AsmData cmovl cmovnge cmovle cmovng cmovc cmovnc cmovo cmovno
syn keyword AsmData cmovs cmovns cmovp cmovpe cmovnp cmovpo
syn keyword AsmData xchgb xchgw xchgl xchgq xchg
syn keyword AsmData bswapl bswapq bswap
syn keyword AsmData xaddb xaddw xaddl xaddq xadd
syn keyword AsmData cmpxchgb cmpxchgw cmpxchgl cmpxchgq cmpxchg cmpxchg8b
syn keyword AsmData pushw pushl pushq push popw popl popq pop
syn keyword AsmData pusha pushad popa popad
syn keyword AsmData in out
syn keyword AsmData cwd cdq cbw cwde
syn keyword AsmData movsx movzx
syn keyword AsmData movabsb movabsw movabsl movabsq movabs
syn keyword AsmData movabsba movabswa movabsla movabsqa movabsa
syn keyword AsmData movsbw movsbl movsbq movswl movswq
syn keyword AsmData movzbw movzbl movzbq movzwl movzwq
syn keyword AsmData popaw popal popa pushaw pushal pusha
syn keyword AsmData xchgba xchgwa xchgla xchgqa xchga
syn keyword AsmData movaps movslq

" 30.2.1.2. Binary arithmetic instructions
syn keyword AsmLogic addw addl addq add
syn keyword AsmLogic adcb adcw adcl adcq adc
syn keyword AsmLogic subb subw subl subq sub
syn keyword AsmLogic sbbb sbbw sbbl sbbq sbb
syn keyword AsmLogic imulb imulw imull imulq imul
syn keyword AsmLogic mulb mulw mull mulq mul
syn keyword AsmLogic idivb idivw idivl idivq idiv
syn keyword AsmLogic divb divw divl divq div
syn keyword AsmLogic incb incw incl incq inc
syn keyword AsmLogic decb decw decl decq dec
syn keyword AsmLogic negb negw negl negq neg
syn keyword AsmLogic cmpw cmpl cmpq cmp

" 30.2.1.3. Decimal arithmetic
syn keyword AsmLogic daa das aaa aas aam aad

" 30.2.1.4. Logic instructions
syn keyword AsmLogic andb andw andl andq and
syn keyword AsmLogic orb orw orl orq or
syn keyword AsmLogic xorb xorw xorl xorq xor
syn keyword AsmLogic notb notw notl notq not

" 30.2.1.5. Shift and rotate instructions
syn keyword AsmLogic sarb sarw sarl sarq sar
syn keyword AsmLogic shrb shrw shrl shrq shr
syn keyword AsmLogic salb salw sall salq sal shlb shlw shll shlq shl
syn keyword AsmLogic shrdb shrdw shrdl shrdq shrd
syn keyword AsmLogic shldb shldw shldl shldq shld
syn keyword AsmLogic rorb rorw rorl rorq ror
syn keyword AsmLogic rolb rolw roll rolq rol
syn keyword AsmLogic rcrb rcrw rcrl rcrq rcr
syn keyword AsmLogic rclb rclw rcll rclq rcl

" 30.2.1.6. Bit and byte instructions
syn keyword AsmBit btw btl btq bt
syn keyword AsmBit btsw btsl btsq bts
syn keyword AsmBit btrw btrl btrq btr
syn keyword AsmBit btcw btcl btcq btc
syn keyword AsmBit bsfw bsfl bsfq bsf
syn keyword AsmBit bsrw bsrl bsrq bsr
syn keyword AsmBit sete setz setne setnz
syn keyword AsmBit seta setnbe setae setnb setnc setb setnae setc
syn keyword AsmBit setbe setna setg setnle setge setnl setl setnge setle setng
syn keyword AsmBit sets setns seto setno setpe setp setpo setnp
syn keyword AsmBit testw testl testq test

" 30.2.1.7. Control transfer instructions
syn keyword AsmControl jmp
syn keyword AsmControl je jz jne jnz
syn keyword AsmControl ja jnbe jae jnb jb jnae jbe jna
syn keyword AsmControl jg jnle jge jnl jl jnge jle jng
syn keyword AsmControl jc jnc jo jno js jns jpo jnp jpe jp
syn keyword AsmControl jcxz jecxz
syn keyword AsmControl loop loopz loope loopnz loopne
syn keyword AsmControl call ret iret int into
syn keyword AsmControl boundw boundl bound
syn keyword AsmControl enter leave

" 30.2.1.8. String instructions
syn keyword AsmString movsq movsb movsw movsd movs
syn keyword AsmString cmpsq cmpsb cmpsw cmpsd cmps
syn keyword AsmString scasq scasb scasw scasd scas
syn keyword AsmString lodsq lodsb lodsw lodsd lods
syn keyword AsmString stosq stosb stosw stosd stos
syn keyword AsmString rep repe repz repne repnz
syn keyword AsmString insb insw insd ins
syn keyword AsmString outsb outsw outsd outs

" 30.2.1.9. Flag control instructions
syn keyword AsmFlag stc clc cmc cld std lahf sahf sti cli
syn keyword AsmFlag pushfl pushfq pushfd pushf
syn keyword AsmFlag popfl popfq popfd popf

" 30.2.1.10. Segment register instructions
syn keyword AsmSegment ldsw ldsl lds lesw lesl les
syn keyword AsmSegment lfsw lfsl lfs lgsw lgsl lgs lssw lssl lss

" 30.2.1.11. Miscellaneous instructions
syn keyword AsmMisc leaw leal leaq lea
syn keyword AsmMisc nop nopl nopw ub2
syn keyword AsmMisc xlat xlatb cpuid
syn keyword AsmMisc endbr32 endbr64 notrack

" 30.2.2. MMX™
syn keyword AsmMMX movd movq
syn keyword AsmMMX packsswb packssdw packuswb
syn keyword AsmMMX punpckhbw punpckhwd punpckhdq
syn keyword AsmMMX punpcklbw punpcklwd punpckldq
syn keyword AsmMMX paddb paddw paddd paddsb paddsw paddusb paddusw
syn keyword AsmMMX psubb psubw psubd psubsb psubsw psubusb psubusw
syn keyword AsmMMX pmulhw pmullw pmaddwd
syn keyword AsmMMX pcmpeqb pcmpeqw pcmpeqd pcmpgtb pcmpgtw pcmpgtd
syn keyword AsmMMX pand pandn por pxor
syn keyword AsmMMX psllw pslld psllq psrlw psrld psrlq psraw psrad
syn keyword AsmMMX emms

" 30.2.3. Floating-point instructions

" 30.2.3.1. Data transfer
syn keyword AsmFData fld fst fstp fild fist fistp fbld fbstp fxch
syn keyword AsmFData fcmove fcmovne fcmovb fcmovbe fcmovnb fcmovnbe fcmovu fcmovnu

" 30.2.3.2. Basic arithmetic
syn keyword AsmFArith fadd faddp fiadd fsub fsubp fisub fsubr fsubrp fisubr
syn keyword AsmFArith fmul fmulp fimul fdiv fdivp fidiv fdivr fdivrp fidivr
syn keyword AsmFArith fprem fpremi fabs fchs frndint fscale fsqrt fxtract

" 30.2.3.3. Comparison
" 30.2.3.4. Transcendental
" 30.2.3.5. Load Constants
" 30.2.3.6. FPU Control
" 30.2.4. System instructions
syn keyword AsmFComp fcom fcomp fcompp fucom fucomp fucompp ficom ficomp
syn keyword AsmFComp fcomi fucomi fcomip fucomip ftst fxam comisd
syn keyword AsmFComp fsin fcos fsincos fptan fpatan f2xm1 fyl2x fyl2xp1
syn keyword AsmFComp fld1 fldz fldpi fldl2e fldln2 fldl2t fldlg2
syn keyword AsmFComp fincstp fdecstp ffree finit fninit fclex fnclex
syn keyword AsmFComp fstcw fnstcw fldcw fstenv fnstenv fldenv
syn keyword AsmFComp fsave fnsave frstor fstsw fnstsw wait fwait fnop
syn keyword AsmFComp lgdt sgdt lldt sldt ltr str lidt sidt
syn keyword AsmFComp lmsw smsw clts arpl lar lsl verr verw
syn keyword AsmFComp invd wbinvd invlpg lock hlt rsm rdmsr wrmsr rdpmc rdtsc
"------------------------------------------------------------------------------



" NOTE: Intel vs AT&T syntax
" Intel Syntax: Destination, source (e.g., mov eax, ebx means eax = ebx)
" AT&T Syntax:  Source, destination (e.g., movl %ebx, %eax means eax = ebx)
" Intel Syntax: Registers and immediate values are used directly (eax, 10).
" AT&T Syntax:  Registers are prefixed with % (e.g., %eax), and immediate
"               values are prefixed with $ (e.g., $10).
" Intel Syntax: Memory operands are enclosed in square brackets [] and often
"               use ptr prefixes to specify size (mov eax, [ebx + ecx*4]).
" AT&T Syntax:  Memory operands use parentheses () and specify size through the
"               instruction mnemonic (e.g., movl (%ebx,%ecx,4), %eax).
" Intel Syntax: Instruction size is usually implied or specified with ptr
"               prefixes.
" AT&T Syntax:  Instruction mnemonics are often suffixed with b (byte),
"               w (word), l (long), or q (quad) to indicate operand size
"               (e.g., movl).
" Intel Syntax: call/jmp far section:offset.
" AT&T Syntax: lcall/ljmp $section, $offset.


" NOTE: The difference between "R" and "E" name of registers in assembly?
" Short answer: exx registers are 32-bit, rxx registers are 64-bit
" Longer answer: The x86 architecture has evolved for decades from its initial
" 16-bit roots, when the 16-bit registers were called ax, bx, etc. When the
" 80386 was introduced, the registers were extended to 32 bits, and thus called
" eax, ebx etc. Referring to the old 16-bit register names on a 80386 accesses
" the lower 16 bits of these extended registers. When AMD extended the x86
" instruction set architecture to 64 bits, they chose 'r' as the prefix of
" the 64-bit registers, extending the 32-bit registers again, to rax, rbx etc.
" In the process, they added a few new registers that didn't exist before,
" r8-r15.
hi  link  AsmDotStar Function
syn match AsmDotStar "<.*>" contains=@NoSpell

hi  link  AsmRegs Constant
syn keyword AsmRegs rax rbx rcx rdx rsi rdi rsp rbp rip
syn keyword AsmRegs RAX RBX RCX RDX RSI RDI RSP RBP RIP
syn keyword AsmRegs eax ebx ecx edx esi edi
syn keyword AsmRegs EAX EBX ECX EDX ESI EDI
syn match AsmRegs "%\w*\>" contains=@NoSpell

" Match 2 or more times.
hi  link  AsmHex Number
syn match AsmHex "\<[0-9a-f][0-9a-f]\+\>" contains=@NoSpell

" Convert Long To Quad (cltq): AT&T-style
" Convert Double to Quad Extend (cdqe): Intel
" quad (aka quad-word) == 8 bytes
" long (AT&T) == double-word (Intel) == 4 bytes
hi  link  AsmOther Statement
syn keyword AsmOther cltq CLTQ

"Code segment (CS) is a 16-bit register containing address of 64 KB segment
" with processor instructions. The processor uses CS segment for all accesses
" to instructions referenced by instruction pointer (IP) register.
syn keyword AsmRegs cs CS

" .word
hi  link  AsmLabel Type
syn match AsmLabel "\.\w\+\>" contains=@NoSpell

hi  link    AsmMain NonText
syn keyword AsmMain main Main

" Highlight Note keyword
hi  link    AsmNote  AllHLNote
syn keyword AsmNote  NOTE Note containedin=.*Comment.*

