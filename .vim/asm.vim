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


" Exit if the file was already loaded
if exists("b:asm_loaded")
  finish
endif
let g:asm_loaded = 1

" Keep autoindent, but remove cindent
set nocindent


"------------------------------------------------------------------------------
" MIPS instruction set
" https://jarrettbillingsley.github.io/teaching/classes/cs0447/guides/instructions.html
"------------------------------------------------------------------------------

hi  link  AsmArithm    Statement
" Arithmetic and Bitwise Instructions
syn match AsmArithm  "\<NEG[IU]\{0,2}\>"   contains=@NoSpell | "a, b       a = -b     gives the negative of b.
syn match AsmArithm  "\<ADD[IU]\{0,2}\>"   contains=@NoSpell | "a, b, c    a = b + c  adds signed numbers.
syn match AsmArithm  "\<SUB[IU]\{0,2}\>"   contains=@NoSpell | "a, b, c    a = b - c  subtracts signed numbers.
syn match AsmArithm  "\<MUL[IU]\{0,2}\>"   contains=@NoSpell | "a, b, c    a = b * c  gives low 32 bits of signed multiplication.
syn match AsmArithm  "\<DIV[IU]\{0,2}\>"   contains=@NoSpell | "a, b, c    a = b / c  gives quotient of signed division.
syn match AsmArithm  "\<REM[IU]\{0,2}\>"   contains=@NoSpell | "a, b, c    a = b % c  gives remainder of signed division.
syn match AsmArithm  "\<ADDU[IU]\{0,2}\>"  contains=@NoSpell | "a, b, c    a = b + c  adds unsigned numbers.
syn match AsmArithm  "\<SUBU[IU]\{0,2}\>"  contains=@NoSpell | "a, b, c    a = b - c  subtracts unsigned numbers.
syn match AsmArithm  "\<MULU[IU]\{0,2}\>"  contains=@NoSpell | "a, b, c    a = b * c  gives low 32 bits of unsigned multiplication.
syn match AsmArithm  "\<DIVU[IU]\{0,2}\>"  contains=@NoSpell | "a, b, c    a = b / c  gives quotient of unsigned division.
syn match AsmArithm  "\<REMU[IU]\{0,2}\>"  contains=@NoSpell | "a, b, c    a = b % c  gives remainder of unsigned division.
syn match AsmArithm  "\<MFHI[IU]\{0,2}\>"  contains=@NoSpell | "a          a = HI     after mul, gives high 32 bits. after div, gives remainder.
syn match AsmArithm  "\<MFLO[IU]\{0,2}\>"  contains=@NoSpell | "a          a = LO     after mul, gives low 32 bits. after div, gives quotient.
syn match AsmArithm  "\<NOT[IU]\{0,2}\>"   contains=@NoSpell | "a, b       a = ~b     gives the bitwise complement of b (all bits flipped).
syn match AsmArithm  "\<AND[IU]\{0,2}\>"   contains=@NoSpell | "a, b, c    a = b & c  bitwise ANDs numbers.
syn match AsmArithm  "\<OR[IU]\{0,2}\>"    contains=@NoSpell | "a, b, c    a = b | c  bitwise ORs numbers.
syn match AsmArithm  "\<XOR[IU]\{0,2}\>"   contains=@NoSpell | "a, b, c    a = b ^ c  bitwise XORs numbers.

" Shift Instructions
syn match AsmArithm  "\<SLL\>"             contains=@NoSpell | "a, b, imm  a = b << imm   shift left by a constant amount.
syn match AsmArithm  "\<SRL\>"             contains=@NoSpell | "a, b, imm  a = b >>> imm  shift right unsigned (logical) by a constant amount.
syn match AsmArithm  "\<SRA\>"             contains=@NoSpell | "a, b, imm  a = b >> imm   shift right arithmetic by a constant amount.
syn match AsmArithm  "\<SLLV\>"            contains=@NoSpell | "a, b, reg  a = b << reg   shift left by the amount in a register.
syn match AsmArithm  "\<SRLV\>"            contains=@NoSpell | "a, b, reg  a = b >>> reg  shift right unsigned (logical) by the amount in a register.
syn match AsmArithm  "\<SRAV\>"            contains=@NoSpell | "a, b, reg  a = b >> reg   shift right arithmetic by the amount in a register.

" Data Transfer Instructions
syn match AsmArithm  "\<LI\>"              contains=@NoSpell | "a, imm     a = imm                 put a constant value into a register.
syn match AsmArithm  "\<LA\>"              contains=@NoSpell | "a, label   a = &label              put the address that a label points to into a register.
syn match AsmArithm  "\<MOVE\>"            contains=@NoSpell | "a, b       ` a = b `               copy value from one register to another.
syn match AsmArithm  "\<LW\>"              contains=@NoSpell | "reg, addr  reg = MEM[addr]         loads the 4 bytes at addr as a 32-bit value into reg.
syn match AsmArithm  "\<LH\>"              contains=@NoSpell | "reg, addr  reg = sxt(MEM[addr])    loads the 2 bytes at addr as a signed 16-bit value into reg.
syn match AsmArithm  "\<LB\>"              contains=@NoSpell | "reg, addr  reg = sxt(MEM[addr])    loads the 1 byte at addr as a signed 8-bit value into reg.
syn match AsmArithm  "\<LHU\>"             contains=@NoSpell | "reg, addr  reg = zxt(MEM[addr])    loads the 2 bytes at addr as an unsigned 16-bit value into reg.
syn match AsmArithm  "\<LBU\>"             contains=@NoSpell | "reg, addr  reg = zxt(MEM[addr])    loads the 1 byte at addr as an unsigned 8-bit value into reg.
syn match AsmArithm  "\<SW\>"              contains=@NoSpell | "reg, addr  MEM[addr] = reg         stores the value of reg into memory as 4 bytes starting at addr.
syn match AsmArithm  "\<SH\>"              contains=@NoSpell | "reg, addr  MEM[addr] = lo16(reg)   stores the low 16 bits of reg into memory as 2 bytes starting at addr.
syn match AsmArithm  "\<SB\>"              contains=@NoSpell | "reg, addr  MEM[addr] = lo8(reg)    stores the low 8 bits of reg into memory as 1 byte at addr.
syn match AsmArithm  "\<PUSH\>"            contains=@NoSpell | "reg        sp -= 4; MEM[sp] = reg  pushes the value of reg onto the call stack
syn match AsmArithm  "\<POP\>"             contains=@NoSpell | "reg        reg = MEM[sp]; sp += 4  pops the top call stack value and puts it into reg

" Unconditional Control Flow Instructions
syn match AsmArithm  "\<B\>"               contains=@NoSpell | "
syn match AsmArithm  "\<J\>"               contains=@NoSpell | "label      PC = label                goes to the instruction at label.
syn match AsmArithm  "\<JAL\>"             contains=@NoSpell | "label      ra = PC + 4; PC = label   function call to label. stores return address in ra.
syn match AsmArithm  "\<JR\>"              contains=@NoSpell | "reg        PC = reg                  goes to the instruction whose address is in reg, often ra.
syn match AsmArithm  "\<SYSCALL\>"         contains=@NoSpell | "           --->                      runs the system call function whose number is in v0.

" Conditional Control Flow Instructions
syn match AsmArithm  "\<BEQ\>"             contains=@NoSpell | "a, b, label   if(a == b) { PC = label } if a is equal to b, goes to label .
syn match AsmArithm  "\<BNE\>"             contains=@NoSpell | "a, b, label   if(a != b) { PC = label } if a is NOT equal to b, goes to label .
syn match AsmArithm  "\<BLT\>"             contains=@NoSpell | "a, b, label   if(a < b) { PC = label }  if a is less than b, goes to label .
syn match AsmArithm  "\<BLE\>"             contains=@NoSpell | "a, b, label   if(a <= b) { PC = label } if a is less than or equal to b, goes to label .
syn match AsmArithm  "\<BGT\>"             contains=@NoSpell | "a, b, label   if(a > b) { PC = label }  if a is greater than b, goes to label .
syn match AsmArithm  "\<BGE\>"             contains=@NoSpell | "a, b, label   if(a >= b) { PC = label } if a is greater than or equal to b, goes to label .
syn match AsmArithm  "\<BLTU\>"            contains=@NoSpell | "a, b, label   if(a < b) { PC = label }  same as blt but does an unsigned comparison.
syn match AsmArithm  "\<BLEU\>"            contains=@NoSpell | "a, b, label   if(a <= b) { PC = label } same as ble but does an unsigned comparison.
syn match AsmArithm  "\<BGTU\>"            contains=@NoSpell | "a, b, label   if(a > b) { PC = label }  same as bgt but does an unsigned comparison.
syn match AsmArithm  "\<BGEU\>"            contains=@NoSpell | "a, b, label   if(a >= b) { PC = label } same as bge but does an unsigned comparison.
"------------------------------------------------------------------------------
" same matches as above but all lowercase
"------------------------------------------------------------------------------
syn match AsmArithm  "\<neg[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<add[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<sub[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<mul[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<div[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<rem[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<addu[iu]\{0,2}\>"  contains=@NoSpell
syn match AsmArithm  "\<subu[iu]\{0,2}\>"  contains=@NoSpell
syn match AsmArithm  "\<mulu[iu]\{0,2}\>"  contains=@NoSpell
syn match AsmArithm  "\<divu[iu]\{0,2}\>"  contains=@NoSpell
syn match AsmArithm  "\<remu[iu]\{0,2}\>"  contains=@NoSpell
syn match AsmArithm  "\<mfhi[iu]\{0,2}\>"  contains=@NoSpell
syn match AsmArithm  "\<mflo[iu]\{0,2}\>"  contains=@NoSpell
syn match AsmArithm  "\<not[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<and[iu]\{0,2}\>"   contains=@NoSpell
syn match AsmArithm  "\<or[iu]\{0,2}\>"    contains=@NoSpell
syn match AsmArithm  "\<xor[iu]\{0,2}\>"   contains=@NoSpell

" Shift Instructions
syn match AsmArithm  "\<sll\>"             contains=@NoSpell
syn match AsmArithm  "\<srl\>"             contains=@NoSpell
syn match AsmArithm  "\<sra\>"             contains=@NoSpell
syn match AsmArithm  "\<sllv\>"            contains=@NoSpell
syn match AsmArithm  "\<srlv\>"            contains=@NoSpell
syn match AsmArithm  "\<srav\>"            contains=@NoSpell

