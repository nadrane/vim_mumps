" Vim syntax file
" Language: Intersystems cache
" Maintainer: Nick Drane

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "mumps"

echom "Defining syntax highlighting for mumps."

syntax keyword mumpsCommands i if

syntax keyword mumpsCommands s set 
syntax keyword mumpsCommands u use
syntax keyword mumpsCommands o open
syntax keyword mumpsCommands q quit
syntax keyword mumpsCommands s set
syntax keyword mumpsCommands i if
syntax keyword mumpsCommands e else
syntax keyword mumpsCommands o order
syntax keyword mumpsCommands d data
syntax keyword mumpsCommands f for
syntax keyword mumpsCommands n new

syntax match mumpsComment '\v;.*'

syntax match mumpsOperator "\v\*"
syntax match mumpsOperator "\v/"
syntax match mumpsOperator "\v\+"
syntax match mumpsOperator "\v-"
syntax match mumpsOperator "\v\?"
syntax match mumpsOperator "\v\*\="
syntax match mumpsOperator "\v/\="
syntax match mumpsOperator "\v\+\="
syntax match mumpsOperator "\v-\="

syntax region mumpsString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight link mumpsCommands Keyword 
highlight link mumpsComment Comment
highlight link mumpsOperator Operator
highlight link mumpsString String
