
syn case ignore

"-------------------------------------------------------------------------------------------------------------
" MIPS instruction set
" https://jarrettbillingsley.github.io/teaching/classes/cs0447/guides/instructions.html
"-------------------------------------------------------------------------------------------------------------
"Arithmetic and Bitwise Instructions
syn match YellowColorb "\<NEG[IU]\{0,2}\>"   contains=@NoSpell "a, b       a = -b     gives the negative of b.
syn match YellowColorb "\<ADD[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b + c  adds signed numbers.
syn match YellowColorb "\<SUB[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b - c  subtracts signed numbers.
syn match YellowColorb "\<MUL[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b * c  gives low 32 bits of signed multiplication.
syn match YellowColorb "\<DIV[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b / c  gives quotient of signed division.
syn match YellowColorb "\<REM[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b % c  gives remainder of signed division.
syn match YellowColorb "\<ADDU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b + c  adds unsigned numbers.
syn match YellowColorb "\<SUBU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b - c  subtracts unsigned numbers.
syn match YellowColorb "\<MULU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b * c  gives low 32 bits of unsigned multiplication.
syn match YellowColorb "\<DIVU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b / c  gives quotient of unsigned division.
syn match YellowColorb "\<REMU[IU]\{0,2}\>"  contains=@NoSpell "a, b, c    a = b % c  gives remainder of unsigned division.
syn match YellowColorb "\<MFHI[IU]\{0,2}\>"  contains=@NoSpell "a          a = HI     after mul, gives high 32 bits. after div, gives remainder.
syn match YellowColorb "\<MFLO[IU]\{0,2}\>"  contains=@NoSpell "a          a = LO     after mul, gives low 32 bits. after div, gives quotient.
syn match YellowColorb "\<NOT[IU]\{0,2}\>"   contains=@NoSpell "a, b       a = ~b     gives the bitwise complement of b (all bits flipped).
syn match YellowColorb "\<AND[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b & c  bitwise ANDs numbers.
syn match YellowColorb "\<OR[IU]\{0,2}\>"    contains=@NoSpell "a, b, c    a = b | c  bitwise ORs numbers.
syn match YellowColorb "\<XOR[IU]\{0,2}\>"   contains=@NoSpell "a, b, c    a = b ^ c  bitwise XORs numbers.

" Shift Instructions
syn match YellowColorb "\<SLL\>"             contains=@NoSpell "a, b, imm  a = b << imm   shift left by a constant amount.
syn match YellowColorb "\<SRL\>"             contains=@NoSpell "a, b, imm  a = b >>> imm  shift right unsigned (logical) by a constant amount.
syn match YellowColorb "\<SRA\>"             contains=@NoSpell "a, b, imm  a = b >> imm   shift right arithmetic by a constant amount.
syn match YellowColorb "\<SLLV\>"            contains=@NoSpell "a, b, reg  a = b << reg   shift left by the amount in a register.
syn match YellowColorb "\<SRLV\>"            contains=@NoSpell "a, b, reg  a = b >>> reg  shift right unsigned (logical) by the amount in a register.
syn match YellowColorb "\<SRAV\>"            contains=@NoSpell "a, b, reg  a = b >> reg   shift right arithmetic by the amount in a register.

" Data Transfer Instructions
syn match YellowColorb "\<LI\>"              contains=@NoSpell "a, imm     a = imm                 put a constant value into a register.
syn match YellowColorb "\<LA\>"              contains=@NoSpell "a, label   a = &label              put the address that a label points to into a register.
syn match YellowColorb "\<MOVE\>"            contains=@NoSpell "a, b       ` a = b `               copy value from one register to another.
syn match YellowColorb "\<LW\>"              contains=@NoSpell "reg, addr  reg = MEM[addr]         loads the 4 bytes at addr as a 32-bit value into reg.
syn match YellowColorb "\<LH\>"              contains=@NoSpell "reg, addr  reg = sxt(MEM[addr])    loads the 2 bytes at addr as a signed 16-bit value into reg.
syn match YellowColorb "\<LB\>"              contains=@NoSpell "reg, addr  reg = sxt(MEM[addr])    loads the 1 byte at addr as a signed 8-bit value into reg.
syn match YellowColorb "\<LHU\>"             contains=@NoSpell "reg, addr  reg = zxt(MEM[addr])    loads the 2 bytes at addr as an unsigned 16-bit value into reg.
syn match YellowColorb "\<LBU\>"             contains=@NoSpell "reg, addr  reg = zxt(MEM[addr])    loads the 1 byte at addr as an unsigned 8-bit value into reg.
syn match YellowColorb "\<SW\>"              contains=@NoSpell "reg, addr  MEM[addr] = reg         stores the value of reg into memory as 4 bytes starting at addr.
syn match YellowColorb "\<SH\>"              contains=@NoSpell "reg, addr  MEM[addr] = lo16(reg)   stores the low 16 bits of reg into memory as 2 bytes starting at addr.
syn match YellowColorb "\<SB\>"              contains=@NoSpell "reg, addr  MEM[addr] = lo8(reg)    stores the low 8 bits of reg into memory as 1 byte at addr.
syn match YellowColorb "\<PUSH\>"            contains=@NoSpell "reg        sp -= 4; MEM[sp] = reg  pushes the value of reg onto the call stack
syn match YellowColorb "\<POP\>"             contains=@NoSpell "reg        reg = MEM[sp]; sp += 4  pops the top call stack value and puts it into reg

" Unconditional Control Flow Instructions
syn match YellowColorb "\<B\>"               contains=@NoSpell "
syn match YellowColorb "\<J\>"               contains=@NoSpell "label      PC = label                goes to the instruction at label.
syn match YellowColorb "\<JAL\>"             contains=@NoSpell "label      ra = PC + 4; PC = label   function call to label. stores return address in ra.
syn match YellowColorb "\<JR\>"              contains=@NoSpell "reg        PC = reg                  goes to the instruction whose address is in reg, often ra.
syn match YellowColorb "\<SYSCALL\>"         contains=@NoSpell "           --->                      runs the system call function whose number is in v0.

" Conditional Control Flow Instructions
syn match YellowColorb "\<BEQ\>"             contains=@NoSpell "a, b, label   if(a == b) { PC = label } if a is equal to b, goes to label .
syn match YellowColorb "\<BNE\>"             contains=@NoSpell "a, b, label   if(a != b) { PC = label } if a is NOT equal to b, goes to label .
syn match YellowColorb "\<BLT\>"             contains=@NoSpell "a, b, label   if(a < b) { PC = label }  if a is less than b, goes to label .
syn match YellowColorb "\<BLE\>"             contains=@NoSpell "a, b, label   if(a <= b) { PC = label } if a is less than or equal to b, goes to label .
syn match YellowColorb "\<BGT\>"             contains=@NoSpell "a, b, label   if(a > b) { PC = label }  if a is greater than b, goes to label .
syn match YellowColorb "\<BGE\>"             contains=@NoSpell "a, b, label   if(a >= b) { PC = label } if a is greater than or equal to b, goes to label .
syn match YellowColorb "\<BLTU\>"            contains=@NoSpell "a, b, label   if(a < b) { PC = label }  same as blt but does an unsigned comparison.
syn match YellowColorb "\<BLEU\>"            contains=@NoSpell "a, b, label   if(a <= b) { PC = label } same as ble but does an unsigned comparison.
syn match YellowColorb "\<BGTU\>"            contains=@NoSpell "a, b, label   if(a > b) { PC = label }  same as bgt but does an unsigned comparison.
syn match YellowColorb "\<BGEU\>"            contains=@NoSpell "a, b, label   if(a >= b) { PC = label } same as bge but does an unsigned comparison.
"-------------------------------------------------------------------------------------------------------------