" Data Transfer Instructions
syn match AsmArithm  "\<li\>"              contains=@NoSpell
syn match AsmArithm  "\<la\>"              contains=@NoSpell
syn match AsmArithm  "\<move\>"            contains=@NoSpell
syn match AsmArithm  "\<lw\>"              contains=@NoSpell
syn match AsmArithm  "\<lh\>"              contains=@NoSpell
syn match AsmArithm  "\<lb\>"              contains=@NoSpell
syn match AsmArithm  "\<lhu\>"             contains=@NoSpell
syn match AsmArithm  "\<lbu\>"             contains=@NoSpell
syn match AsmArithm  "\<sw\>"              contains=@NoSpell
syn match AsmArithm  "\<sh\>"              contains=@NoSpell
syn match AsmArithm  "\<sb\>"              contains=@NoSpell
syn match AsmArithm  "\<push\>"            contains=@NoSpell
syn match AsmArithm  "\<pop\>"             contains=@NoSpell

" Unconditional Control Flow Instructions
syn match AsmArithm  "\<b\>"               contains=@NoSpell
syn match AsmArithm  "\<j\>"               contains=@NoSpell
syn match AsmArithm  "\<jal\>"             contains=@NoSpell
syn match AsmArithm  "\<jr\>"              contains=@NoSpell
syn match AsmArithm  "\<syscall\>"         contains=@NoSpell

" Conditional Control Flow Instructions
syn match AsmArithm  "\<beq\>"             contains=@NoSpell
syn match AsmArithm  "\<bne\>"             contains=@NoSpell
syn match AsmArithm  "\<blt\>"             contains=@NoSpell
syn match AsmArithm  "\<ble\>"             contains=@NoSpell
syn match AsmArithm  "\<bgt\>"             contains=@NoSpell
syn match AsmArithm  "\<bge\>"             contains=@NoSpell
syn match AsmArithm  "\<bltu\>"            contains=@NoSpell
syn match AsmArithm  "\<bleu\>"            contains=@NoSpell
syn match AsmArithm  "\<bgtu\>"            contains=@NoSpell
syn match AsmArithm  "\<bgeu\>"            contains=@NoSpell
"-----------------------------------------------------------





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

hi  link  AsmData Conditional
" 30.2.1.1. Data Transfer Instructions
syn match AsmData "\<MOV\>"                               contains=@NoSpell | "Move
syn match AsmData "\<MOVB\>"                              contains=@NoSpell | "Move into the single byte
syn match AsmData "\<MOVW\>"                              contains=@NoSpell | "Move into the 2 bytes
syn match AsmData "\<MOVL\>"                              contains=@NoSpell | "Move into the 4 bytes
syn match AsmData "\<\%(CMOVE[WLQ]\?\|CMOVZ[WLQ]\?\)\>"   contains=@NoSpell | "Conditional move if equal/Conditional move if zero
syn match AsmData "\<\%(CMOVNE[WLQ]\?\|CMOVNZ[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if not equal/Conditional move if not zero
syn match AsmData "\<\%(CMOVA[WLQ]\?\|CMOVNBE[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if above/Conditional move if not below or equal
syn match AsmData "\<\%(CMOVAE[WLQ]\?\|CMOVNB[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if above or equal/Conditional move if not below
syn match AsmData "\<\%(CMOVB[WLQ]\?\|CMOVNAE[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if below/Conditional move if not above or equal
syn match AsmData "\<\%(CMOVBE[WLQ]\?\|CMOVNA[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if below or equal/Conditional move if not above
syn match AsmData "\<\%(CMOVG[WLQ]\?\|CMOVNLE[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if greater/Conditional move if not less or equal
syn match AsmData "\<\%(CMOVGE[WLQ]\?\|CMOVNL[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if greater or equal/Conditional move if not less
syn match AsmData "\<\%(CMOVL[WLQ]\?\|CMOVNGE[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if less/Conditional move if not greater or equal
syn match AsmData "\<\%(CMOVLE[WLQ]\?\|CMOVNG[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if less or equal/Conditional move if not greater
syn match AsmData "\<CMOVC[WLQ]\?\>"                      contains=@NoSpell | "Conditional move if carry
syn match AsmData "\<CMOVNC[WLQ]\?\>"                     contains=@NoSpell | "Conditional move if not carry
syn match AsmData "\<CMOVO[WLQ]\?\>"                      contains=@NoSpell | "Conditional move if overflow
syn match AsmData "\<CMOVNO[WLQ]\?\>"                     contains=@NoSpell | "Conditional move if not overflow
syn match AsmData "\<CMOVS[WLQ]\?\>"                      contains=@NoSpell | "Conditional move if sign (negative)
syn match AsmData "\<CMOVNS[WLQ]\?\>"                     contains=@NoSpell | "Conditional move if not sign (non-negative)
syn match AsmData "\<\%(CMOVP[WLQ]\?\|CMOVPE[WLQ]\?\)\>"  contains=@NoSpell | "Conditional move if parity/Conditional move if parity even
syn match AsmData "\<\%(CMOVNP[WLQ]\?\|CMOVPO[WLQ]\?\)\>" contains=@NoSpell | "Conditional move if not parity/Conditional move if parity odd
syn match AsmData "\<XCHG[BWLQ]\?\>"                      contains=@NoSpell | "Exchange
syn match AsmData "\<BSWAP[LQ]\?\>"                       contains=@NoSpell | "Byte swap
syn match AsmData "\<XADD[BWLQ]\?\>"                      contains=@NoSpell | "Exchange and add
syn match AsmData "\<CMPXCHG[BWLQ]\?\>"                   contains=@NoSpell | "Compare and exchange
syn match AsmData "\<CMPXCHG8B\>"                         contains=@NoSpell | "Compare and exchange 8 bytes
syn match AsmData "\<PUSH[WLQ]\?\>"                       contains=@NoSpell | "Push onto stack
syn match AsmData "\<POP[WLQ]\?\>"                        contains=@NoSpell | "Pop off of stack
syn match AsmData "\<\%(PUSHA\|PUSHAD\)\>"                contains=@NoSpell | "Push general-purpose registers onto stack
syn match AsmData "\<\%(POPA\|POPAD\)\>"                  contains=@NoSpell | "Pop general-purpose registers from stack
syn match AsmData "\<IN\>"                                contains=@NoSpell | "Read from a port
syn match AsmData "\<OUT\>"                               contains=@NoSpell | "Write to a port
syn match AsmData "\<\%(CWD\|CDQ\)\>"                     contains=@NoSpell | "Convert word to doubleword/Convert doubleword to quadword
syn match AsmData "\<\%(CBW\|CWDE\)\>"                    contains=@NoSpell | "Convert byte to word/Convert word to doubleword in EAX register
syn match AsmData "\<MOVSX\>"                             contains=@NoSpell | "Move and sign extend
syn match AsmData "\<MOVZX\>"                             contains=@NoSpell | "Move and zero extend

syn match AsmData "\<MOVABS[BWLQ]\?\>"                    contains=@NoSpell | "move immediate value to register    valid only under –m64
syn match AsmData "\<MOVABS[BWLQ]\?A\>"                   contains=@NoSpell | "move immediate value to register {AL, AX, GAX, RAX}   valid only under –m64
syn match AsmData "\<\%(MOVSB[WLQ]\?\|MOVSW[LQ]\?\)\>"    contains=@NoSpell | "move and sign extend    valid only under –m64
syn match AsmData "\<\%(MOVZB[WLQ]\?\|MOVZW[LQ]\?\)\>"    contains=@NoSpell | "move and zero extend    valid only under –m64
syn match AsmData "\<POPAW\>"                             contains=@NoSpell | "pop general-purpose registers from stack     invalid under –m64
syn match AsmData "\<POPAL, POPA\>"                       contains=@NoSpell | "pop general-purpose registers from stack     invalid under –m64
syn match AsmData "\<PUSHAW\>"                            contains=@NoSpell | "push general-purpose registers onto stack    invalid under –m64
syn match AsmData "\<PUSHAL, PUSHA\>"                     contains=@NoSpell | "push general-purpose registers onto stack    invalid under –m64
syn match AsmData "\<XCHG[BWLQ]\?A\>"                     contains=@NoSpell | "exchange    xchgqA valid only under –m64

syn match AsmData "\<MOVAPS\>"                            contains=@NoSpell
syn match AsmData "\<MOVSLQ\>"                            contains=@NoSpell

hi  link  AsmLogic Operator
" 30.2.1.2. Binary Arithmetic Instructions
syn match AsmLogic "\<ADD[BWQL]\?\>"                      contains=@NoSpell | "Integer add
syn match AsmLogic "\<ADC[BWLQ]\?\>"                      contains=@NoSpell | "Add with carry
syn match AsmLogic "\<SUB[BWLQ]\?\>"                      contains=@NoSpell | "Subtract
syn match AsmLogic "\<SBB[BWLQ]\?\>"                      contains=@NoSpell | "Subtract with borrow
syn match AsmLogic "\<IMUL[BWLQ]\?\>"                     contains=@NoSpell | "Signed multiply
syn match AsmLogic "\<MUL[BWLQ]\?\>"                      contains=@NoSpell | "Unsigned multiply
syn match AsmLogic "\<IDIV[BWLQ]\?\>"                     contains=@NoSpell | "Signed divide
syn match AsmLogic "\<DIV[BWLQ]\?\>"                      contains=@NoSpell | "Unsigned divide
syn match AsmLogic "\<INC[BWLQ]\?\>"                      contains=@NoSpell | "Increment
syn match AsmLogic "\<DEC[BWLQ]\?\>"                      contains=@NoSpell | "Decrement
syn match AsmLogic "\<NEG[BWLQ]\?\>"                      contains=@NoSpell | "Negate
syn match AsmLogic "\<CMP[BWQL]\?\>"                      contains=@NoSpell | "Compare

" 30.2.1.3. Decimal Arithmetic
syn match AsmLogic "\<DAA\>"                              contains=@NoSpell | "Decimal adjust after addition
syn match AsmLogic "\<DAS\>"                              contains=@NoSpell | "Decimal adjust after subtraction
syn match AsmLogic "\<AAA\>"                              contains=@NoSpell | "ASCII adjust after addition
syn match AsmLogic "\<AAS\>"                              contains=@NoSpell | "ASCII adjust after subtraction
syn match AsmLogic "\<AAM\>"                              contains=@NoSpell | "ASCII adjust after multiplication
syn match AsmLogic "\<AAD\>"                              contains=@NoSpell | "ASCII adjust before division

" 30.2.1.4. Logic Instructions
syn match AsmLogic "\<AND[BWLQ]\?\>"                      contains=@NoSpell | "And
syn match AsmLogic "\<OR[BWLQ]\?\>"                       contains=@NoSpell | "Or
syn match AsmLogic "\<XOR[BWLQ]\?\>"                      contains=@NoSpell | "Exclusive or
syn match AsmLogic "\<NOT[BWLQ]\?\>"                      contains=@NoSpell | "Not

