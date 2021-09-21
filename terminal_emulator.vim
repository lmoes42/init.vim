tno <C-w> <C-\><C-n>
tno ` <C-\><C-n><c-^>

com! VT vsp | term
com! HT sp | term

au TermLeave * set spell
au TermEnter * set nospell

au TermEnter * set nornu
au TermEnter * set nonu

