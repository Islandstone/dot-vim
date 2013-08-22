" Go uses tabs instead of spaces
set noexpandtab

" Let vim know about our go path
let $GOPATH = "/home/maestro/go"

" let g:syntastic_go_checkers=["go","errcheck"]

set foldmethod=syntax
set foldnestmax=1

call g:foldWithSpace()
