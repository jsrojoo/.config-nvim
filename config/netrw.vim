" vim's native file explorer config

"basic settings
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Add your own mapping. For example:
noremap <silent> <leader>e :call ToggleNetrw()<CR>

let g:netrw_banner = 0
let g:netrw_winsize = 30

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

