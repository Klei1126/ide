" Vim compiler file
" Compiler:	SGI IRIX 5.3 CC or NCC
" Maintainer:	David Harrison <david_jr@users.sourceforge.net>
" Last Change:	2004 Mar 27

if exists("current_compiler")
  finish
endif
let current_compiler = "irix5_cpp"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=%E\"%f\"\\,\ line\ %l:\ error(%n):\ ,
		    \%E\"%f\"\\,\ line\ %l:\ error(%n):\ %m,
		    \%W\"%f\"\\,\ line\ %l:\ warning(%n):\ %m,
		    \%+IC++\ prelinker:\ %m,
		      \%-Z\ \ %p%^,
		      \%+C\ %\\{10}%.%#,
		      \%-G%.%#
