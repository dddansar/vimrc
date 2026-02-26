"==============================================================================
" File: asm.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all assembly
"              files.
"              Gets loaded by .vimrc when opening select files with a vim GUI.
"------------------------------------------------------------------------------
" Authors: Danny Sarraf
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

syn case ignore

"------------------------------------------------------------------------------
" MIPS instruction set
" https://jarrettbillingsley.github.io/teaching/classes/cs0447/guides/instructions.html
"------------------------------------------------------------------------------

hi  link  AsmArithm    AllFilesSystemColor
" Arithmetic and Bitwise Instructions
syn match AsmArithm  "\<NEG[IU]\{0,2}\>"   contains=@NoSpell "a, b       a = -b     gives the negative of b.
syn match AsmArithm  "\<ADD[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b + c  adds signed numbers.
syn match AsmArithm  "\<SUB[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b - c  subtracts signed numbers.
syn match AsmArithm  "\<MUL[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b * c  gives low 32 bits of signed multiplication.
syn match AsmArithm  "\<DIV[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b / c  gives quotient of signed division.
syn match AsmArithm  "\<REM[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b % c  gives remainder of signed division.
syn match AsmArithm  "\<ADDU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b + c  adds unsigned numbers.
syn match AsmArithm  "\<SUBU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b - c  subtracts unsigned numbers.
syn match AsmArithm  "\<MULU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b * c  gives low 32 bits of unsigned multiplication.
syn match AsmArithm  "\<DIVU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b / c  gives quotient of unsigned division.
syn match AsmArithm  "\<REMU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b % c  gives remainder of unsigned division.
syn match AsmArithm  "\<MFHI[IU]\{0,2}\>"  contains=@NoSpell "a          a = HI     after mul, gives high 32 bits. after div, gives remainder.
syn match AsmArithm  "\<MFLO[IU]\{0,2}\>"  contains=@NoSpell "a          a = LO     after mul, gives low 32 bits. after div, gives quotient.
syn match AsmArithm  "\<NOT[IU]\{0,2}\>"   contains=@NoSpell "a, b       a = ~b     gives the bitwise complement of b (all bits flipped).
syn match AsmArithm  "\<AND[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b & c  bitwise ANDs numbers.
syn match AsmArithm  "\<OR[IU]\{0,2}\>"    contains=@NoSpell "a, b, c    a = b | c  bitwise ORs numbers.
syn match AsmArithm  "\<XOR[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b ^ c  bitwise XORs numbers.

" Shift Instructions
syn match AsmArithm  "\<SLL\>"             contains=@NoSpell "a, b, imm  a = b << imm   shift left by a constant amount.
syn match AsmArithm  "\<SRL\>"             contains=@NoSpell "a, b, imm  a = b >>> imm  shift right unsigned (logical) by a constant amount.
syn match AsmArithm  "\<SRA\>"             contains=@NoSpell "a, b, imm  a = b >> imm   shift right arithmetic by a constant amount.
syn match AsmArithm  "\<SLLV\>"            contains=@NoSpell "a, b, reg  a = b << reg   shift left by the amount in a register.
syn match AsmArithm  "\<SRLV\>"            contains=@NoSpell "a, b, reg  a = b >>> reg  shift right unsigned (logical) by the amount in a register.
syn match AsmArithm  "\<SRAV\>"            contains=@NoSpell "a, b, reg  a = b >> reg   shift right arithmetic by the amount in a register.

" Data Transfer Instructions
syn match AsmArithm  "\<LI\>"              contains=@NoSpell "a, imm     a = imm                 put a constant value into a register.
syn match AsmArithm  "\<LA\>"              contains=@NoSpell "a, label   a = &label              put the address that a label points to into a register.
syn match AsmArithm  "\<MOVE\>"            contains=@NoSpell "a, b       ` a = b `               copy value from one register to another.
syn match AsmArithm  "\<LW\>"              contains=@NoSpell "reg, addr  reg = MEM[addr]         loads the 4 bytes at addr as a 32-bit value into reg.
syn match AsmArithm  "\<LH\>"              contains=@NoSpell "reg, addr  reg = sxt(MEM[addr])    loads the 2 bytes at addr as a signed 16-bit value into reg.
syn match AsmArithm  "\<LB\>"              contains=@NoSpell "reg, addr  reg = sxt(MEM[addr])    loads the 1 byte at addr as a signed 8-bit value into reg.
syn match AsmArithm  "\<LHU\>"             contains=@NoSpell "reg, addr  reg = zxt(MEM[addr])    loads the 2 bytes at addr as an unsigned 16-bit value into reg.
syn match AsmArithm  "\<LBU\>"             contains=@NoSpell "reg, addr  reg = zxt(MEM[addr])    loads the 1 byte at addr as an unsigned 8-bit value into reg.
syn match AsmArithm  "\<SW\>"              contains=@NoSpell "reg, addr  MEM[addr] = reg         stores the value of reg into memory as 4 bytes starting at addr.
syn match AsmArithm  "\<SH\>"              contains=@NoSpell "reg, addr  MEM[addr] = lo16(reg)   stores the low 16 bits of reg into memory as 2 bytes starting at addr.
syn match AsmArithm  "\<SB\>"              contains=@NoSpell "reg, addr  MEM[addr] = lo8(reg)    stores the low 8 bits of reg into memory as 1 byte at addr.
syn match AsmArithm  "\<PUSH\>"            contains=@NoSpell "reg        sp -= 4; MEM[sp] = reg  pushes the value of reg onto the call stack
syn match AsmArithm  "\<POP\>"             contains=@NoSpell "reg        reg = MEM[sp]; sp += 4  pops the top call stack value and puts it into reg

" Unconditional Control Flow Instructions
syn match AsmArithm  "\<B\>"               contains=@NoSpell "
syn match AsmArithm  "\<J\>"               contains=@NoSpell "label      PC = label                goes to the instruction at label.
syn match AsmArithm  "\<JAL\>"             contains=@NoSpell "label      ra = PC + 4; PC = label   function call to label. stores return address in ra.
syn match AsmArithm  "\<JR\>"              contains=@NoSpell "reg        PC = reg                  goes to the instruction whose address is in reg, often ra.
syn match AsmArithm  "\<SYSCALL\>"         contains=@NoSpell "           --->                      runs the system call function whose number is in v0.

" Conditional Control Flow Instructions
syn match AsmArithm  "\<BEQ\>"             contains=@NoSpell "a, b, label   if(a == b) { PC = label } if a is equal to b, goes to label .
syn match AsmArithm  "\<BNE\>"             contains=@NoSpell "a, b, label   if(a != b) { PC = label } if a is NOT equal to b, goes to label .
syn match AsmArithm  "\<BLT\>"             contains=@NoSpell "a, b, label   if(a < b) { PC = label }  if a is less than b, goes to label .
syn match AsmArithm  "\<BLE\>"             contains=@NoSpell "a, b, label   if(a <= b) { PC = label } if a is less than or equal to b, goes to label .
syn match AsmArithm  "\<BGT\>"             contains=@NoSpell "a, b, label   if(a > b) { PC = label }  if a is greater than b, goes to label .
syn match AsmArithm  "\<BGE\>"             contains=@NoSpell "a, b, label   if(a >= b) { PC = label } if a is greater than or equal to b, goes to label .
syn match AsmArithm  "\<BLTU\>"            contains=@NoSpell "a, b, label   if(a < b) { PC = label }  same as blt but does an unsigned comparison.
syn match AsmArithm  "\<BLEU\>"            contains=@NoSpell "a, b, label   if(a <= b) { PC = label } same as ble but does an unsigned comparison.
syn match AsmArithm  "\<BGTU\>"            contains=@NoSpell "a, b, label   if(a > b) { PC = label }  same as bgt but does an unsigned comparison.
syn match AsmArithm  "\<BGEU\>"            contains=@NoSpell "a, b, label   if(a >= b) { PC = label } same as bge but does an unsigned comparison.
"------------------------------------------------------------------------------





