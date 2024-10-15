source /proj/users/shenxu.shen/dvtools/main.csh
#setenv PATH /usr/local/bin:/sbin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:.
#setenv DISPLAY unix:0
set autolist = ambiguous
# Yellow
# set prompt='%{\e[33m%}%B'"<%n@%m>"'%/\$ '
# Red
setenv TERM "xterm-256color"
#setenv GREP_OPTIONS --color=auto

#setenv P4PORT localhost:1666
#setenv P4IGNORE .p4config
#setenv P4CONFIG .p4config
#setenv P4CHARSET utf8
#setenv P4DIFF /usr/local/bin/tkdiff
#setenv P4USER viggo

set prompt='%B%{\e[36m%}<%n@%m>''%{\e[33m%}<%P,%w-%D>''%{\e[31m%}%/\$ '
setenv LS_COLORS 'no=00;38;5;244:rs=0:di=00;38;5;33:ln=00;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=00;38;5;64:*.tar=00;38;5;61:*.tgz=00;38;5;61:*.arj=00;38;5;61:*.taz=00;38;5;61:*.lzh=00;38;5;61:*.lzma=00;38;5;61:*.tlz=00;38;5;61:*.txz=00;38;5;61:*.zip=00;38;5;61:*.z=00;38;5;61:*.Z=00;38;5;61:*.dz=00;38;5;61:*.gz=00;38;5;61:*.lz=00;38;5;61:*.xz=00;38;5;61:*.bz2=00;38;5;61:*.bz=00;38;5;61:*.tbz=00;38;5;61:*.tbz2=00;38;5;61:*.tz=00;38;5;61:*.deb=00;38;5;61:*.rpm=00;38;5;61:*.jar=00;38;5;61:*.rar=00;38;5;61:*.ace=00;38;5;61:*.zoo=00;38;5;61:*.cpio=00;38;5;61:*.7z=00;38;5;61:*.rz=00;38;5;61:*.apk=00;38;5;61:*.gem=00;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.PNG=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;13'


#aliases for linux commands
alias h     'history'
alias cdp   'cd /proj/users/luyu.jw'
alias g     'gvim'
alias mv    'mv -i'
alias rm    'rm -i'
alias -     'cd -'
alias q     'exit'
alias la    'ls -Ga'
alias ll    'ls -al'
alias lr    'ls -R'
alias lt    'ls -latr'
alias vcs   'vcs -full64'
alias dve   'dve -full64'
alias verdi 'verdi -nologo'


#----------------------------------------------------------------------------------------
# p4 stream creation commands
#----------------------------------------------------------------------------------------
# p4 stream                                  -t mainline       //ip/<IP_NAME>/main
# p4 stream -P //ip/<IP_NAME>/main           -t development    //ip/<IP_NAME>/pangu_a0_dev
# p4 stream -P //ip/<IP_NAME>/pangu_a0_dev   -t development    //ip/<IP_NAME>/pangu_a0_rel
#
#
#----------------------------------------------------------------------------------------
# p4 integration commands
#----------------------------------------------------------------------------------------
# p4 integ //ip/<IP_NAME>/pangu_a0_dev/... //ip/<IP_NAME>/pangu_a0_rel/...
#
#----------------------------------------------------------------------------------------
# p4 client creation
#----------------------------------------------------------------------------------------
# mkpwa -s //ip/<IP_NAME>/pangu_a0_dev/... -sync <wa>


# Remote/cooperation
# xterm -bg blk -fn Monaco -display xxx.xxx.xxx.xxx -geometry 240x60 -fg white
# xterm -display xx.xxx.xxx.xx:1.0 -geometry 150x50 -T cross_debug_from_jim
# xfce4-terminal
#
#
# Kill license server process
# lsof -i:27000
# kill -9 <PID>

module load snps/dw_vip
module load snps/vcs/V-2023.12-SP2
module load snps/verdi/V-2023.12-SP2
