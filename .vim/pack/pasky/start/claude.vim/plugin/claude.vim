" File: plugin/claude.vim
" vim: sw=2 ts=2 et

"==============================================================================
" File: claude.vim
"------------------------------------------------------------------------------
" Description: Vim Plugin to use the Claude AI in Vim/Neovim using an API.
"------------------------------------------------------------------------------
" Author: Petr "Pasky" Baudis
" Modified By: Danny Sarraf
"------------------------------------------------------------------------------
" Original URL: https://github.com/pasky/claude.vim
" Modified URL: https://github.com/dddansar/vimrc/tree/main/.vim/pack/pasky/start/claude.vim
"------------------------------------------------------------------------------
" NOTE: Comments can be found in .vim/pack/pasky/start/claude.vim/comments.vim
" They were moved in a separate file to keep this file cleaner/shorter to make
" updating this file easier for AI.
"------------------------------------------------------------------------------
" MIT License
" See copyright notice in .vim/pack/pasky/start/claude.vim/LICENSE
"==============================================================================

" Exit if the file was already loaded
if exists("b:claude_plugin_loaded")
  finish
endif
let b:claude_plugin_loaded=1

" If set disable the claude plugin
if !exists('g:claude_disable')
  let g:claude_disable = 0
endif
if g:claude_disable
   finish
endif

" Configuration variables
if !exists('g:claude_api_key')
  let g:claude_api_key = ''
endif

if !exists('g:claude_api_url')
  let g:claude_api_url = 'https://api.anthropic.com/v1/messages'
endif

if !exists('g:ai_model')
  let g:ai_model = 'claude-sonnet-4-6'
endif

if !exists('g:claude_use_1m_context')
  let g:claude_use_1m_context = 0
endif

if !exists('g:claude_use_bedrock')
  let g:claude_use_bedrock = 0
endif

if !exists('g:claude_bedrock_region')
  let g:claude_bedrock_region = 'us-west-2'
endif

if !exists('g:claude_bedrock_model_id')
  let g:claude_bedrock_model_id = 'us.anthropic.claude-sonnet-4-6-v1:0'
endif

if !exists('g:claude_aws_profile')
  let g:claude_aws_profile = ''
endif

if !exists('g:ai_map_implement')
  let g:ai_map_implement = '<leader>ci'
endif

if !exists('g:ai_map_open_chat')
  let g:ai_map_open_chat = '<leader>cc'
endif

if !exists('g:ai_map_send_chat_message')
  let g:ai_map_send_chat_message = '<C-]>'
endif

if !exists('g:ai_map_cancel_response')
  let g:ai_map_cancel_response = '<leader>cx'
endif

if !exists('g:ai_disable_tool_use')
  let g:ai_disable_tool_use = 0
endif

" Set max_tokens based on your intended output length: 1024–4096 is
" recommended for typical tasks to balance cost and speed, while 8192–16384+
" is necessary for heavy tasks like long code generation or deep reasoning.
" Maximum (New Models): Up to 64K for Sonnet 3.5/4.6, 128K for Opus 4.6.
" Higher values reduces the frequency to tell Claude to continue if the
" answer it was generating was cut off.
if !exists('g:ai_max_output_tokens')
  let g:ai_max_output_tokens = 8192
endif

if !exists('g:claude_enable_folding')
  let g:claude_enable_folding = 0
endif

if !exists('g:claude_no_indent')
  let g:claude_no_indent = 0
endif

if !exists('g:claude_batch_api')
  let g:claude_batch_api = 0
endif

if !exists('g:claude_batch_poll_interval')
  " seconds between polls
  let g:claude_batch_poll_interval = 30
endif


if !exists('g:ai_tools_list')
  let g:ai_tools_list = [
    \ {
    \   'name': 'python',
    \   'description': 'Execute a Python one-liner code snippet and return the standard output. NEVER just print a constant or use Python to load the file whose buffer you already see. Use the tool only in cases where a Python program will generate a reliable, precise response than you cannot realistically produce on your own.',
    \   'input_schema': {
    \     'type': 'object',
    \     'properties': {
    \       'code': {
    \         'type': 'string',
    \         'description': 'The Python one-liner code to execute. Wrap the final expression in `print` to see its result - otherwise, output will be empty.'
    \       }
    \     },
    \     'required': ['code']
    \   }
    \ },
    \ {
    \   'name': 'shell',
    \   'description': 'Execute a shell command and return both stdout and stderr. Use with caution as it can potentially run harmful commands.',
    \   'input_schema': {
    \     'type': 'object',
    \     'properties': {
    \       'command': {
    \         'type': 'string',
    \         'description': 'The shell command or a short one-line script to execute.'
    \       }
    \     },
    \     'required': ['command']
    \   }
    \ },
    \ {
    \   "name": "open",
    \   "description": "Open an existing buffer (file, directory or netrw URL) so that you get access to its content. Returns the buffer name, or 'ERROR' for non-existent paths.",
    \   "input_schema": {
    \     "type": "object",
    \     "properties": {
    \       "path": {
    \         "type": "string",
    \         "description": "The path to open, passed as an argument to the vim :edit command"
    \       }
    \     },
    \     "required": ["path"]
    \   }
    \ },
    \ {
    \   "name": "new",
    \   "description": "Create a new file, opening a buffer for it so that edits can be applied. Returns an error if the file already exists.",
    \   "input_schema": {
    \     "type": "object",
    \     "properties": {
    \       "path": {
    \         "type": "string",
    \         "description": "The path of the new file to create, passed as an argument to the vim :new command"
    \       }
    \     },
    \     "required": ["path"]
    \   }
    \ },
    \ {
    \   'name': 'open_web',
    \   'description': 'Open a new buffer with the text content of a specific webpage. Use this for accessing documentation or other search results.',
    \   'input_schema': {
    \     'type': 'object',
    \     'properties': {
    \       'url': {
    \         'type': 'string',
    \         'description': 'The URL of the webpage to read'
    \       },
    \     },
    \     'required': ['url']
    \   }
    \ },
    \ {
    \   'name': 'web_search',
    \   'description': 'Perform a web search and return the top 5 results. Use this to find information beyond your knowledge on the web (e.g. about specific APIs, new tools or to troubleshoot errors). Strongly consider using open_web next to open one or several result URLs to learn more.',
    \   'input_schema': {
    \     'type': 'object',
    \     'properties': {
    \       'query': {
    \         'type': 'string',
    \         'description': 'The search query (bunch of keywords / keyphrases)'
    \       },
    \     },
    \     'required': ['query']
    \   }
    \ }
    \ ]
endif
"------------------------------------------------------------------------------
" These are for Google's Gemini AI
if !exists('g:gemini_api_key')
  let g:gemini_api_key = ''
endif

if !exists('g:gemini_api_url')
  let g:gemini_api_url = 'https://generativelanguage.googleapis.com/v1beta/models'
endif
"------------------------------------------------------------------------------
" These are for OpenAI's ChatGPT AI
if !exists('g:openai_api_key')
  let g:openai_api_key = ''
endif

if !exists('g:openai_api_url')
  let g:openai_api_url = 'https://api.openai.com/v1/chat/completions'
endif
"------------------------------------------------------------------------------

function! s:SetupClaudeKeybindings()
   if g:claude_disable == 0
     command! -range -nargs=1 ClaudeImplement <line1>,<line2>call s:ClaudeImplement(<line1>, <line2>, <q-args>)
     execute "vnoremap " . g:ai_map_implement . " :ClaudeImplement<Space>"

     command! ClaudeChat call s:OpenClaudeChat()
     execute "nnoremap " . g:ai_map_open_chat . " :ClaudeChat<CR>"

     command! ClaudeCancel call s:CancelClaudeResponse()
     " Moved inside s:OpenClaudeChat() to make mapping local to the chat buffer.
     " execute "nnoremap " . g:ai_map_cancel_response . " :ClaudeCancel<CR>"
   endif
endfunction


augroup ClaudeKeybindings
  autocmd!
  autocmd VimEnter * call s:SetupClaudeKeybindings()
augroup END

let s:plugin_dir = expand('<sfile>:p:h')


function! s:ClaudeLoadPrompt(prompt_type)
  let l:prompts_file = s:plugin_dir . '/claude_' . a:prompt_type . '_prompt.md'
  return readfile(l:prompts_file)
endfunction

if !exists('g:claude_default_system_prompt')
  let g:claude_default_system_prompt = s:ClaudeLoadPrompt('system')
endif

if !exists('g:claude_implement_prompt')
  let g:claude_implement_prompt = s:ClaudeLoadPrompt('implement')
endif