" 30.2.1.5. Shift and Rotate Instructions
syn match AsmLogic "\<SAR[BWLQ]\?\>"                      contains=@NoSpell | "Shift arithmetic right
syn match AsmLogic "\<SHR[BWLQ]\?\>"                      contains=@NoSpell | "Shift logical right
syn match AsmLogic "\<\%(SAL\|SHL\)[BWLQ]\?\>"            contains=@NoSpell | "Shift arithmetic left/Shift logical left
syn match AsmLogic "\<SHRD[BWLQ]\?\>"                     contains=@NoSpell | "Shift right double
syn match AsmLogic "\<SHLD[BWLQ]\?\>"                     contains=@NoSpell | "Shift left double
syn match AsmLogic "\<ROR[BWLQ]\?\>"                      contains=@NoSpell | "Rotate right
syn match AsmLogic "\<ROL[BWLQ]\?\>"                      contains=@NoSpell | "Rotate left
syn match AsmLogic "\<RCR[BWLQ]\?\>"                      contains=@NoSpell | "Rotate through carry right
syn match AsmLogic "\<RCL[BWLQ]\?\>"                      contains=@NoSpell | "Rotate through carry left

hi  link  AsmBit Question
" 30.2.1.6. Bit and Byte Instructions
syn match AsmBit "\<BT[WLQ]\?\>"                          contains=@NoSpell | "Bit test
syn match AsmBit "\<BTS[WLQ]\?\>"                         contains=@NoSpell | "Bit test and set
syn match AsmBit "\<BTR[WLQ]\?\>"                         contains=@NoSpell | "Bit test and reset
syn match AsmBit "\<BTC[WLQ]\?\>"                         contains=@NoSpell | "Bit test and complement
syn match AsmBit "\<BSF[WLQ]\?\>"                         contains=@NoSpell | "Bit scan forward
syn match AsmBit "\<BSR[WLQ]\?\>"                         contains=@NoSpell | "Bit scan reverse
syn match AsmBit "\<\%(SETE\|SETZ\)\>"                    contains=@NoSpell | "Set byte if equal/Set byte if zero
syn match AsmBit "\<\%(SETNE\|SETNZ\)\>"                  contains=@NoSpell | "Set byte if not equal/Set byte if not zero
syn match AsmBit "\<\%(SETA\|SETNBE\)\>"                  contains=@NoSpell | "Set byte if above/Set byte if not below or equal
syn match AsmBit "\<\%(SETAE\|SETNB\|SETNC\)\>"           contains=@NoSpell | "Set byte if above or equal/Set byte if not below/Set byte if not carry
syn match AsmBit "\<\%(SETB\|SETNAE\|SETC\)\>"            contains=@NoSpell | "Set byte if below/Set byte if not above or equal/Set byte if carry
syn match AsmBit "\<\%(SETBE\|SETNA\)\>"                  contains=@NoSpell | "Set byte if below or equal/Set byte if not above
syn match AsmBit "\<\%(SETG\|SETNLE\)\>"                  contains=@NoSpell | "Set byte if greater/Set byte if not less or equal
syn match AsmBit "\<\%(SETGE\|SETNL\)\>"                  contains=@NoSpell | "Set byte if greater or equal/Set byte if not less
syn match AsmBit "\<\%(SETL\|SETNGE\)\>"                  contains=@NoSpell | "Set byte if less/Set byte if not greater or equal
syn match AsmBit "\<\%(SETLE\|SETNG\)\>"                  contains=@NoSpell | "Set byte if less or equal/Set byte if not greater
syn match AsmBit "\<SETS\>"                               contains=@NoSpell | "Set byte if sign (negative)
syn match AsmBit "\<SETNS\>"                              contains=@NoSpell | "Set byte if not sign (non-negative)
syn match AsmBit "\<SETO\>"                               contains=@NoSpell | "Set byte if overflow
syn match AsmBit "\<SETNO\>"                              contains=@NoSpell | "Set byte if not overflow
syn match AsmBit "\<\%(SETPE\|SETP\)\>"                   contains=@NoSpell | "Set byte if parity even/Set byte if parity
syn match AsmBit "\<\%(SETPO\|SETNP\)\>"                  contains=@NoSpell | "Set byte if parity odd/Set byte if not parity
syn match AsmBit "\<TEST[WLQ]\?\>"                        contains=@NoSpell | "Logical compare

hi  link  AsmControl Type
" 30.2.1.7. Control Transfer Instructions
syn match AsmControl "\<JMP\>"                            contains=@NoSpell | "Jump
syn match AsmControl "\<\%(JE\|JZ\)\>"                    contains=@NoSpell | "Jump if equal/Jump if zero
syn match AsmControl "\<\%(JNE\|JNZ\)\>"                  contains=@NoSpell | "Jump if not equal/Jump if not zero
syn match AsmControl "\<\%(JA\|JNBE\)\>"                  contains=@NoSpell | "Jump if above/Jump if not below or equal
syn match AsmControl "\<\%(JAE\|JNB\)\>"                  contains=@NoSpell | "Jump if above or equal/Jump if not below
syn match AsmControl "\<\%(JB\|JNAE\)\>"                  contains=@NoSpell | "Jump if below/Jump if not above or equal
syn match AsmControl "\<\%(JBE\|JNA\)\>"                  contains=@NoSpell | "Jump if below or equal/Jump if not above
syn match AsmControl "\<\%(JG\|JNLE\)\>"                  contains=@NoSpell | "Jump if greater/Jump if not less or equal
syn match AsmControl "\<\%(JGE\|JNL\)\>"                  contains=@NoSpell | "Jump if greater or equal/Jump if not less
syn match AsmControl "\<\%(JL\|JNGE\)\>"                  contains=@NoSpell | "Jump if less/Jump if not greater or equal
syn match AsmControl "\<\%(JLE\|JNG\)\>"                  contains=@NoSpell | "Jump if less or equal/Jump if not greater
syn match AsmControl "\<JC\>"                             contains=@NoSpell | "Jump if carry
syn match AsmControl "\<JNC\>"                            contains=@NoSpell | "Jump if not carry
syn match AsmControl "\<JO\>"                             contains=@NoSpell | "Jump if overflow
syn match AsmControl "\<JNO\>"                            contains=@NoSpell | "Jump if not overflow
syn match AsmControl "\<JS\>"                             contains=@NoSpell | "Jump if sign (negative)
syn match AsmControl "\<JNS\>"                            contains=@NoSpell | "Jump if not sign (non-negative)
syn match AsmControl "\<\%(JPO\|JNP\)\>"                  contains=@NoSpell | "Jump if parity odd/Jump if not parity
syn match AsmControl "\<\%(JPE\|JP\)\>"                   contains=@NoSpell | "Jump if parity even/Jump if parity
syn match AsmControl "\<\%(JCXZ\|JECXZ\)\>"               contains=@NoSpell | "Jump register CX zero/Jump register ECX zero
syn match AsmControl "\<LOOP\>"                           contains=@NoSpell | "Loop with ECX counter
syn match AsmControl "\<\%(LOOPZ\|LOOPE\)\>"              contains=@NoSpell | "Loop with ECX and zero/Loop with ECX and equal
syn match AsmControl "\<\%(LOOPNZ\|LOOPNE\)\>"            contains=@NoSpell | "Loop with ECX and not zero/Loop with ECX and not equal
syn match AsmControl "\<CALL\>"                           contains=@NoSpell | "Call procedure
syn match AsmControl "\<RET\>"                            contains=@NoSpell | "Return
syn match AsmControl "\<IRET\>"                           contains=@NoSpell | "Return from interrupt
syn match AsmControl "\<INT\>"                            contains=@NoSpell | "Software interrupt
syn match AsmControl "\<INTO\>"                           contains=@NoSpell | "Interrupt on overflow
syn match AsmControl "\<BOUND[WL]\?\>"                    contains=@NoSpell | "Detect value out of range
syn match AsmControl "\<ENTER\>"                          contains=@NoSpell | "High-level procedure entry
syn match AsmControl "\<LEAVE\>"                          contains=@NoSpell | "High-level procedure exit

hi  link  AsmString Define
" 30.2.1.8. String Instructions
syn match AsmString "\<\%(MOVSQ\)\>"                      contains=@NoSpell | "Move string/Move byte string
syn match AsmString "\<\%(MOVS[Q]\?\|MOVSB\)\>"           contains=@NoSpell | "Move string/Move byte string
syn match AsmString "\<\%(MOVS\|MOVSW\)\>"                contains=@NoSpell | "Move string/Move word string
syn match AsmString "\<\%(MOVS\|MOVSD\)\>"                contains=@NoSpell | "Move string/Move doubleword string
syn match AsmString "\<\%(CMPS[Q]\?\|CMPSB\)\>"           contains=@NoSpell | "Compare string/Compare byte string
syn match AsmString "\<\%(CMPS\|CMPSW\)\>"                contains=@NoSpell | "Compare string/Compare word string
syn match AsmString "\<\%(CMPS\|CMPSD\)\>"                contains=@NoSpell | "Compare string/Compare doubleword string
syn match AsmString "\<\%(SCAS[Q]\?\|SCASB\)\>"           contains=@NoSpell | "Scan string/Scan byte string
syn match AsmString "\<\%(SCAS\|SCASW\)\>"                contains=@NoSpell | "Scan string/Scan word string
syn match AsmString "\<\%(SCAS\|SCASD\)\>"                contains=@NoSpell | "Scan string/Scan doubleword string
syn match AsmString "\<\%(LODS[Q]\?\|LODSB\)\>"           contains=@NoSpell | "Load string/Load byte string
syn match AsmString "\<\%(LODS\|LODSW\)\>"                contains=@NoSpell | "Load string/Load word string
syn match AsmString "\<\%(LODS\|LODSD\)\>"                contains=@NoSpell | "Load string/Load doubleword string
syn match AsmString "\<\%(STOS[Q]\?\|STOSB\)\>"           contains=@NoSpell | "Store string/Store byte string
syn match AsmString "\<\%(STOS\|STOSW\)\>"                contains=@NoSpell | "Store string/Store word string
syn match AsmString "\<\%(STOS\|STOSD\)\>"                contains=@NoSpell | "Store string/Store doubleword string
syn match AsmString "\<REP\>"                             contains=@NoSpell | "Repeat while ECX not zero
syn match AsmString "\<\%(REPE\|REPZ\)\>"                 contains=@NoSpell | "Repeat while equal/Repeat while zero
syn match AsmString "\<\%(REPNE\|REPNZ\)\>"               contains=@NoSpell | "Repeat while not equal/Repeat while not zero
syn match AsmString "\<\%(INS\|INSB\)\>"                  contains=@NoSpell | "Input string from port/Input byte string from port
syn match AsmString "\<\%(INS\|INSW\)\>"                  contains=@NoSpell | "Input string from port/Input word string from port
syn match AsmString "\<\%(INS\|INSD\)\>"                  contains=@NoSpell | "Input string from port/Input doubleword string from port
syn match AsmString "\<\%(OUTS\|OUTSB\)\>"                contains=@NoSpell | "Output string to port/Output byte string to port
syn match AsmString "\<\%(OUTS\|OUTSW\)\>"                contains=@NoSpell | "Output string to port/Output word string to port
syn match AsmString "\<\%(OUTS\|OUTSD\)\>"                contains=@NoSpell | "Output string to port/Output doubleword string to port

