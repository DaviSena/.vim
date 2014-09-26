""""""""""""""""""""  My VIM Plugins File  """""""""""""""""""""""""
" Author:        Davi Sena <davis.sena@gmail.com>                  "
" Copyright:     GPLv3                                             "
" Description:   List of VIM configurations                        "
" Creation Date: 09/22/2014                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim-Airline: Lean & mean status/tabline for vim that's light as air.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '▶'

let g:airline_powerline_fonts = 1

"unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'

" DelimitMate: Automatically adds delimits
let b:delimitMate_expand_cr=1
let b:delimitMate_expand_space=1
let b:delimitMate_expand_inside_quotes=1

" Syntastic: Syntatic checker 
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open = 1
let g:syntastic_loc_list_height = 3

" BufKill: kill buffers without closing windows
" Map bufkill to CTRL Backspace
nnoremap <C-Backspace> :bd<cr>