function! s:ClaudeQueryInternal(messages, system_prompt, tools, stream_callback, final_callback)
  " Prepare the API request
  let l:data = {}
  let l:headers = []
  let l:url = ''

  if g:ai_model =~# '^gemini'
    " Gemini uses a different message format and endpoint
    let l:url = g:gemini_api_url . '/' . g:ai_model . ':streamGenerateContent?alt=sse&key=' . g:gemini_api_key

    " Convert Claude-style messages to Gemini's `contents` format
    let l:contents = []
    for l:msg in a:messages
      let l:role = l:msg.role ==# 'assistant' ? 'model' : 'user'
      if has_key(l:msg, 'parts')
        " Message already has Gemini-native parts (tool use/result)
        call add(l:contents, {'role': l:role, 'parts': l:msg.parts})
      else
        call add(l:contents, {'role': l:role, 'parts': [{'text': l:msg.content}]})
      endif
    endfor

    let l:data = {
      \ 'contents': l:contents,
      \ 'generationConfig': {
      \   'maxOutputTokens': g:ai_max_output_tokens
      \ }
    \ }
    if !empty(a:system_prompt)
      let l:data['system_instruction'] = {'parts': [{'text': a:system_prompt}]}
    endif

    " Convert tools to Gemini function declarations
    if !empty(a:tools) && g:ai_disable_tool_use == 0
      let l:func_decls = map(copy(a:tools), {_, t -> {
        \ 'name': t.name,
        \ 'description': t.description,
        \ 'parameters': t.input_schema
        \ }})
      let l:data['tools'] = [{'function_declarations': l:func_decls}]
    endif

    let l:headers = ['-H', 'Content-Type: application/json']
    let l:json_data = json_encode(l:data)
    let l:tmp_file = tempname()
    call writefile([l:json_data], l:tmp_file)
    let l:cmd = ['curl', '-s', '-N', '-X', 'POST']
    call extend(l:cmd, l:headers)
    call extend(l:cmd, ['--data-binary', '@' . l:tmp_file, l:url])

  elseif g:ai_model =~# '^gpt\|^o[0-9]'
    let l:url = g:openai_api_url

    " OpenAI uses the same message format as Claude (role/content),
    " but system prompt goes as a message with role 'system'
    let l:openai_messages = []
    if !empty(a:system_prompt)
      call add(l:openai_messages, {'role': 'system', 'content': a:system_prompt})
    endif
    call extend(l:openai_messages, a:messages)

    let l:data = {
      \ 'model': g:ai_model,
      \ 'max_completion_tokens': g:ai_max_output_tokens,
      \ 'messages': l:openai_messages,
      \ 'stream': v:true,
      \ 'stream_options': {'include_usage': v:true}
      \ }

    " OpenAI tool format is compatible with the existing g:ai_tools_list schema
    if !empty(a:tools) && g:ai_disable_tool_use == 0
      let l:openai_tools = map(copy(a:tools), {_, t -> {
        \ 'type': 'function',
        \ 'function': {
        \   'name': t.name,
        \   'description': t.description,
        \   'parameters': t.input_schema
        \ }
        \ }})
      let l:data['tools'] = l:openai_tools
    endif

    let l:headers = [
      \ '-H', 'Content-Type: application/json',
      \ '-H', 'Authorization: Bearer ' . g:openai_api_key
      \ ]

    let l:json_data = json_encode(l:data)
    let l:tmp_file = tempname()
    call writefile([l:json_data], l:tmp_file)
    let l:cmd = ['curl', '-s', '-N', '-X', 'POST']
    call extend(l:cmd, l:headers)
    call extend(l:cmd, ['--data-binary', '@' . l:tmp_file, l:url])

  elseif g:claude_use_bedrock
    let l:python_script = s:plugin_dir . '/claude_bedrock_helper.py'
    let l:cmd = ['python3', l:python_script,
          \ '--region', g:claude_bedrock_region,
          \ '--model-id', g:claude_bedrock_model_id,
          \ '--messages', json_encode(a:messages),
          \ '--system-prompt', a:system_prompt]

    if !empty(g:claude_aws_profile)
      call extend(l:cmd, ['--profile', g:claude_aws_profile])
    endif

    if !empty(a:tools)
      call extend(l:cmd, ['--tools', json_encode(a:tools)])
    endif
  else
    let l:url = g:claude_api_url
    let l:data = {
      \ 'model': g:ai_model,
      \ 'max_tokens': g:ai_max_output_tokens,
      \ 'messages': a:messages,
      \ 'stream': v:true
      \ }
    if !empty(a:system_prompt)
      let l:data['system'] = a:system_prompt
    endif
    if !empty(a:tools)
      let l:data['tools'] = a:tools
    endif
    call extend(l:headers, ['-H', 'Content-Type: application/json'])
    call extend(l:headers, ['-H', 'x-api-key: ' . g:claude_api_key])
    " 2023-06-01 is the latest version of the API. Despite the date being
    " from June 2023, this header is used for all current API interactions,
    " including the latest Claude 3.5 and 4.6 model iterations.
    call extend(l:headers, ['-H', 'anthropic-version: 2023-06-01'])

    if g:claude_use_1m_context
      call extend(l:headers, ['-H', 'anthropic-beta: context-1m-2025-08-07'])
    endif

    " Convert data to JSON and write to a temp file to avoid arg length limits
    let l:json_data = json_encode(l:data)
    let l:tmp_file = tempname()
    call writefile([l:json_data], l:tmp_file)
    let l:cmd = ['curl', '-s', '-N', '-X', 'POST']
    call extend(l:cmd, l:headers)
    call extend(l:cmd, ['--data-binary', '@' . l:tmp_file, l:url])
  endif

  " Start the job
  if has('nvim')
    let l:job = jobstart(l:cmd, {
      \ 'on_stdout': function('s:HandleStreamOutputNvim', [a:stream_callback, a:final_callback]),
      \ 'on_stderr': function('s:HandleJobErrorNvim', [a:stream_callback, a:final_callback]),
      \ 'on_exit': function('s:HandleJobExitNvim', [a:stream_callback, a:final_callback, l:tmp_file])
      \ })
  else
    let l:job = job_start(l:cmd, {
      \ 'out_cb': function('s:HandleStreamOutput', [a:stream_callback, a:final_callback]),
      \ 'err_cb': function('s:HandleJobError', [a:stream_callback, a:final_callback]),
      \ 'exit_cb': function('s:HandleJobExit', [a:stream_callback, a:final_callback, l:tmp_file])
      \ })
  endif

  return l:job
endfunction


function! s:DisplayTokenUsageAndCost(json_data)
  let l:data = json_decode(a:json_data)
  if has_key(l:data, 'usage')
    let l:usage = l:data.usage

    " if g:ai_model =~# '^gemini'
    "   let s:total_input_tokens  = get(s:, 'total_input_tokens',  0) + get(s:, 'stored_input_tokens',  0)
    "   let s:total_output_tokens = get(s:, 'total_output_tokens', 0) + get(s:, 'stored_output_tokens', 0)
    "   unlet! s:stored_input_tokens
    "   unlet! s:stored_output_tokens

    " else
      " Accumulate across tool-use turns
      let s:total_input_tokens          = get(s:, 'total_input_tokens',          0) + get(s:, 'stored_input_tokens',          0)
      let s:total_cache_creation_tokens = get(s:, 'total_cache_creation_tokens', 0) + get(s:, 'stored_cache_creation_tokens', 0)
      let s:total_cache_read_tokens     = get(s:, 'total_cache_read_tokens',     0) + get(s:, 'stored_cache_read_tokens',     0)
      let s:total_output_tokens = get(s:, 'total_output_tokens', 0) + get(l:usage, 'output_tokens', 0)
      unlet! s:stored_input_tokens
      unlet! s:stored_cache_creation_tokens
      unlet! s:stored_cache_read_tokens
    " endif

    let l:rates = get(s:claude_pricing, g:ai_model, [3.00, 15.00])
    let l:input_cost = (s:total_input_tokens          / 1000000.0) * l:rates[0]
                   \ + (s:total_cache_creation_tokens / 1000000.0) * l:rates[0] * 1.25
                   \ + (s:total_cache_read_tokens     / 1000000.0) * l:rates[0] * 0.10
    let l:output_cost = (s:total_output_tokens / 1000000.0) * l:rates[1]

    let s:last_token_usage = printf(
      \ "%s - Token usage - Input: %d+%dc+%dr (%.4f$), Output: %d (%.4f$), Total: (%.4f$)",
      \ strftime("%Y-%m-%d %H:%M:%S"),
      \ s:total_input_tokens, s:total_cache_creation_tokens, s:total_cache_read_tokens, l:input_cost,
      \ s:total_output_tokens, l:output_cost, l:input_cost + l:output_cost)
  else
    echom "Error: Invalid JSON data format"
  endif
endfunction


" Pricing per million tokens [input, output] in USD
let s:claude_pricing = {
  \ 'claude-haiku-3':          [0.25,   1.25],
  \ 'claude-haiku-3-5':        [0.80,   4.00],
  \ 'claude-haiku-4-5':        [1.00,   5.00],
  \ 'claude-sonnet-3-5':       [3.00,  15.00],
  \ 'claude-sonnet-4':         [3.00,  15.00],
  \ 'claude-sonnet-4-6':       [3.00,  15.00],
  \ 'claude-sonnet-4-7':       [3.00,  15.00],
  \ 'claude-opus-4':           [15.00, 75.00],
  \ 'claude-opus-4-6':         [15.00, 75.00],
  \ 'claude-opus-4-7':         [15.00, 75.00],
  \ }

" \ 'gemini-2.5-pro':       [1.25, 10.00],
" \ 'gemini-2.5-flash':     [0.30,  2.50],
" \ 'gemini-2.0-flash':     [0.10,  0.40],

" \ 'gpt-4o':               [2.50,  10.00],
" \ 'gpt-4o-mini':          [0.15,  0.60],
" \ 'gpt-4.1':              [2.00,  8.00],
" \ 'gpt-4.1-mini':         [0.40,  1.60],
" \ 'gpt-4.1-nano':         [0.10,  0.40],
" \ 'o1':                   [15.00, 60.00],
" \ 'o3':                   [10.00, 40.00],
" \ 'o4-mini':              [1.10,  4.40],