hi  link  AsmFlag Statement
" 30.2.1.9. Flag Control Instructions
syn match AsmFlag "\<STC\>"                               contains=@NoSpell | "Set carry flag
syn match AsmFlag "\<CLC\>"                               contains=@NoSpell | "Clear the carry flag
syn match AsmFlag "\<CMC\>"                               contains=@NoSpell | "Complement the carry flag
syn match AsmFlag "\<CLD\>"                               contains=@NoSpell | "Clear the direction flag
syn match AsmFlag "\<STD\>"                               contains=@NoSpell | "Set direction flag
syn match AsmFlag "\<LAHF\>"                              contains=@NoSpell | "Load flags into AH register
syn match AsmFlag "\<SAHF\>"                              contains=@NoSpell | "Store AH register into flags
syn match AsmFlag "\<\%(PUSHF[LQ]\?\|PUSHFD\)\>"          contains=@NoSpell | "Push EFLAGS onto stack
syn match AsmFlag "\<\%(POPF[LQ]\?\|POPFD\)\>"            contains=@NoSpell | "Pop EFLAGS from stack
syn match AsmFlag "\<STI\>"                               contains=@NoSpell | "Set interrupt flag
syn match AsmFlag "\<CLI\>"                               contains=@NoSpell | "Clear the interrupt flag

hi  link  AsmSegment Define
" 30.2.1.10. Segment Register Instructions
syn match AsmSegment "\<LDS[WL]\?\>"                      contains=@NoSpell | "Load far pointer using DS
syn match AsmSegment "\<LES[WL]\?\>"                      contains=@NoSpell | "Load far pointer using ES
syn match AsmSegment "\<LFS[WL]\?\>"                      contains=@NoSpell | "Load far pointer using FS
syn match AsmSegment "\<LGS[WL]\?\>"                      contains=@NoSpell | "Load far pointer using GS
syn match AsmSegment "\<LSS[WL]\?\>"                      contains=@NoSpell | "Load far pointer using SS

hi  link  AsmMisc Statement
" 30.2.1.11. Miscellaneous Instructions
syn match AsmMisc "\<LEA[WLQ]\?\>"                        contains=@NoSpell | "Load effective address
syn match AsmMisc "\<NOP\>"                               contains=@NoSpell | "No operation
syn match AsmMisc "\<NOPL\>"                              contains=@NoSpell | "Long-sized No operation
syn match AsmMisc "\<NOPW\>"                              contains=@NoSpell | "Word-sized No operation
syn match AsmMisc "\<UB2\>"                               contains=@NoSpell | "Undefined instruction
syn match AsmMisc "\<\%(XLAT\|XLATB\)\>"                  contains=@NoSpell | "Table lookup translation
syn match AsmMisc "\<CPUID\>"                             contains=@NoSpell | "Processor Identification


syn match AsmMisc "\<ENDBR32\>"                           contains=@NoSpell | "Terminate indirect branch in 32-bit mode[b]
syn match AsmMisc "\<ENDBR64\>"                           contains=@NoSpell | "Terminate indirect branch in 64-bit mode[b]
syn match AsmMisc "\<NOTRACK\>"                           contains=@NoSpell | "Prefix used with indirect CALL/JMP nestructions (opcodes FF /2 and FF /4) to indicate that the branch target is not required to start with an ENDBR32/64 instruction. Prefix only honored when NO_TRACK_EN flag is set.


" 30.2.2. MMX™ Technology Instructions
" The MMX instructions execute on those Intel Architecture processors that
" implement the Intel MMX technology. These instructions operate on
" packed-byte, packed-word, packed-doubleword, and quadword operands.

hi  link  AsmMMX SpecialKey
" 30.2.2.1. MMX™ Data Transfer Instructions
syn match AsmMMX "\<MOVD\>"                               contains=@NoSpell | "Move doubleword
syn match AsmMMX "\<MOVQ\>"                               contains=@NoSpell | "Move quadword

" 30.2.2.2. MMX™ Conversion Instructions
syn match AsmMMX "\<PACKSSWB\>"                           contains=@NoSpell | "Pack words into bytes with signed saturation
syn match AsmMMX "\<PACKSSDW\>"                           contains=@NoSpell | "Pack doublewords into words with signed saturation
syn match AsmMMX "\<PACKUSWB\>"                           contains=@NoSpell | "Pack words into bytes with unsigned saturation
syn match AsmMMX "\<PUNPCKHBW\>"                          contains=@NoSpell | "Unpack high-order bytes from words
syn match AsmMMX "\<PUNPCKHWD\>"                          contains=@NoSpell | "Unpack high-order words from doublewords
syn match AsmMMX "\<PUNPCKHDQ\>"                          contains=@NoSpell | "Unpack high-order doublewords from quadword
syn match AsmMMX "\<PUNPCKLBW\>"                          contains=@NoSpell | "Unpack low-order bytes from words
syn match AsmMMX "\<PUNPCKLWD\>"                          contains=@NoSpell | "Unpack low-order words from doublewords
syn match AsmMMX "\<PUNPCKLDQ\>"                          contains=@NoSpell | "Unpack low-order doublewords from quadword

" 30.2.2.3. MMX™ Packed Arithmetic Instructions
syn match AsmMMX "\<PADDB\>"                              contains=@NoSpell | "Add packed bytes
syn match AsmMMX "\<PADDW\>"                              contains=@NoSpell | "Add packed words
syn match AsmMMX "\<PADDD\>"                              contains=@NoSpell | "Add packed doublewords
syn match AsmMMX "\<PADDSB\>"                             contains=@NoSpell | "Add packed bytes with saturation
syn match AsmMMX "\<PADDSW\>"                             contains=@NoSpell | "Add packed words with saturation
syn match AsmMMX "\<PADDUSB\>"                            contains=@NoSpell | "Add packed unsigned bytes with saturation
syn match AsmMMX "\<PADDUSW\>"                            contains=@NoSpell | "Add packed unsigned words with saturation
syn match AsmMMX "\<PSUBB\>"                              contains=@NoSpell | "Subtract packed bytes
syn match AsmMMX "\<PSUBW\>"                              contains=@NoSpell | "Subtract packed words
syn match AsmMMX "\<PSUBD\>"                              contains=@NoSpell | "Subtract packed doublewords
syn match AsmMMX "\<PSUBSB\>"                             contains=@NoSpell | "Subtract packed bytes with saturation
syn match AsmMMX "\<PSUBSW\>"                             contains=@NoSpell | "Subtract packed words with saturation
syn match AsmMMX "\<PSUBUSB\>"                            contains=@NoSpell | "Subtract packed unsigned bytes with saturation
syn match AsmMMX "\<PSUBUSW\>"                            contains=@NoSpell | "Subtract packed unsigned words with saturation
syn match AsmMMX "\<PMULHW\>"                             contains=@NoSpell | "Multiply packed words and store high result
syn match AsmMMX "\<PMULLW\>"                             contains=@NoSpell | "Multiply packed words and store low result
syn match AsmMMX "\<PMADDWD\>"                            contains=@NoSpell | "Multiply and add packed words

" 30.2.2.4. MMX™ Comparison Instructions
syn match AsmMMX "\<PCMPEQB\>"                            contains=@NoSpell | "Compare packed bytes for equal
syn match AsmMMX "\<PCMPEQW\>"                            contains=@NoSpell | "Compare packed words for equal
syn match AsmMMX "\<PCMPEQD\>"                            contains=@NoSpell | "Compare packed doublewords for equal
syn match AsmMMX "\<PCMPGTB\>"                            contains=@NoSpell | "Compare packed bytes for greater than
syn match AsmMMX "\<PCMPGTW\>"                            contains=@NoSpell | "Compare packed words for greater than
syn match AsmMMX "\<PCMPGTD\>"                            contains=@NoSpell | "Compare packed doublewords for greater than

" 30.2.2.5. MMX™ Logic Instructions
syn match AsmMMX "\<PAND\>"                               contains=@NoSpell | "Bitwise logical and
syn match AsmMMX "\<PANDN\>"                              contains=@NoSpell | "Bitwise logical and not
syn match AsmMMX "\<POR\>"                                contains=@NoSpell | "Bitwise logical or
syn match AsmMMX "\<PXOR\>"                               contains=@NoSpell | "Bitwise logical exclusive or

" 30.2.2.6. MMX™ Shift and Rotate Instructions
syn match AsmMMX "\<PSLLW\>"                              contains=@NoSpell | "Shift packed words left logical
syn match AsmMMX "\<PSLLD\>"                              contains=@NoSpell | "Shift packed doublewords left logical
syn match AsmMMX "\<PSLLQ\>"                              contains=@NoSpell | "Shift packed quadword left logical
syn match AsmMMX "\<PSRLW\>"                              contains=@NoSpell | "Shift packed words right logical
syn match AsmMMX "\<PSRLD\>"                              contains=@NoSpell | "Shift packed doublewords right logical
syn match AsmMMX "\<PSRLQ\>"                              contains=@NoSpell | "Shift packed quadword right logical
syn match AsmMMX "\<PSRAW\>"                              contains=@NoSpell | "Shift packed words right arithmetic
syn match AsmMMX "\<PSRAD\>"                              contains=@NoSpell | "Shift packed doublewords right arithmetic

" 30.2.2.7. MMX™ State Management
syn match AsmMMX "\<EMMS\>"                               contains=@NoSpell | "Empty MMX state

" 30.2.3. Floating-Point Instructions

" The floating-point instructions are those that are executed by the
" processor's floating-point unit (FPU). These instructions operate on
" floating-point (real), extended integer, and binary-coded decimal (BCD)
" operands. As with the integer instructions, the following list of
" floating-point instructions is divided into subgroups.

