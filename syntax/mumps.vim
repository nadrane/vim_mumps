" Vim syntax file
" Language: Intersystems cache
" Maintainer: Nick Drane

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "mumps"

echom "Defining syntax highlighting for mumps."

syntax keyword mumpsFunctions $d $D $DATA
syntax keyword mumpsFunctions $e $E $EXTRACT
syntax keyword mumpsFunctions $f $F $FIND
syntax keyword mumpsFunctions $l $L $LENGTH
syntax keyword mumpsFunctions $o $O $ORDER
syntax keyword mumpsFunctions $p $P $PIECE
syntax keyword mumpsFunctions $r $R $REVERSE
syntax keyword mumpsFunctions $s $S $SELECT

syntax keyword mumpsCommands i I if
syntax keyword mumpsCommands e E else
syntax keyword mumpsCommands s S set 
syntax keyword mumpsCommands u U use
syntax keyword mumpsCommands o O open
syntax keyword mumpsCommands q Q quit
syntax keyword mumpsCommands s S set
syntax keyword mumpsCommands f F for
syntax keyword mumpsCommands n N new

syntax match mumpsOperator "\v\*"
syntax match mumpsOperator "\v/"
syntax match mumpsOperator "\v\+"
syntax match mumpsOperator "\v-"
syntax match mumpsOperator "\v\="

syntax region mumpsString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight link mumpsFunctions Function 
highlight link mumpsCommands Keyword 
highlight link mumpsComment Comment
highlight link mumpsOperator Operator
highlight link mumpsString String