function! s:HandleStreamOutput(stream_callback, final_callback, channel, msg)
  " Split the message into lines
  let l:lines = split(a:msg, "\n")
  for l:line in l:lines
    " Check if the line starts with 'data:'
    if l:line =~# '^data:'
      " Extract the JSON data
      let l:json_str = substitute(l:line, '^data:\s*', '', '')

      " Handle OpenAI stream termination before any json_decode attempt
      if g:ai_model =~# '^gpt\|^o[0-9]'
        if l:json_str ==# '[DONE]'
          call a:final_callback()
          continue
        endif
        try
          let l:response = json_decode(l:json_str)
        catch
          continue
        endtry
      else
        let l:response = json_decode(l:json_str)
      endif

      " Gemini path
      if g:ai_model =~# '^gemini'
        let l:response = json_decode(l:json_str)
        " Extract text from candidates[0].content.parts[0].text
        let l:has_tool_call = v:false
        try
          for l:part in l:response.candidates[0].content.parts
            if has_key(l:part, 'text')
              call a:stream_callback(l:part.text)
            elseif has_key(l:part, 'functionCall')
              let l:fc = l:part.functionCall
              let l:tool_id = 'gemini-' . l:fc.name . '-' . localtime()
              call s:AppendToolUse(l:tool_id, l:fc.name, l:fc.args)
              let l:has_tool_call = v:true
            endif
          endfor
        catch
        endtry
        " Capture token usage from usageMetadata if present
        if has_key(l:response, 'usageMetadata')
          let l:u = l:response.usageMetadata
          let s:stored_input_tokens  = get(l:u, 'promptTokenCount',     0)
          let s:stored_output_tokens = get(l:u, 'candidatesTokenCount', 0)
          " Trigger cost display using the same mechanism as Claude
          let s:total_input_tokens   = get(s:, 'total_input_tokens',  0) + s:stored_input_tokens
          let s:total_output_tokens  = get(s:, 'total_output_tokens', 0) + s:stored_output_tokens
          unlet! s:stored_input_tokens s:stored_output_tokens
          call s:DisplayTokenUsageAndCost2()
        endif
        " Gemini signals end-of-stream via finishReason
        if l:has_tool_call
          call a:final_callback()
        else
          try
            let l:finish = l:response.candidates[0].finishReason
            if l:finish ==# 'STOP' || l:finish ==# 'MAX_TOKENS' || l:finish ==# 'OTHER'
              call a:final_callback()
            endif
          catch
          endtry
        endif
        continue   " skip the Claude-specific parsing below

      elseif g:ai_model =~# '^gpt\|^o[0-9]'

        " Capture usage (sent in the final chunk when stream_options.include_usage is set)
        if has_key(l:response, 'usage') && !empty(l:response.usage)
          let l:u = l:response.usage
          let s:stored_input_tokens  = get(l:u, 'prompt_tokens',     0)
          let s:stored_output_tokens = get(l:u, 'completion_tokens', 0)
          " Trigger cost display using the same mechanism as Claude
          let s:total_input_tokens          = get(s:, 'total_input_tokens',  0) + s:stored_input_tokens
          let s:total_cache_creation_tokens = 0
          let s:total_cache_read_tokens     = 0
          let s:total_output_tokens         = get(s:, 'total_output_tokens', 0) + s:stored_output_tokens
          unlet! s:stored_input_tokens s:stored_output_tokens
          call s:DisplayTokenUsageAndCost2()
          continue
        endif

        let l:choices = get(l:response, 'choices', [])
        if empty(l:choices)
          continue
        endif
        let l:choice = l:choices[0]
        let l:delta  = get(l:choice, 'delta', {})

        " Handle tool calls
        if has_key(l:delta, 'tool_calls')
          for l:tc in l:delta.tool_calls
            let l:idx = get(l:tc, 'index', 0)
            if !exists('s:openai_tool_calls')
              let s:openai_tool_calls = {}
            endif
            if !has_key(s:openai_tool_calls, l:idx)
              let s:openai_tool_calls[l:idx] = {
                \ 'id': '',
                \ 'name': '',
                \ 'arguments': ''
                \ }
            endif
            if has_key(l:tc, 'id')
              let s:openai_tool_calls[l:idx].id .= l:tc.id
            endif
            if has_key(l:tc, 'function')
              if has_key(l:tc.function, 'name')
                let s:openai_tool_calls[l:idx].name .= l:tc.function.name
              endif
              if has_key(l:tc.function, 'arguments')
                let s:openai_tool_calls[l:idx].arguments .= l:tc.function.arguments
              endif
            endif
          endfor
        endif



        " Handle finish reason
        let l:finish_reason = get(l:choice, 'finish_reason', v:null)
        if l:finish_reason ==# 'tool_calls'
          " Flush accumulated tool calls to the chat buffer
          if exists('s:openai_tool_calls')
            for l:idx in sort(keys(s:openai_tool_calls))
              let l:tc = s:openai_tool_calls[l:idx]
              try
                let l:input = json_decode(l:tc.arguments)
              catch
                let l:input = {'raw': l:tc.arguments}
              endtry
              call s:AppendToolUse(l:tc.id, l:tc.name, l:input)
            endfor
            unlet s:openai_tool_calls
          endif
          " Don't call final_callback yet — wait for [DONE]
          continue
        elseif l:finish_reason ==# 'stop' || l:finish_reason ==# 'length'
          " final_callback will be called on [DONE]
          continue
        endif

        " Regular text delta
        let l:text = get(l:delta, 'content', v:null)
        if type(l:text) == v:t_string && !empty(l:text)
          call a:stream_callback(l:text)
        endif
        continue    " prevent falling through to Claude code
      endif


      if l:response.type == 'content_block_start' && l:response.content_block.type == 'tool_use'
        let s:current_tool_call = {
              \ 'id': l:response.content_block.id,
              \ 'name': l:response.content_block.name,
              \ 'input': ''
              \ }
      elseif l:response.type == 'content_block_delta' && has_key(l:response.delta, 'type') && l:response.delta.type == 'input_json_delta'
        if exists('s:current_tool_call')
          let s:current_tool_call.input .= l:response.delta.partial_json
        endif
      elseif l:response.type == 'content_block_stop'
        if exists('s:current_tool_call')
          let l:tool_input = json_decode(s:current_tool_call.input)
          " XXX this is a bit weird layering violation, we should probably call the callback instead
          call s:AppendToolUse(s:current_tool_call.id, s:current_tool_call.name, l:tool_input)
          unlet s:current_tool_call
        endif
      elseif has_key(l:response, 'delta') && has_key(l:response.delta, 'text')
        let l:delta = l:response.delta.text
        call a:stream_callback(l:delta)
      elseif l:response.type == 'message_start' && has_key(l:response, 'message') && has_key(l:response.message, 'usage')
        let l:u = l:response.message.usage
        let s:stored_input_tokens          = get(l:u, 'input_tokens', 0)
        let s:stored_cache_creation_tokens = get(l:u, 'cache_creation_input_tokens', 0)
        let s:stored_cache_read_tokens     = get(l:u, 'cache_read_input_tokens', 0)
      elseif l:response.type == 'message_delta' && has_key(l:response, 'usage')
        call s:DisplayTokenUsageAndCost(l:json_str)
      elseif l:response.type != 'message_stop' && l:response.type != 'message_start' && l:response.type != 'content_block_start' && l:response.type != 'ping'
        call a:stream_callback('Unknown Claude protocol output: "' . l:line . "\"\n")
      endif
    elseif l:line ==# 'event: ping'
      " Ignore ping events
    elseif l:line ==# 'event: error'
      call a:stream_callback('Error: Server sent an error event')
      call a:final_callback()
    elseif l:line ==# 'event: message_stop'
      call a:final_callback()
    elseif l:line !=# 'event: message_start' && l:line !=# 'event: message_delta' && l:line !=# 'event: content_block_start' && l:line !=# 'event: content_block_delta' && l:line !=# 'event: content_block_stop'
      call a:stream_callback('Unknown Claude protocol output: "' . l:line . "\"\n")
    endif
  endfor
endfunction

" For ChatGPT and Gemini (Claude uses DisplayTokenUsageAndCost())
function! s:DisplayTokenUsageAndCost2()
  let l:rates = get(s:claude_pricing, g:ai_model, [3.00, 15.00])
  let l:input_cost  = (s:total_input_tokens  / 1000000.0) * l:rates[0]
  let l:output_cost = (s:total_output_tokens / 1000000.0) * l:rates[1]

  let s:last_token_usage = printf(
    \ "%s - Token usage - Input: %d (%.4f$), Output: %d (%.4f$), Total: (%.4f$)",
    \ strftime("%Y-%m-%d %H:%M:%S"),
    \ s:total_input_tokens,  l:input_cost,
    \ s:total_output_tokens, l:output_cost,
    \ l:input_cost + l:output_cost)
endfunction

function! s:HandleJobError(stream_callback, final_callback, channel, msg)
  call a:stream_callback('Error: ' . a:msg)
  call a:final_callback()
endfunction


function! s:HandleJobExit(stream_callback, final_callback, tmp_file, job, status)
  call delete(a:tmp_file)
  if a:status != 0
    call a:stream_callback('Error: Job exited with status ' . a:status)
    call a:final_callback()
  endif
endfunction


function! s:HandleStreamOutputNvim(stream_callback, final_callback, job_id, data, event) dict
  for l:msg in a:data
    call s:HandleStreamOutput(a:stream_callback, a:final_callback, 0, l:msg)
  endfor
endfunction

function! s:HandleJobErrorNvim(stream_callback, final_callback, job_id, data, event) dict
  for l:msg in a:data
    if l:msg != ''
      call s:HandleJobError(a:stream_callback, a:final_callback, 0, l:msg)
    endif
  endfor
endfunction


function! s:HandleJobExitNvim(stream_callback, final_callback, tmp_file, job_id, exit_code, event) dict
  call s:HandleJobExit(a:stream_callback, a:final_callback, a:tmp_file, 0, a:exit_code)
endfunction


function! s:ApplyChange(normal_command, content)
  let l:view = winsaveview()
  let l:paste_option = &paste

  set paste

  let l:normal_command = substitute(a:normal_command, '<CR>', "\<CR>", 'g')
  execute 'normal ' . l:normal_command . "\<C-r>=a:content\<CR>"

  let &paste = l:paste_option
  call winrestview(l:view)
endfunction


function! s:ApplyCodeChangesDiff(bufnr, changes)
  let l:original_winid = win_getid()
  let l:failed_edits = []

  " Find or create a window for the target buffer
  let l:target_winid = bufwinid(a:bufnr)
  if l:target_winid == -1
    " If the buffer isn't in any window, split and switch to it
    execute 'split'
    execute 'buffer ' . a:bufnr
    let l:target_winid = win_getid()
  else
    " Switch to the window containing the target buffer
    call win_gotoid(l:target_winid)
  endif

  " Create a new window for the diff view
  rightbelow vnew
  setlocal buftype=nofile
  let &filetype = getbufvar(a:bufnr, '&filetype')

  " Copy content from the target buffer
  call setline(1, getbufline(a:bufnr, 1, '$'))

  " Apply all changes
  for change in a:changes
    try
      if change.type == 'content'
        call s:ApplyChange(change.normal_command, change.content)
      elseif change.type == 'vimexec'
        for cmd in change.commands
          try
            execute 'normal ' . cmd
          catch
            execute cmd
          endtry
        endfor
      endif
    catch
      call add(l:failed_edits, change)
      echohl WarningMsg
      echomsg "Failed to apply edit in buffer " . bufname(a:bufnr) . ": " . v:exception
      echohl None
    endtry
  endfor

  " Set up diff for both windows
  diffthis
  call win_gotoid(l:target_winid)
  diffthis

  " Return to the original window
  call win_gotoid(l:original_winid)

  if !empty(l:failed_edits)
    echohl WarningMsg
    echomsg "Some edits could not be applied. Check the messages for details."
    echohl None
  endif
endfunction