"------------------------------------------------------------------------------
" Intel instruction set list
" https://www.intel.com/content/dam/www/public/us/en/documents/manuals/64-ia-32-architectures-software-developer-instruction-set-reference-manual-325383.pdf
" https://en.wikipedia.org/wiki/X86_instruction_listings
" https://cs.wellesley.edu/~cs342/fall12/papers/isa.pdf
" https://docs.oracle.com/cd/E53394_01/html/E54851/ennbz.html
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" https://cse.unl.edu/~goddard/Courses/CSCE351/IntelArchitecture/InstructionSetSummary.pdf
"------------------------------------------------------------------------------
" 30.2.1. Integer Instructions
" Integer instructions perform the integer arithmetic, logic, and program flow
" control operations that programmers commonly use to write application and
" system software to run on an Intel Architecture processor.

hi  link  AsmData AllFilesSystemColor3
" 30.2.1.1. Data Transfer Instructions
syn match AsmData "\<MOV\>"                       contains=@NoSpell "Move
syn match AsmData "\<MOVB\>"                      contains=@NoSpell "Move into the single byte
syn match AsmData "\<MOVW\>"                      contains=@NoSpell "Move into the 2 bytes
syn match AsmData "\<MOVL\>"                      contains=@NoSpell "Move into the 4 bytes
syn match AsmData "\<\%(CMOVE[WLQ]\?\|CMOVZ[WLQ]\?\)\>"   contains=@NoSpell "Conditional move if equal/Conditional move if zero
syn match AsmData "\<\%(CMOVNE[WLQ]\?\|CMOVNZ[WLQ]\?\)\>" contains=@NoSpell "Conditional move if not equal/Conditional move if not zero
syn match AsmData "\<\%(CMOVA[WLQ]\?\|CMOVNBE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if above/Conditional move if not below or equal
syn match AsmData "\<\%(CMOVAE[WLQ]\?\|CMOVNB[WLQ]\?\)\>" contains=@NoSpell "Conditional move if above or equal/Conditional move if not below
syn match AsmData "\<\%(CMOVB[WLQ]\?\|CMOVNAE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if below/Conditional move if not above or equal
syn match AsmData "\<\%(CMOVBE[WLQ]\?\|CMOVNA[WLQ]\?\)\>" contains=@NoSpell "Conditional move if below or equal/Conditional move if not above
syn match AsmData "\<\%(CMOVG[WLQ]\?\|CMOVNLE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if greater/Conditional move if not less or equal
syn match AsmData "\<\%(CMOVGE[WLQ]\?\|CMOVNL[WLQ]\?\)\>" contains=@NoSpell "Conditional move if greater or equal/Conditional move if not less
syn match AsmData "\<\%(CMOVL[WLQ]\?\|CMOVNGE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if less/Conditional move if not greater or equal
syn match AsmData "\<\%(CMOVLE[WLQ]\?\|CMOVNG[WLQ]\?\)\>" contains=@NoSpell "Conditional move if less or equal/Conditional move if not greater
syn match AsmData "\<CMOVC[WLQ]\?\>"              contains=@NoSpell "Conditional move if carry
syn match AsmData "\<CMOVNC[WLQ]\?\>"             contains=@NoSpell "Conditional move if not carry
syn match AsmData "\<CMOVO[WLQ]\?\>"              contains=@NoSpell "Conditional move if overflow
syn match AsmData "\<CMOVNO[WLQ]\?\>"             contains=@NoSpell "Conditional move if not overflow
syn match AsmData "\<CMOVS[WLQ]\?\>"              contains=@NoSpell "Conditional move if sign (negative)
syn match AsmData "\<CMOVNS[WLQ]\?\>"             contains=@NoSpell "Conditional move if not sign (non-negative)
syn match AsmData "\<\%(CMOVP[WLQ]\?\|CMOVPE[WLQ]\?\)\>"  contains=@NoSpell "Conditional move if parity/Conditional move if parity even
syn match AsmData "\<\%(CMOVNP[WLQ]\?\|CMOVPO[WLQ]\?\)\>" contains=@NoSpell "Conditional move if not parity/Conditional move if parity odd
syn match AsmData "\<XCHG[BWLQ]\?\>"              contains=@NoSpell "Exchange
syn match AsmData "\<BSWAP[LQ]\?\>"               contains=@NoSpell "Byte swap
syn match AsmData "\<XADD[BWLQ]\?\>"              contains=@NoSpell "Exchange and add
syn match AsmData "\<CMPXCHG[BWLQ]\?\>"           contains=@NoSpell "Compare and exchange
syn match AsmData "\<CMPXCHG8B\>"                 contains=@NoSpell "Compare and exchange 8 bytes
syn match AsmData "\<PUSH[WLQ]\?\>"               contains=@NoSpell "Push onto stack
syn match AsmData "\<POP[WLQ]\?\>"                contains=@NoSpell "Pop off of stack
syn match AsmData "\<\%(PUSHA\|PUSHAD\)\>"         contains=@NoSpell "Push general-purpose registers onto stack
syn match AsmData "\<\%(POPA\|POPAD\)\>"           contains=@NoSpell "Pop general-purpose registers from stack
syn match AsmData "\<IN\>"                        contains=@NoSpell "Read from a port
syn match AsmData "\<OUT\>"                       contains=@NoSpell "Write to a port
syn match AsmData "\<\%(CWD\|CDQ\)\>"              contains=@NoSpell "Convert word to doubleword/Convert doubleword to quadword
syn match AsmData "\<\%(CBW\|CWDE\)\>"             contains=@NoSpell "Convert byte to word/Convert word to doubleword in EAX register
syn match AsmData "\<MOVSX\>"                     contains=@NoSpell "Move and sign extend
syn match AsmData "\<MOVZX\>"                     contains=@NoSpell "Move and zero extend

syn match AsmData "\<MOVABS[BWLQ]\?\>"            contains=@NoSpell "move immediate value to register    valid only under –m64
syn match AsmData "\<MOVABS[BWLQ]\?A\>"           contains=@NoSpell "move immediate value to register {AL, AX, GAX, RAX}   valid only under –m64
syn match AsmData "\<\%(MOVSB[WLQ]\?\|MOVSW[LQ]\?\)\>" contains=@NoSpell "move and sign extend    valid only under –m64
syn match AsmData "\<\%(MOVZB[WLQ]\?\|MOVZW[LQ]\?\)\>" contains=@NoSpell "move and zero extend    valid only under –m64
syn match AsmData "\<POPAW\>"                     contains=@NoSpell "pop general-purpose registers from stack     invalid under –m64
syn match AsmData "\<POPAL, POPA\>"               contains=@NoSpell "pop general-purpose registers from stack     invalid under –m64
syn match AsmData "\<PUSHAW\>"                    contains=@NoSpell "push general-purpose registers onto stack    invalid under –m64
syn match AsmData "\<PUSHAL, PUSHA\>"             contains=@NoSpell "push general-purpose registers onto stack    invalid under –m64
syn match AsmData "\<XCHG[BWLQ]\?A\>"             contains=@NoSpell "exchange    xchgqA valid only under –m64

