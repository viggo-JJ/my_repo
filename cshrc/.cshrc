#!/usr/bin/tcsh
# default permission to be read only for group/others
umask 022
set filec
set nobeep
set notify
set autolist

setenv TOOL /tools
setenv HOST `hostname`
setenv Current_Domain `domainname`
setenv LIBGL_ALWAYS_INDIRECT y
setenv LD_LIBRARY_PATH /usr/lib:/usr/lib64:/lib:/usr/local/lib:/tools/lib
set prompt = '[%n@%m %c]# '
set path = ( . $HOME/bin /usr/sbin /bin /etc /usr/local /usr/local/bin /usr/bin /tools/bin /tools/in_house/bin)

# For license
setenv CDS_LIC_FILE 5283@eu95t-lic81.eng.t-head.cn:5283@eu95t-lic05.eng.t-head.cn:5283@eu95t-lic06.eng.t-head.cn:5283@eu95t-lic07.eng.t-head.cn:5283@eu95t-lic01.eng.t-head.cn:5283@eu95t-lic02.eng.t-head.cn:5283@eu95t-lic03.eng.t-head.cn:5283@eu95t-lic04.eng.t-head.cn:5283@eu95t-lic09.eng.t-head.cn:5283@eu95t-licproxy01.eng.t-head.cn:5283@eu95t-licproxy02.eng.t-head.cn:5280@eu95t-lic05.eng.t-head.cn
setenv SNPSLMD_LICENSE_FILE 27020@eu95t-lic81.eng.t-head.cn:27020@eu95t-lic05.eng.t-head.cn:27020@eu95t-lic06.eng.t-head.cn:27020@eu95t-lic07.eng.t-head.cn:27020@eu95t-lic03.eng.t-head.cn:27020@eu95t-lic04.eng.t-head.cn:27020@eu95t-lic09.eng.t-head.cn:27020@eu95t-licproxy02.eng.t-head.cn:27020@eu95t-licproxy01.eng.t-head.cn:27021@eu95t-licproxy01.eng.t-head.cn:27021@eu95t-licproxy02.eng.t-head.cn:27020@eu95t-lic16.eng.t-head.cn:27020@eu95t-lic18.eng.t-head.cn
setenv MGLS_LICENSE_FILE 1717@eu95t-lic05.eng.t-head.cn:1717@eu95t-lic06.eng.t-head.cn:1717@eu95t-lic07.eng.t-head.cn:1717@eu95t-licproxy02.eng.t-head.cn:1717@eu95t-lic20.eng.t-head.cn:1717@eu95t-lic21.eng.t-head.cn:1717@eu95t-lic22.eng.t-head.cn:1717@eu95t-lic23.eng.t-head.cn:1717@eu95t-lic28.eng.t-head.cn
setenv SALT_LICENSE_SERVER 1717@eu95t-lic05.eng.t-head.cn:1717@eu95t-lic06.eng.t-head.cn:1717@eu95t-lic07.eng.t-head.cn:1717@eu95t-licproxy02.eng.t-head.cn:1717@eu95t-lic20.eng.t-head.cn:1717@eu95t-lic21.eng.t-head.cn:1717@eu95t-lic22.eng.t-head.cn:1717@eu95t-lic23.eng.t-head.cn:1717@eu95t-lic28.eng.t-head.cn
setenv LM_LICENSE_FILE 27000@eu95t-lic81.eng.t-head.cn:1881@eu95t-lic05.eng.t-head.cn:1881@eu95t-lic10.eng.t-head.cn:59001@eu95t-lic10.eng.t-head.cn:2100@eu95t-lic81.eng.t-head.cn:2100@eu95t-lic05.eng.t-head.cn:2100@eu95t-lic16.eng.t-head.cn:27000@eu95t-lic03.eng.t-head.cn:27000@eu95t-lic27.eng.t-head.cn:27000@eu95t-lic28.eng.t-head.cn:27020@eu95t-lic03.eng.t-head.cn:27020@eu95t-lic04.eng.t-head.cn:27003@eu95t-lic03.eng.t-head.cn:27005@eu95t-lic03.eng.t-head.cn:30000@eu95t-lic19.eng.t-head.cn
setenv ADS_LICENSE_FILE 27009@eu95t-lic05.eng.t-head.cn
setenv DVTLMD_LICENSE_FILE 20000@eu95t-lic11.eng.t-head.cn
setenv ARTERISD_LICENSE_FILE 30000@eu95t-lic19.eng.t-head.cn
setenv EZLOGIC_LICENSE_FILE 21600@eu95t-lic05.eng.t-head.cn
setenv SNPSLMD_DISABLE_DEBUG_LICENSE_CHECKS 1
setenv VCS_LIC_EXPIRE_WARNING 3
setenv NOVAS_INS_DIR /tools/synopsys/verdi/U-2023.03-SP1/share/PLI/VCS/linux64
setenv NOVAS_IDLE_LICENSE_CHECKBACK 180

setenv SKIP_PLATFORM_CHECK 1

# User local setting
if (-e ~/.cshrc.user) then
 source ~/.cshrc.user
endif
