:set tabstop=4
:set expandtab
:set autoindent " still not sold on this

:set nobk " I use git, I don't need those annoying ~ files

:set background=dark
:colorscheme torte " doesn't show up well on a projector
:syntax enable
highlight PreProc cterm=bold ctermfg=green " make bash comments readable

:set foldenable " not sold on this either
let perl_fold=1
let perl_fold_blocks=1

:map ,t :!prove -Iliv "%"<cr> " run a test without shelling out