function! s:ExecuteTool(tool_name, arguments)
  if a:tool_name == 'python'
    return s:ExecutePythonCode(a:arguments.code)
  elseif a:tool_name == 'shell'
    return s:ExecuteShellCommand(a:arguments.command)
  elseif a:tool_name == 'open'
    return s:ExecuteOpenTool(a:arguments.path)
  elseif a:tool_name == 'new'
    return s:ExecuteNewTool(a:arguments.path)
  elseif a:tool_name == 'open_web'
    return s:ExecuteOpenWebTool(a:arguments.url)
  elseif a:tool_name == 'web_search'
    " py3eval not available on all systems...
    " let l:escaped_query = py3eval("''.join([c if c.isalnum() or c in '-._~' else '%{:02X}'.format(ord(c)) for c in vim.eval('a:arguments.query')])")
    " " return s:ExecuteOpenWebTool("https://www.google.com/search?q=" . l:escaped_query)
    " return s:ExecuteOpenWebTool("https://search.brave.com/search?q=" . l:escaped_query)

    " Not working, getting blocked by captcha
    " let l:query = a:arguments.query
    " let l:escaped_query = s:UrlEncode(l:query)
    " return s:ExecuteOpenWebTool("https://search.brave.com/search?q=" . l:escaped_query)

    "NOTE you need to get a free api key from https://brave.com/search/api/
    "     and set $BRAVE_API_KEY to the key
    if !exists('g:ai_web_search_api_key') || empty(g:ai_web_search_api_key)
      return 'Error: g:ai_web_search_api_key is not set. Get a free API key from https://brave.com/search/api/ and set g:ai_web_search_api_key in your vimrc.'
    endif
    let l:query = a:arguments.query
    let l:escaped_query = s:UrlEncode(l:query)
    let l:result = system("curl -s --compressed --header " . shellescape("Accept: application/json") .
      \ " --header " . shellescape("X-Subscription-Token: " . g:ai_web_search_api_key) .
      \ " " . shellescape("https://api.search.brave.com/res/v1/web/search?q=" . l:escaped_query))
    return l:result
  else
    return 'Error: Unknown tool ' . a:tool_name
  endif
endfunction

function! s:UrlEncode(str)
  let l:result = ''
  let l:i = 0
  while l:i < len(a:str)
    let l:c = a:str[l:i]
    if l:c =~ '[a-zA-Z0-9\-._~]'
      let l:result .= l:c
    elseif l:c == ' '
      let l:result .= '+'
    else
      let l:result .= printf('%%%02X', char2nr(l:c))
    endif
    let l:i += 1
  endwhile
  return l:result
endfunction


function! s:ExecutePythonCode(code)
  redraw
  let l:confirm = input("Execute this Python code? (y/n/C-C; if you C-C to stop now, you can C-] later to resume) ")
  if l:confirm =~? '^y'
    let l:result = system('python3 -c ' . shellescape(a:code))
    return l:result
  else
    return "Python code execution cancelled by user."
  endif
endfunction


function! s:ExecuteShellCommand(command)
  redraw
  let l:confirm = input("Execute this shell command? (y/n/C-C; if you C-C to stop now, you can C-] later to resume) ")
  if l:confirm =~? '^y'
    let l:output = system(a:command)
    let l:exit_status = v:shell_error
    return l:output . "\nExit status: " . l:exit_status
  else
    return "Shell command execution cancelled by user."
  endif
endfunction


function! s:ExecuteOpenTool(path)
  let l:current_winid = win_getid()

  topleft 1new

  try
    execute 'edit ' . fnameescape(a:path)
    let l:bufname = bufname('%')

    if line('$') == 1 && getline(1) == ''
      close
      call win_gotoid(l:current_winid)
      return 'ERROR: The opened buffer was empty (non-existent?)'
    else
      call win_gotoid(l:current_winid)
      return l:bufname
    endif
  catch
    close
    call win_gotoid(l:current_winid)
    return 'ERROR: ' . v:exception
  endtry
endfunction


function! s:ExecuteNewTool(path)
  if filereadable(a:path)
    return 'ERROR: File already exists: ' . a:path
  endif

  let l:current_winid = win_getid()

  topleft 1new
  execute 'silent write ' . fnameescape(a:path)
  let l:bufname = bufname('%')

  call win_gotoid(l:current_winid)
  return l:bufname
endfunction


function! s:ExecuteOpenWebTool(url)
  let l:current_winid = win_getid()

  topleft 1new
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
  " Claude Fix — Mark web/tool buffers as unlisted so they don't get re-sent:
  setlocal nobuflisted

  " execute ':r !elinks -dump ' . escape(shellescape(a:url), '%#!')
  " execute ':r !elinks -eval "set protocol.http.user_agent = \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\"" -dump ' . escape(shellescape(a:url), '%#!')
  execute ':r !curl -s -L -A "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" ' . escape(shellescape(a:url), '%#!') . ' | python3 -c "import sys,html2text; h=html2text.HTML2Text(); h.ignore_images=True; h.body_width=120; print(h.handle(sys.stdin.read()))"'
  if v:shell_error
    close
    call win_gotoid(l:current_winid)
    return 'ERROR: Failed to fetch content from ' . a:url . ': ' . v:shell_error
  endif

  " Read and return buffer contents as the tool result
  let l:bufname = fnameescape(a:url)
  execute 'file ' . l:bufname

  let l:contents = join(getline(1, '$'), "\n")

  call win_gotoid(l:current_winid)
  return l:contents
endfunction


function! s:LogImplementInChat(instruction, implement_response, bufname, start_line, end_line)
  let [l:chat_bufnr, l:chat_winid, l:current_winid] = s:GetOrCreateChatWindow()

  let start_line_text = getline(a:start_line)
  let end_line_text = getline(a:end_line)

  if l:chat_winid != -1
    call win_gotoid(l:chat_winid)
    let l:indent = s:GetClaudeIndent()

    " Remove trailing "You:" line if it exists
    let l:last_line = line('$')
    if getline(l:last_line) =~ '^You:\s*$'
      execute l:last_line . 'delete _'
    endif

    call append('$', 'You: Implement in ' . a:bufname . ' (lines ' . a:start_line . '-' . a:end_line . '): ' . a:instruction)
    call append('$', l:indent . start_line_text)
    if a:end_line - a:start_line > 1
      call append('$', l:indent . "...")
    endif
    if a:end_line - a:start_line > 0
      call append('$', l:indent . end_line_text)
    endif
    call s:AppendResponse(a:implement_response)
    if g:claude_enable_folding
      call s:ClosePreviousFold()
    endif
    call s:CloseCurrentInteractionCodeBlocks()
    call s:AppendTokenUsage()
    call s:PrepareNextInput()

    call win_gotoid(l:current_winid)
  endif
endfunction


function! s:ClaudeImplement(line1, line2, instruction) range
  " Get the selected code
  let l:selected_code = join(getline(a:line1, a:line2), "\n")
  let l:bufnr = bufnr('%')
  let l:bufname = bufname('%')
  let l:winid = win_getid()

  " Prepare the prompt for code implementation
  let l:prompt = "<code>\n" . l:selected_code . "\n</code>\n\n"
  let l:prompt .= join(g:claude_implement_prompt, "\n")

  " Query Claude
  let l:messages = [{'role': 'user', 'content': a:instruction}]
  call s:ClaudeQueryInternal(l:messages, l:prompt, [],
        \ function('s:StreamingImplementResponse'),
        \ function('s:FinalImplementResponse', [a:line1, a:line2, l:bufnr, l:bufname, l:winid, a:instruction]))
endfunction


function! s:ExtractCodeFromMarkdown(markdown)
  let l:lines = split(a:markdown, "\n")
  let l:in_code_block = 0
  let l:code = []
  for l:line in l:lines
    if l:line =~ '^```'
      let l:in_code_block = !l:in_code_block
    elseif l:in_code_block
      call add(l:code, l:line)
    endif
  endfor
  return join(l:code, "\n")
endfunction


function! s:StreamingImplementResponse(delta)
  if !exists("s:implement_response")
    let s:implement_response = ""
  endif

  let s:implement_response .= a:delta
endfunction


function! s:FinalImplementResponse(line1, line2, bufnr, bufname, winid, instruction)
  call win_gotoid(a:winid)

  call s:LogImplementInChat(a:instruction, s:implement_response, a:bufname, a:line1, a:line2)

  let l:implemented_code = s:ExtractCodeFromMarkdown(s:implement_response)

  let l:changes = [{
    \ 'type': 'content',
    \ 'normal_command': a:line1 . 'GV' . a:line2 . 'Gc',
    \ 'content': l:implemented_code
    \ }]
  call s:ApplyCodeChangesDiff(a:bufnr, l:changes)

  echomsg "Apply diff, see :help diffget. Close diff buffer with :q."

  unlet s:implement_response
  unlet! s:current_chat_job
endfunction


function! s:GetOrCreateChatWindow()
  let l:chat_bufnr = bufnr('AI Chat')
  if l:chat_bufnr == -1 || !bufloaded(l:chat_bufnr)
    call s:OpenClaudeChat()
    let l:chat_bufnr = bufnr('AI Chat')
  endif

  let l:chat_winid = bufwinid(l:chat_bufnr)
  let l:current_winid = win_getid()

  return [l:chat_bufnr, l:chat_winid, l:current_winid]
endfunction


function! s:GetClaudeIndent()
  if g:claude_no_indent
    return ''
  else
    if &expandtab
      return repeat(' ', &shiftwidth)
    else
      return repeat("\t", (&shiftwidth + &tabstop - 1) / &tabstop)
    endif
  endif
endfunction


function! s:AppendResponse(response)
  let l:response_lines = split(a:response, "\n")
  if len(l:response_lines) == 1
    " call append('$', 'Claude: ' . l:response_lines[0])
    call append('$', g:ai_model . ': ' . l:response_lines[0])
  else
    " call append('$', 'Claude:')
    call append('$', g:ai_model . ':')
    let l:indent = s:GetClaudeIndent()
    call append('$', map(l:response_lines, {_, v -> v =~ '^\s*$' ? '' : l:indent . v}))
  endif
endfunction


function! GetChatFold(lnum)
  let l:line = getline(a:lnum)
  let l:prev_level = foldlevel(a:lnum - 1)

  if l:line =~ '^You:' || l:line =~ '^System prompt:'
    return '>1'  " Start a new fold at level 1
  elseif l:line =~ '^\s' || l:line =~ '^$' || l:line =~ '^.*:'
    if l:line =~ '^\s*```'
      if l:prev_level == 1
        return '>2'  " Start a new fold at level 2 for code blocks
      else
        return '<2'  " End the fold for code blocks
      endif
    else
      return '='   " Use the fold level of the previous line
    fi
  else
    return '0'  " Terminate the fold
  endif
endfunction