syn match AsmData "\<MOVAPS\>"                    contains=@NoSpell
syn match AsmData "\<MOVSLQ\>"                    contains=@NoSpell

hi  link  AsmLogic AllFilesOpColor
" 30.2.1.2. Binary Arithmetic Instructions
syn match AsmLogic "\<ADD[BWQL]\?\>"              contains=@NoSpell "Integer add
syn match AsmLogic "\<ADC[BWLQ]\?\>"              contains=@NoSpell "Add with carry
syn match AsmLogic "\<SUB[BWLQ]\?\>"              contains=@NoSpell "Subtract
syn match AsmLogic "\<SBB[BWLQ]\?\>"              contains=@NoSpell "Subtract with borrow
syn match AsmLogic "\<IMUL[BWLQ]\?\>"             contains=@NoSpell "Signed multiply
syn match AsmLogic "\<MUL[BWLQ]\?\>"              contains=@NoSpell "Unsigned multiply
syn match AsmLogic "\<IDIV[BWLQ]\?\>"             contains=@NoSpell "Signed divide
syn match AsmLogic "\<DIV[BWLQ]\?\>"              contains=@NoSpell "Unsigned divide
syn match AsmLogic "\<INC[BWLQ]\?\>"              contains=@NoSpell "Increment
syn match AsmLogic "\<DEC[BWLQ]\?\>"              contains=@NoSpell "Decrement
syn match AsmLogic "\<NEG[BWLQ]\?\>"              contains=@NoSpell "Negate
syn match AsmLogic "\<CMP[BWQL]\?\>"              contains=@NoSpell "Compare

" 30.2.1.3. Decimal Arithmetic
syn match AsmLogic "\<DAA\>"                      contains=@NoSpell "Decimal adjust after addition
syn match AsmLogic "\<DAS\>"                      contains=@NoSpell "Decimal adjust after subtraction
syn match AsmLogic "\<AAA\>"                      contains=@NoSpell "ASCII adjust after addition
syn match AsmLogic "\<AAS\>"                      contains=@NoSpell "ASCII adjust after subtraction
syn match AsmLogic "\<AAM\>"                      contains=@NoSpell "ASCII adjust after multiplication
syn match AsmLogic "\<AAD\>"                      contains=@NoSpell "ASCII adjust before division

" 30.2.1.4. Logic Instructions
syn match AsmLogic "\<AND[BWLQ]\?\>"              contains=@NoSpell "And
syn match AsmLogic "\<OR[BWLQ]\?\>"               contains=@NoSpell "Or
syn match AsmLogic "\<XOR[BWLQ]\?\>"              contains=@NoSpell "Exclusive or
syn match AsmLogic "\<NOT[BWLQ]\?\>"              contains=@NoSpell "Not

" 30.2.1.5. Shift and Rotate Instructions
syn match AsmLogic "\<SAR[BWLQ]\?\>"              contains=@NoSpell "Shift arithmetic right
syn match AsmLogic "\<SHR[BWLQ]\?\>"              contains=@NoSpell "Shift logical right
syn match AsmLogic "\<\%(SAL\|SHL\)[BWLQ]\?\>"     contains=@NoSpell "Shift arithmetic left/Shift logical left
syn match AsmLogic "\<SHRD[BWLQ]\?\>"             contains=@NoSpell "Shift right double
syn match AsmLogic "\<SHLD[BWLQ]\?\>"             contains=@NoSpell "Shift left double
syn match AsmLogic "\<ROR[BWLQ]\?\>"              contains=@NoSpell "Rotate right
syn match AsmLogic "\<ROL[BWLQ]\?\>"              contains=@NoSpell "Rotate left
syn match AsmLogic "\<RCR[BWLQ]\?\>"              contains=@NoSpell "Rotate through carry right
syn match AsmLogic "\<RCL[BWLQ]\?\>"              contains=@NoSpell "Rotate through carry left

hi  link  AsmBit AllFilesArrowsColor
" 30.2.1.6. Bit and Byte Instructions
syn match AsmBit "\<BT[WLQ]\?\>"                  contains=@NoSpell "Bit test
syn match AsmBit "\<BTS[WLQ]\?\>"                 contains=@NoSpell "Bit test and set
syn match AsmBit "\<BTR[WLQ]\?\>"                 contains=@NoSpell "Bit test and reset
syn match AsmBit "\<BTC[WLQ]\?\>"                 contains=@NoSpell "Bit test and complement
syn match AsmBit "\<BSF[WLQ]\?\>"                 contains=@NoSpell "Bit scan forward
syn match AsmBit "\<BSR[WLQ]\?\>"                 contains=@NoSpell "Bit scan reverse
syn match AsmBit "\<\%(SETE\|SETZ\)\>"             contains=@NoSpell "Set byte if equal/Set byte if zero
syn match AsmBit "\<\%(SETNE\|SETNZ\)\>"           contains=@NoSpell "Set byte if not equal/Set byte if not zero
syn match AsmBit "\<\%(SETA\|SETNBE\)\>"           contains=@NoSpell "Set byte if above/Set byte if not below or equal
syn match AsmBit "\<\%(SETAE\|SETNB\|SETNC\)\>"    contains=@NoSpell "Set byte if above or equal/Set byte if not below/Set byte if not carry
syn match AsmBit "\<\%(SETB\|SETNAE\|SETC\)\>"     contains=@NoSpell "Set byte if below/Set byte if not above or equal/Set byte if carry
syn match AsmBit "\<\%(SETBE\|SETNA\)\>"           contains=@NoSpell "Set byte if below or equal/Set byte if not above
syn match AsmBit "\<\%(SETG\|SETNLE\)\>"           contains=@NoSpell "Set byte if greater/Set byte if not less or equal
syn match AsmBit "\<\%(SETGE\|SETNL\)\>"           contains=@NoSpell "Set byte if greater or equal/Set byte if not less
syn match AsmBit "\<\%(SETL\|SETNGE\)\>"           contains=@NoSpell "Set byte if less/Set byte if not greater or equal
syn match AsmBit "\<\%(SETLE\|SETNG\)\>"           contains=@NoSpell "Set byte if less or equal/Set byte if not greater
syn match AsmBit "\<SETS\>"                       contains=@NoSpell "Set byte if sign (negative)
syn match AsmBit "\<SETNS\>"                      contains=@NoSpell "Set byte if not sign (non-negative)
syn match AsmBit "\<SETO\>"                       contains=@NoSpell "Set byte if overflow
syn match AsmBit "\<SETNO\>"                      contains=@NoSpell "Set byte if not overflow
syn match AsmBit "\<\%(SETPE\|SETP\)\>"            contains=@NoSpell "Set byte if parity even/Set byte if parity
syn match AsmBit "\<\%(SETPO\|SETNP\)\>"           contains=@NoSpell "Set byte if parity odd/Set byte if not parity
syn match AsmBit "\<TEST[WLQ]\?\>"                contains=@NoSpell "Logical compare

