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

:map q !}fmt " wrap text
:map ,t :!prove -Iliv "%"<cr> " run a test without shelling out
:map ,c :!perl -c "%"<cr> " check for silliness without shelling out

" apparently I have some bad typing habits
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" stuff from Damian Conway's advanced vim class
augroup HelpInTabs
    au!
    au BufEnter *.txt call HelpInNewTab()

    function! HelpInNewTab ()
        if &buftype == 'help'
            execute "normal \<C-W>T"
        endif
    endfunction
augroup END

:set backspace=indent,eol,start
:set smartcase