"-------------------------------------------------------------------------------------------------------------
" intel instruction set list
" https://www.intel.com/content/dam/www/public/us/en/documents/manuals/64-ia-32-architectures-software-developer-instruction-set-reference-manual-325383.pdf
" https://en.wikipedia.org/wiki/X86_instruction_listings
" https://cs.wellesley.edu/~cs342/fall12/papers/isa.pdf
" https://docs.oracle.com/cd/E53394_01/html/E54851/ennbz.html
"-------------------------------------------------------------------------------------------------------------


"-------------------------------------------------------------------------------------------------------------
" https://cse.unl.edu/~goddard/Courses/CSCE351/IntelArchitecture/InstructionSetSummary.pdf
"-------------------------------------------------------------------------------------------------------------
" 30.2.1. Integer Instructions
" Integer instructions perform the integer arithmetic, logic, and program flow control operations that programmers commonly use to write application and system software to run on an Intel Architecture processor.

" 30.2.1.1. Data Transfer Instructions
syn match GreenColorb "\<MOV\>"                       contains=@NoSpell "Move
syn match GreenColorb "\<MOVB\>"                      contains=@NoSpell "Move into the single byte
syn match GreenColorb "\<MOVW\>"                      contains=@NoSpell "Move into the 2 bytes
syn match GreenColorb "\<MOVL\>"                      contains=@NoSpell "Move into the 4 bytes
syn match GreenColorb "\<\(CMOVE[WLQ]\?\|CMOVZ[WLQ]\?\)\>"   contains=@NoSpell "Conditional move if equal/Conditional move if zero
syn match GreenColorb "\<\(CMOVNE[WLQ]\?\|CMOVNZ[WLQ]\?\)\>" contains=@NoSpell "Conditional move if not equal/Conditional move if not zero
syn match GreenColorb "\<\(CMOVA[WLQ]\?\|CMOVNBE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if above/Conditional move if not below or equal
syn match GreenColorb "\<\(CMOVAE[WLQ]\?\|CMOVNB[WLQ]\?\)\>" contains=@NoSpell "Conditional move if above or equal/Conditional move if not below
syn match GreenColorb "\<\(CMOVB[WLQ]\?\|CMOVNAE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if below/Conditional move if not above or equal
syn match GreenColorb "\<\(CMOVBE[WLQ]\?\|CMOVNA[WLQ]\?\)\>" contains=@NoSpell "Conditional move if below or equal/Conditional move if not above
syn match GreenColorb "\<\(CMOVG[WLQ]\?\|CMOVNLE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if greater/Conditional move if not less or equal
syn match GreenColorb "\<\(CMOVGE[WLQ]\?\|CMOVNL[WLQ]\?\)\>" contains=@NoSpell "Conditional move if greater or equal/Conditional move if not less
syn match GreenColorb "\<\(CMOVL[WLQ]\?\|CMOVNGE[WLQ]\?\)\>" contains=@NoSpell "Conditional move if less/Conditional move if not greater or equal
syn match GreenColorb "\<\(CMOVLE[WLQ]\?\|CMOVNG[WLQ]\?\)\>" contains=@NoSpell "Conditional move if less or equal/Conditional move if not greater
syn match GreenColorb "\<CMOVC[WLQ]\?\>"              contains=@NoSpell "Conditional move if carry
syn match GreenColorb "\<CMOVNC[WLQ]\?\>"             contains=@NoSpell "Conditional move if not carry
syn match GreenColorb "\<CMOVO[WLQ]\?\>"              contains=@NoSpell "Conditional move if overflow
syn match GreenColorb "\<CMOVNO[WLQ]\?\>"             contains=@NoSpell "Conditional move if not overflow
syn match GreenColorb "\<CMOVS[WLQ]\?\>"              contains=@NoSpell "Conditional move if sign (negative)
syn match GreenColorb "\<CMOVNS[WLQ]\?\>"             contains=@NoSpell "Conditional move if not sign (non-negative)
syn match GreenColorb "\<\(CMOVP[WLQ]\?\|CMOVPE[WLQ]\?\)\>"  contains=@NoSpell "Conditional move if parity/Conditional move if parity even
syn match GreenColorb "\<\(CMOVNP[WLQ]\?\|CMOVPO[WLQ]\?\)\>" contains=@NoSpell "Conditional move if not parity/Conditional move if parity odd
syn match GreenColorb "\<XCHG[BWLQ]\?\>"              contains=@NoSpell "Exchange
syn match GreenColorb "\<BSWAP[LQ]\?\>"               contains=@NoSpell "Byte swap
syn match GreenColorb "\<XADD[BWLQ]\?\>"              contains=@NoSpell "Exchange and add
syn match GreenColorb "\<CMPXCHG[BWLQ]\?\>"           contains=@NoSpell "Compare and exchange
syn match GreenColorb "\<CMPXCHG8B\>"                 contains=@NoSpell "Compare and exchange 8 bytes
syn match GreenColorb "\<PUSH[WLQ]\?\>"               contains=@NoSpell "Push onto stack
syn match GreenColorb "\<POP[WLQ]\?\>"                contains=@NoSpell "Pop off of stack
syn match GreenColorb "\<\(PUSHA\|PUSHAD\)\>"         contains=@NoSpell "Push general-purpose registers onto stack
syn match GreenColorb "\<\(POPA\|POPAD\)\>"           contains=@NoSpell "Pop general-purpose registers from stack
syn match GreenColorb "\<IN\>"                        contains=@NoSpell "Read from a port
syn match GreenColorb "\<OUT\>"                       contains=@NoSpell "Write to a port
syn match GreenColorb "\<\(CWD\|CDQ\)\>"              contains=@NoSpell "Convert word to doubleword/Convert doubleword to quadword
syn match GreenColorb "\<\(CBW\|CWDE\)\>"             contains=@NoSpell "Convert byte to word/Convert word to doubleword in EAX register
syn match GreenColorb "\<MOVSX\>"                     contains=@NoSpell "Move and sign extend
syn match GreenColorb "\<MOVZX\>"                     contains=@NoSpell "Move and zero extend

syn match GreenColorb "\<MOVABS[BWLQ]\?\>"            contains=@NoSpell "move immediate value to register    valid only under –m64
syn match GreenColorb "\<MOVABS[BWLQ]\?A\>"           contains=@NoSpell "move immediate value to register {AL, AX, GAX, RAX}   valid only under –m64
syn match GreenColorb "\<\(MOVSB[WLQ]\?\|MOVSW[LQ]\?\)\>" contains=@NoSpell "move and sign extend    valid only under –m64
syn match GreenColorb "\<\(MOVZB[WLQ]\?\|MOVZW[LQ]\?\)\>" contains=@NoSpell "move and zero extend    valid only under –m64
syn match GreenColorb "\<POPAW\>"                     contains=@NoSpell "pop general-purpose registers from stack     invalid under –m64
syn match GreenColorb "\<POPAL, POPA\>"               contains=@NoSpell "pop general-purpose registers from stack     invalid under –m64
syn match GreenColorb "\<PUSHAW\>"                    contains=@NoSpell "push general-purpose registers onto stack    invalid under –m64
syn match GreenColorb "\<PUSHAL, PUSHA\>"             contains=@NoSpell "push general-purpose registers onto stack    invalid under –m64
syn match GreenColorb "\<XCHG[BWLQ]\?A\>"             contains=@NoSpell "exchange    xchgqA valid only under –m64

syn match GreenColorb "\<MOVAPS\>"                    contains=@NoSpell
syn match GreenColorb "\<MOVSLQ\>"                    contains=@NoSpell