function! g:SetupClaudeChatSyntax()
  if exists("b:current_syntax")
    return
  endif

  " syntax include @markdown syntax/markdown.vim

  if !empty(g:claude_default_system_prompt)
    " hi default link claudeChatSystem Comment
    " syntax region claudeChatSystem start=/^System prompt:/ end=/^\S/me=s-1 contains=claudeChatSystemKeyword
    hi default link claudeChatSystemKeyword Keyword
    syntax match claudeChatSystemKeyword /^System prompt:/ contained
  endif

  hi default link claudeChatYou Todo
  syntax match claudeChatYou /^You:/

  hi default link claudeChatClaude Note
  syntax match claudeChatClaude /^[Cc]laude[a-zA-Z0-9._-]*:/
  syntax match claudeChatClaude /^[Qq]wen[a-zA-Z0-9._:-]*\%(\s\)\@=/
  syntax match claudeChatClaude /^[Gg]emini[a-zA-Z0-9._-]*:/
  syntax match claudeChatClaude /^gpt-[a-zA-Z0-9._-]*:/
  syntax match claudeChatClaude /^o[0-9][a-zA-Z0-9._-]*:/

  hi default link claudeChatToolResult Structure
  syntax match claudeChatToolResult /^Tool result.*:/

  hi default link claudeChatToolUse Structure
  syntax match claudeChatToolUse /^Tool use.*:/ nextgroup=claudeChatKeywords skipwhite

  hi default link claudeChatKeywords Keyword
  syntax keyword claudeChatKeywords web_search open_web open shell new python

  hi default link claudeChatQuotes Debug
  syntax match claudeChatQuotes "[`]"
  syntax match claudeChatQuotes "\%(\s\|^\|[{(/[:]\)\@<=`[!-_a-~ –]\{-1,}`\%(\s\|$\|[:/.,)}\]?!;]\)\@=" contains=claudeChatError
  syntax match claudeChatQuotes "\%(\s\|^\|[{(/[:]\)\@<='[!-_a-~ –]\{-1,}'\%(\s\|$\|[:/.,)}\]?!;]\)\@=" contains=claudeChatError
  syntax match claudeChatQuotes '\%(\s\|^\|[{(/[:]\)\@<="[!-_a-~ –]\{-1,}"\%(\s\|$\|[:/.,)}\]?!;]\)\@=' contains=claudeChatError

  hi default link claudeChatAsterixQuotes Type
  syntax match claudeChatAsterixQuotes "\*\*.\{-}\*\*"

  hi default link claudeChatTokens MoreMsg
  syntax match claudeChatTokens "([0-9-]\+\s[0-9:]\+\s-\sToken usage.*"

  hi default link claudeChatCodeBlock StorageClass
  syntax region claudeChatCodeBlock start=/^\s*```\%($\)\@!/ end=/^\s*```\%($\)\@=/ contains=@NoSpell

  hi default link claudeChatTitles0 Keyword
  hi default link claudeChatTitles1 Define
  hi default link claudeChatTitles2 Label
  hi default link claudeChatTitles3 Delimiter
  syntax match claudeChatTitles0 "^\s*# .*"
  syntax match claudeChatTitles0 "\%([Cc]laude[a-zA-Z0-9._-]*:\s\)\@<=# .*" contains=@NoSpell
  syntax match claudeChatTitles1 "^\s*## .*"
  syntax match claudeChatTitles2 "^\s*### .*"
  syntax match claudeChatTitles3 "^\s*#### .*"

  hi default link claudeChatError Error
  syntax match claudeChatError "\<\%([Ee]rror\|ERROR\)\%([:'"`]\)\@=\>"

  hi default link claudeChatTables Operator
  syntax match claudeChatTables "|"
  syntax match claudeChatTables "---\+"

  hi default link claudeChatWebLinks Underlined
  syntax match claudeChatWebLinks "\<www\.[A-Za-z0-9\-._~:/?#\[\]@!$&''()*+,;=%]\+" contains=@NoSpell
  syntax match claudeChatWebLinks '\<\w\+:\/\/[A-Za-z0-9\-._~:/?#\[\]@!$&'()*+,;=%]\+' contains=@NoSpell

  let b:current_syntax = "claudechat"
endfunction


function! s:GoToLastYouLine()
  normal! G$
endfunction


function! s:OpenClaudeChat()
  let l:claude_bufnr = bufnr('AI Chat')

  if l:claude_bufnr == -1 || !bufloaded(l:claude_bufnr)
    execute 'botright new AI Chat'
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal noswapfile
    setlocal linebreak

    if g:claude_enable_folding
      setlocal foldmethod=expr
      setlocal foldexpr=GetChatFold(v:lnum)
      setlocal foldlevel=1
    endif

    call g:SetupClaudeChatSyntax()

    if !empty(g:claude_default_system_prompt) && join(g:claude_default_system_prompt, '') !~ '^\s*$'
      call setline(1, ['System prompt: ' . g:claude_default_system_prompt[0]])
      call append('$', map(g:claude_default_system_prompt[1:], {_, v -> "\t" . v}))
      " call append('$', ['Type your messages below, press C-] to send.  (Content of all buffers is shared alongside!)', '', 'You: '])
      call append('$', ['You: '])
    else
      call setline(1, ['You: '])
      " call setline(2, ['Answer from your knowledge directly and be brief.'])
    endif

    " Fold the system prompt
    if g:claude_enable_folding
      normal! 1Gzc
    endif

    augroup ClaudeChat
      autocmd!
      autocmd BufWinEnter <buffer> call s:GoToLastYouLine()
    augroup END

    " Add mappings for this buffer
    command! -buffer -nargs=1 SendChatMessage call s:SendChatMessage(<q-args>)
    " execute "inoremap <buffer> " . g:ai_map_send_chat_message . " <Esc>:call <SID>SendChatMessage('Claude:')<CR>"
    " execute "nnoremap <buffer> " . g:ai_map_send_chat_message . " :call <SID>SendChatMessage('Claude:')<CR>"
    execute "inoremap <buffer> " . g:ai_map_send_chat_message . " <Esc>:call <SID>SendChatMessage(g:ai_model . ':')<CR>"
    execute "nnoremap <buffer> " . g:ai_map_send_chat_message . " :call <SID>SendChatMessage(g:ai_model . ':')<CR>"
    " DS: make the cancel key for ai_map_cancel_response local to the claude chat buffer only
    execute "nnoremap <buffer> " . g:ai_map_cancel_response . " :ClaudeCancel<CR>"
  else
    let l:claude_winid = bufwinid(l:claude_bufnr)
    if l:claude_winid == -1
      execute 'botright split'
      execute 'buffer' l:claude_bufnr
    else
      call win_gotoid(l:claude_winid)
    endif
  endif
  call s:GoToLastYouLine()
endfunction


function! s:AddMessageToList(messages, message)
  if !empty(a:message.role)
    let l:message = {'role': a:message.role, 'content': join(a:message.content, "\n")}
    if !empty(a:message.tool_use)
      let l:text = l:message.content
      if g:ai_model =~# '^gpt\|^o[0-9]'
        " OpenAI format: tool_calls array on the assistant message
        let l:tool_call = {
          \ 'id': a:message.tool_use.id,
          \ 'type': 'function',
          \ 'function': {
          \   'name': a:message.tool_use.name,
          \   'arguments': json_encode(a:message.tool_use.input)
          \ }
          \ }
        let l:message['tool_calls'] = [l:tool_call]
        if empty(l:text)
          let l:message['content'] = v:null
        endif
      elseif g:ai_model =~# '^gemini'
        " Gemini uses 'model' role and parts array
        let l:message['role'] = 'model'
        let l:parts = []
        if !empty(l:text)
          call add(l:parts, {'text': l:text})
        endif
        call add(l:parts, {'functionCall': {'name': a:message.tool_use.name, 'args': a:message.tool_use.input}})
        let l:message['parts'] = l:parts
        call remove(l:message, 'content')
      else
        " Claude format: content array with tool_use block
        if !empty(l:text)
          let l:message['content'] = [{'type': 'text', 'text': l:text}, a:message.tool_use]
        else
          let l:message['content'] = [a:message.tool_use]
        endif
      endif
    endif
    if !empty(a:message.tool_result)
      if g:ai_model =~# '^gpt\|^o[0-9]'
        " OpenAI tool result: role=tool message
        let l:message = {
          \ 'role': 'tool',
          \ 'tool_call_id': a:message.tool_result.tool_use_id,
          \ 'content': a:message.tool_result.content
          \ }
      elseif g:ai_model =~# '^gemini'
        " Gemini tool result: role=user with functionResponse part
        " We need the tool name — store it in tool_result during parsing
        let l:message = {
          \ 'role': 'user',
          \ 'parts': [{'functionResponse': {
          \   'name': get(a:message.tool_result, 'tool_name', 'unknown'),
          \   'response': {'content': a:message.tool_result.content}
          \ }}]
          \ }
      else
        let l:clean_result = {
          \ 'type': a:message.tool_result.type,
          \ 'tool_use_id': a:message.tool_result.tool_use_id,
          \ 'content': a:message.tool_result.content
          \ }
        let l:message['content'] = [l:clean_result]
      endif
    endif
    call add(a:messages, l:message)
  endif
endfunction


function! s:InitMessage(role, line)
  return {
    \ 'role': a:role,
    \ 'content': [substitute(a:line, '^\S*\s*', '', '')],
    \ 'tool_use': {},
    \ 'tool_result': {}
  \ }
endfunction


function! s:ParseToolUse(line)
  let l:match = matchlist(a:line, '^Tool use (\(.*\)): \(.*\)$')
  if empty(l:match)
    return {}
  endif

  return {
    \ 'type': 'tool_use',
    \ 'id': l:match[1],
    \ 'name': l:match[2],
    \ 'input': {}
  \ }
endfunction


function! s:InitToolResult(line, lnum)
  let l:match = matchlist(a:line, '^Tool result (\(.*\)):')
  let l:tool_use_id = l:match[1]

  let l:tool_name = 'unknown'
  let l:search_lnum = a:lnum - 1
  while l:search_lnum > 0
    let l:bline = getline(l:search_lnum)
    if l:bline =~# '^Tool use (' . escape(l:tool_use_id, '()') . '):'
      let l:m = matchlist(l:bline, '^Tool use ([^)]*): \(.*\)$')
      if !empty(l:m)
        let l:tool_name = l:m[1]
      endif
      break
    endif
    let l:search_lnum -= 1
  endwhile

  return {
    \ 'role': 'user',
    \ 'content': [],
    \ 'tool_use': {},
    \ 'tool_result': {
      \ 'type': 'tool_result',
      \ 'tool_use_id': l:tool_use_id,
      \ 'tool_name': l:tool_name,
      \ 'content': ''
    \ }
  \ }
endfunction


function! s:AppendContent(message, line)
  let l:indent = s:GetClaudeIndent()
  if !empty(a:message.tool_use)
    if a:line =~ '^\s*Input:'
      let a:message.tool_use.input = json_decode(substitute(a:line, '^\s*Input:\s*', '', ''))
    elseif a:message.tool_use.name == 'python'
      if !has_key(a:message.tool_use.input, 'code')
        let a:message.tool_use.input.code = ''
      endif
      let a:message.tool_use.input.code .= (empty(a:message.tool_use.input.code) ? '' : "\n") . substitute(a:line, '^' . l:indent, '', '')
    endif
  elseif !empty(a:message.tool_result)
    let a:message.tool_result.content .= (empty(a:message.tool_result.content) ? '' : "\n") . substitute(a:line, '^' . l:indent, '', '')
  else
    call add(a:message.content, substitute(substitute(a:line, '^' . l:indent, '', ''), '\s*\[APPLIED\]$', '', ''))
  endif
endfunction


function! s:ProcessLine(line, messages, current_message, lnum)
  let l:new_message = copy(a:current_message)

  if a:line =~ '^You:'
    call s:AddMessageToList(a:messages, l:new_message)
    let l:new_message = s:InitMessage('user', a:line)
  elseif a:line =~ '^Claude'  " both Claude: and Claude...:
    call s:AddMessageToList(a:messages, l:new_message)
    let l:new_message = s:InitMessage('assistant', a:line)
  elseif a:line =~ '^gpt-' || a:line =~ '^o[0-9][a-zA-Z0-9._-]*:'
    call s:AddMessageToList(a:messages, l:new_message)
    let l:new_message = s:InitMessage('assistant', a:line)
  elseif a:line =~ '^gemini'
    call s:AddMessageToList(a:messages, l:new_message)
    let l:new_message = s:InitMessage('assistant', a:line)
  elseif a:line =~ '^Tool use ('
    let l:new_message.tool_use = s:ParseToolUse(a:line)
  elseif a:line =~ '^Tool result ('
    call s:AddMessageToList(a:messages, l:new_message)
    let l:new_message = s:InitToolResult(a:line, a:lnum)
  elseif !empty(l:new_message.role)
    call s:AppendContent(l:new_message, a:line)
  endif

  return l:new_message
endfunction


function! s:ParseChatBuffer()
  let l:buffer_content = getline(1, '$')
  let l:messages = []
  let l:current_message = {'role': '', 'content': [], 'tool_use': {}, 'tool_result': {}}
  let l:system_prompt = []
  let l:in_system_prompt = 0

  for l:lnum in range(len(l:buffer_content))
    let line = l:buffer_content[l:lnum]
    if line =~ '^System prompt:'
      let l:in_system_prompt = 1
      let l:system_prompt = [substitute(line, '^System prompt:\s*', '', '')]
    elseif l:in_system_prompt && line =~ '^\s'
      call add(l:system_prompt, substitute(line, '^\s*', '', ''))
    else
      let l:in_system_prompt = 0
    " let l:current_message = s:ProcessLine(line, l:messages, l:current_message)
      let l:current_message = s:ProcessLine(line, l:messages, l:current_message, l:lnum + 1)
    endif
  endfor

  if !empty(l:current_message.role)
    call s:AddMessageToList(l:messages, l:current_message)
  endif

  return [filter(l:messages, {_, v -> has_key(v, 'content') ? !empty(v.content) : has_key(v, 'parts')}), join(l:system_prompt, "\n"), l:current_message]
endfunction


function! s:GetBuffersContent()
  let l:buffers = []
  for bufnr in range(1, bufnr('$'))
    if buflisted(bufnr) && bufname(bufnr) != 'AI Chat' && !empty(win_findbuf(bufnr))
      let l:bufname = bufname(bufnr)
      let l:contents = join(getbufline(bufnr, 1, '$'), "\n")
      call add(l:buffers, {'name': l:bufname, 'contents': l:contents})
    endif
  endfor
  return l:buffers
endfunction


function! s:SendChatMessage(prefix)

  " If using gemini AI
  if g:ai_model =~# '^gemini'
    let [l:messages, l:system_prompt, l:last_raw] = s:ParseChatBuffer()
    let l:tool_uses = s:ResponseExtractToolUses(l:last_raw)
    if !empty(l:tool_uses)
      for l:tool_use in l:tool_uses
        if g:ai_disable_tool_use == 0
          let l:tool_result = s:ExecuteTool(l:tool_use.name, l:tool_use.input)
        else
          let l:tool_result = 'Tools are not available'
        endif
        call s:AppendToolResult(l:tool_use.id, l:tool_result)
      endfor
      let [l:messages, l:system_prompt, l:last_raw] = s:ParseChatBuffer()
    endif

    if a:prefix ==# g:ai_model . ':'
      let l:buffer_contents = s:GetBuffersContent()
      let l:content_prompt = "# Contents of open buffers\n\n"
      for buffer in l:buffer_contents
        let l:content_prompt .= "Buffer: " . buffer.name . "\n"
        let l:content_prompt .= "<content>\n" . buffer.contents . "</content>\n\n"
      endfor
    else
      let l:content_prompt = ''
    endif

    call append('$', a:prefix . " ")
    normal! G

    if a:prefix ==# g:ai_model . ':'
      unlet! s:total_input_tokens s:total_output_tokens
      unlet! s:total_cache_creation_tokens s:total_cache_read_tokens
      unlet! s:stored_input_tokens s:stored_cache_creation_tokens s:stored_cache_read_tokens
    endif

    let l:job = s:ClaudeQueryInternal(l:messages, l:content_prompt . l:system_prompt,
          \ g:ai_disable_tool_use ? [] : g:ai_tools_list,
          \ function('s:StreamingChatResponse'), function('s:FinalChatResponse'))

    if has('nvim')
      let s:current_chat_job = l:job
    else
      let s:current_chat_job = job_getchannel(l:job)
    endif

  " If using Qwen Local AI
  elseif g:ai_model =~# '^qwen'
    let l:all_context = s:FormatAllBuffersForPrompt()
    let l:input = getline('.')  " Get current line as input
    let l:prompt = l:all_context . "\n\nQuestion:\n" . l:input . "\n\n"

    " If you're using Qwen, include current buffer content
    " let l:buffer_content = join(getbufline('%', 1, '$'), "\n")
    " let l:input = "Context:\n" . l:buffer_content . "\n\nQuestion:\n" . l:input

    " if a:prefix ==# 'Claude. ..:'
    "   " This is a special case for tool use or continuation
    "   call s:AppendResponse('[Skipping Claude for now]')
    "   return
    " endif

    " let l:response = s:CallQwen(l:input)
    " call s:AppendResponse(l:response)
    " call s:PrepareNextInput()

    call append('$', g:ai_model . ': ')
    normal! G

    let s:qwen_response_finalized = 0   " arm the guard
    call s:CallQwenAsync(l:prompt)

  " If using Claude AI
  else
    let [l:messages, l:system_prompt, l:last_raw] = s:ParseChatBuffer()
    let l:tool_uses = s:ResponseExtractToolUses(l:last_raw)
    if !empty(l:tool_uses)
      for l:tool_use in l:tool_uses
        if g:ai_disable_tool_use == 0
          let l:tool_result = s:ExecuteTool(l:tool_use.name, l:tool_use.input)
        else
          let l:tool_result = 'Tools are not available'
        endif
        call s:AppendToolResult(l:tool_use.id, l:tool_result)
      endfor
      let [l:messages, l:system_prompt, l:last_raw] = s:ParseChatBuffer()
    endif

    " Claude Fix — Only send buffer contents on the *first* user message of an interaction, not on every tool follow-up.
    if a:prefix ==# g:ai_model . ':'
      let l:buffer_contents = s:GetBuffersContent()
      let l:content_prompt = "# Contents of open buffers\n\n"
      for buffer in l:buffer_contents
        let l:content_prompt .= "Buffer: " . buffer.name . "\n"
        let l:content_prompt .= "<content>\n" . buffer.contents . "</content>\n\n"
        let l:content_prompt .= "============================\n\n"
      endfor
    else
      let l:content_prompt = ''
    endif


    " Select between batch API and norming streaming path
    if g:claude_batch_api && a:prefix ==# g:ai_model . ':'
      " --- Batch API path ---
      let l:custom_id = 'vim-chat-' . localtime()

      " Rebuild data with custom_id baked in
      let l:batch_url = 'https://api.anthropic.com/v1/messages/batches'
      let l:params = {
        \ 'model': g:ai_model,
        \ 'max_tokens': g:ai_max_output_tokens,
        \ 'messages': l:messages,
        \ }
      if !empty(l:content_prompt . l:system_prompt)
        let l:params['system'] = l:content_prompt . l:system_prompt
      endif

      let l:data = {
        \ 'requests': [{'custom_id': l:custom_id, 'params': l:params}]
        \ }

      let l:json_data = json_encode(l:data)
      let l:tmp_file = tempname()
      call writefile([l:json_data], l:tmp_file)

      let l:cmd = [
        \ 'curl', '-s', '-X', 'POST',
        \ '-H', 'Content-Type: application/json',
        \ '-H', 'x-api-key: ' . g:claude_api_key,
        \ '-H', 'anthropic-version: 2023-06-01',
        \ '--data-binary', '@' . l:tmp_file,
        \ l:batch_url
        \ ]

      let l:response = system(join(map(copy(l:cmd), 'shellescape(v:val)'), ' '))
      call delete(l:tmp_file)

      try
        let l:parsed = json_decode(l:response)
      catch
        call s:AppendResponse('Batch submit parse error: ' . l:response)
        call s:PrepareNextInput()
        return
      endtry

      if !has_key(l:parsed, 'id')
        call s:AppendResponse('Batch submit failed: ' . l:response)
        call s:PrepareNextInput()
        return
      endif

      let l:batch_id = l:parsed.id
      call append('$', g:ai_model . ': ')
      call append('$', '[Batch: waiting] ID: ' . l:batch_id . ' — polling every ' . g:claude_batch_poll_interval . 's...')
      normal! G
      echom 'Batch submitted: ' . l:batch_id . ' — polling every ' . g:claude_batch_poll_interval . 's'

      let s:current_batch_timer = timer_start(g:claude_batch_poll_interval * 1000,
            \ function('s:ClaudeBatchPoll', [l:batch_id, l:custom_id]))
      let s:current_batch_id = l:batch_id
    else
      " --- Normal streaming path ---
      call append('$', a:prefix . " ")
      normal! G

      " Reset token accumulators for a fresh top-level request
      if a:prefix ==# g:ai_model . ':'
        unlet! s:total_input_tokens
        unlet! s:total_output_tokens
        unlet! s:total_cache_creation_tokens
        unlet! s:total_cache_read_tokens
        unlet! s:stored_input_tokens
        unlet! s:stored_cache_creation_tokens
        unlet! s:stored_cache_read_tokens
      endif

      let l:job = s:ClaudeQueryInternal(l:messages, l:content_prompt . l:system_prompt, g:ai_tools_list,
            \ function('s:StreamingChatResponse'), function('s:FinalChatResponse'))

      " Store the job ID or channel for potential cancellation
      if has('nvim')
        let s:current_chat_job = l:job
      else
        let s:current_chat_job = job_getchannel(l:job)
      endif
    endif
  endif
endfunction


" Command to send message in normal mode
" command! ClaudeSend call <SID>SendChatMessage('Claude:')
command! ClaudeSend call <SID>SendChatMessage(g:ai_model . ':')


function! s:ResponseExtractToolUses(last_raw_message)
  " if len(a:messages) == 0
  "   return []
  " elseif type(a:messages[-1].content) == v:t_list
  "   return filter(copy(a:messages[-1].content), 'v:val.type == "tool_use"')
  " else
  "   return []
  " endif
  if !empty(a:last_raw_message.tool_use)
    return [a:last_raw_message.tool_use]
  endif
  return []
endfunction


function! s:AppendToolUse(tool_call_id, tool_name, tool_input)
  let l:indent = s:GetClaudeIndent()
  " Ensure there's text content before the first tool use
  if getline('$') =~# '^\%(Claude\|gpt-\|o[0-9]\)[^:]*: *$'
    call setline('$', g:ai_model . '...: (tool-only response)')
  endif
  call append('$', 'Tool use (' . a:tool_call_id . '): ' . a:tool_name)
  if a:tool_name == 'python'
    for line in split(a:tool_input.code, "\n")
      call append('$', l:indent . line)
    endfor
  else
    call append('$', l:indent . 'Input: ' . json_encode(a:tool_input))
  endif
  normal! G
endfunction


function! s:AppendToolResult(tool_call_id, result)
  let l:indent = s:GetClaudeIndent()
  call append('$', 'Tool result (' . a:tool_call_id . '):')
  call append('$', map(split(a:result, "\n"), {_, v -> l:indent . v}))
  normal! G
endfunction


function! s:ProcessCodeBlock(block, all_changes)
  let l:matches = matchlist(a:block.header, '^\(\S\+\)\s\+\([^:]\+\)\%(:\(.*\)\)\?$')
  let l:filetype = get(l:matches, 1, '')
  let l:buffername = get(l:matches, 2, '')
  let l:normal_command = get(l:matches, 3, '')

  if empty(l:buffername)
    echom "Warning: No buffer name specified in code block header"
    return
  endif

  let l:target_bufnr = bufnr(l:buffername)

  if l:target_bufnr == -1
    echom "Warning: Buffer not found for " . l:buffername
    return
  endif

  if !has_key(a:all_changes, l:target_bufnr)
    let a:all_changes[l:target_bufnr] = []
  endif

  if l:filetype ==# 'vimexec'
    call add(a:all_changes[l:target_bufnr], {
          \ 'type': 'vimexec',
          \ 'commands': a:block.code
          \ })
  else
    if empty(l:normal_command)
      " By default, append to the end of file
      let l:normal_command = 'Go<CR>'
    endif

    call add(a:all_changes[l:target_bufnr], {
          \ 'type': 'content',
          \ 'normal_command': l:normal_command,
          \ 'content': join(a:block.code, "\n")
          \ })
  endif

  " Mark the applied code block
  let l:indent = s:GetClaudeIndent()
  call setline(a:block.start_line - 1, l:indent . '```' . a:block.header . ' [APPLIED]')
