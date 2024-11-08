cd ~

unzip nerdtree-master.zip

mv nerdtree-master .vim

复制所有syntax里的.vim到~/.vim/syntax
复制autoload里的verilog_systemverilog.vim 到~/.vim/autoload
复制plugin里的verilog_systemverilog.vim 到~/.vim/plugin

复制vimrc 到 ~/.vimrc

确保有安装ctags（linux默认自带）

Exuberant ctags默认是不支持system_verilog的需要复制 .ctags 到~/.ctags，建议下载universal ctags

在顶层目录下执行ctags -R * 就可以用ctags到指令，在文件中进行跳转了