" 30.2.1.2. Binary Arithmetic Instructions
syn match OrangeColorb "\<ADD[BWQL]\?\>"              contains=@NoSpell "Integer add
syn match OrangeColorb "\<ADC[BWLQ]\?\>"              contains=@NoSpell "Add with carry
syn match OrangeColorb "\<SUB[BWLQ]\?\>"              contains=@NoSpell "Subtract
syn match OrangeColorb "\<SBB[BWLQ]\?\>"              contains=@NoSpell "Subtract with borrow
syn match OrangeColorb "\<IMUL[BWLQ]\?\>"             contains=@NoSpell "Signed multiply
syn match OrangeColorb "\<MUL[BWLQ]\?\>"              contains=@NoSpell "Unsigned multiply
syn match OrangeColorb "\<IDIV[BWLQ]\?\>"             contains=@NoSpell "Signed divide
syn match OrangeColorb "\<DIV[BWLQ]\?\>"              contains=@NoSpell "Unsigned divide
syn match OrangeColorb "\<INC[BWLQ]\?\>"              contains=@NoSpell "Increment
syn match OrangeColorb "\<DEC[BWLQ]\?\>"              contains=@NoSpell "Decrement
syn match OrangeColorb "\<NEG[BWLQ]\?\>"              contains=@NoSpell "Negate
syn match OrangeColorb "\<CMP[BWQL]\?\>"              contains=@NoSpell "Compare

" 30.2.1.3. Decimal Arithmetic
syn match OrangeColorb "\<DAA\>"                      contains=@NoSpell "Decimal adjust after addition
syn match OrangeColorb "\<DAS\>"                      contains=@NoSpell "Decimal adjust after subtraction
syn match OrangeColorb "\<AAA\>"                      contains=@NoSpell "ASCII adjust after addition
syn match OrangeColorb "\<AAS\>"                      contains=@NoSpell "ASCII adjust after subtraction
syn match OrangeColorb "\<AAM\>"                      contains=@NoSpell "ASCII adjust after multiplication
syn match OrangeColorb "\<AAD\>"                      contains=@NoSpell "ASCII adjust before division

" 30.2.1.4. Logic Instructions
syn match OrangeColorb "\<AND[BWLQ]\?\>"              contains=@NoSpell "And
syn match OrangeColorb "\<OR[BWLQ]\?\>"               contains=@NoSpell "Or
syn match OrangeColorb "\<XOR[BWLQ]\?\>"              contains=@NoSpell "Exclusive or
syn match OrangeColorb "\<NOT[BWLQ]\?\>"              contains=@NoSpell "Not

" 30.2.1.5. Shift and Rotate Instructions
syn match OrangeColorb "\<SAR[BWLQ]\?\>"              contains=@NoSpell "Shift arithmetic right
syn match OrangeColorb "\<SHR[BWLQ]\?\>"              contains=@NoSpell "Shift logical right
syn match OrangeColorb "\<\(SAL\|SHL\)[BWLQ]\?\>"     contains=@NoSpell "Shift arithmetic left/Shift logical left
syn match OrangeColorb "\<SHRD[BWLQ]\?\>"             contains=@NoSpell "Shift right double
syn match OrangeColorb "\<SHLD[BWLQ]\?\>"             contains=@NoSpell "Shift left double
syn match OrangeColorb "\<ROR[BWLQ]\?\>"              contains=@NoSpell "Rotate right
syn match OrangeColorb "\<ROL[BWLQ]\?\>"              contains=@NoSpell "Rotate left
syn match OrangeColorb "\<RCR[BWLQ]\?\>"              contains=@NoSpell "Rotate through carry right
syn match OrangeColorb "\<RCL[BWLQ]\?\>"              contains=@NoSpell "Rotate through carry left

" 30.2.1.6. Bit and Byte Instructions
syn match PinkColorb "\<BT[WLQ]\?\>"                  contains=@NoSpell "Bit test
syn match PinkColorb "\<BTS[WLQ]\?\>"                 contains=@NoSpell "Bit test and set
syn match PinkColorb "\<BTR[WLQ]\?\>"                 contains=@NoSpell "Bit test and reset
syn match PinkColorb "\<BTC[WLQ]\?\>"                 contains=@NoSpell "Bit test and complement
syn match PinkColorb "\<BSF[WLQ]\?\>"                 contains=@NoSpell "Bit scan forward
syn match PinkColorb "\<BSR[WLQ]\?\>"                 contains=@NoSpell "Bit scan reverse
syn match PinkColorb "\<\(SETE\|SETZ\)\>"             contains=@NoSpell "Set byte if equal/Set byte if zero
syn match PinkColorb "\<\(SETNE\|SETNZ\)\>"           contains=@NoSpell "Set byte if not equal/Set byte if not zero
syn match PinkColorb "\<\(SETA\|SETNBE\)\>"           contains=@NoSpell "Set byte if above/Set byte if not below or equal
syn match PinkColorb "\<\(SETAE\|SETNB\|SETNC\)\>"    contains=@NoSpell "Set byte if above or equal/Set byte if not below/Set byte if not carry
syn match PinkColorb "\<\(SETB\|SETNAE\|SETC\)\>"     contains=@NoSpell "Set byte if below/Set byte if not above or equal/Set byte if carry
syn match PinkColorb "\<\(SETBE\|SETNA\)\>"           contains=@NoSpell "Set byte if below or equal/Set byte if not above
syn match PinkColorb "\<\(SETG\|SETNLE\)\>"           contains=@NoSpell "Set byte if greater/Set byte if not less or equal
syn match PinkColorb "\<\(SETGE\|SETNL\)\>"           contains=@NoSpell "Set byte if greater or equal/Set byte if not less
syn match PinkColorb "\<\(SETL\|SETNGE\)\>"           contains=@NoSpell "Set byte if less/Set byte if not greater or equal
syn match PinkColorb "\<\(SETLE\|SETNG\)\>"           contains=@NoSpell "Set byte if less or equal/Set byte if not greater
syn match PinkColorb "\<SETS\>"                       contains=@NoSpell "Set byte if sign (negative)
syn match PinkColorb "\<SETNS\>"                      contains=@NoSpell "Set byte if not sign (non-negative)
syn match PinkColorb "\<SETO\>"                       contains=@NoSpell "Set byte if overflow
syn match PinkColorb "\<SETNO\>"                      contains=@NoSpell "Set byte if not overflow
syn match PinkColorb "\<\(SETPE\|SETP\)\>"            contains=@NoSpell "Set byte if parity even/Set byte if parity
syn match PinkColorb "\<\(SETPO\|SETNP\)\>"           contains=@NoSpell "Set byte if parity odd/Set byte if not parity
syn match PinkColorb "\<TEST[WLQ]\?\>"                contains=@NoSpell "Logical compare