endfunction


function! s:ResponseExtractChanges()
  let l:all_changes = {}

  " Find the start of the last Claude block
  normal! G
  " let l:start_line = search('^Claude:', 'b')  " Skip over Claude...:
  let l:start_line = search('^' . g:ai_model . ':', 'b')  " Skip over claude-model...:
  let l:end_line = line('$')
  let l:markdown_delim = '^' . s:GetClaudeIndent() . '```'

  let l:in_code_block = 0
  let l:current_block = {'header': '', 'code': [], 'start_line': 0}

  for l:line_num in range(l:start_line, l:end_line)
    let l:line = getline(l:line_num)

    if l:line =~ l:markdown_delim
      if ! l:in_code_block
        " Start of code block
        let l:current_block = {'header': substitute(l:line, l:markdown_delim, '', ''), 'code': [], 'start_line': l:line_num + 1}
        let l:in_code_block = 1
      else
        " End of code block
        let l:current_block.end_line = l:line_num
        call s:ProcessCodeBlock(l:current_block, l:all_changes)
        let l:in_code_block = 0
      endif
    elseif l:in_code_block
      call add(l:current_block.code, substitute(l:line, '^' . s:GetClaudeIndent(), '', ''))
    endif
  endfor

  " Process any remaining open code block
  if l:in_code_block
    let l:current_block.end_line = l:end_line
    call s:ProcessCodeBlock(l:current_block, l:all_changes)
  endif

  return l:all_changes
