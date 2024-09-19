if exists("b:current_syntax")
    finish
endif

syn match pl0Identifier     display "\v<_*[a-z][A-Za-z0-9_]*>"
syn match pl0Number         display "\v<[0-9](_*[0-9])*>"
syn match pl0Operator       display "\v(\:|[<>=+*/-])\=?"
syn match pl0Delimiter      display "\v[;.]$|[,]"

syn region pl0Comment       display start="\v\{" end="\v\}" contains=pl0Comment,pl0Todo

syn keyword pl0Todo TODO NOTE contained

syn keyword pl0Keyword
    \ procedure call
    \ if then
    \ begin end

syn keyword pl0Builtin
    \ writeInt writeChar

syn keyword pl0Repeat while do
syn keyword pl0Specifier const var

hi def link pl0Identifier   Identifier
hi def link pl0Number       Number
hi def link pl0Operator     Operator
hi def link pl0Delimiter    Delimiter
hi def link pl0Comment      Comment
hi def link pl0Keyword      Keyword
hi def link pl0Builtin      Function
hi def link pl0Repeat       Repeat
hi def link pl0Specifier    StorageClass

let b:current_syntax = "pl0"