" 30.2.1.7. Control Transfer Instructions
syn match FluoGreenColorb "\<JMP\>"                   contains=@NoSpell "Jump
syn match FluoGreenColorb "\<\(JE\|JZ\)\>"            contains=@NoSpell "Jump if equal/Jump if zero
syn match FluoGreenColorb "\<\(JNE\|JNZ\)\>"          contains=@NoSpell "Jump if not equal/Jump if not zero
syn match FluoGreenColorb "\<\(JA\|JNBE\)\>"          contains=@NoSpell "Jump if above/Jump if not below or equal
syn match FluoGreenColorb "\<\(JAE\|JNB\)\>"          contains=@NoSpell "Jump if above or equal/Jump if not below
syn match FluoGreenColorb "\<\(JB\|JNAE\)\>"          contains=@NoSpell "Jump if below/Jump if not above or equal
syn match FluoGreenColorb "\<\(JBE\|JNA\)\>"          contains=@NoSpell "Jump if below or equal/Jump if not above
syn match FluoGreenColorb "\<\(JG\|JNLE\)\>"          contains=@NoSpell "Jump if greater/Jump if not less or equal
syn match FluoGreenColorb "\<\(JGE\|JNL\)\>"          contains=@NoSpell "Jump if greater or equal/Jump if not less
syn match FluoGreenColorb "\<\(JL\|JNGE\)\>"          contains=@NoSpell "Jump if less/Jump if not greater or equal
syn match FluoGreenColorb "\<\(JLE\|JNG\)\>"          contains=@NoSpell "Jump if less or equal/Jump if not greater
syn match FluoGreenColorb "\<JC\>"                    contains=@NoSpell "Jump if carry
syn match FluoGreenColorb "\<JNC\>"                   contains=@NoSpell "Jump if not carry
syn match FluoGreenColorb "\<JO\>"                    contains=@NoSpell "Jump if overflow
syn match FluoGreenColorb "\<JNO\>"                   contains=@NoSpell "Jump if not overflow
syn match FluoGreenColorb "\<JS\>"                    contains=@NoSpell "Jump if sign (negative)
syn match FluoGreenColorb "\<JNS\>"                   contains=@NoSpell "Jump if not sign (non-negative)
syn match FluoGreenColorb "\<\(JPO\|JNP\)\>"          contains=@NoSpell "Jump if parity odd/Jump if not parity
syn match FluoGreenColorb "\<\(JPE\|JP\)\>"           contains=@NoSpell "Jump if parity even/Jump if parity
syn match FluoGreenColorb "\<\(JCXZ\|JECXZ\)\>"       contains=@NoSpell "Jump register CX zero/Jump register ECX zero
syn match FluoGreenColorb "\<LOOP\>"                  contains=@NoSpell "Loop with ECX counter
syn match FluoGreenColorb "\<\(LOOPZ\|LOOPE\)\>"      contains=@NoSpell "Loop with ECX and zero/Loop with ECX and equal
syn match FluoGreenColorb "\<\(LOOPNZ\|LOOPNE\)\>"    contains=@NoSpell "Loop with ECX and not zero/Loop with ECX and not equal
syn match FluoGreenColorb "\<CALL\>"                  contains=@NoSpell "Call procedure
syn match FluoGreenColorb "\<RET\>"                   contains=@NoSpell "Return
syn match FluoGreenColorb "\<IRET\>"                  contains=@NoSpell "Return from interrupt
syn match FluoGreenColorb "\<INT\>"                   contains=@NoSpell "Software interrupt
syn match FluoGreenColorb "\<INTO\>"                  contains=@NoSpell "Interrupt on overflow
syn match FluoGreenColorb "\<BOUND[WL]\?\>"           contains=@NoSpell "Detect value out of range
syn match FluoGreenColorb "\<ENTER\>"                 contains=@NoSpell "High-level procedure entry
syn match FluoGreenColorb "\<LEAVE\>"                 contains=@NoSpell "High-level procedure exit

" 30.2.1.8. String Instructions
syn match RedOrangeColorb "\<\(MOVSQ\)\>"             contains=@NoSpell "Move string/Move byte string
syn match RedOrangeColorb "\<\(MOVS[Q]\?\|MOVSB\)\>"  contains=@NoSpell "Move string/Move byte string
syn match RedOrangeColorb "\<\(MOVS\|MOVSW\)\>"       contains=@NoSpell "Move string/Move word string
syn match RedOrangeColorb "\<\(MOVS\|MOVSD\)\>"       contains=@NoSpell "Move string/Move doubleword string
syn match RedOrangeColorb "\<\(CMPS[Q]\?\|CMPSB\)\>"  contains=@NoSpell "Compare string/Compare byte string
syn match RedOrangeColorb "\<\(CMPS\|CMPSW\)\>"       contains=@NoSpell "Compare string/Compare word string
syn match RedOrangeColorb "\<\(CMPS\|CMPSD\)\>"       contains=@NoSpell "Compare string/Compare doubleword string
syn match RedOrangeColorb "\<\(SCAS[Q]\?\|SCASB\)\>"  contains=@NoSpell "Scan string/Scan byte string
syn match RedOrangeColorb "\<\(SCAS\|SCASW\)\>"       contains=@NoSpell "Scan string/Scan word string
syn match RedOrangeColorb "\<\(SCAS\|SCASD\)\>"       contains=@NoSpell "Scan string/Scan doubleword string
syn match RedOrangeColorb "\<\(LODS[Q]\?\|LODSB\)\>"  contains=@NoSpell "Load string/Load byte string
syn match RedOrangeColorb "\<\(LODS\|LODSW\)\>"       contains=@NoSpell "Load string/Load word string
syn match RedOrangeColorb "\<\(LODS\|LODSD\)\>"       contains=@NoSpell "Load string/Load doubleword string
syn match RedOrangeColorb "\<\(STOS[Q]\?\|STOSB\)\>"  contains=@NoSpell "Store string/Store byte string
syn match RedOrangeColorb "\<\(STOS\|STOSW\)\>"       contains=@NoSpell "Store string/Store word string
syn match RedOrangeColorb "\<\(STOS\|STOSD\)\>"       contains=@NoSpell "Store string/Store doubleword string
syn match RedOrangeColorb "\<REP\>"                   contains=@NoSpell "Repeat while ECX not zero
syn match RedOrangeColorb "\<\(REPE\|REPZ\)\>"        contains=@NoSpell "Repeat while equal/Repeat while zero
syn match RedOrangeColorb "\<\(REPNE\|REPNZ\)\>"      contains=@NoSpell "Repeat while not equal/Repeat while not zero
syn match RedOrangeColorb "\<\(INS\|INSB\)\>"         contains=@NoSpell "Input string from port/Input byte string from port
syn match RedOrangeColorb "\<\(INS\|INSW\)\>"         contains=@NoSpell "Input string from port/Input word string from port
syn match RedOrangeColorb "\<\(INS\|INSD\)\>"         contains=@NoSpell "Input string from port/Input doubleword string from port
syn match RedOrangeColorb "\<\(OUTS\|OUTSB\)\>"       contains=@NoSpell "Output string to port/Output byte string to port
syn match RedOrangeColorb "\<\(OUTS\|OUTSW\)\>"       contains=@NoSpell "Output string to port/Output word string to port
syn match RedOrangeColorb "\<\(OUTS\|OUTSD\)\>"       contains=@NoSpell "Output string to port/Output doubleword string to port

" 30.2.1.9. Flag Control Instructions
syn match YellowColorb "\<STC\>"                      contains=@NoSpell "Set carry flag
syn match YellowColorb "\<CLC\>"                      contains=@NoSpell "Clear the carry flag
syn match YellowColorb "\<CMC\>"                      contains=@NoSpell "Complement the carry flag
syn match YellowColorb "\<CLD\>"                      contains=@NoSpell "Clear the direction flag
syn match YellowColorb "\<STD\>"                      contains=@NoSpell "Set direction flag
syn match YellowColorb "\<LAHF\>"                     contains=@NoSpell "Load flags into AH register
syn match YellowColorb "\<SAHF\>"                     contains=@NoSpell "Store AH register into flags
syn match YellowColorb "\<\(PUSHF[LQ]\?\|PUSHFD\)\>"  contains=@NoSpell "Push EFLAGS onto stack
syn match YellowColorb "\<\(POPF[LQ]\?\|POPFD\)\>"    contains=@NoSpell "Pop EFLAGS from stack
syn match YellowColorb "\<STI\>"                      contains=@NoSpell "Set interrupt flag
syn match YellowColorb "\<CLI\>"                      contains=@NoSpell "Clear the interrupt flag