hi  link  AsmFData Conditional
" 30.2.3.1. Data Transfer
syn match AsmFData "\<FLD\>"                              contains=@NoSpell | "Load real
syn match AsmFData "\<FST\>"                              contains=@NoSpell | "Store real
syn match AsmFData "\<FSTP\>"                             contains=@NoSpell | "Store real and pop
syn match AsmFData "\<FILD\>"                             contains=@NoSpell | "Load integer
syn match AsmFData "\<FIST\>"                             contains=@NoSpell | "Store integer
syn match AsmFData "\<FISTP\>"                            contains=@NoSpell | "Store integer and pop
syn match AsmFData "\<FBLD\>"                             contains=@NoSpell | "Load BCD
syn match AsmFData "\<FBSTP\>"                            contains=@NoSpell | "Store BCD and pop
syn match AsmFData "\<FXCH\>"                             contains=@NoSpell | "Exchange registers
syn match AsmFData "\<FCMOVE\>"                           contains=@NoSpell | "Floating-point conditional move if equal
syn match AsmFData "\<FCMOVNE\>"                          contains=@NoSpell | "Floating-point conditional move if not equal
syn match AsmFData "\<FCMOVB\>"                           contains=@NoSpell | "Floating-point conditional move if below
syn match AsmFData "\<FCMOVBE\>"                          contains=@NoSpell | "Floating-point conditional move if below or equal
syn match AsmFData "\<FCMOVNB\>"                          contains=@NoSpell | "Floating-point conditional move if not below
syn match AsmFData "\<FCMOVNBE\>"                         contains=@NoSpell | "Floating-point conditional move if not below or equal
syn match AsmFData "\<FCMOVU\>"                           contains=@NoSpell | "Floating-point conditional move if unordered
syn match AsmFData "\<FCMOVNU\>"                          contains=@NoSpell | "Floating-point conditional move if not unordered

hi  link  AsmFArith Operator
" 30.2.3.2. Basic Arithmetic
syn match AsmFArith "\<FADD\>"                            contains=@NoSpell | "Add real
syn match AsmFArith "\<FADDP\>"                           contains=@NoSpell | "Add real and pop
syn match AsmFArith "\<FIADD\>"                           contains=@NoSpell | "Add integer
syn match AsmFArith "\<FSUB\>"                            contains=@NoSpell | "Subtract real
syn match AsmFArith "\<FSUBP\>"                           contains=@NoSpell | "Subtract real and pop
syn match AsmFArith "\<FISUB\>"                           contains=@NoSpell | "Subtract integer
syn match AsmFArith "\<FSUBR\>"                           contains=@NoSpell | "Subtract real reverse
syn match AsmFArith "\<FSUBRP\>"                          contains=@NoSpell | "Subtract real reverse and pop
syn match AsmFArith "\<FISUBR\>"                          contains=@NoSpell | "Subtract integer reverse
syn match AsmFArith "\<FMUL\>"                            contains=@NoSpell | "Multiply real
syn match AsmFArith "\<FMULP\>"                           contains=@NoSpell | "Multiply real and pop
syn match AsmFArith "\<FIMUL\>"                           contains=@NoSpell | "Multiply integer
syn match AsmFArith "\<FDIV\>"                            contains=@NoSpell | "Divide real
syn match AsmFArith "\<FDIVP\>"                           contains=@NoSpell | "Divide real and pop
syn match AsmFArith "\<FIDIV\>"                           contains=@NoSpell | "Divide integer
syn match AsmFArith "\<FDIVR\>"                           contains=@NoSpell | "Divide real reverse
syn match AsmFArith "\<FDIVRP\>"                          contains=@NoSpell | "Divide real reverse and pop
syn match AsmFArith "\<FIDIVR\>"                          contains=@NoSpell | "Divide integer reverse
syn match AsmFArith "\<FPREM\>"                           contains=@NoSpell | "Partial remainder
syn match AsmFArith "\<FPREMI\>"                          contains=@NoSpell | "IEEE Partial remainder
syn match AsmFArith "\<FABS\>"                            contains=@NoSpell | "Absolute value
syn match AsmFArith "\<FCHS\>"                            contains=@NoSpell | "Change sign
syn match AsmFArith "\<FRNDINT\>"                         contains=@NoSpell | "Round to integer
syn match AsmFArith "\<FSCALE\>"                          contains=@NoSpell | "Scale by power of two
syn match AsmFArith "\<FSQRT\>"                           contains=@NoSpell | "Square root
syn match AsmFArith "\<FXTRACT\>"                         contains=@NoSpell | "Extract exponent and significand

hi  link  AsmFComp Statement
" 30.2.3.3. Comparison
syn match AsmFComp "\<FCOM\>"                             contains=@NoSpell | "Compare real
syn match AsmFComp "\<FCOMP\>"                            contains=@NoSpell | "Compare real and pop
syn match AsmFComp "\<FCOMPP\>"                           contains=@NoSpell | "Compare real and pop twice
syn match AsmFComp "\<FUCOM\>"                            contains=@NoSpell | "Unordered compare real
syn match AsmFComp "\<FUCOMP\>"                           contains=@NoSpell | "Unordered compare real and pop
syn match AsmFComp "\<FUCOMPP\>"                          contains=@NoSpell | "Unordered compare real and pop twice
syn match AsmFComp "\<FICOM\>"                            contains=@NoSpell | "Compare integer
syn match AsmFComp "\<FICOMP\>"                           contains=@NoSpell | "Compare integer and pop
syn match AsmFComp "\<FCOMI\>"                            contains=@NoSpell | "Compare real and set EFLAGS
syn match AsmFComp "\<FUCOMI\>"                           contains=@NoSpell | "Unordered compare real and set EFLAGS
syn match AsmFComp "\<FCOMIP\>"                           contains=@NoSpell | "Compare real, set EFLAGS, and pop
syn match AsmFComp "\<FUCOMIP\>"                          contains=@NoSpell | "Unordered compare real, set EFLAGS, and pop
syn match AsmFComp "\<FTST\>"                             contains=@NoSpell | "Test real
syn match AsmFComp "\<FXAM\>"                             contains=@NoSpell | "Examine real

syn match AsmFComp "\<COMISD\>"                           contains=@NoSpell | "Compare Scalar Ordered Double Precision Floating-Point Values and Set EFLAGS

" 30.2.3.4. Transcendental
syn match AsmFComp "\<FSIN\>"                             contains=@NoSpell | "Sine
syn match AsmFComp "\<FCOS\>"                             contains=@NoSpell | "Cosine
syn match AsmFComp "\<FSINCOS\>"                          contains=@NoSpell | "Sine and cosine
syn match AsmFComp "\<FPTAN\>"                            contains=@NoSpell | "Partial tangent
syn match AsmFComp "\<FPATAN\>"                           contains=@NoSpell | "Partial arctangent
syn match AsmFComp "\<F2XM1\>"                            contains=@NoSpell | "2 x − 1
syn match AsmFComp "\<FYL2X\>"                            contains=@NoSpell | "y∗log 2x
syn match AsmFComp "\<FYL2XP1\>"                          contains=@NoSpell | "y∗log 2(x+1)

" 30.2.3.5. Load Constants
syn match AsmFComp "\<FLD1\>"                             contains=@NoSpell | "Load +1.0
syn match AsmFComp "\<FLDZ\>"                             contains=@NoSpell | "Load +0.0
syn match AsmFComp "\<FLDPI\>"                            contains=@NoSpell | "Load π
syn match AsmFComp "\<FLDL2E\>"                           contains=@NoSpell | "Load log 2 e
syn match AsmFComp "\<FLDLN2\>"                           contains=@NoSpell | "Load log e 2
syn match AsmFComp "\<FLDL2T\>"                           contains=@NoSpell | "Load log 2 10
syn match AsmFComp "\<FLDLG2\>"                           contains=@NoSpell | "Load log 10 2

" 30.2.3.6. FPU Control
syn match AsmFComp "\<FINCSTP\>"                          contains=@NoSpell | "Increment FPU register stack pointer
syn match AsmFComp "\<FDECSTP\>"                          contains=@NoSpell | "Decrement FPU register stack pointer
syn match AsmFComp "\<FFREE\>"                            contains=@NoSpell | "Free floating-point register
syn match AsmFComp "\<FINIT\>"                            contains=@NoSpell | "Initialize FPU after checking error conditions
syn match AsmFComp "\<FNINIT\>"                           contains=@NoSpell | "Initialize FPU without checking error conditions
syn match AsmFComp "\<FCLEX\>"                            contains=@NoSpell | "Clear floating-point exception flags after checking for error conditions
syn match AsmFComp "\<FNCLEX\>"                           contains=@NoSpell | "Clear floating-point exception flags without checking for error conditions
syn match AsmFComp "\<FSTCW\>"                            contains=@NoSpell | "Store FPU control word after checking error conditions
syn match AsmFComp "\<FNSTCW\>"                           contains=@NoSpell | "Store FPU control word without checking error conditions
syn match AsmFComp "\<FLDCW\>"                            contains=@NoSpell | "Load FPU control word
syn match AsmFComp "\<FSTENV\>"                           contains=@NoSpell | "Store FPU environment after checking error conditions
syn match AsmFComp "\<FNSTENV\>"                          contains=@NoSpell | "Store FPU environment without checking error conditions
syn match AsmFComp "\<FLDENV\>"                           contains=@NoSpell | "Load FPU environment
syn match AsmFComp "\<FSAVE\>"                            contains=@NoSpell | "Save FPU state after checking error conditions
syn match AsmFComp "\<FNSAVE\>"                           contains=@NoSpell | "Save FPU state without checking error conditions
syn match AsmFComp "\<FRSTOR\>"                           contains=@NoSpell | "Restore FPU state
syn match AsmFComp "\<FSTSW\>"                            contains=@NoSpell | "Store FPU status word after checking error conditions
syn match AsmFComp "\<FNSTSW\>"                           contains=@NoSpell | "Store FPU status word without checking error conditions
syn match AsmFComp "\<\%(WAIT\|FWAIT\)\>"                 contains=@NoSpell | "Wait for FPU
syn match AsmFComp "\<FNOP\>"                             contains=@NoSpell | "FPU no operation

" 30.2.4. System Instructions

" The following system instructions are used to control those functions of the
" processor that are provided to support for operating systems and executives.

