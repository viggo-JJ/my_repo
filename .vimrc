set backupdir=~/vim_backup/
set nocompatible 
set bs=2
set ai
set viminfo='20,\"50
set history=100
set ruler
set incsearch

map Q gq
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>
set backspace=2
colorscheme desert
highlight Search cterm=underline
if &background == "light"
  highlight comment ctermfg=darkgreen guifg=darkgreen
else
  highlight comment ctermfg=green guifg=green
endif

set softtabstop=4
set shiftwidth=4


if has("autocmd")
  autocmd BufRead *.txt set tw=78  
  augroup cprog
    au!
    autocmd FileType *     set formatoptions=tcql nocindent comments&
    autocmd FileType c,cpp set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://
  augroup END

  augroup gzip
    au!
    autocmd BufReadPre,   FileReadPre     *.gz,*.bz2 set bin
    autocmd BufReadPost,  FileReadPost    *.gz  call GZIP_read("gzip")
    autocmd BufReadPost,  FileReadPost    *.bz2 call GZIP_read("bunzip2")
    autocmd BufWritePost, FileWritePost   *.gz  call GZIP_write("gzip")
    autocmd BufWritePost, FileWritePost   *.bz2 call GZIP_write("bunzip2")
    autocmd FileAppendPre                 *.gz  call GZIP_appre("gunzip")
    autocmd FileAppendPre                 *.bz2 call GZIP_appre("bunzip2")
    autocmd FileAppendPost                *.gz  call GZIP_write"gunzip")
    autocmd FileAppendPost                *.bz2 call GZIP_write("bunzip2")

    fun! GZIP_read(cmd)
      let ch_save = &ch
      set ch=2
      execute "'[,']!" . a:cmd
      set nobin
      let &ch = ch_save
      execute ":doautocmd BufReadPost " . expand("%:r")
    endfun

    fun! GZIP_write(cmd)
      if rename(expand("<afile>"),expand("<afile>:r")) == 0
        execute "!" . a:cmd . " <afile>:r "
      endif
    endfun

    fun! GZIP_appre(cmd)
       execute "!" . a:cmd . " <afile> "
       call rename(expand("<afile>:r"),expand("<afile>"))
    endfun
  augroup END

  if 0
    autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif
  endif

endif " has("autocmd")

set number
highlight Search cterm=underline
set hls
set ft=c
syntax  on
set  enc=utf8
set  cursorline

set mouse=a
set fdm=marker
set fdc=2
set expandtab
let b:match_words='\<function\>:\<endfucntion\>,\<class\>:\<endclass\>,\<begin\>:\<end\>,\<fork\>:\<join_*\>,\<task\>:\<endtask\>,\<ifdef\>:\<endif\>,\<ifndef\>:\<endif\>,\<(\>:\<)\>'

if &term == "xterm"
  set t_kb = ^?
  set t_kD = ^H
  fixdel
endif

set guifont=Monospace\ 10
:map  dh  i  `uvm_info(this.get_type_name(), "", UVM_HIGH) <ESC>
:map  dm  i  `uvm_info(this.get_type_name(), "", UVM_MEDIUM) <ESC>
:map  dl  i  `uvm_info(this.get_type_name(), "", UVM_LOW) <ESC>
:map  de  i  `uvm_error(this.get_type_name(), "") <ESC>
:map  df  i  `uvm_fatal(this.get_type_name(), "") <ESC>
:map  dj  i  `uvm_info(this.get_type_name(),<enter>             {$sfomatf("\n......   %0d;",),<enter> $sfomatf("\n......   %0d;",),<enter>$sfomatf("\n......   %0d;",),<enter>$sfomatf("\n......   %0d;",)<enter>},UVM_LOW)<ESC>    
:map  bb  :w!<enter>
:map  qq  :q<enter>
:map  ee  :e<enter>
:map  cc  :s/^/\/\/<enter>   
:map  nt  :NERDTree<enter>


au BufNewFile,BufRead *.pv setf verilog       
augroup  filetypedetect
   au! BufRead,BufNewFile   *.sv   setfiletype  verilog_systemverilog
   au! BufRead,BufNewFile   *.svh  setfiletype  verilog_systemverilog                                                                                                                                                                                       
   au! BufRead,BufNewFile   *.svt  setfiletype  verilog_systemverilog                                                                                                                                                                                    
augroup END                                                                                                                                                                                        
                                                                                                                                                                                        
"====set ctag===                                                                                                                                                                                      
let tlist_verilog_systemverilog_settings='sv;c:class;m:module;p:parameter;e:event;r:register;t:task;f:function'
let Tlist_Auto_Highlight_Tag=1
let g:neocomplcache_enable_at_startup=1
set tags=tags;
set cursorcolumn "highlight the mouse column
nnoremap <silent> <F8> :TlistToggle<CR>

highlight  CursorLine   cterm=NONE  ctermbg=GRAY  ctermfg=NONE

command Ahead : call Addheader()
function Addheader()
  call append(0,"///////////////////////////////////////")
  call append(2,"//Ornanization : Alibaba.damo")
  call append(3,"//Project      : ")
  call append(4,"//Copyright  2024 (c)")
  call append(6,"///////////////////////////////////////")
  call append(7,"//// Main Procedures: ")
  call append(8,"//// @file")
  call append(9,"//// @par $Id: $")
  call append(10,"//// @par $Author: $")
  call append(11,"//// @par $Change: $")
  call append(12,"//// @par $DateTime: $")
  call append(13,"//////////////////////////////////////")
  call append(14,"")
endfunction

      