" 30.2.1.10. Segment Register Instructions
syn match RedOrangeColorb "\<LDS[WL]\?\>"             contains=@NoSpell "Load far pointer using DS
syn match RedOrangeColorb "\<LES[WL]\?\>"             contains=@NoSpell "Load far pointer using ES
syn match RedOrangeColorb "\<LFS[WL]\?\>"             contains=@NoSpell "Load far pointer using FS
syn match RedOrangeColorb "\<LGS[WL]\?\>"             contains=@NoSpell "Load far pointer using GS
syn match RedOrangeColorb "\<LSS[WL]\?\>"             contains=@NoSpell "Load far pointer using SS

" 30.2.1.11. Miscellaneous Instructions
syn match YellowColorb "\<LEA[WLQ]\?\>"               contains=@NoSpell "Load effective address
syn match YellowColorb "\<NOP\>"                      contains=@NoSpell "No operation
syn match YellowColorb "\<NOPL\>"                     contains=@NoSpell "Long-sized No operation
syn match YellowColorb "\<NOPW\>"                     contains=@NoSpell "Word-sized No operation
syn match YellowColorb "\<UB2\>"                      contains=@NoSpell "Undefined instruction
syn match YellowColorb "\<\(XLAT\|XLATB\)\>"          contains=@NoSpell "Table lookup translation
syn match YellowColorb "\<CPUID\>"                    contains=@NoSpell "Processor Identification


syn match YellowColorb "\<ENDBR32\>"                  contains=@NoSpell "Terminate indirect branch in 32-bit mode[b]
syn match YellowColorb "\<ENDBR64\>"                  contains=@NoSpell "Terminate indirect branch in 64-bit mode[b]
syn match YellowColorb "\<NOTRACK\>"                  contains=@NoSpell "Prefix used with indirect CALL/JMP nestructions (opcodes FF /2 and FF /4) to indicate that the branch target is not required to start with an ENDBR32/64 instruction. Prefix only honored when NO_TRACK_EN flag is set.


" 30.2.2. MMX™ Technology Instructions
" The MMX instructions execute on those Intel Architecture processors that implement the Intel MMX technology. These instructions operate on packed-byte, packed-word, packed-doubleword, and quadword operands

" 30.2.2.1. MMX™ Data Transfer Instructions
syn match DarkBlueColorb "\<MOVD\>"                   contains=@NoSpell "Move doubleword
syn match DarkBlueColorb "\<MOVQ\>"                   contains=@NoSpell "Move quadword

" 30.2.2.2. MMX™ Conversion Instructions
syn match DarkBlueColorb "\<PACKSSWB\>"               contains=@NoSpell "Pack words into bytes with signed saturation
syn match DarkBlueColorb "\<PACKSSDW\>"               contains=@NoSpell "Pack doublewords into words with signed saturation
syn match DarkBlueColorb "\<PACKUSWB\>"               contains=@NoSpell "Pack words into bytes with unsigned saturation
syn match DarkBlueColorb "\<PUNPCKHBW\>"              contains=@NoSpell "Unpack high-order bytes from words
syn match DarkBlueColorb "\<PUNPCKHWD\>"              contains=@NoSpell "Unpack high-order words from doublewords
syn match DarkBlueColorb "\<PUNPCKHDQ\>"              contains=@NoSpell "Unpack high-order doublewords from quadword
syn match DarkBlueColorb "\<PUNPCKLBW\>"              contains=@NoSpell "Unpack low-order bytes from words
syn match DarkBlueColorb "\<PUNPCKLWD\>"              contains=@NoSpell "Unpack low-order words from doublewords
syn match DarkBlueColorb "\<PUNPCKLDQ\>"              contains=@NoSpell "Unpack low-order doublewords from quadword

" 30.2.2.3. MMX™ Packed Arithmetic Instructions
syn match DarkBlueColorb "\<PADDB\>"                  contains=@NoSpell "Add packed bytes
syn match DarkBlueColorb "\<PADDW\>"                  contains=@NoSpell "Add packed words
syn match DarkBlueColorb "\<PADDD\>"                  contains=@NoSpell "Add packed doublewords
syn match DarkBlueColorb "\<PADDSB\>"                 contains=@NoSpell "Add packed bytes with saturation
syn match DarkBlueColorb "\<PADDSW\>"                 contains=@NoSpell "Add packed words with saturation
syn match DarkBlueColorb "\<PADDUSB\>"                contains=@NoSpell "Add packed unsigned bytes with saturation
syn match DarkBlueColorb "\<PADDUSW\>"                contains=@NoSpell "Add packed unsigned words with saturation
syn match DarkBlueColorb "\<PSUBB\>"                  contains=@NoSpell "Subtract packed bytes
syn match DarkBlueColorb "\<PSUBW\>"                  contains=@NoSpell "Subtract packed words
syn match DarkBlueColorb "\<PSUBD\>"                  contains=@NoSpell "Subtract packed doublewords
syn match DarkBlueColorb "\<PSUBSB\>"                 contains=@NoSpell "Subtract packed bytes with saturation
syn match DarkBlueColorb "\<PSUBSW\>"                 contains=@NoSpell "Subtract packed words with saturation
syn match DarkBlueColorb "\<PSUBUSB\>"                contains=@NoSpell "Subtract packed unsigned bytes with saturation
syn match DarkBlueColorb "\<PSUBUSW\>"                contains=@NoSpell "Subtract packed unsigned words with saturation
syn match DarkBlueColorb "\<PMULHW\>"                 contains=@NoSpell "Multiply packed words and store high result
syn match DarkBlueColorb "\<PMULLW\>"                 contains=@NoSpell "Multiply packed words and store low result
syn match DarkBlueColorb "\<PMADDWD\>"                contains=@NoSpell "Multiply and add packed words

" 30.2.2.4. MMX™ Comparison Instructions
syn match DarkBlueColorb "\<PCMPEQB\>"                contains=@NoSpell "Compare packed bytes for equal
syn match DarkBlueColorb "\<PCMPEQW\>"                contains=@NoSpell "Compare packed words for equal
syn match DarkBlueColorb "\<PCMPEQD\>"                contains=@NoSpell "Compare packed doublewords for equal
syn match DarkBlueColorb "\<PCMPGTB\>"                contains=@NoSpell "Compare packed bytes for greater than
syn match DarkBlueColorb "\<PCMPGTW\>"                contains=@NoSpell "Compare packed words for greater than
syn match DarkBlueColorb "\<PCMPGTD\>"                contains=@NoSpell "Compare packed doublewords for greater than

" 30.2.2.5. MMX™ Logic Instructions
syn match DarkBlueColorb "\<PAND\>"                   contains=@NoSpell "Bitwise logical and
syn match DarkBlueColorb "\<PANDN\>"                  contains=@NoSpell "Bitwise logical and not
syn match DarkBlueColorb "\<POR\>"                    contains=@NoSpell "Bitwise logical or
syn match DarkBlueColorb "\<PXOR\>"                   contains=@NoSpell "Bitwise logical exclusive or