syn match AsmFComp "\<LGDT\>"                             contains=@NoSpell | "Load global descriptor table (GDT) register
syn match AsmFComp "\<SGDT\>"                             contains=@NoSpell | "Store global descriptor table (GDT) register
syn match AsmFComp "\<LLDT\>"                             contains=@NoSpell | "Load local descriptor table (LDT) register
syn match AsmFComp "\<SLDT\>"                             contains=@NoSpell | "Store local descriptor table (LDT) register
syn match AsmFComp "\<LTR\>"                              contains=@NoSpell | "Load task register
syn match AsmFComp "\<STR\>"                              contains=@NoSpell | "Store task register
syn match AsmFComp "\<LIDT\>"                             contains=@NoSpell | "Load interrupt descriptor table (IDT) register
syn match AsmFComp "\<SIDT\>"                             contains=@NoSpell | "Store interrupt descriptor table (IDT) register
syn match AsmFComp "\<MOV\>"                              contains=@NoSpell | "Load and store control registers
syn match AsmFComp "\<LMSW\>"                             contains=@NoSpell | "Load machine status word
syn match AsmFComp "\<SMSW\>"                             contains=@NoSpell | "Store machine status word
syn match AsmFComp "\<CLTS\>"                             contains=@NoSpell | "Clear the task-switched flag
syn match AsmFComp "\<ARPL\>"                             contains=@NoSpell | "Adjust requested privilege level
syn match AsmFComp "\<LAR\>"                              contains=@NoSpell | "Load access rights
syn match AsmFComp "\<LSL\>"                              contains=@NoSpell | "Load segment limit
syn match AsmFComp "\<VERR\>"                             contains=@NoSpell | "Verify segment for reading
syn match AsmFComp "\<VERW\>"                             contains=@NoSpell | "Verify segment for writing
syn match AsmFComp "\<INVD\>"                             contains=@NoSpell | "Invalidate cache, no writeback
syn match AsmFComp "\<WBINVD\>"                           contains=@NoSpell | "Invalidate cache, with writeback
syn match AsmFComp "\<INVLPG\>"                           contains=@NoSpell | "Invalidate TLB Entry
syn match AsmFComp "\<LOCK\>"                             contains=@NoSpell | "(prefix) Lock Bus
syn match AsmFComp "\<HLT\>"                              contains=@NoSpell | "Halt processor
syn match AsmFComp "\<RSM\>"                              contains=@NoSpell | "Return from system management mode (SSM)
syn match AsmFComp "\<RDMSR\>"                            contains=@NoSpell | "Read model-specific register
syn match AsmFComp "\<WRMSR\>"                            contains=@NoSpell | "Write model-specific register
syn match AsmFComp "\<RDPMC\>"                            contains=@NoSpell | "Read performance monitoring counters
syn match AsmFComp "\<RDTSC\>"                            contains=@NoSpell | "Read time stamp counter
"------------------------------------------------------------------------------
" same matches as above but all lowercase
"------------------------------------------------------------------------------
syn match AsmData "\<mov\>"                               contains=@NoSpell
syn match AsmData "\<movb\>"                              contains=@NoSpell
syn match AsmData "\<movw\>"                              contains=@NoSpell
syn match AsmData "\<movl\>"                              contains=@NoSpell
syn match AsmData "\<\%(cmove[wlq]\?\|cmovz[wlq]\?\)\>"   contains=@NoSpell
syn match AsmData "\<\%(cmovne[wlq]\?\|cmovnz[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmova[wlq]\?\|cmovnbe[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmovae[wlq]\?\|cmovnb[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmovb[wlq]\?\|cmovnae[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmovbe[wlq]\?\|cmovna[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmovg[wlq]\?\|cmovnle[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmovge[wlq]\?\|cmovnl[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmovl[wlq]\?\|cmovnge[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<\%(cmovle[wlq]\?\|cmovng[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<cmovc[wlq]\?\>"                      contains=@NoSpell
syn match AsmData "\<cmovnc[wlq]\?\>"                     contains=@NoSpell
syn match AsmData "\<cmovo[wlq]\?\>"                      contains=@NoSpell
syn match AsmData "\<cmovno[wlq]\?\>"                     contains=@NoSpell
syn match AsmData "\<cmovs[wlq]\?\>"                      contains=@NoSpell
syn match AsmData "\<cmovns[wlq]\?\>"                     contains=@NoSpell
syn match AsmData "\<\%(cmovp[wlq]\?\|cmovpe[wlq]\?\)\>"  contains=@NoSpell
syn match AsmData "\<\%(cmovnp[wlq]\?\|cmovpo[wlq]\?\)\>" contains=@NoSpell
syn match AsmData "\<xchg[bwlq]\?\>"                      contains=@NoSpell
syn match AsmData "\<bswap[lq]\?\>"                       contains=@NoSpell
syn match AsmData "\<xadd[bwlq]\?\>"                      contains=@NoSpell
syn match AsmData "\<cmpxchg[bwlq]\?\>"                   contains=@NoSpell
syn match AsmData "\<cmpxchg8b\>"                         contains=@NoSpell
syn match AsmData "\<push[wlq]\?\>"                       contains=@NoSpell
syn match AsmData "\<pop[wlq]\?\>"                        contains=@NoSpell
syn match AsmData "\<\%(pusha\|pushad\)\>"                contains=@NoSpell
syn match AsmData "\<\%(popa\|popad\)\>"                  contains=@NoSpell
syn match AsmData "\<in\>"                                contains=@NoSpell
syn match AsmData "\<out\>"                               contains=@NoSpell
syn match AsmData "\<\%(cwd\|cdq\)\>"                     contains=@NoSpell
syn match AsmData "\<\%(cbw\|cwde\)\>"                    contains=@NoSpell
syn match AsmData "\<movsx\>"                             contains=@NoSpell
syn match AsmData "\<movzx\>"                             contains=@NoSpell

syn match AsmData "\<movabs[bwlq]\?\>"                    contains=@NoSpell
syn match AsmData "\<movabs[bwlq]\?a\>"                   contains=@NoSpell
syn match AsmData "\<\%(movsb[wlq]\?\|movsw[lq]\?\)\>"    contains=@NoSpell
syn match AsmData "\<\%(movzb[wlq]\?\|movzw[lq]\?\)\>"    contains=@NoSpell
syn match AsmData "\<popaw\>"                             contains=@NoSpell
syn match AsmData "\<popal, popa\>"                       contains=@NoSpell
syn match AsmData "\<pushaw\>"                            contains=@NoSpell
syn match AsmData "\<pushal, pusha\>"                     contains=@NoSpell
syn match AsmData "\<xchg[bwlq]\?a\>"                     contains=@NoSpell

syn match AsmData "\<movaps\>"                            contains=@NoSpell
syn match AsmData "\<movslq\>"                            contains=@NoSpell

" 30.2.1.2. Binary arithmetic instructions
syn match AsmLogic "\<add[bwql]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<adc[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<sub[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<sbb[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<imul[bwlq]\?\>"                     contains=@NoSpell
syn match AsmLogic "\<mul[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<idiv[bwlq]\?\>"                     contains=@NoSpell
syn match AsmLogic "\<div[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<inc[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<dec[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<neg[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<cmp[bwql]\?\>"                      contains=@NoSpell

" 30.2.1.3. Decimal arithmetic
syn match AsmLogic "\<daa\>"                              contains=@NoSpell
syn match AsmLogic "\<das\>"                              contains=@NoSpell
syn match AsmLogic "\<aaa\>"                              contains=@NoSpell
syn match AsmLogic "\<aas\>"                              contains=@NoSpell
syn match AsmLogic "\<aam\>"                              contains=@NoSpell
syn match AsmLogic "\<aad\>"                              contains=@NoSpell

" 30.2.1.4. Logic instructions
syn match AsmLogic "\<and[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<or[bwlq]\?\>"                       contains=@NoSpell
syn match AsmLogic "\<xor[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<not[bwlq]\?\>"                      contains=@NoSpell

" 30.2.1.5. Shift and rotate instructions
syn match AsmLogic "\<sar[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<shr[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<\%(sal\|shl\)[bwlq]\?\>"            contains=@NoSpell
syn match AsmLogic "\<shrd[bwlq]\?\>"                     contains=@NoSpell
syn match AsmLogic "\<shld[bwlq]\?\>"                     contains=@NoSpell
syn match AsmLogic "\<ror[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<rol[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<rcr[bwlq]\?\>"                      contains=@NoSpell
syn match AsmLogic "\<rcl[bwlq]\?\>"                      contains=@NoSpell

" 30.2.1.6. Bit and byte instructions
syn match AsmBit "\<bt[wlq]\?\>"                          contains=@NoSpell
syn match AsmBit "\<bts[wlq]\?\>"                         contains=@NoSpell
syn match AsmBit "\<btr[wlq]\?\>"                         contains=@NoSpell
syn match AsmBit "\<btc[wlq]\?\>"                         contains=@NoSpell
syn match AsmBit "\<bsf[wlq]\?\>"                         contains=@NoSpell
syn match AsmBit "\<bsr[wlq]\?\>"                         contains=@NoSpell
syn match AsmBit "\<\%(sete\|setz\)\>"                    contains=@NoSpell
syn match AsmBit "\<\%(setne\|setnz\)\>"                  contains=@NoSpell
syn match AsmBit "\<\%(seta\|setnbe\)\>"                  contains=@NoSpell
syn match AsmBit "\<\%(setae\|setnb\|setnc\)\>"           contains=@NoSpell
syn match AsmBit "\<\%(setb\|setnae\|setc\)\>"            contains=@NoSpell
syn match AsmBit "\<\%(setbe\|setna\)\>"                  contains=@NoSpell
syn match AsmBit "\<\%(setg\|setnle\)\>"                  contains=@NoSpell
syn match AsmBit "\<\%(setge\|setnl\)\>"                  contains=@NoSpell
syn match AsmBit "\<\%(setl\|setnge\)\>"                  contains=@NoSpell
syn match AsmBit "\<\%(setle\|setng\)\>"                  contains=@NoSpell
syn match AsmBit "\<sets\>"                               contains=@NoSpell
syn match AsmBit "\<setns\>"                              contains=@NoSpell
syn match AsmBit "\<seto\>"                               contains=@NoSpell
syn match AsmBit "\<setno\>"                              contains=@NoSpell
syn match AsmBit "\<\%(setpe\|setp\)\>"                   contains=@NoSpell
syn match AsmBit "\<\%(setpo\|setnp\)\>"                  contains=@NoSpell
syn match AsmBit "\<test[wlq]\?\>"                        contains=@NoSpell

