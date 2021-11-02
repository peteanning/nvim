" Gets Errors and Warnings for buffer plus the Status message from coc.nvim
function! StatusDiagnosticForBuffer() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, '✘' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, '' . info['warning'])
  endif
  return join(msgs, ' ')
endfunction

" Gets Errors and Warnings for the entire workspace from coc.nvim
function! StatusDiagnosticForWorkspace() abort
  let diagnostics = CocAction('diagnosticList')
  if type(diagnostics) == v:t_list
    let errors = []
    let warnings = []
    for diagnostic in diagnostics
      if diagnostic['severity'] == 'Error'
        call add(errors, diagnostic)
      endif
      if diagnostic['severity'] == 'Warning'
        call add(warnings, diagnostic)
      endif
    endfor
    return " ✘ " . string(len(errors)) . "  " . string(len(warnings)) . " "
  endif
endfunction

" Just gets the status message from coc.nvim
function! CocMinimalStatus() abort
  return get(g:, 'coc_status', '')
endfunction

" Just gets the errors from the current buffer
function! CocMinimalErrors() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, '✘' . info['error'])
  endif
  return join(msgs)
endfunction

" Just gets the warnings from the current buffer
function! CocMinimalWarnings() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'warning', 0)
    call add(msgs, '' . info['warning'])
  endif
  return join(msgs)
endfunction