" 30.2.2.6. MMX™ Shift and Rotate Instructions
syn match DarkBlueColorb "\<PSLLW\>"                  contains=@NoSpell "Shift packed words left logical
syn match DarkBlueColorb "\<PSLLD\>"                  contains=@NoSpell "Shift packed doublewords left logical
syn match DarkBlueColorb "\<PSLLQ\>"                  contains=@NoSpell "Shift packed quadword left logical
syn match DarkBlueColorb "\<PSRLW\>"                  contains=@NoSpell "Shift packed words right logical
syn match DarkBlueColorb "\<PSRLD\>"                  contains=@NoSpell "Shift packed doublewords right logical
syn match DarkBlueColorb "\<PSRLQ\>"                  contains=@NoSpell "Shift packed quadword right logical
syn match DarkBlueColorb "\<PSRAW\>"                  contains=@NoSpell "Shift packed words right arithmetic
syn match DarkBlueColorb "\<PSRAD\>"                  contains=@NoSpell "Shift packed doublewords right arithmetic

" 30.2.2.7. MMX™ State Management
syn match DarkBlueColorb "\<EMMS\>"                   contains=@NoSpell "Empty MMX state

" 30.2.3. Floating-Point Instructions

" The floating-point instructions are those that are executed by the processor's floating-point unit (FPU). These instructions operate on floating-point (real), extended integer, and binary-coded decimal (BCD) operands. As with the integer instructions, the following list of floating-point instructions is divided into subgroups.

" 30.2.3.1. Data Transfer
syn match GreenColorb "\<FLD\>"                       contains=@NoSpell "Load real
syn match GreenColorb "\<FST\>"                       contains=@NoSpell "Store real
syn match GreenColorb "\<FSTP\>"                      contains=@NoSpell "Store real and pop
syn match GreenColorb "\<FILD\>"                      contains=@NoSpell "Load integer
syn match GreenColorb "\<FIST\>"                      contains=@NoSpell "Store integer
syn match GreenColorb "\<FISTP\>"                     contains=@NoSpell "Store integer and pop
syn match GreenColorb "\<FBLD\>"                      contains=@NoSpell "Load BCD
syn match GreenColorb "\<FBSTP\>"                     contains=@NoSpell "Store BCD and pop
syn match GreenColorb "\<FXCH\>"                      contains=@NoSpell "Exchange registers
syn match GreenColorb "\<FCMOVE\>"                    contains=@NoSpell "Floating-point conditional move if equal
syn match GreenColorb "\<FCMOVNE\>"                   contains=@NoSpell "Floating-point conditional move if not equal
syn match GreenColorb "\<FCMOVB\>"                    contains=@NoSpell "Floating-point conditional move if below
syn match GreenColorb "\<FCMOVBE\>"                   contains=@NoSpell "Floating-point conditional move if below or equal
syn match GreenColorb "\<FCMOVNB\>"                   contains=@NoSpell "Floating-point conditional move if not below
syn match GreenColorb "\<FCMOVNBE\>"                  contains=@NoSpell "Floating-point conditional move if not below or equal
syn match GreenColorb "\<FCMOVU\>"                    contains=@NoSpell "Floating-point conditional move if unordered
syn match GreenColorb "\<FCMOVNU\>"                   contains=@NoSpell "Floating-point conditional move if not unordered

" 30.2.3.2. Basic Arithmetic
syn match OrangeColorb "\<FADD\>"                     contains=@NoSpell "Add real
syn match OrangeColorb "\<FADDP\>"                    contains=@NoSpell "Add real and pop
syn match OrangeColorb "\<FIADD\>"                    contains=@NoSpell "Add integer
syn match OrangeColorb "\<FSUB\>"                     contains=@NoSpell "Subtract real
syn match OrangeColorb "\<FSUBP\>"                    contains=@NoSpell "Subtract real and pop
syn match OrangeColorb "\<FISUB\>"                    contains=@NoSpell "Subtract integer
syn match OrangeColorb "\<FSUBR\>"                    contains=@NoSpell "Subtract real reverse
syn match OrangeColorb "\<FSUBRP\>"                   contains=@NoSpell "Subtract real reverse and pop
syn match OrangeColorb "\<FISUBR\>"                   contains=@NoSpell "Subtract integer reverse
syn match OrangeColorb "\<FMUL\>"                     contains=@NoSpell "Multiply real
syn match OrangeColorb "\<FMULP\>"                    contains=@NoSpell "Multiply real and pop
syn match OrangeColorb "\<FIMUL\>"                    contains=@NoSpell "Multiply integer
syn match OrangeColorb "\<FDIV\>"                     contains=@NoSpell "Divide real
syn match OrangeColorb "\<FDIVP\>"                    contains=@NoSpell "Divide real and pop
syn match OrangeColorb "\<FIDIV\>"                    contains=@NoSpell "Divide integer
syn match OrangeColorb "\<FDIVR\>"                    contains=@NoSpell "Divide real reverse
syn match OrangeColorb "\<FDIVRP\>"                   contains=@NoSpell "Divide real reverse and pop
syn match OrangeColorb "\<FIDIVR\>"                   contains=@NoSpell "Divide integer reverse
syn match OrangeColorb "\<FPREM\>"                    contains=@NoSpell "Partial remainder
syn match OrangeColorb "\<FPREMI\>"                   contains=@NoSpell "IEEE Partial remainder
syn match OrangeColorb "\<FABS\>"                     contains=@NoSpell "Absolute value
syn match OrangeColorb "\<FCHS\>"                     contains=@NoSpell "Change sign
syn match OrangeColorb "\<FRNDINT\>"                  contains=@NoSpell "Round to integer
syn match OrangeColorb "\<FSCALE\>"                   contains=@NoSpell "Scale by power of two
syn match OrangeColorb "\<FSQRT\>"                    contains=@NoSpell "Square root
syn match OrangeColorb "\<FXTRACT\>"                  contains=@NoSpell "Extract exponent and significand

" 30.2.3.3. Comparison
syn match YellowColorb "\<FCOM\>"                     contains=@NoSpell "Compare real
syn match YellowColorb "\<FCOMP\>"                    contains=@NoSpell "Compare real and pop
syn match YellowColorb "\<FCOMPP\>"                   contains=@NoSpell "Compare real and pop twice
syn match YellowColorb "\<FUCOM\>"                    contains=@NoSpell "Unordered compare real
syn match YellowColorb "\<FUCOMP\>"                   contains=@NoSpell "Unordered compare real and pop
syn match YellowColorb "\<FUCOMPP\>"                  contains=@NoSpell "Unordered compare real and pop twice
syn match YellowColorb "\<FICOM\>"                    contains=@NoSpell "Compare integer
syn match YellowColorb "\<FICOMP\>"                   contains=@NoSpell "Compare integer and pop
syn match YellowColorb "\<FCOMI\>"                    contains=@NoSpell "Compare real and set EFLAGS
syn match YellowColorb "\<FUCOMI\>"                   contains=@NoSpell "Unordered compare real and set EFLAGS
syn match YellowColorb "\<FCOMIP\>"                   contains=@NoSpell "Compare real, set EFLAGS, and pop
syn match YellowColorb "\<FUCOMIP\>"                  contains=@NoSpell "Unordered compare real, set EFLAGS, and pop
syn match YellowColorb "\<FTST\>"                     contains=@NoSpell "Test real
syn match YellowColorb "\<FXAM\>"                     contains=@NoSpell "Examine real

syn match YellowColorb "\<COMISD\>"                   contains=@NoSpell "Compare Scalar Ordered Double Precision Floating-Point Values and Set EFLAGS

" 30.2.3.4. Transcendental
syn match YellowColorb "\<FSIN\>"                     contains=@NoSpell "Sine
syn match YellowColorb "\<FCOS\>"                     contains=@NoSpell "Cosine
syn match YellowColorb "\<FSINCOS\>"                  contains=@NoSpell "Sine and cosine
syn match YellowColorb "\<FPTAN\>"                    contains=@NoSpell "Partial tangent
syn match YellowColorb "\<FPATAN\>"                   contains=@NoSpell "Partial arctangent
syn match YellowColorb "\<F2XM1\>"                    contains=@NoSpell "2 x − 1
syn match YellowColorb "\<FYL2X\>"                    contains=@NoSpell "y∗log 2x
syn match YellowColorb "\<FYL2XP1\>"                  contains=@NoSpell "y∗log 2(x+1)

