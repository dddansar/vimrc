"==============================================================================
" File: java.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all java files.
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


" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:java_loaded")
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
   echom "java.vim syntax file loaded"
endif
let b:java_loaded = 1

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "java"
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim

   call AllFilesDefaultSyntax()
endif


hi  link    JavaKeywords Statement
syn keyword JavaKeywords String Thread ThreadLocal Math Constructor public private protected
syn match   JavaKeywords "System\%(.out.print\%(ln\)\?\)"
" NOTE: needed to add transparent here...
syn match   JavaKeywords "java\..*\%(;\|\>\)" containedin=javaImportDeclBlock

hi  link    JavaUtils Statement
syn keyword JavaUtils AbstractCollection AbstractList AbstractMap AbstractQueue AbstractSequentialList AbstractSet ArrayDeque ArrayList Arrays Base64 BitSet Calendar Collection Collections Comparator ConcurrentModificationException Currency Date Deque Dictionary DoubleSummaryStatistics DuplicateFormatFlagsException EmptyStackException Enumeration EnumMap EnumSet EventListener EventListenerProxy EventObject FormatFlagsConversionMismatchException FormatProcessorPREVIEW Formattable FormattableFlags Formatter FormatterClosedException GregorianCalendar HashMap HashSet Hashtable HexFormat IdentityHashMap IllegalFormatCodePointException IllegalFormatConversionException IllegalFormatException IllegalFormatFlagsException IllegalFormatPrecisionException IllegalFormatWidthException IllformedLocaleException InputMismatchException IntSummaryStatistics InvalidPropertiesFormatException Iterator LinkedHashMap LinkedHashSet LinkedList List ListIterator ListResourceBundle Locale LongSummaryStatistics Map MissingFormatArgumentException MissingFormatWidthException MissingResourceException NavigableMap NavigableSet NoSuchElementException Objects Observable Observer Optional OptionalDouble OptionalInt OptionalLong PrimitiveIterator PriorityQueue Properties PropertyPermission PropertyResourceBundle Queue Random RandomAccess ResourceBundle Scanner SequencedCollection SequencedMap SequencedSet ServiceConfigurationError ServiceLoader Set SimpleTimeZone SortedMap SortedSet Spliterator Spliterators SplittableRandom Stack StringJoiner StringTokenizer Timer TimerTask TimeZone TooManyListenersException TreeMap TreeSet UnknownFormatConversionException UnknownFormatFlagsException UUID Vector WeakHashMap

hi  link    JavaFunctionalIf Type
syn keyword JavaFunctionalIf BiConsumer BiFunction BinaryOperator BiPredicate BooleanSupplier Consumer DoubleBinaryOperator DoubleConsumer DoubleFunction DoublePredicate DoubleSupplier DoubleToIntFunction DoubleToLongFunction DoubleUnaryOperator Function IntBinaryOperator IntConsumer IntFunction IntPredicate IntSupplier IntToDoubleFunction IntToLongFunction IntUnaryOperator LongBinaryOperator LongConsumer LongFunction LongPredicate LongSupplier LongToDoubleFunction LongToIntFunction LongUnaryOperator ObjDoubleConsumer ObjIntConsumer ObjLongConsumer Predicate Supplier ToDoubleBiFunction ToDoubleFunction ToIntBiFunction ToIntFunction ToLongBiFunction ToLongFunction UnaryOperator Integer

hi  link    JavaConcurrent Statement
syn keyword JavaConcurrent BlockingDeque BlockingQueue Callable CompletableFuture.AsynchronousCompletionTask CompletionService CompletionStage ConcurrentMap ConcurrentNavigableMap Delayed Executor ExecutorService ForkJoinPool.ForkJoinWorkerThreadFactory ForkJoinPool.ManagedBlocker Future RejectedExecutionHandler RunnableFuture RunnableScheduledFuture ScheduledExecutorService ScheduledFuture ThreadFactory TransferQueue Class Summary ClassDescription ArrayBlockingQueue CompletableFuture ConcurrentHashMap ConcurrentHashMap.KeySetView ConcurrentLinkedDeque ConcurrentLinkedQueue ConcurrentSkipListMap ConcurrentSkipListSet CopyOnWriteArrayList CopyOnWriteArraySet CountDownLatch CountedCompleter CyclicBarrier DelayQueue Exchanger ExecutorCompletionService Executors ForkJoinPool ForkJoinTask ForkJoinWorkerThread FutureTask LinkedBlockingDeque LinkedBlockingQueue LinkedTransferQueue Phaser PriorityBlockingQueue RecursiveAction RecursiveTask ScheduledThreadPoolExecutor Semaphore SynchronousQueue ThreadLocalRandom ThreadPoolExecutor ThreadPoolExecutor.AbortPolicy ThreadPoolExecutor.CallerRunsPolicy ThreadPoolExecutor.DiscardOldestPolicy ThreadPoolExecutor.DiscardPolicy Enum Summary EnumDescription Exception Summary ExceptionDescription CancellationException CompletionException ExecutionException RejectedExecutionException TimeoutException

hi  link    JavaIO Statement
syn keyword JavaIO Closeable DataInput DataOutput Externalizable FileFilter FilenameFilter Flushable ObjectInput ObjectInputValidation ObjectOutput ObjectStreamConstants Serializable BufferedOutputStream BufferedReader BufferedWriter ByteArrayInputStream ByteArrayOutputStream CharArrayReader CharArrayWriter Console DataInputStream DataOutputStream File FileDescriptor FileInputStream FileOutputStream FilePermission FileReader FileWriter FilterInputStream FilterOutputStream FilterReader FilterWriter InputStream InputStreamReader LineNumberInputStreamDeprecated LineNumberReader ObjectInputStream ObjectOutputStream ObjectStreamClass ObjectStreamField OutputStream OutputStreamWriter PipedInputStream PipedOutputStream PipedReader PipedWriter PrintStream PrintWriter PushbackInputStream PushbackReader RandomAccessFile Reader SequenceInputStream SerializablePermission StreamTokenizer StringBufferInputStreamDeprecated StringReader StringWriter Writer EOFException FileNotFoundException InterruptedIOException InvalidClassException InvalidObjectException IOException NotActiveException NotSerializableException ObjectStreamException OptionalDataException StreamCorruptedException SyncFailedException UncheckedIOException UnsupportedEncodingException UTFDataFormatException WriteAbortedException IOError

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "java"
   call AllOperators()
   call AllShiftOp()
   call AllEqualities()
   call AllParenBr()
   call AllArrows()
   call AllSeparators()
endif

