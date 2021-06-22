if exists("g:vim-replace")
  finish
endif

function! s:ReplaceOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>p
    elseif a:type ==# 'V'
        normal! `<V`>p
    elseif a:type ==# 'char'
        normal! `[v`]p
    else
        return
    endif

    let @@ = saved_unnamed_register
endfunction

nnoremap R :set operatorfunc=s:ReplaceOperator<cr>g@
vnoremap R :<c-u>call s:ReplaceOperator(visualmode())<cr>