" 30.2.3.5. Load Constants
syn match YellowColorb "\<FLD1\>"                     contains=@NoSpell "Load +1.0
syn match YellowColorb "\<FLDZ\>"                     contains=@NoSpell "Load +0.0
syn match YellowColorb "\<FLDPI\>"                    contains=@NoSpell "Load π
syn match YellowColorb "\<FLDL2E\>"                   contains=@NoSpell "Load log 2 e
syn match YellowColorb "\<FLDLN2\>"                   contains=@NoSpell "Load log e 2
syn match YellowColorb "\<FLDL2T\>"                   contains=@NoSpell "Load log 2 10
syn match YellowColorb "\<FLDLG2\>"                   contains=@NoSpell "Load log 10 2

" 30.2.3.6. FPU Control
syn match YellowColorb "\<FINCSTP\>"                  contains=@NoSpell "Increment FPU register stack pointer
syn match YellowColorb "\<FDECSTP\>"                  contains=@NoSpell "Decrement FPU register stack pointer
syn match YellowColorb "\<FFREE\>"                    contains=@NoSpell "Free floating-point register
syn match YellowColorb "\<FINIT\>"                    contains=@NoSpell "Initialize FPU after checking error conditions
syn match YellowColorb "\<FNINIT\>"                   contains=@NoSpell "Initialize FPU without checking error conditions
syn match YellowColorb "\<FCLEX\>"                    contains=@NoSpell "Clear floating-point exception flags after checking for error conditions
syn match YellowColorb "\<FNCLEX\>"                   contains=@NoSpell "Clear floating-point exception flags without checking for error conditions
syn match YellowColorb "\<FSTCW\>"                    contains=@NoSpell "Store FPU control word after checking error conditions
syn match YellowColorb "\<FNSTCW\>"                   contains=@NoSpell "Store FPU control word without checking error conditions
syn match YellowColorb "\<FLDCW\>"                    contains=@NoSpell "Load FPU control word
syn match YellowColorb "\<FSTENV\>"                   contains=@NoSpell "Store FPU environment after checking error conditions
syn match YellowColorb "\<FNSTENV\>"                  contains=@NoSpell "Store FPU environment without checking error conditions
syn match YellowColorb "\<FLDENV\>"                   contains=@NoSpell "Load FPU environment
syn match YellowColorb "\<FSAVE\>"                    contains=@NoSpell "Save FPU state after checking error conditions
syn match YellowColorb "\<FNSAVE\>"                   contains=@NoSpell "Save FPU state without checking error conditions
syn match YellowColorb "\<FRSTOR\>"                   contains=@NoSpell "Restore FPU state
syn match YellowColorb "\<FSTSW\>"                    contains=@NoSpell "Store FPU status word after checking error conditions
syn match YellowColorb "\<FNSTSW\>"                   contains=@NoSpell "Store FPU status word without checking error conditions
syn match YellowColorb "\<\(WAIT\|FWAIT\)\>"          contains=@NoSpell "Wait for FPU
syn match YellowColorb "\<FNOP\>"                     contains=@NoSpell "FPU no operation

" 30.2.4. System Instructions

" The following system instructions are used to control those functions of the processor that are provided to support for operating systems and executives.

syn match YellowColorb "\<LGDT\>"                     contains=@NoSpell "Load global descriptor table (GDT) register
syn match YellowColorb "\<SGDT\>"                     contains=@NoSpell "Store global descriptor table (GDT) register
syn match YellowColorb "\<LLDT\>"                     contains=@NoSpell "Load local descriptor table (LDT) register
syn match YellowColorb "\<SLDT\>"                     contains=@NoSpell "Store local descriptor table (LDT) register
syn match YellowColorb "\<LTR\>"                      contains=@NoSpell "Load task register
syn match YellowColorb "\<STR\>"                      contains=@NoSpell "Store task register
syn match YellowColorb "\<LIDT\>"                     contains=@NoSpell "Load interrupt descriptor table (IDT) register
syn match YellowColorb "\<SIDT\>"                     contains=@NoSpell "Store interrupt descriptor table (IDT) register
syn match YellowColorb "\<MOV\>"                      contains=@NoSpell "Load and store control registers
syn match YellowColorb "\<LMSW\>"                     contains=@NoSpell "Load machine status word
syn match YellowColorb "\<SMSW\>"                     contains=@NoSpell "Store machine status word
syn match YellowColorb "\<CLTS\>"                     contains=@NoSpell "Clear the task-switched flag
syn match YellowColorb "\<ARPL\>"                     contains=@NoSpell "Adjust requested privilege level
syn match YellowColorb "\<LAR\>"                      contains=@NoSpell "Load access rights
syn match YellowColorb "\<LSL\>"                      contains=@NoSpell "Load segment limit
syn match YellowColorb "\<VERR\>"                     contains=@NoSpell "Verify segment for reading
syn match YellowColorb "\<VERW\>"                     contains=@NoSpell "Verify segment for writing
syn match YellowColorb "\<INVD\>"                     contains=@NoSpell "Invalidate cache, no writeback
syn match YellowColorb "\<WBINVD\>"                   contains=@NoSpell "Invalidate cache, with writeback
syn match YellowColorb "\<INVLPG\>"                   contains=@NoSpell "Invalidate TLB Entry
syn match YellowColorb "\<LOCK\>"                     contains=@NoSpell "(prefix) Lock Bus
syn match YellowColorb "\<HLT\>"                      contains=@NoSpell "Halt processor
syn match YellowColorb "\<RSM\>"                      contains=@NoSpell "Return from system management mode (SSM)
syn match YellowColorb "\<RDMSR\>"                    contains=@NoSpell "Read model-specific register
syn match YellowColorb "\<WRMSR\>"                    contains=@NoSpell "Write model-specific register
syn match YellowColorb "\<RDPMC\>"                    contains=@NoSpell "Read performance monitoring counters
syn match YellowColorb "\<RDTSC\>"                    contains=@NoSpell "Read time stamp counter
"-------------------------------------------------------------------------------------------------------------

" NOTE: Intel vs AT&T syntax
" Intel Syntax: destination, source (e.g., mov eax, ebx means eax = ebx)
" AT&T Syntax: source, destination (e.g., movl %ebx, %eax means eax = ebx)
" Intel Syntax: Registers and immediate values are used directly (e.g., eax, 10).
" AT&T Syntax: Registers are prefixed with % (e.g., %eax), and immediate values are prefixed with $ (e.g., $10).
" Intel Syntax: Memory operands are enclosed in square brackets [] and often use ptr prefixes to specify size (e.g., mov eax, [ebx + ecx*4]).
" AT&T Syntax: Memory operands use parentheses () and specify size through the instruction mnemonic (e.g., movl (%ebx,%ecx,4), %eax).
" Intel Syntax: Instruction size is usually implied or specified with ptr prefixes.
" AT&T Syntax: Instruction mnemonics are often suffixed with b (byte), w (word), l (long), or q (quad) to indicate operand size (e.g., movl). 
" Intel Syntax: call/jmp far section:offset
" AT&T Syntax: lcall/ljmp $section, $offset