hi  link  AsmControl AllFilesSystemColor2
" 30.2.1.7. Control Transfer Instructions
syn match AsmControl "\<JMP\>"                   contains=@NoSpell "Jump
syn match AsmControl "\<\%(JE\|JZ\)\>"            contains=@NoSpell "Jump if equal/Jump if zero
syn match AsmControl "\<\%(JNE\|JNZ\)\>"          contains=@NoSpell "Jump if not equal/Jump if not zero
syn match AsmControl "\<\%(JA\|JNBE\)\>"          contains=@NoSpell "Jump if above/Jump if not below or equal
syn match AsmControl "\<\%(JAE\|JNB\)\>"          contains=@NoSpell "Jump if above or equal/Jump if not below
syn match AsmControl "\<\%(JB\|JNAE\)\>"          contains=@NoSpell "Jump if below/Jump if not above or equal
syn match AsmControl "\<\%(JBE\|JNA\)\>"          contains=@NoSpell "Jump if below or equal/Jump if not above
syn match AsmControl "\<\%(JG\|JNLE\)\>"          contains=@NoSpell "Jump if greater/Jump if not less or equal
syn match AsmControl "\<\%(JGE\|JNL\)\>"          contains=@NoSpell "Jump if greater or equal/Jump if not less
syn match AsmControl "\<\%(JL\|JNGE\)\>"          contains=@NoSpell "Jump if less/Jump if not greater or equal
syn match AsmControl "\<\%(JLE\|JNG\)\>"          contains=@NoSpell "Jump if less or equal/Jump if not greater
syn match AsmControl "\<JC\>"                    contains=@NoSpell "Jump if carry
syn match AsmControl "\<JNC\>"                   contains=@NoSpell "Jump if not carry
syn match AsmControl "\<JO\>"                    contains=@NoSpell "Jump if overflow
syn match AsmControl "\<JNO\>"                   contains=@NoSpell "Jump if not overflow
syn match AsmControl "\<JS\>"                    contains=@NoSpell "Jump if sign (negative)
syn match AsmControl "\<JNS\>"                   contains=@NoSpell "Jump if not sign (non-negative)
syn match AsmControl "\<\%(JPO\|JNP\)\>"          contains=@NoSpell "Jump if parity odd/Jump if not parity
syn match AsmControl "\<\%(JPE\|JP\)\>"           contains=@NoSpell "Jump if parity even/Jump if parity
syn match AsmControl "\<\%(JCXZ\|JECXZ\)\>"       contains=@NoSpell "Jump register CX zero/Jump register ECX zero
syn match AsmControl "\<LOOP\>"                  contains=@NoSpell "Loop with ECX counter
syn match AsmControl "\<\%(LOOPZ\|LOOPE\)\>"      contains=@NoSpell "Loop with ECX and zero/Loop with ECX and equal
syn match AsmControl "\<\%(LOOPNZ\|LOOPNE\)\>"    contains=@NoSpell "Loop with ECX and not zero/Loop with ECX and not equal
syn match AsmControl "\<CALL\>"                  contains=@NoSpell "Call procedure
syn match AsmControl "\<RET\>"                   contains=@NoSpell "Return
syn match AsmControl "\<IRET\>"                  contains=@NoSpell "Return from interrupt
syn match AsmControl "\<INT\>"                   contains=@NoSpell "Software interrupt
syn match AsmControl "\<INTO\>"                  contains=@NoSpell "Interrupt on overflow
syn match AsmControl "\<BOUND[WL]\?\>"           contains=@NoSpell "Detect value out of range
syn match AsmControl "\<ENTER\>"                 contains=@NoSpell "High-level procedure entry
syn match AsmControl "\<LEAVE\>"                 contains=@NoSpell "High-level procedure exit

hi  link  AsmString AllFilesEquality
" 30.2.1.8. String Instructions
syn match AsmString "\<\%(MOVSQ\)\>"             contains=@NoSpell "Move string/Move byte string
syn match AsmString "\<\%(MOVS[Q]\?\|MOVSB\)\>"  contains=@NoSpell "Move string/Move byte string
syn match AsmString "\<\%(MOVS\|MOVSW\)\>"       contains=@NoSpell "Move string/Move word string
syn match AsmString "\<\%(MOVS\|MOVSD\)\>"       contains=@NoSpell "Move string/Move doubleword string
syn match AsmString "\<\%(CMPS[Q]\?\|CMPSB\)\>"  contains=@NoSpell "Compare string/Compare byte string
syn match AsmString "\<\%(CMPS\|CMPSW\)\>"       contains=@NoSpell "Compare string/Compare word string
syn match AsmString "\<\%(CMPS\|CMPSD\)\>"       contains=@NoSpell "Compare string/Compare doubleword string
syn match AsmString "\<\%(SCAS[Q]\?\|SCASB\)\>"  contains=@NoSpell "Scan string/Scan byte string
syn match AsmString "\<\%(SCAS\|SCASW\)\>"       contains=@NoSpell "Scan string/Scan word string
syn match AsmString "\<\%(SCAS\|SCASD\)\>"       contains=@NoSpell "Scan string/Scan doubleword string
syn match AsmString "\<\%(LODS[Q]\?\|LODSB\)\>"  contains=@NoSpell "Load string/Load byte string
syn match AsmString "\<\%(LODS\|LODSW\)\>"       contains=@NoSpell "Load string/Load word string
syn match AsmString "\<\%(LODS\|LODSD\)\>"       contains=@NoSpell "Load string/Load doubleword string
syn match AsmString "\<\%(STOS[Q]\?\|STOSB\)\>"  contains=@NoSpell "Store string/Store byte string
syn match AsmString "\<\%(STOS\|STOSW\)\>"       contains=@NoSpell "Store string/Store word string
syn match AsmString "\<\%(STOS\|STOSD\)\>"       contains=@NoSpell "Store string/Store doubleword string
syn match AsmString "\<REP\>"                   contains=@NoSpell "Repeat while ECX not zero
syn match AsmString "\<\%(REPE\|REPZ\)\>"        contains=@NoSpell "Repeat while equal/Repeat while zero
syn match AsmString "\<\%(REPNE\|REPNZ\)\>"      contains=@NoSpell "Repeat while not equal/Repeat while not zero
syn match AsmString "\<\%(INS\|INSB\)\>"         contains=@NoSpell "Input string from port/Input byte string from port
syn match AsmString "\<\%(INS\|INSW\)\>"         contains=@NoSpell "Input string from port/Input word string from port
syn match AsmString "\<\%(INS\|INSD\)\>"         contains=@NoSpell "Input string from port/Input doubleword string from port
syn match AsmString "\<\%(OUTS\|OUTSB\)\>"       contains=@NoSpell "Output string to port/Output byte string to port
syn match AsmString "\<\%(OUTS\|OUTSW\)\>"       contains=@NoSpell "Output string to port/Output word string to port
syn match AsmString "\<\%(OUTS\|OUTSD\)\>"       contains=@NoSpell "Output string to port/Output doubleword string to port

hi  link  AsmFlag AllFilesSystemColor
" 30.2.1.9. Flag Control Instructions
syn match AsmFlag "\<STC\>"                      contains=@NoSpell "Set carry flag
syn match AsmFlag "\<CLC\>"                      contains=@NoSpell "Clear the carry flag
syn match AsmFlag "\<CMC\>"                      contains=@NoSpell "Complement the carry flag
syn match AsmFlag "\<CLD\>"                      contains=@NoSpell "Clear the direction flag
syn match AsmFlag "\<STD\>"                      contains=@NoSpell "Set direction flag
syn match AsmFlag "\<LAHF\>"                     contains=@NoSpell "Load flags into AH register
syn match AsmFlag "\<SAHF\>"                     contains=@NoSpell "Store AH register into flags
syn match AsmFlag "\<\%(PUSHF[LQ]\?\|PUSHFD\)\>"  contains=@NoSpell "Push EFLAGS onto stack
syn match AsmFlag "\<\%(POPF[LQ]\?\|POPFD\)\>"    contains=@NoSpell "Pop EFLAGS from stack
syn match AsmFlag "\<STI\>"                      contains=@NoSpell "Set interrupt flag
syn match AsmFlag "\<CLI\>"                      contains=@NoSpell "Clear the interrupt flag

