cd ~

unzip nerdtree-master.zip

mv nerdtree-master .vim

复制所以.vim到~/.vim/syntax

复制vimrc 到 ~/.vimrc

确保有安装ctags（linux默认自带）

ctags默认是不支持system_verilog的需要复制 .ctags 到~/.ctags

在顶层目录下执行ctags -R * 就可以用ctags到指令，在文件中进行跳转了
