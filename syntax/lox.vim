" Vim syntax file
" Language: Lox
" Maintainer: Chandler Warner
" Latest Revision: 24 August 2024

if exists("b:current_syntax")
    finish
endif

syn match loxIdentifier     display "\v[a-zA-Z0-9_]+"
syn match loxConstant       display "\v[A-Z][A-Z0-9_]+"
syn match loxNumber         display "\v-?[0-9]*\.?[0-9]+"
syn match loxOperator       display "\v([\<\>\=\!\+\*\/\-])\=?"
syn match loxDelimiter      display "\v[;.:\{\}\(\)\[\].?]"
syn match loxString         display "\v\"(\\.|[^\\\"])*\""
syn match loxFunction       display "\zs\(\w*\)*\s*\ze("

syn region loxComment       display start="\v/\*" end="\v\*/" contains=loxComment,loxTodo,loxNote
syn region loxComment       display start="\v//" end="\v$" contains=loxTodo,loxNote

syn keyword loxTodo todo Todo TODO contained
syn keyword loxNote note Note NOTE contained

syn keyword loxStructure class super this
syn keyword loxRepeat for while
syn keyword loxSpecifier var
syn keyword loxBoolean true false
syn keyword loxNull nil
syn keyword loxConditional if else
syn keyword loxKeyword fun return and or print
syn keyword loxNative clock

hi def link loxIdentifier   Identifier
hi def link loxConstant     Constant
hi def link loxNumber       Float
hi def link loxOperator     Special
hi def link loxDelimiter    Delimiter
hi def link loxString       String

hi def link loxComment      Comment
hi def link loxTodo         Todo
hi def link loxNote         Todo

hi def link loxStructure    StorageClass
hi def link loxRepeat       Repeat
hi def link loxSpecifier    StorageClass
hi def link loxBoolean      Boolean
hi def link loxNull         Constant
hi def link loxConditional  Conditional
hi def link loxKeyword      Keyword
hi def link loxFunction     Function
hi def link loxNative       Function

let b:current_syntax = "lox"