hi  link  AsmSegment AllFilesEquality
" 30.2.1.10. Segment Register Instructions
syn match AsmSegment "\<LDS[WL]\?\>"             contains=@NoSpell "Load far pointer using DS
syn match AsmSegment "\<LES[WL]\?\>"             contains=@NoSpell "Load far pointer using ES
syn match AsmSegment "\<LFS[WL]\?\>"             contains=@NoSpell "Load far pointer using FS
syn match AsmSegment "\<LGS[WL]\?\>"             contains=@NoSpell "Load far pointer using GS
syn match AsmSegment "\<LSS[WL]\?\>"             contains=@NoSpell "Load far pointer using SS

hi  link  AsmMisc AllFilesSystemColor
" 30.2.1.11. Miscellaneous Instructions
syn match AsmMisc "\<LEA[WLQ]\?\>"               contains=@NoSpell "Load effective address
syn match AsmMisc "\<NOP\>"                      contains=@NoSpell "No operation
syn match AsmMisc "\<NOPL\>"                     contains=@NoSpell "Long-sized No operation
syn match AsmMisc "\<NOPW\>"                     contains=@NoSpell "Word-sized No operation
syn match AsmMisc "\<UB2\>"                      contains=@NoSpell "Undefined instruction
syn match AsmMisc "\<\%(XLAT\|XLATB\)\>"          contains=@NoSpell "Table lookup translation
syn match AsmMisc "\<CPUID\>"                    contains=@NoSpell "Processor Identification


syn match AsmMisc "\<ENDBR32\>"                  contains=@NoSpell "Terminate indirect branch in 32-bit mode[b]
syn match AsmMisc "\<ENDBR64\>"                  contains=@NoSpell "Terminate indirect branch in 64-bit mode[b]
syn match AsmMisc "\<NOTRACK\>"                  contains=@NoSpell "Prefix used with indirect CALL/JMP nestructions (opcodes FF /2 and FF /4) to indicate that the branch target is not required to start with an ENDBR32/64 instruction. Prefix only honored when NO_TRACK_EN flag is set.


" 30.2.2. MMX™ Technology Instructions
" The MMX instructions execute on those Intel Architecture processors that
" implement the Intel MMX technology. These instructions operate on
" packed-byte, packed-word, packed-doubleword, and quadword operands.

hi  link  AsmMMX AllFilesMultVarColor
" 30.2.2.1. MMX™ Data Transfer Instructions
syn match AsmMMX "\<MOVD\>"                   contains=@NoSpell "Move doubleword
syn match AsmMMX "\<MOVQ\>"                   contains=@NoSpell "Move quadword

" 30.2.2.2. MMX™ Conversion Instructions
syn match AsmMMX "\<PACKSSWB\>"               contains=@NoSpell "Pack words into bytes with signed saturation
syn match AsmMMX "\<PACKSSDW\>"               contains=@NoSpell "Pack doublewords into words with signed saturation
syn match AsmMMX "\<PACKUSWB\>"               contains=@NoSpell "Pack words into bytes with unsigned saturation
syn match AsmMMX "\<PUNPCKHBW\>"              contains=@NoSpell "Unpack high-order bytes from words
syn match AsmMMX "\<PUNPCKHWD\>"              contains=@NoSpell "Unpack high-order words from doublewords
syn match AsmMMX "\<PUNPCKHDQ\>"              contains=@NoSpell "Unpack high-order doublewords from quadword
syn match AsmMMX "\<PUNPCKLBW\>"              contains=@NoSpell "Unpack low-order bytes from words
syn match AsmMMX "\<PUNPCKLWD\>"              contains=@NoSpell "Unpack low-order words from doublewords
syn match AsmMMX "\<PUNPCKLDQ\>"              contains=@NoSpell "Unpack low-order doublewords from quadword

" 30.2.2.3. MMX™ Packed Arithmetic Instructions
syn match AsmMMX "\<PADDB\>"                  contains=@NoSpell "Add packed bytes
syn match AsmMMX "\<PADDW\>"                  contains=@NoSpell "Add packed words
syn match AsmMMX "\<PADDD\>"                  contains=@NoSpell "Add packed doublewords
syn match AsmMMX "\<PADDSB\>"                 contains=@NoSpell "Add packed bytes with saturation
syn match AsmMMX "\<PADDSW\>"                 contains=@NoSpell "Add packed words with saturation
syn match AsmMMX "\<PADDUSB\>"                contains=@NoSpell "Add packed unsigned bytes with saturation
syn match AsmMMX "\<PADDUSW\>"                contains=@NoSpell "Add packed unsigned words with saturation
syn match AsmMMX "\<PSUBB\>"                  contains=@NoSpell "Subtract packed bytes
syn match AsmMMX "\<PSUBW\>"                  contains=@NoSpell "Subtract packed words
syn match AsmMMX "\<PSUBD\>"                  contains=@NoSpell "Subtract packed doublewords
syn match AsmMMX "\<PSUBSB\>"                 contains=@NoSpell "Subtract packed bytes with saturation
syn match AsmMMX "\<PSUBSW\>"                 contains=@NoSpell "Subtract packed words with saturation
syn match AsmMMX "\<PSUBUSB\>"                contains=@NoSpell "Subtract packed unsigned bytes with saturation
syn match AsmMMX "\<PSUBUSW\>"                contains=@NoSpell "Subtract packed unsigned words with saturation
syn match AsmMMX "\<PMULHW\>"                 contains=@NoSpell "Multiply packed words and store high result
syn match AsmMMX "\<PMULLW\>"                 contains=@NoSpell "Multiply packed words and store low result
syn match AsmMMX "\<PMADDWD\>"                contains=@NoSpell "Multiply and add packed words

" 30.2.2.4. MMX™ Comparison Instructions
syn match AsmMMX "\<PCMPEQB\>"                contains=@NoSpell "Compare packed bytes for equal
syn match AsmMMX "\<PCMPEQW\>"                contains=@NoSpell "Compare packed words for equal
syn match AsmMMX "\<PCMPEQD\>"                contains=@NoSpell "Compare packed doublewords for equal
syn match AsmMMX "\<PCMPGTB\>"                contains=@NoSpell "Compare packed bytes for greater than
syn match AsmMMX "\<PCMPGTW\>"                contains=@NoSpell "Compare packed words for greater than
syn match AsmMMX "\<PCMPGTD\>"                contains=@NoSpell "Compare packed doublewords for greater than

" 30.2.2.5. MMX™ Logic Instructions
syn match AsmMMX "\<PAND\>"                   contains=@NoSpell "Bitwise logical and
syn match AsmMMX "\<PANDN\>"                  contains=@NoSpell "Bitwise logical and not
syn match AsmMMX "\<POR\>"                    contains=@NoSpell "Bitwise logical or
syn match AsmMMX "\<PXOR\>"                   contains=@NoSpell "Bitwise logical exclusive or