endfunction


function s:ApplyChangesFromResponse()
  let l:all_changes = s:ResponseExtractChanges()
  if !empty(l:all_changes)
    for [l:target_bufnr, l:changes] in items(l:all_changes)
      call s:ApplyCodeChangesDiff(str2nr(l:target_bufnr), l:changes)
    endfor
  endif
  normal! G
endfunction


function! s:ClosePreviousFold()
  let l:save_cursor = getpos(".")

  normal! G[zk[zzc

  if foldclosed('.') == -1
    echom "Warning: Failed to close previous fold at line " . line('.')
  endif

  call setpos('.', l:save_cursor)
endfunction


function! s:CloseCurrentInteractionCodeBlocks()
  let l:save_cursor = getpos(".")

  " Move to the start of the current interaction
  normal! [z

  " Find and close all level 2 folds until the end of the interaction
  if g:claude_enable_folding
    while 1
      if foldlevel('.') == 2
        normal! zc
      endif

      let current_line = line('.')
      normal! j
      if line('.') == current_line || foldlevel('.') < 1 || line('.') == line('$')
        break
      endif
    endwhile
  endif

  call setpos('.', l:save_cursor)
endfunction


function! s:PrepareNextInput()
  call append('$', '')
  call append('$', 'You: ')
  normal! G$
endfunction


function! s:StreamingChatResponse(delta)
  let [l:chat_bufnr, l:chat_winid, l:current_winid] = s:GetOrCreateChatWindow()
  call win_gotoid(l:chat_winid)

  let l:indent = s:GetClaudeIndent()
  let l:new_lines = split(a:delta, "\n", 1)

  if len(l:new_lines) > 0
    " Update the last line with the first segment of the delta
    let l:last_line = getline('$')
    call setline('$', l:last_line . l:new_lines[0])

    call append('$', map(l:new_lines[1:], {_, v -> l:indent . v}))
  endif

  normal! G
  call win_gotoid(l:current_winid)
endfunction


function! s:FinalChatResponse()
  let [l:chat_bufnr, l:chat_winid, l:current_winid] = s:GetOrCreateChatWindow()
  let [l:messages, l:system_prompt, l:last_raw] = s:ParseChatBuffer()
  let l:tool_uses = s:ResponseExtractToolUses(l:last_raw)

  call s:ApplyChangesFromResponse()

  if !empty(l:tool_uses)
    " call s:SendChatMessage('Claude...:')
    call s:SendChatMessage(g:ai_model . '...:')
  else
    if g:claude_enable_folding
      call s:ClosePreviousFold()
    endif
    call s:CloseCurrentInteractionCodeBlocks()
    call s:AppendTokenUsage()
    call s:PrepareNextInput()
    call win_gotoid(l:current_winid)
    unlet! s:current_chat_job
  endif
endfunction


function! s:AppendTokenUsage()
  if exists('s:last_token_usage')

    let l:pricing_warning = ''
    if !has_key(s:claude_pricing, g:ai_model)
      let l:pricing_warning = printf(
        \ "  WARNING: '%s' does not have a price in s:claude_pricing. Defaulting to [3.00, 15.00].",
        \ g:ai_model)
      " call append('$', '(' . l:pricing_warning . ')')
      echom l:pricing_warning
    endif

    " call append('$', '(' . s:last_token_usage . ')')
    echom s:last_token_usage
    unlet s:last_token_usage
  endif
endfunction


function! s:CancelClaudeResponse()
  if exists("s:current_chat_job")
    if has('nvim')
      call jobstop(s:current_chat_job)
    else
      call ch_close(s:current_chat_job)
    endif
    unlet s:current_chat_job
    call s:AppendResponse("[Response cancelled by user]")
    if g:claude_enable_folding
      call s:ClosePreviousFold()
    endif
    call s:CloseCurrentInteractionCodeBlocks()
    call s:AppendTokenUsage()
    call s:PrepareNextInput()
    echo "Claude response cancelled."
  elseif exists("s:current_batch_timer")
    call timer_stop(s:current_batch_timer)
    unlet s:current_batch_timer
    " Optionally cancel the batch on the server side too
    if exists("s:current_batch_id")
      let l:cancel_url = 'https://api.anthropic.com/v1/messages/batches/' . s:current_batch_id . '/cancel'
      let l:cmd = [
        \ 'curl', '-s', '-X', 'POST',
        \ '-H', 'x-api-key: ' . g:claude_api_key,
        \ '-H', 'anthropic-version: 2023-06-01',
        \ '-H', 'content-type: application/json',
        \ l:cancel_url
        \ ]
      let l:cancel_response = system(join(map(copy(l:cmd), 'shellescape(v:val)'), ' '))
      let [l:chat_bufnr, l:chat_winid, l:current_winid] = s:GetOrCreateChatWindow()
      call win_gotoid(l:chat_winid)
      call append('$', '(Batch cancel response: ' . l:cancel_response . ')')
      call win_gotoid(l:current_winid)
      unlet s:current_batch_id
    endif
    let [l:chat_bufnr, l:chat_winid, l:current_winid] = s:GetOrCreateChatWindow()
    call win_gotoid(l:chat_winid)
    " Remove the "waiting..." placeholder line if present
    if getline('$') =~# '^\[Batch: waiting\]'
      execute line('$') . 'delete _'
    endif
    call s:AppendResponse("[Batch response cancelled by user]")
    call s:CloseCurrentInteractionCodeBlocks()
    call s:PrepareNextInput()
    call win_gotoid(l:current_winid)
    echo "Claude batch response cancelled."
  else
    echo "No ongoing Claude response to cancel."
  endif
endfunction


function! s:ClaudeBatchPoll(batch_id, custom_id, timer_id)
  let l:status_url = 'https://api.anthropic.com/v1/messages/batches/' . a:batch_id

  let l:cmd = [
    \ 'curl', '-s',
    \ '-H', 'x-api-key: ' . g:claude_api_key,
    \ '-H', 'anthropic-version: 2023-06-01',
    \ l:status_url
    \ ]

  let l:response = system(join(map(copy(l:cmd), 'shellescape(v:val)'), ' '))

  try
    let l:parsed = json_decode(l:response)
  catch
    call s:AppendResponse('Batch poll parse error: ' . l:response)
    call s:PrepareNextInput()
    return
  endtry

  if get(l:parsed, 'processing_status', '') !=# 'ended'
    " Still processing — show status and reschedule
    let l:processing = get(get(l:parsed, 'request_counts', {}), 'processing', '?')
    let l:succeeded  = get(get(l:parsed, 'request_counts', {}), 'succeeded',  '?')
    echom printf('[Batch %s] Still processing... (%s processing, %s succeeded)',
          \ a:batch_id, l:processing, l:succeeded)
    let s:current_batch_timer = timer_start(g:claude_batch_poll_interval * 1000,
          \ function('s:ClaudeBatchPoll', [a:batch_id, a:custom_id]))
    return
  endif

  " Batch ended — retrieve results
  let l:results_url = 'https://api.anthropic.com/v1/messages/batches/' . a:batch_id . '/results'
  let l:cmd2 = [
    \ 'curl', '-s',
    \ '-H', 'x-api-key: ' . g:claude_api_key,
    \ '-H', 'anthropic-version: 2023-06-01',
    \ l:results_url
    \ ]

  let l:results_raw = system(join(map(copy(l:cmd2), 'shellescape(v:val)'), ' '))

  " Results are JSONL — one JSON object per line
  let [l:chat_bufnr, l:chat_winid, l:current_winid] = s:GetOrCreateChatWindow()
  call win_gotoid(l:chat_winid)

  " Remove the "waiting..." placeholder line if present
  if getline('$') =~# '^\[Batch: waiting\]'
    execute line('$') . 'delete _'
  endif

  let l:found = 0
  for l:line in split(l:results_raw, "\n")
    if empty(trim(l:line))
      continue
    endif
    try
      let l:result = json_decode(l:line)
    catch
      continue
    endtry

    if get(l:result, 'custom_id', '') ==# a:custom_id
      let l:found = 1
      let l:result_type = get(l:result, 'result', {})
      if get(l:result_type, 'type', '') ==# 'succeeded'
        let l:msg = l:result_type.message
        " Extract text content
        let l:text = ''
        for l:block in get(l:msg, 'content', [])
          if get(l:block, 'type', '') ==# 'text'
            let l:text .= l:block.text
          endif
        endfor
        " Show usage
        let l:usage = get(l:msg, 'usage', {})
        let l:in_tok  = get(l:usage, 'input_tokens',  0)
        let l:out_tok = get(l:usage, 'output_tokens', 0)
        let l:rates   = get(s:claude_pricing, g:ai_model, [3.00, 15.00])
        let l:in_cost  = (l:in_tok  / 1000000.0) * l:rates[0] * 0.5  " 50% batch discount
        let l:out_cost = (l:out_tok / 1000000.0) * l:rates[1] * 0.5

        call s:AppendResponse(l:text)
        call s:CloseCurrentInteractionCodeBlocks()
        call append('$', printf('(%s - Token usage - Input: %d (%.4f$), Output: %d (%.4f$), Total: (%.4f$) [batch 50%% discount])',
              \ strftime("%Y-%m-%d %H:%M:%S"),
              \ l:in_tok, l:in_cost, l:out_tok, l:out_cost, l:in_cost + l:out_cost))
      elseif get(l:result_type, 'type', '') ==# 'errored'
        call s:AppendResponse('Batch request errored: ' . json_encode(get(l:result_type, 'error', {})))
      elseif get(l:result_type, 'type', '') ==# 'expired'
        call s:AppendResponse('Batch request expired (took over 24 hours).')
      elseif get(l:result_type, 'type', '') ==# 'canceled'
        call s:AppendResponse('Batch request was canceled.')
      endif
      break
    endif
  endfor

  if !l:found
    call s:AppendResponse('Batch result not found for custom_id: ' . a:custom_id)
  endif

  call s:PrepareNextInput()
  call win_gotoid(l:current_winid)
  unlet! s:current_batch_timer
  unlet! s:current_batch_id
endfunction


"------------------------------------------------------------------------------
" Updates to support interacting with Qwen (local AI)
"------------------------------------------------------------------------------

" Increase or decrease ollama context number of tokens limit.
if !exists('g:ollama_num_ctx')
  let g:ollama_num_ctx = 4096
  " let g:ollama_num_ctx = 32768
  " let g:ollama_num_ctx = 262144
endif

" Tells the LLM the maximum number of tokens it is allowed to generate.
if !exists('g:ollama_num_predict')
  let g:ollama_num_predict = -1
endif

" Function to get content from all open buffers
function! s:GetAllBufferContents()
  let l:all_buffers = []
  let l:buffer_list = range(1, bufnr('$'))

  for l:bufnr in l:buffer_list
    " Skip non-existent buffers
    if !bufexists(l:bufnr)
      continue
    endif

    " Get buffer name and content
    let l:bufname = bufname(l:bufnr)
    let l:lines = getbufline(l:bufnr, 1, '$')
    let l:content = join(l:lines, "\n")

    " Only include non-empty buffers
    if !empty(trim(l:content))
      call add(l:all_buffers, {
        \ 'filename': empty(l:bufname) ? '[No Name]' : l:bufname,
        \ 'content': l:content,
        \ 'buffer_id': l:bufnr
        \ })
    endif
  endfor

  return l:all_buffers
endfunction


" Format buffer list into a single string for prompt context
function! s:FormatAllBuffersForPrompt()
  let l:buffers = s:GetAllBufferContents()
  let l:parts = []

  for l:buf in l:buffers
    call add(l:parts,
      \ "# Contents of " . l:buf.filename . "\n" .
      \ "<content>\n" .
      \ l:buf.content . "\n" .
      \ "</content>")
  endfor
  return join(l:parts, "\n\n")
endfunction


function! s:CallQwenAsync(prompt)
  let l:payload = {
    \ 'model': g:ai_model,
    \ 'prompt': a:prompt,
    \ 'stream': v:true,
    \ 'options': {
    \   'num_ctx': g:ollama_num_ctx,
    \   'num_predict': g:ollama_num_predict
    \ }
    \ }

  let l:json_payload = json_encode(l:payload)
  let l:tmp_file = tempname()
  call writefile([l:json_payload], l:tmp_file)

  let l:cmd = [
    \ 'curl', '-s', '-N', '-X', 'POST',
    \ '-H', 'Content-Type: application/json',
    \ '--data-binary', '@' . l:tmp_file,
    \ g:ollama_base_url . '/api/generate'
    \ ]

  if has('nvim')
    let s:current_chat_job = jobstart(l:cmd, {
      \ 'on_stdout': function('s:HandleQwenStreamNvim'),
      \ 'on_stderr': function('s:HandleQwenErrorNvim'),
      \ 'on_exit':   function('s:HandleQwenExitNvim', [l:tmp_file])
      \ })
  else
    let s:current_chat_job = job_start(l:cmd, {
      \ 'out_cb':  function('s:HandleQwenStream'),
      \ 'err_cb':  function('s:HandleQwenError'),
      \ 'exit_cb': function('s:HandleQwenExit', [l:tmp_file])
      \ })
  endif
endfunction


function! s:HandleQwenStreamChunk(msg)
  " Ollama streams JSONL: one JSON object per line
  for l:line in split(a:msg, "\n")
    let l:line = trim(l:line)
    if empty(l:line)
      continue
    endif
    try
      let l:chunk = json_decode(l:line)
    catch
      continue
    endtry

    let l:token = get(l:chunk, 'response', '')
    if !empty(l:token)
      call s:StreamingChatResponse(l:token)
    endif

    if get(l:chunk, 'done', 0)
      call s:FinalQwenResponse()
    endif
  endfor
endfunction


function! s:HandleQwenStream(channel, msg)
  call s:HandleQwenStreamChunk(a:msg)
endfunction

function! s:HandleQwenError(channel, msg)
  if !empty(a:msg)
    call s:StreamingChatResponse('Error: ' . a:msg)
    call s:FinalQwenResponse()
  endif
endfunction

function! s:HandleQwenExit(tmp_file, job, status)
  call delete(a:tmp_file)
  if a:status != 0
    call s:StreamingChatResponse('Error: Qwen job exited with status ' . a:status)
    call s:FinalQwenResponse()
  endif
endfunction

function! s:HandleQwenStreamNvim(job_id, data, event) dict
  for l:msg in a:data
    call s:HandleQwenStreamChunk(l:msg)
  endfor
endfunction

function! s:HandleQwenErrorNvim(job_id, data, event) dict
  for l:msg in a:data
    if !empty(l:msg)
      call s:StreamingChatResponse('Error: ' . l:msg)
      call s:FinalQwenResponse()
    endif
  endfor
endfunction

function! s:HandleQwenExitNvim(tmp_file, job_id, exit_code, event) dict
  call s:HandleQwenExit(a:tmp_file, 0, a:exit_code)
endfunction


function! s:FinalQwenResponse()
  let [l:chat_bufnr, l:chat_winid, l:current_winid] = s:GetOrCreateChatWindow()
  call win_gotoid(l:chat_winid)
  call append('$', 'You: ')
  normal! G
  call win_gotoid(l:current_winid)

  " Guard against being called twice (once from 'done' chunk, once from exit)
  if exists('s:qwen_response_finalized')
    return
  endif
  let s:qwen_response_finalized = 1

  call s:CloseCurrentInteractionCodeBlocks()
  call s:PrepareNextInput()
  unlet! s:current_chat_job
  unlet! s:qwen_response_finalized
endfunction
"------------------------------------------------------------------------------