" 30.2.1.7. Control transfer instructions
syn match AsmControl "\<jmp\>"                            contains=@NoSpell
syn match AsmControl "\<\%(je\|jz\)\>"                    contains=@NoSpell
syn match AsmControl "\<\%(jne\|jnz\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(ja\|jnbe\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jae\|jnb\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jb\|jnae\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jbe\|jna\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jg\|jnle\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jge\|jnl\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jl\|jnge\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jle\|jng\)\>"                  contains=@NoSpell
syn match AsmControl "\<jc\>"                             contains=@NoSpell
syn match AsmControl "\<jnc\>"                            contains=@NoSpell
syn match AsmControl "\<jo\>"                             contains=@NoSpell
syn match AsmControl "\<jno\>"                            contains=@NoSpell
syn match AsmControl "\<js\>"                             contains=@NoSpell
syn match AsmControl "\<jns\>"                            contains=@NoSpell
syn match AsmControl "\<\%(jpo\|jnp\)\>"                  contains=@NoSpell
syn match AsmControl "\<\%(jpe\|jp\)\>"                   contains=@NoSpell
syn match AsmControl "\<\%(jcxz\|jecxz\)\>"               contains=@NoSpell
syn match AsmControl "\<loop\>"                           contains=@NoSpell
syn match AsmControl "\<\%(loopz\|loope\)\>"              contains=@NoSpell
syn match AsmControl "\<\%(loopnz\|loopne\)\>"            contains=@NoSpell
syn match AsmControl "\<call\>"                           contains=@NoSpell
syn match AsmControl "\<ret\>"                            contains=@NoSpell
syn match AsmControl "\<iret\>"                           contains=@NoSpell
syn match AsmControl "\<int\>"                            contains=@NoSpell
syn match AsmControl "\<into\>"                           contains=@NoSpell
syn match AsmControl "\<bound[wl]\?\>"                    contains=@NoSpell
syn match AsmControl "\<enter\>"                          contains=@NoSpell
syn match AsmControl "\<leave\>"                          contains=@NoSpell

" 30.2.1.8. String instructions
syn match AsmString "\<\%(movsq\)\>"                      contains=@NoSpell
syn match AsmString "\<\%(movs[q]\?\|movsb\)\>"           contains=@NoSpell
syn match AsmString "\<\%(movs\|movsw\)\>"                contains=@NoSpell
syn match AsmString "\<\%(movs\|movsd\)\>"                contains=@NoSpell
syn match AsmString "\<\%(cmps[q]\?\|cmpsb\)\>"           contains=@NoSpell
syn match AsmString "\<\%(cmps\|cmpsw\)\>"                contains=@NoSpell
syn match AsmString "\<\%(cmps\|cmpsd\)\>"                contains=@NoSpell
syn match AsmString "\<\%(scas[q]\?\|scasb\)\>"           contains=@NoSpell
syn match AsmString "\<\%(scas\|scasw\)\>"                contains=@NoSpell
syn match AsmString "\<\%(scas\|scasd\)\>"                contains=@NoSpell
syn match AsmString "\<\%(lods[q]\?\|lodsb\)\>"           contains=@NoSpell
syn match AsmString "\<\%(lods\|lodsw\)\>"                contains=@NoSpell
syn match AsmString "\<\%(lods\|lodsd\)\>"                contains=@NoSpell
syn match AsmString "\<\%(stos[q]\?\|stosb\)\>"           contains=@NoSpell
syn match AsmString "\<\%(stos\|stosw\)\>"                contains=@NoSpell
syn match AsmString "\<\%(stos\|stosd\)\>"                contains=@NoSpell
syn match AsmString "\<rep\>"                             contains=@NoSpell
syn match AsmString "\<\%(repe\|repz\)\>"                 contains=@NoSpell
syn match AsmString "\<\%(repne\|repnz\)\>"               contains=@NoSpell
syn match AsmString "\<\%(ins\|insb\)\>"                  contains=@NoSpell
syn match AsmString "\<\%(ins\|insw\)\>"                  contains=@NoSpell
syn match AsmString "\<\%(ins\|insd\)\>"                  contains=@NoSpell
syn match AsmString "\<\%(outs\|outsb\)\>"                contains=@NoSpell
syn match AsmString "\<\%(outs\|outsw\)\>"                contains=@NoSpell
syn match AsmString "\<\%(outs\|outsd\)\>"                contains=@NoSpell

" 30.2.1.9. Flag control instructions
syn match AsmFlag "\<stc\>"                               contains=@NoSpell
syn match AsmFlag "\<clc\>"                               contains=@NoSpell
syn match AsmFlag "\<cmc\>"                               contains=@NoSpell
syn match AsmFlag "\<cld\>"                               contains=@NoSpell
syn match AsmFlag "\<std\>"                               contains=@NoSpell
syn match AsmFlag "\<lahf\>"                              contains=@NoSpell
syn match AsmFlag "\<sahf\>"                              contains=@NoSpell
syn match AsmFlag "\<\%(pushf[lq]\?\|pushfd\)\>"          contains=@NoSpell
syn match AsmFlag "\<\%(popf[lq]\?\|popfd\)\>"            contains=@NoSpell
syn match AsmFlag "\<sti\>"                               contains=@NoSpell
syn match AsmFlag "\<cli\>"                               contains=@NoSpell

" 30.2.1.10. Segment register instructions
syn match AsmSegment "\<lds[wl]\?\>"                      contains=@NoSpell
syn match AsmSegment "\<les[wl]\?\>"                      contains=@NoSpell
syn match AsmSegment "\<lfs[wl]\?\>"                      contains=@NoSpell
syn match AsmSegment "\<lgs[wl]\?\>"                      contains=@NoSpell
syn match AsmSegment "\<lss[wl]\?\>"                      contains=@NoSpell

" 30.2.1.11. Miscellaneous instructions
syn match AsmMisc "\<lea[wlq]\?\>"                        contains=@NoSpell
syn match AsmMisc "\<nop\>"                               contains=@NoSpell
syn match AsmMisc "\<nopl\>"                              contains=@NoSpell
syn match AsmMisc "\<nopw\>"                              contains=@NoSpell
syn match AsmMisc "\<ub2\>"                               contains=@NoSpell
syn match AsmMisc "\<\%(xlat\|xlatb\)\>"                  contains=@NoSpell
syn match AsmMisc "\<cpuid\>"                             contains=@NoSpell


syn match AsmMisc "\<endbr32\>"                           contains=@NoSpell
syn match AsmMisc "\<endbr64\>"                           contains=@NoSpell
syn match AsmMisc "\<notrack\>"                           contains=@NoSpell

" 30.2.2.1. MMX™ Data transfer instructions
syn match AsmMMX "\<movd\>"                               contains=@NoSpell
syn match AsmMMX "\<movq\>"                               contains=@NoSpell

" 30.2.2.2. MMX™ Conversion instructions
syn match AsmMMX "\<packsswb\>"                           contains=@NoSpell
syn match AsmMMX "\<packssdw\>"                           contains=@NoSpell
syn match AsmMMX "\<packuswb\>"                           contains=@NoSpell
syn match AsmMMX "\<punpckhbw\>"                          contains=@NoSpell
syn match AsmMMX "\<punpckhwd\>"                          contains=@NoSpell
syn match AsmMMX "\<punpckhdq\>"                          contains=@NoSpell
syn match AsmMMX "\<punpcklbw\>"                          contains=@NoSpell
syn match AsmMMX "\<punpcklwd\>"                          contains=@NoSpell
syn match AsmMMX "\<punpckldq\>"                          contains=@NoSpell

" 30.2.2.3. MMX™ Packed arithmetic instructions
syn match AsmMMX "\<paddb\>"                              contains=@NoSpell
syn match AsmMMX "\<paddw\>"                              contains=@NoSpell
syn match AsmMMX "\<paddd\>"                              contains=@NoSpell
syn match AsmMMX "\<paddsb\>"                             contains=@NoSpell
syn match AsmMMX "\<paddsw\>"                             contains=@NoSpell
syn match AsmMMX "\<paddusb\>"                            contains=@NoSpell
syn match AsmMMX "\<paddusw\>"                            contains=@NoSpell
syn match AsmMMX "\<psubb\>"                              contains=@NoSpell
syn match AsmMMX "\<psubw\>"                              contains=@NoSpell
syn match AsmMMX "\<psubd\>"                              contains=@NoSpell
syn match AsmMMX "\<psubsb\>"                             contains=@NoSpell
syn match AsmMMX "\<psubsw\>"                             contains=@NoSpell
syn match AsmMMX "\<psubusb\>"                            contains=@NoSpell
syn match AsmMMX "\<psubusw\>"                            contains=@NoSpell
syn match AsmMMX "\<pmulhw\>"                             contains=@NoSpell
syn match AsmMMX "\<pmullw\>"                             contains=@NoSpell
syn match AsmMMX "\<pmaddwd\>"                            contains=@NoSpell

" 30.2.2.4. MMX™ Comparison instructions
syn match AsmMMX "\<pcmpeqb\>"                            contains=@NoSpell
syn match AsmMMX "\<pcmpeqw\>"                            contains=@NoSpell
syn match AsmMMX "\<pcmpeqd\>"                            contains=@NoSpell
syn match AsmMMX "\<pcmpgtb\>"                            contains=@NoSpell
syn match AsmMMX "\<pcmpgtw\>"                            contains=@NoSpell
syn match AsmMMX "\<pcmpgtd\>"                            contains=@NoSpell

" 30.2.2.5. MMX™ Logic instructions
syn match AsmMMX "\<pand\>"                               contains=@NoSpell
syn match AsmMMX "\<pandn\>"                              contains=@NoSpell
syn match AsmMMX "\<por\>"                                contains=@NoSpell
syn match AsmMMX "\<pxor\>"                               contains=@NoSpell

" 30.2.2.6. MMX™ Shift and rotate instructions
syn match AsmMMX "\<psllw\>"                              contains=@NoSpell
syn match AsmMMX "\<pslld\>"                              contains=@NoSpell
syn match AsmMMX "\<psllq\>"                              contains=@NoSpell
syn match AsmMMX "\<psrlw\>"                              contains=@NoSpell
syn match AsmMMX "\<psrld\>"                              contains=@NoSpell
syn match AsmMMX "\<psrlq\>"                              contains=@NoSpell
syn match AsmMMX "\<psraw\>"                              contains=@NoSpell
syn match AsmMMX "\<psrad\>"                              contains=@NoSpell

" 30.2.2.7. MMX™ State management
syn match AsmMMX "\<emms\>"                               contains=@NoSpell

" 30.2.3. Floating-point instructions