" 30.2.2.6. MMX™ Shift and Rotate Instructions
syn match AsmMMX "\<PSLLW\>"                  contains=@NoSpell "Shift packed words left logical
syn match AsmMMX "\<PSLLD\>"                  contains=@NoSpell "Shift packed doublewords left logical
syn match AsmMMX "\<PSLLQ\>"                  contains=@NoSpell "Shift packed quadword left logical
syn match AsmMMX "\<PSRLW\>"                  contains=@NoSpell "Shift packed words right logical
syn match AsmMMX "\<PSRLD\>"                  contains=@NoSpell "Shift packed doublewords right logical
syn match AsmMMX "\<PSRLQ\>"                  contains=@NoSpell "Shift packed quadword right logical
syn match AsmMMX "\<PSRAW\>"                  contains=@NoSpell "Shift packed words right arithmetic
syn match AsmMMX "\<PSRAD\>"                  contains=@NoSpell "Shift packed doublewords right arithmetic

" 30.2.2.7. MMX™ State Management
syn match AsmMMX "\<EMMS\>"                   contains=@NoSpell "Empty MMX state

" 30.2.3. Floating-Point Instructions

" The floating-point instructions are those that are executed by the
" processor's floating-point unit (FPU). These instructions operate on
" floating-point (real), extended integer, and binary-coded decimal (BCD)
" operands. As with the integer instructions, the following list of
" floating-point instructions is divided into subgroups.

hi  link  AsmFData AllFilesSystemColor3
" 30.2.3.1. Data Transfer
syn match AsmFData "\<FLD\>"                       contains=@NoSpell "Load real
syn match AsmFData "\<FST\>"                       contains=@NoSpell "Store real
syn match AsmFData "\<FSTP\>"                      contains=@NoSpell "Store real and pop
syn match AsmFData "\<FILD\>"                      contains=@NoSpell "Load integer
syn match AsmFData "\<FIST\>"                      contains=@NoSpell "Store integer
syn match AsmFData "\<FISTP\>"                     contains=@NoSpell "Store integer and pop
syn match AsmFData "\<FBLD\>"                      contains=@NoSpell "Load BCD
syn match AsmFData "\<FBSTP\>"                     contains=@NoSpell "Store BCD and pop
syn match AsmFData "\<FXCH\>"                      contains=@NoSpell "Exchange registers
syn match AsmFData "\<FCMOVE\>"                    contains=@NoSpell "Floating-point conditional move if equal
syn match AsmFData "\<FCMOVNE\>"                   contains=@NoSpell "Floating-point conditional move if not equal
syn match AsmFData "\<FCMOVB\>"                    contains=@NoSpell "Floating-point conditional move if below
syn match AsmFData "\<FCMOVBE\>"                   contains=@NoSpell "Floating-point conditional move if below or equal
syn match AsmFData "\<FCMOVNB\>"                   contains=@NoSpell "Floating-point conditional move if not below
syn match AsmFData "\<FCMOVNBE\>"                  contains=@NoSpell "Floating-point conditional move if not below or equal
syn match AsmFData "\<FCMOVU\>"                    contains=@NoSpell "Floating-point conditional move if unordered
syn match AsmFData "\<FCMOVNU\>"                   contains=@NoSpell "Floating-point conditional move if not unordered

hi  link  AsmFArith AllFilesOpColor
" 30.2.3.2. Basic Arithmetic
syn match AsmFArith "\<FADD\>"                     contains=@NoSpell "Add real
syn match AsmFArith "\<FADDP\>"                    contains=@NoSpell "Add real and pop
syn match AsmFArith "\<FIADD\>"                    contains=@NoSpell "Add integer
syn match AsmFArith "\<FSUB\>"                     contains=@NoSpell "Subtract real
syn match AsmFArith "\<FSUBP\>"                    contains=@NoSpell "Subtract real and pop
syn match AsmFArith "\<FISUB\>"                    contains=@NoSpell "Subtract integer
syn match AsmFArith "\<FSUBR\>"                    contains=@NoSpell "Subtract real reverse
syn match AsmFArith "\<FSUBRP\>"                   contains=@NoSpell "Subtract real reverse and pop
syn match AsmFArith "\<FISUBR\>"                   contains=@NoSpell "Subtract integer reverse
syn match AsmFArith "\<FMUL\>"                     contains=@NoSpell "Multiply real
syn match AsmFArith "\<FMULP\>"                    contains=@NoSpell "Multiply real and pop
syn match AsmFArith "\<FIMUL\>"                    contains=@NoSpell "Multiply integer
syn match AsmFArith "\<FDIV\>"                     contains=@NoSpell "Divide real
syn match AsmFArith "\<FDIVP\>"                    contains=@NoSpell "Divide real and pop
syn match AsmFArith "\<FIDIV\>"                    contains=@NoSpell "Divide integer
syn match AsmFArith "\<FDIVR\>"                    contains=@NoSpell "Divide real reverse
syn match AsmFArith "\<FDIVRP\>"                   contains=@NoSpell "Divide real reverse and pop
syn match AsmFArith "\<FIDIVR\>"                   contains=@NoSpell "Divide integer reverse
syn match AsmFArith "\<FPREM\>"                    contains=@NoSpell "Partial remainder
syn match AsmFArith "\<FPREMI\>"                   contains=@NoSpell "IEEE Partial remainder
syn match AsmFArith "\<FABS\>"                     contains=@NoSpell "Absolute value
syn match AsmFArith "\<FCHS\>"                     contains=@NoSpell "Change sign
syn match AsmFArith "\<FRNDINT\>"                  contains=@NoSpell "Round to integer
syn match AsmFArith "\<FSCALE\>"                   contains=@NoSpell "Scale by power of two
syn match AsmFArith "\<FSQRT\>"                    contains=@NoSpell "Square root
syn match AsmFArith "\<FXTRACT\>"                  contains=@NoSpell "Extract exponent and significand

hi  link  AsmFComp AllFilesSystemColor
" 30.2.3.3. Comparison
syn match AsmFComp "\<FCOM\>"                     contains=@NoSpell "Compare real
syn match AsmFComp "\<FCOMP\>"                    contains=@NoSpell "Compare real and pop
syn match AsmFComp "\<FCOMPP\>"                   contains=@NoSpell "Compare real and pop twice
syn match AsmFComp "\<FUCOM\>"                    contains=@NoSpell "Unordered compare real
syn match AsmFComp "\<FUCOMP\>"                   contains=@NoSpell "Unordered compare real and pop
syn match AsmFComp "\<FUCOMPP\>"                  contains=@NoSpell "Unordered compare real and pop twice
syn match AsmFComp "\<FICOM\>"                    contains=@NoSpell "Compare integer
syn match AsmFComp "\<FICOMP\>"                   contains=@NoSpell "Compare integer and pop
syn match AsmFComp "\<FCOMI\>"                    contains=@NoSpell "Compare real and set EFLAGS
syn match AsmFComp "\<FUCOMI\>"                   contains=@NoSpell "Unordered compare real and set EFLAGS
syn match AsmFComp "\<FCOMIP\>"                   contains=@NoSpell "Compare real, set EFLAGS, and pop
syn match AsmFComp "\<FUCOMIP\>"                  contains=@NoSpell "Unordered compare real, set EFLAGS, and pop
syn match AsmFComp "\<FTST\>"                     contains=@NoSpell "Test real
syn match AsmFComp "\<FXAM\>"                     contains=@NoSpell "Examine real

syn match AsmFComp "\<COMISD\>"                   contains=@NoSpell "Compare Scalar Ordered Double Precision Floating-Point Values and Set EFLAGS

