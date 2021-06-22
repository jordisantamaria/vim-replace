if exists("g:vim-replace")
  finish
endif

function! ReplaceOperator(type)
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

" with g@ calls function as an operator
nnoremap R :set operatorfunc=ReplaceOperator<cr>g@
vnoremap R :<c-u>call ReplaceOperator(visualmode())<cr>