" NOTE: What's the difference between "R" and "E" name of registers in assembly?
" Short answer: exx registers are 32-bit, rxx registers are 64-bit
" Longer answer: The x86 architecture has evolved for decades from its initial 16-bit roots, when the 16-bit registers were called ax, bx, etc. When the 80386 was introduced, the registers were extended to 32 bits, and thus called eax, ebx etc. Referring to the old 16-bit register names on a 80386 accesses the lower 16 bits of these extended registers. When AMD extended the x86 instruction set architecture to 64 bits, they chose 'r' as the prefix of the 64-bit registers, extending the 32-bit registers again, to rax, rbx etc. In the process, they added a few new registers that didn't exist before, r8-r15.
syn match Orange2Colorb "<.*>"                                          contains=@NoSpell "Function calls
syn match BlueColorb "\<rax\|rbx\|rcx\|rdx\|rsi\|rdi\|rsp\|rbp\|rip\>"  contains=@NoSpell "Registers
syn match BlueColorb "\<eax\|ebx\|ecx\|edx\|esi\|edi\>"                 contains=@NoSpell "Registers
syn match BlueColorb "%\w*\>"                                           contains=@NoSpell "Registers

" match 0-F 2 or 4 times
syn match CyanColor  "\<[0-9a-f]\{2}\>"               contains=@NoSpell "Hex numbers
syn match CyanColor  "\<[0-9a-f]\{4}\>"               contains=@NoSpell "Hex numbers

" Convert Long To Quad (cltq): AT&T-style
" Convert Double to Quad Extend (cdqe): Intel
" quad (aka quad-word) == 8 bytes
" long (AT&T) == double-word (Intel) == 4 bytes
syn match YellowColorb "\<CLTQ\>"                     contains=@NoSpell

syn match BlueColorb "\<CS\>"                         contains=@NoSpell "Code segment (CS) is a 16-bit register containing address of 64 KB segment with processor instructions. The processor uses CS segment for all accesses to instructions referenced by instruction pointer (IP) register.



" There are ten 32-bit and six 16-bit processor registers in IA-32 architecture. The registers are grouped into three categories −
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
"     %rax: Accumulator register, often used for return values and arithmetic operations.
"     %rbx: Base register, often used as a base pointer for data access.
"     %rcx: Counter register, often used in shift/rotate instructions and for loop counters or as a function argument.
"     %rdx: Data register, often used for arithmetic operations or as a function argument. Used in input/output operations.

"     %rsi: Source index register, often used as a source pointer for data transfers and stream/string operations.
"     %rdi: Destination index register, often used as a destination pointer for data transfers and stream/string operations.

"     %rsp: Stack pointer register, points to the top of the call stack. It provides the offset value within the program stack. SP in association with the SS register (SS:SP) refers to be current position of data or address within the program stack.
"     %rbp: Base pointer register, often used as a frame pointer for stack frames. The 16-bit BP register mainly helps in referencing the parameter variables passed to a subroutine. The address in SS register is combined with the offset in BP to get the location of the parameter. BP can also be combined with DI and SI as base register for special addressing.

"     %r8 - %r15: Additional general-purpose registers, often used for function arguments or local variables. 
" 
" Special-Purpose Registers:
"     %rip: Instruction Pointer, holds the address of the next instruction. IP in association with the CS register (as CS:IP) gives the complete address of the current instruction in the code segment.
"     %rflags: Flags register, contains status and control flags reflecting the outcome of operations and controlling processor behavior. 
" 
" Segment Registers (primarily for compatibility in 64-bit mode):
"     %cs: Code Segment register. Pointer to the code. It contains all the instructions to be executed. A 16-bit Code Segment register or CS register stores the starting address of the code segment.
"     %ds: Data Segment register. Pointer to the data. It contains data, constants and work areas. A 16-bit Data Segment register or DS register stores the starting address of the data segment.
"     %ss: Stack Segment register. Pointer to the stack. It contains data and return addresses of procedures or subroutines. It is implemented as a 'stack' data structure. The Stack Segment register or SS register stores the starting address of the stack.
"     %es, %fs, %gs: Extra Segment registers. Pointer to extra data
" 
" Floating-Point Registers (e.g., SSE/AVX registers):
"     %xmm0 - %xmm15: Used for Single Instruction, Multiple Data (SIMD) operations.

" Control Registers
" The 32-bit instruction pointer register and the 32-bit flags register combined are considered as the control registers.
" Many instructions involve comparisons and mathematical calculations and change the status of the flags and some other conditional instructions test the value of these status flags to take the control flow to other location.
" 
" The common flag bits are:
"     - Overflow Flag (OF) − It indicates the overflow of a high-order bit (leftmost bit) of data after a signed arithmetic operation.
"     - Direction Flag (DF) − It determines left or right direction for moving or comparing string data. When the DF value is 0, the string operation takes left-to-right direction and when the value is set to 1, the string operation takes right-to-left direction.
"     - Interrupt Flag (IF) − It determines whether the external interrupts like keyboard entry, etc., are to be ignored or processed. It disables the external interrupt when the value is 0 and enables interrupts when set to 1.
"     - Trap Flag (TF) − It allows setting the operation of the processor in single-step mode. The DEBUG program we used sets the trap flag, so we could step through the execution one instruction at a time.
"     - Sign Flag (SF) − It shows the sign of the result of an arithmetic operation. This flag is set according to the sign of a data item following the arithmetic operation. The sign is indicated by the high-order of leftmost bit. A positive result clears the value of SF to 0 and negative result sets it to 1.
"     - Zero Flag (ZF) − It indicates the result of an arithmetic or comparison operation. A nonzero result clears the zero flag to 0, and a zero result sets it to 1.
"     - Auxiliary Carry Flag (AF) − It contains the carry from bit 3 to bit 4 following an arithmetic operation; used for specialized arithmetic. The AF is set when a 1-byte arithmetic operation causes a carry from bit 3 into bit 4.
"     - Parity Flag (PF) − It indicates the total number of 1-bits in the result obtained from an arithmetic operation. An even number of 1-bits clears the parity flag to 0 and an odd number of 1-bits sets the parity flag to 1.
"     - Carry Flag (CF) − It contains the carry of 0 or 1 from a high-order bit (leftmost) after an arithmetic operation. It also stores the contents of last bit of a shift or rotate operation.

" The following table indicates the position of flag bits in the 16-bit Flags register:
" Flag  :               O  D  I  T  S  Z     A     P     C

" Bit no:  15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0



" GCC generated output includes additional initialization functions for several reasons related to program startup and the C/C++ language features:
"     - C++ Constructors and Destructors:
"     - In C++, global or static objects with constructors need to be initialized before main() is called. Similarly, destructors need to be called when the program terminates. GCC generates code to manage these calls, often by creating lists of constructor and destructor functions (__CTOR_LIST__ and __DTOR_LIST__) and calling them at the appropriate times during program startup and shutdown.
"     - Runtime Library Initialization:
"     - The C runtime library (CRT) needs to be initialized before your program's main() function can execute. This includes tasks like setting up the stack, initializing data segments (like .data and .bss), and potentially configuring other runtime aspects. GCC's "start files" (like crti.o, crtbegin.o, crtend.o, crtn.o) provide these essential initialization routines.
"     - Language-Specific Initialization:
"     - Certain languages or extensions might require specific initialization routines. For example, GCC supports attributes like __attribute__((constructor)) and __attribute__((destructor)) in C, allowing developers to define functions that are automatically called at program startup or termination, similar to C++ constructors and destructors.
"     - Bare-Metal and Embedded Systems:
"     - In bare-metal or embedded environments, the _init function (provided by GCC's start files) plays a crucial role in setting up the environment before the user's code can run. This might involve memory setup, interrupt vector table configuration, or other hardware-specific initializations. 
" 
" These initialization functions ensure that the program environment is correctly prepared and that any required object or library initializations are performed before the main application logic begins.




syn case match

