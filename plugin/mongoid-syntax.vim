command! -nargs=0 MongoidSyntaxOn call s:mongoid_syntax_on()
command! -nargs=0 MongoidSyntaxOff call s:mongoid_syntax_off()

function! s:mongoid_syntax_on()
    syntax keyword rubyMongoidRelationsMethod belongs_to embedded_in embeds_many embeds_one has_and_belongs_to_many has_many has_one
    syntax keyword rubyMongoidFieldMethod field
    highlight link rubyMongoidRelationsMethod Function
    highlight link rubyMongoidFieldMethod Function
endfunction

function! s:mongoid_syntax_off()
    highlight link rubyMongoidRelationsMethod NONE
    highlight link rubyMongoidFieldMethod NONE
endfunction