" 30.2.3.4. Transcendental
syn match AsmFComp "\<FSIN\>"                     contains=@NoSpell "Sine
syn match AsmFComp "\<FCOS\>"                     contains=@NoSpell "Cosine
syn match AsmFComp "\<FSINCOS\>"                  contains=@NoSpell "Sine and cosine
syn match AsmFComp "\<FPTAN\>"                    contains=@NoSpell "Partial tangent
syn match AsmFComp "\<FPATAN\>"                   contains=@NoSpell "Partial arctangent
syn match AsmFComp "\<F2XM1\>"                    contains=@NoSpell "2 x − 1
syn match AsmFComp "\<FYL2X\>"                    contains=@NoSpell "y∗log 2x
syn match AsmFComp "\<FYL2XP1\>"                  contains=@NoSpell "y∗log 2(x+1)

" 30.2.3.5. Load Constants
syn match AsmFComp "\<FLD1\>"                     contains=@NoSpell "Load +1.0
syn match AsmFComp "\<FLDZ\>"                     contains=@NoSpell "Load +0.0
syn match AsmFComp "\<FLDPI\>"                    contains=@NoSpell "Load π
syn match AsmFComp "\<FLDL2E\>"                   contains=@NoSpell "Load log 2 e
syn match AsmFComp "\<FLDLN2\>"                   contains=@NoSpell "Load log e 2
syn match AsmFComp "\<FLDL2T\>"                   contains=@NoSpell "Load log 2 10
syn match AsmFComp "\<FLDLG2\>"                   contains=@NoSpell "Load log 10 2

" 30.2.3.6. FPU Control
syn match AsmFComp "\<FINCSTP\>"                  contains=@NoSpell "Increment FPU register stack pointer
syn match AsmFComp "\<FDECSTP\>"                  contains=@NoSpell "Decrement FPU register stack pointer
syn match AsmFComp "\<FFREE\>"                    contains=@NoSpell "Free floating-point register
syn match AsmFComp "\<FINIT\>"                    contains=@NoSpell "Initialize FPU after checking error conditions
syn match AsmFComp "\<FNINIT\>"                   contains=@NoSpell "Initialize FPU without checking error conditions
syn match AsmFComp "\<FCLEX\>"                    contains=@NoSpell "Clear floating-point exception flags after checking for error conditions
syn match AsmFComp "\<FNCLEX\>"                   contains=@NoSpell "Clear floating-point exception flags without checking for error conditions
syn match AsmFComp "\<FSTCW\>"                    contains=@NoSpell "Store FPU control word after checking error conditions
syn match AsmFComp "\<FNSTCW\>"                   contains=@NoSpell "Store FPU control word without checking error conditions
syn match AsmFComp "\<FLDCW\>"                    contains=@NoSpell "Load FPU control word
syn match AsmFComp "\<FSTENV\>"                   contains=@NoSpell "Store FPU environment after checking error conditions
syn match AsmFComp "\<FNSTENV\>"                  contains=@NoSpell "Store FPU environment without checking error conditions
syn match AsmFComp "\<FLDENV\>"                   contains=@NoSpell "Load FPU environment
syn match AsmFComp "\<FSAVE\>"                    contains=@NoSpell "Save FPU state after checking error conditions
syn match AsmFComp "\<FNSAVE\>"                   contains=@NoSpell "Save FPU state without checking error conditions
syn match AsmFComp "\<FRSTOR\>"                   contains=@NoSpell "Restore FPU state
syn match AsmFComp "\<FSTSW\>"                    contains=@NoSpell "Store FPU status word after checking error conditions
syn match AsmFComp "\<FNSTSW\>"                   contains=@NoSpell "Store FPU status word without checking error conditions
syn match AsmFComp "\<\%(WAIT\|FWAIT\)\>"          contains=@NoSpell "Wait for FPU
syn match AsmFComp "\<FNOP\>"                     contains=@NoSpell "FPU no operation

" 30.2.4. System Instructions

" The following system instructions are used to control those functions of the
" processor that are provided to support for operating systems and executives.

syn match AsmFComp "\<LGDT\>"                     contains=@NoSpell "Load global descriptor table (GDT) register
syn match AsmFComp "\<SGDT\>"                     contains=@NoSpell "Store global descriptor table (GDT) register
syn match AsmFComp "\<LLDT\>"                     contains=@NoSpell "Load local descriptor table (LDT) register
syn match AsmFComp "\<SLDT\>"                     contains=@NoSpell "Store local descriptor table (LDT) register
syn match AsmFComp "\<LTR\>"                      contains=@NoSpell "Load task register
syn match AsmFComp "\<STR\>"                      contains=@NoSpell "Store task register
syn match AsmFComp "\<LIDT\>"                     contains=@NoSpell "Load interrupt descriptor table (IDT) register
syn match AsmFComp "\<SIDT\>"                     contains=@NoSpell "Store interrupt descriptor table (IDT) register
syn match AsmFComp "\<MOV\>"                      contains=@NoSpell "Load and store control registers
syn match AsmFComp "\<LMSW\>"                     contains=@NoSpell "Load machine status word
syn match AsmFComp "\<SMSW\>"                     contains=@NoSpell "Store machine status word
syn match AsmFComp "\<CLTS\>"                     contains=@NoSpell "Clear the task-switched flag
syn match AsmFComp "\<ARPL\>"                     contains=@NoSpell "Adjust requested privilege level
syn match AsmFComp "\<LAR\>"                      contains=@NoSpell "Load access rights
syn match AsmFComp "\<LSL\>"                      contains=@NoSpell "Load segment limit
syn match AsmFComp "\<VERR\>"                     contains=@NoSpell "Verify segment for reading
syn match AsmFComp "\<VERW\>"                     contains=@NoSpell "Verify segment for writing
syn match AsmFComp "\<INVD\>"                     contains=@NoSpell "Invalidate cache, no writeback
syn match AsmFComp "\<WBINVD\>"                   contains=@NoSpell "Invalidate cache, with writeback
syn match AsmFComp "\<INVLPG\>"                   contains=@NoSpell "Invalidate TLB Entry
syn match AsmFComp "\<LOCK\>"                     contains=@NoSpell "(prefix) Lock Bus
syn match AsmFComp "\<HLT\>"                      contains=@NoSpell "Halt processor
syn match AsmFComp "\<RSM\>"                      contains=@NoSpell "Return from system management mode (SSM)
syn match AsmFComp "\<RDMSR\>"                    contains=@NoSpell "Read model-specific register
syn match AsmFComp "\<WRMSR\>"                    contains=@NoSpell "Write model-specific register
syn match AsmFComp "\<RDPMC\>"                    contains=@NoSpell "Read performance monitoring counters
syn match AsmFComp "\<RDTSC\>"                    contains=@NoSpell "Read time stamp counter
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
hi  link  AsmDotStar AllFilesOpColor
syn match AsmDotStar "<.*>" contains=@NoSpell "Function calls

hi  link  AsmRegs AllFilesVarColor
syn match AsmRegs "\<rax\|rbx\|rcx\|rdx\|rsi\|rdi\|rsp\|rbp\|rip\>"  contains=@NoSpell "Registers
syn match AsmRegs "\<eax\|ebx\|ecx\|edx\|esi\|edi\>"                 contains=@NoSpell "Registers
syn match AsmRegs "%\w*\>"                                           contains=@NoSpell "Registers

" Match 0-F 2 or 4 times.
hi  link  AsmHex AllFilesNumColor
syn match AsmHex "\<[0-9a-f]\{2}\>"               contains=@NoSpell "Hex numbers
syn match AsmHex "\<[0-9a-f]\{4}\>"               contains=@NoSpell "Hex numbers

