" Smalls plugin
" map normal-mode 's' for simple search
nmap s <Plug>(smalls)
" if you want to use smalls in visual/operator or both mode.
omap s <Plug>(smalls)
xmap s <Plug>(smalls)
" let g:smalls_shade = 0
" vim smalls plugin, make space character as trigger
let g:smalls_jump_keys= ' ABCDEFGHIJKLMNOPQRSTUVWXYZ'

