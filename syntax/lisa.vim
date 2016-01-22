" Vim syntax file
" Language:     LISA+
" Maintainer:   Anuj Khanna
" Last Change:  2016 Jan 22
" Revision:     0.2
"
" Syntax highlighting for Language for Instruction Set Architecture (LISA)

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" Read the cpp syntax to start with
" This will apply to the entire file!
if version < 600
    so <sfile>:p:h/cpp.vim
else
    runtime! syntax/cpp.vim
    unlet b:current_syntax
endif

" LISA+ Extensions
syn keyword lisaTodo         contained TODO FIXME XXX NOTE
syn match   lisaComment      "//.*$" contains=lisaTodo
syn region  lisaMultiComment start="/\*" end="\*/" contains=lisaTodo
syn keyword lisaSecHeaders   resources composition connection includes properties debug behaviour behavior
syn keyword lisaType         addressable master slave port internal
syn keyword lisaMacro        REGISTER MEMORY PARAMETER nextgroup=lisaRegBlock skipwhite skipnl
syn keyword lisaFunction     init reset terminate
syn match   lisaOperator     "\v\=\>"
syn keyword lisaAttributes   contained address attribute bitwidth description display_float_format display_format display_symbols
                                      \dwarf_id groups has_side_effects is_program_counter lsb_offset name name_index_base partof
                                      \pv_port read_function read_behavior read_mask read_sec_mask reg_number reg_number_increment
                                      \reset_value type virtual visible_in_debugger write_behavior write_function write_mask
                                      \write_sec_mask default max min runtime allow_unaligned_access endianness executable mau_size
                                      \paged space_id supported_multiples_of_mau virtual
syn region  lisaRegBlock    start="{" end="}" matchgroup=lisaMacro contains=lisaAttributes fold transparent contained

hi def link lisaTodo            Todo
hi def link lisaComment         Comment
hi def link lisaMultiComment    Comment
hi def link lisaSecHeaders      Keyword
hi def link lisaType            Type
hi def link lisaMacro           Type
hi def link lisaAttributes      Macro
hi def link lisaFunction        Function
hi def link lisaOperator        Operator

let b:current_syntax = "lisa"