" Convert Long To Quad (cltq): AT&T-style
" Convert Double to Quad Extend (cdqe): Intel
" quad (aka quad-word) == 8 bytes
" long (AT&T) == double-word (Intel) == 4 bytes
hi  link  AsmOther AllFilesSystemColor
syn match AsmOther "\<CLTQ\>"                     contains=@NoSpell

syn match AsmRegs "\<CS\>" contains=@NoSpell "Code segment (CS) is a 16-bit register containing address of 64 KB segment with processor instructions. The processor uses CS segment for all accesses to instructions referenced by instruction pointer (IP) register.


" https://www.tutorialspoint.com/assembly_programming/assembly_registers.htm
" There are ten 32-bit and six 16-bit processor registers in IA-32
" architecture. The registers are grouped into three categories −
"     General registers, DATA, POINTER, INDEX
"     Control registers, FLAGS OF, DF, IF, TF, SF, ZF, AF, PF, CF
"     Segment registers. CS, DS, SS, ES, FS, GS
"
" The general registers are further divided into the following groups −
"     Data registers, AX, BX, CX, DX
"     Pointer registers, IP, SP, BP
"     Index registers. SI, DI

" NOTE: Here's a list of common registers in x86-64 assembly:
" General-Purpose Registers:
"     %rax: Accumulator register, often used for return values and arithmetic
"           operations.
"     %rbx: Base register, often used as a base pointer for data access.
"     %rcx: Counter register, often used in shift/rotate instructions and for
"           loop counters or as a function argument.
"     %rdx: Data register, often used for arithmetic operations or as a
"           function argument. Used in input/output operations.

"     %rsi: Source index register, often used as a source pointer for data
"           transfers and stream/string operations.
"     %rdi: Destination index register, often used as a destination pointer
"           for data transfers and stream/string operations.

"     %rsp: Stack pointer register, points to the top of the call stack. It
"           provides the offset value within the program stack. SP in
"           association with the SS register (SS:SP) refers to be current
"           position of data or address within the program stack.
"     %rbp: Base pointer register, often used as a frame pointer for stack
"           frames. The 16-bit BP register mainly helps in referencing the
"           parameter variables passed to a subroutine. The address in SS
"           register is combined with the offset in BP to get the location
"           of the parameter. BP can also be combined with DI and SI as base
"           register for special addressing.

"     %r8 - %r15: Additional general-purpose registers, often used for function
"                 arguments or local variables.
"
" Special-Purpose Registers:
"     %rip: Instruction Pointer, holds the address of the next instruction. IP
"           in association with the CS register (as CS:IP) gives the complete
"           address of the current instruction in the code segment.
"     %rflags: Flags register, contains status and control flags reflecting
"              the outcome of operations and controlling processor behavior.
"
" Segment Registers (primarily for compatibility in 64-bit mode):
"     %cs: Code Segment register. Pointer to the code. It contains all the
"          instructions to be executed. A 16-bit Code Segment register or CS
"          register stores the starting address of the code segment.
"     %ds: Data Segment register. Pointer to the data. It contains data,
"          constants and work areas. A 16-bit Data Segment register or DS
"          register stores the starting address of the data segment.
"     %ss: Stack Segment register. Pointer to the stack. It contains data and
"          return addresses of procedures or subroutines. It is implemented as
"          a 'stack' data structure. The Stack Segment register or SS register
"          stores the starting address of the stack.
"     %es, %fs, %gs: Extra Segment registers. Pointer to extra data
"
" Floating-Point Registers (e.g., SSE/AVX registers):
"     %xmm0 - %xmm15: Used for Single Instruction, Multiple Data (SIMD)
"                     operations.

" Control Registers
" The 32-bit instruction pointer register and the 32-bit flags register
" combined are considered as the control registers.
" Many instructions involve comparisons and mathematical calculations and
" change the status of the flags and some other conditional instructions test
" the value of these status flags to take the control flow to other location.
"
" The common flag bits are:
"     - Overflow Flag (OF) − It indicates the overflow of a high-order bit
"       (leftmost bit) of data after a signed arithmetic operation.
"     - Direction Flag (DF) − It determines left or right direction for moving
"       or comparing string data. When the DF value is 0, the string operation
"       takes left-to-right direction and when the value is set to 1, the
"       string operation takes right-to-left direction.
"     - Interrupt Flag (IF) − It determines whether the external interrupts
"       like keyboard entry, etc., are to be ignored or processed. It disables
"       the external interrupt when the value is 0 and enables interrupts when
"       set to 1.
"     - Trap Flag (TF) − It allows setting the operation of the processor in
"       single-step mode. The DEBUG program we used sets the trap flag, so we
"       could step through the execution one instruction at a time.
"     - Sign Flag (SF) − It shows the sign of the result of an arithmetic
"       operation. This flag is set according to the sign of a data item
"       following the arithmetic operation. The sign is indicated by the
"       high-order of leftmost bit. A positive result clears the value of SF to
"       0 and negative result sets it to 1.
"     - Zero Flag (ZF) − It indicates the result of an arithmetic or comparison
"       operation. A nonzero result clears the zero flag to 0, and a zero
"       result sets it to 1.
"     - Auxiliary Carry Flag (AF) − It contains the carry from bit 3 to bit 4
"       following an arithmetic operation; used for specialized arithmetic. The
"       AF is set when a 1-byte arithmetic operation causes a carry from bit 3
"       into bit 4.
"     - Parity Flag (PF) − It indicates the total number of 1-bits in the
"       result obtained from an arithmetic operation. An even number of 1-bits
"       clears the parity flag to 0 and an odd number of 1-bits sets the parity
"       flag to 1.
"     - Carry Flag (CF) − It contains the carry of 0 or 1 from a high-order bit
"       (leftmost) after an arithmetic operation. It also stores the contents
"       of last bit of a shift or rotate operation.

" The following table indicates the position of flag bits in the 16-bit Flags
" register:
" Flag  :               O  D  I  T  S  Z     A     P     C

" Bit no:  15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0




" GCC generated output includes additional initialization functions for several
" reasons related to program startup and the C/C++ language features:
"     - C++ Constructors and Destructors:
"     - In C++, global or static objects with constructors need to be
"       initialized before main() is called. Similarly, destructors need to be
"       called when the program terminates. GCC generates code to manage these
"       calls, often by creating lists of constructor and destructor functions
"       (__CTOR_LIST__ and __DTOR_LIST__) and calling them at the appropriate
"       times during program startup and shutdown.
"     - Runtime Library Initialization:
"     - The C runtime library (CRT) needs to be initialized before your
"       program's main() function can execute. This includes tasks like setting
"       up the stack, initializing data segments (like .data and .bss), and
"       potentially configuring other runtime aspects. GCC's "start files"
"       (like crti.o, crtbegin.o, crtend.o, crtn.o) provide these essential
"       initialization routines.
"     - Language-Specific Initialization:
"     - Certain languages or extensions might require specific initialization
"       routines. For example, GCC supports attributes like
"       __attribute__((constructor)) and __attribute__((destructor)) in C,
"       allowing developers to define functions that are automatically called
"       at program startup or termination, similar to C++ constructors and
"       destructors.
"     - Bare-Metal and Embedded Systems:
"     - In bare-metal or embedded environments, the _init function (provided by
"       GCC's start files) plays a crucial role in setting up the environment
"       before the user's code can run. This might involve memory setup,
"       interrupt vector table configuration, or other hardware-specific
"       initializations.
"
" These initialization functions ensure that the program environment is
" correctly prepared and that any required object or library initializations
" are performed before the main application logic begins.



syn case match