" 30.2.3.1. Data transfer
syn match AsmFData "\<fld\>"                              contains=@NoSpell
syn match AsmFData "\<fst\>"                              contains=@NoSpell
syn match AsmFData "\<fstp\>"                             contains=@NoSpell
syn match AsmFData "\<fild\>"                             contains=@NoSpell
syn match AsmFData "\<fist\>"                             contains=@NoSpell
syn match AsmFData "\<fistp\>"                            contains=@NoSpell
syn match AsmFData "\<fbld\>"                             contains=@NoSpell
syn match AsmFData "\<fbstp\>"                            contains=@NoSpell
syn match AsmFData "\<fxch\>"                             contains=@NoSpell
syn match AsmFData "\<fcmove\>"                           contains=@NoSpell
syn match AsmFData "\<fcmovne\>"                          contains=@NoSpell
syn match AsmFData "\<fcmovb\>"                           contains=@NoSpell
syn match AsmFData "\<fcmovbe\>"                          contains=@NoSpell
syn match AsmFData "\<fcmovnb\>"                          contains=@NoSpell
syn match AsmFData "\<fcmovnbe\>"                         contains=@NoSpell
syn match AsmFData "\<fcmovu\>"                           contains=@NoSpell
syn match AsmFData "\<fcmovnu\>"                          contains=@NoSpell

" 30.2.3.2. Basic arithmetic
syn match AsmFArith "\<fadd\>"                            contains=@NoSpell
syn match AsmFArith "\<faddp\>"                           contains=@NoSpell
syn match AsmFArith "\<fiadd\>"                           contains=@NoSpell
syn match AsmFArith "\<fsub\>"                            contains=@NoSpell
syn match AsmFArith "\<fsubp\>"                           contains=@NoSpell
syn match AsmFArith "\<fisub\>"                           contains=@NoSpell
syn match AsmFArith "\<fsubr\>"                           contains=@NoSpell
syn match AsmFArith "\<fsubrp\>"                          contains=@NoSpell
syn match AsmFArith "\<fisubr\>"                          contains=@NoSpell
syn match AsmFArith "\<fmul\>"                            contains=@NoSpell
syn match AsmFArith "\<fmulp\>"                           contains=@NoSpell
syn match AsmFArith "\<fimul\>"                           contains=@NoSpell
syn match AsmFArith "\<fdiv\>"                            contains=@NoSpell
syn match AsmFArith "\<fdivp\>"                           contains=@NoSpell
syn match AsmFArith "\<fidiv\>"                           contains=@NoSpell
syn match AsmFArith "\<fdivr\>"                           contains=@NoSpell
syn match AsmFArith "\<fdivrp\>"                          contains=@NoSpell
syn match AsmFArith "\<fidivr\>"                          contains=@NoSpell
syn match AsmFArith "\<fprem\>"                           contains=@NoSpell
syn match AsmFArith "\<fpremi\>"                          contains=@NoSpell
syn match AsmFArith "\<fabs\>"                            contains=@NoSpell
syn match AsmFArith "\<fchs\>"                            contains=@NoSpell
syn match AsmFArith "\<frndint\>"                         contains=@NoSpell
syn match AsmFArith "\<fscale\>"                          contains=@NoSpell
syn match AsmFArith "\<fsqrt\>"                           contains=@NoSpell
syn match AsmFArith "\<fxtract\>"                         contains=@NoSpell

" 30.2.3.3. Comparison
syn match AsmFComp "\<fcom\>"                             contains=@NoSpell
syn match AsmFComp "\<fcomp\>"                            contains=@NoSpell
syn match AsmFComp "\<fcompp\>"                           contains=@NoSpell
syn match AsmFComp "\<fucom\>"                            contains=@NoSpell
syn match AsmFComp "\<fucomp\>"                           contains=@NoSpell
syn match AsmFComp "\<fucompp\>"                          contains=@NoSpell
syn match AsmFComp "\<ficom\>"                            contains=@NoSpell
syn match AsmFComp "\<ficomp\>"                           contains=@NoSpell
syn match AsmFComp "\<fcomi\>"                            contains=@NoSpell
syn match AsmFComp "\<fucomi\>"                           contains=@NoSpell
syn match AsmFComp "\<fcomip\>"                           contains=@NoSpell
syn match AsmFComp "\<fucomip\>"                          contains=@NoSpell
syn match AsmFComp "\<ftst\>"                             contains=@NoSpell
syn match AsmFComp "\<fxam\>"                             contains=@NoSpell

syn match AsmFComp "\<comisd\>"                           contains=@NoSpell

" 30.2.3.4. Transcendental
syn match AsmFComp "\<fsin\>"                             contains=@NoSpell
syn match AsmFComp "\<fcos\>"                             contains=@NoSpell
syn match AsmFComp "\<fsincos\>"                          contains=@NoSpell
syn match AsmFComp "\<fptan\>"                            contains=@NoSpell
syn match AsmFComp "\<fpatan\>"                           contains=@NoSpell
syn match AsmFComp "\<f2xm1\>"                            contains=@NoSpell
syn match AsmFComp "\<fyl2x\>"                            contains=@NoSpell
syn match AsmFComp "\<fyl2xp1\>"                          contains=@NoSpell

" 30.2.3.5. Load Constants
syn match AsmFComp "\<fld1\>"                             contains=@NoSpell
syn match AsmFComp "\<fldz\>"                             contains=@NoSpell
syn match AsmFComp "\<fldpi\>"                            contains=@NoSpell
syn match AsmFComp "\<fldl2e\>"                           contains=@NoSpell
syn match AsmFComp "\<fldln2\>"                           contains=@NoSpell
syn match AsmFComp "\<fldl2t\>"                           contains=@NoSpell
syn match AsmFComp "\<fldlg2\>"                           contains=@NoSpell

" 30.2.3.6. FPU Control
syn match AsmFComp "\<fincstp\>"                          contains=@NoSpell
syn match AsmFComp "\<fdecstp\>"                          contains=@NoSpell
syn match AsmFComp "\<ffree\>"                            contains=@NoSpell
syn match AsmFComp "\<finit\>"                            contains=@NoSpell
syn match AsmFComp "\<fninit\>"                           contains=@NoSpell
syn match AsmFComp "\<fclex\>"                            contains=@NoSpell
syn match AsmFComp "\<fnclex\>"                           contains=@NoSpell
syn match AsmFComp "\<fstcw\>"                            contains=@NoSpell
syn match AsmFComp "\<fnstcw\>"                           contains=@NoSpell
syn match AsmFComp "\<fldcw\>"                            contains=@NoSpell
syn match AsmFComp "\<fstenv\>"                           contains=@NoSpell
syn match AsmFComp "\<fnstenv\>"                          contains=@NoSpell
syn match AsmFComp "\<fldenv\>"                           contains=@NoSpell
syn match AsmFComp "\<fsave\>"                            contains=@NoSpell
syn match AsmFComp "\<fnsave\>"                           contains=@NoSpell
syn match AsmFComp "\<frstor\>"                           contains=@NoSpell
syn match AsmFComp "\<fstsw\>"                            contains=@NoSpell
syn match AsmFComp "\<fnstsw\>"                           contains=@NoSpell
syn match AsmFComp "\<\%(wait\|fwait\)\>"                 contains=@NoSpell
syn match AsmFComp "\<fnop\>"                             contains=@NoSpell

" 30.2.4. System instructions
syn match AsmFComp "\<lgdt\>"                             contains=@NoSpell
syn match AsmFComp "\<sgdt\>"                             contains=@NoSpell
syn match AsmFComp "\<lldt\>"                             contains=@NoSpell
syn match AsmFComp "\<sldt\>"                             contains=@NoSpell
syn match AsmFComp "\<ltr\>"                              contains=@NoSpell
syn match AsmFComp "\<str\>"                              contains=@NoSpell
syn match AsmFComp "\<lidt\>"                             contains=@NoSpell
syn match AsmFComp "\<sidt\>"                             contains=@NoSpell
syn match AsmFComp "\<mov\>"                              contains=@NoSpell
syn match AsmFComp "\<lmsw\>"                             contains=@NoSpell
syn match AsmFComp "\<smsw\>"                             contains=@NoSpell
syn match AsmFComp "\<clts\>"                             contains=@NoSpell
syn match AsmFComp "\<arpl\>"                             contains=@NoSpell
syn match AsmFComp "\<lar\>"                              contains=@NoSpell
syn match AsmFComp "\<lsl\>"                              contains=@NoSpell
syn match AsmFComp "\<verr\>"                             contains=@NoSpell
syn match AsmFComp "\<verw\>"                             contains=@NoSpell
syn match AsmFComp "\<invd\>"                             contains=@NoSpell
syn match AsmFComp "\<wbinvd\>"                           contains=@NoSpell
syn match AsmFComp "\<invlpg\>"                           contains=@NoSpell
syn match AsmFComp "\<lock\>"                             contains=@NoSpell
syn match AsmFComp "\<hlt\>"                              contains=@NoSpell
syn match AsmFComp "\<rsm\>"                              contains=@NoSpell
syn match AsmFComp "\<rdmsr\>"                            contains=@NoSpell
syn match AsmFComp "\<wrmsr\>"                            contains=@NoSpell
syn match AsmFComp "\<rdpmc\>"                            contains=@NoSpell
syn match AsmFComp "\<rdtsc\>"                            contains=@NoSpell
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
hi  link  AsmDotStar Operator
syn match AsmDotStar "<.*>" contains=@NoSpell | "Function calls

hi  link  AsmRegs SpecialChar
syn match AsmRegs "\<rax\|rbx\|rcx\|rdx\|rsi\|rdi\|rsp\|rbp\|rip\>"  contains=@NoSpell | "Registers
syn match AsmRegs "\<RAX\|RBX\|RCX\|RDX\|RSI\|RDI\|RSP\|RBP\|RIP\>"  contains=@NoSpell | "Registers
syn match AsmRegs "\<eax\|ebx\|ecx\|edx\|esi\|edi\>"                 contains=@NoSpell | "Registers
syn match AsmRegs "\<EAX\|EBX\|ECX\|EDX\|ESI\|EDI\>"                 contains=@NoSpell | "Registers
syn match AsmRegs "%\w*\>"                                           contains=@NoSpell | "Registers

" Match 2 or more times.
hi  link  AsmHex Constant
syn match AsmHex "\<[0-9a-f][0-9a-f]\+\>"               contains=@NoSpell | "Hex numbers

" Convert Long To Quad (cltq): AT&T-style
" Convert Double to Quad Extend (cdqe): Intel
" quad (aka quad-word) == 8 bytes
" long (AT&T) == double-word (Intel) == 4 bytes
hi  link  AsmOther Statement
syn match AsmOther "\<cltq\>"                     contains=@NoSpell
syn match AsmOther "\<CLTQ\>"                     contains=@NoSpell

syn match AsmRegs "\<cs\>" contains=@NoSpell
syn match AsmRegs "\<CS\>" contains=@NoSpell | "Code segment (CS) is a 16-bit register containing address of 64 KB segment with processor instructions. The processor uses CS segment for all accesses to instructions referenced by instruction pointer (IP) register.

" .word
hi  link  AsmLabel Type
syn match AsmLabel "\.\w\+\>" contains=@NoSpell | "Function calls

