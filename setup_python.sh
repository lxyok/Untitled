#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
###
# @Description: 安装各个版本的python
# @Autor: lxyok
# @Date: 2019-10-05 17:25:06
 # @LastEditors: Please set LastEditors
 # @LastEditTime: 2019-11-20 00:23:01
###

sh_ver="1.1"
github="raw.githubusercontent.com/lxyok/Untitled/master/"

Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[信息]${Font_color_suffix}"
Error="${Red_font_prefix}[错误]${Font_color_suffix}"
Tip="${Green_font_prefix}[注意]${Font_color_suffix}"
#检查系统
check_sys(){
    if [[ -f /etc/redhat-release ]]; then
        release="centos"
        elif cat /etc/issue | grep -q -E -i "debian"; then
        release="debian"
        elif cat /etc/issue | grep -q -E -i "ubuntu"; then
        release="ubuntu"
        elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
        elif cat /proc/version | grep -q -E -i "debian"; then
        release="debian"
        elif cat /proc/version | grep -q -E -i "ubuntu"; then
        release="ubuntu"
        elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
    fi
}

#安装python2.7.5
installpython2.7.5(){
    if [[ "${release}" == "centos" ]]; then
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir python_install && cd python_install
        mkdir /usr/local/python275
        wget -N --no-check-certificate "https://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz"
        tar -xvf Python-2.7.5.tgz
        cd Python-2.7.5
        ./configure --prefix=/usr/local/python275
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak
        ln -s /usr/local/python275/bin/python2 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir python_install && cd python_install
        mkdir /usr/local/python275
        wget -N --no-check-certificate "https://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz"
        tar -xvf Python-2.7.5.tgz
        cd Python-2.7.5
        ./configure --prefix=/usr/local/python275
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak
        ln -s /usr/local/python275/bin/python2 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}

#安装python2.7.16
installpython2.7.16(){
    if [[ "${release}" == "centos" ]]; then
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir python_install && cd python_install
        mkdir /usr/local/python2716
        wget -N --no-check-certificate "https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tgz"
        tar -xvf Python-2.7.16.tgz
        cd Python-2.7.16
        ./configure --prefix=/usr/local/python2716
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak
        ln -s /usr/local/python2716/bin/python2 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir python_install && cd python_install
        mkdir /usr/local/python2716
        wget -N --no-check-certificate "https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tgz"
        tar -xvf Python-2.7.16.tgz
        cd Python-2.7.16
        ./configure --prefix=/usr/local/python2716
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak
        ln -s /usr/local/python2716/bin/python2 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}

#安装python3.7.3
installpython3.7.3(){
    if [[ "${release}" == "centos" ]]; then
        cd ~
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir /usr/local/python373
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz"
        tar -xvf Python-3.7.3.tgz && cd Python-3.7.3
        ./configure --prefix=/usr/local/python373
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python373/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        cd ~
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir /usr/local/python373
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz"
        tar -xvf Python-3.7.3.tgz
        cd Python-3.7.3
        ./configure --prefix=/usr/local/python373
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python373/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}

#安装python3.5.7
installpython3.5.7(){
    if [[ "${release}" == "centos" ]]; then
        cd ~
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir /usr/local/python357
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.5.7/Python-3.5.7.tgz"
        tar -xvf Python-3.5.7.tgz && cd Python-3.5.7
        ./configure --prefix=/usr/local/python357
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python357/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        cd ~
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir /usr/local/python357
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.5.7/Python-3.5.7.tgz"
        tar -xvf Python-3.5.7.tgz
        cd Python-3.5.7
        ./configure --prefix=/usr/local/python357
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python357/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}

#安装python3.6.9
installpython3.6.9(){
    if [[ "${release}" == "centos" ]]; then
        cd ~
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir /usr/local/python369
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz"
        tar -xvf Python-3.6.9.tgz && cd Python-3.6.9
        ./configure --prefix=/usr/local/python369
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python369/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        cd ~
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir /usr/local/python369
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz"
        tar -xvf Python-3.6.9.tgz
        cd Python-3.6.9
        ./configure --prefix=/usr/local/python369
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python369/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}

#安装python3.7.4
installpython3.7.4(){
    if [[ "${release}" == "centos" ]]; then
        cd ~
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir /usr/local/python374
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz"
        tar -xvf Python-3.7.4.tgz && cd Python-3.7.4
        ./configure --prefix=/usr/local/python374
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python374/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        cd ~
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir /usr/local/python374
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz"
        tar -xvf Python-3.7.4.tgz
        cd Python-3.7.4
        ./configure --prefix=/usr/local/python374
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python374/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}

#安装python3.7.5
installpython3.7.5(){
    if [[ "${release}" == "centos" ]]; then
        cd ~
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir /usr/local/python375
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz"
        tar -xvf Python-3.7.5.tgz && cd Python-3.7.5
        ./configure --prefix=/usr/local/python375
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python375/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        cd ~
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir /usr/local/python375
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz"
        tar -xvf Python-3.7.5.tgz
        cd Python-3.7.5
        ./configure --prefix=/usr/local/python375
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python375/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}


#安装python3.8.0
installpython3.8.0(){
    if [[ "${release}" == "centos" ]]; then
        cd ~
        sudo yum install @development zlib-devel bzip2 bzip2-devel readline-devel sqlite \
        sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
        mkdir /usr/local/python380
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz"
        tar -xvf Python-3.8.0.tgz && cd Python-3.8.0
        ./configure --prefix=/usr/local/python380
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python380/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
        elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
        cd ~
        sudo apt-get update
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
        mkdir /usr/local/python380
        mkdir python_install && cd python_install
        wget -N --no-check-certificate "https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz"
        tar -xvf Python-3.8.0.tgz
        cd Python-3.8.0
        ./configure --prefix=/usr/local/python380
        make
        make install > ../../python_install.log
        mv /usr/bin/python /usr/bin/python_bak && ln -s /usr/local/python380/bin/python3 /usr/bin/python
        echo 当前python版本：
        python -V
        #cd ../../ && rm -rfpython_install
    fi
}



#更新脚本
Update_Shell(){
    echo -e "当前版本为 [ ${sh_ver} ]，开始检测最新版本..."
    sh_new_ver=$(wget --no-check-certificate -qO- "http://${github}/setup_python.sh"|grep 'sh_ver="'|awk -F "=" '{print $NF}'|sed 's/\"//g'|head -1)
    [[ -z ${sh_new_ver} ]] && echo -e "${Error} 检测最新版本失败 !" && start_menu
    if [[ ${sh_new_ver} != ${sh_ver} ]]; then
        echo -e "发现新版本[ ${sh_new_ver} ]，是否更新？[Y/n]"
        read -p "(默认: y):" yn
        [[ -z "${yn}" ]] && yn="y"
        if [[ ${yn} == [Yy] ]]; then
            wget -N --no-check-certificate http://${github}/tcp.sh && chmod +x tcp.sh
            echo -e "脚本已更新为最新版本[ ${sh_new_ver} ] !"
        else
            echo && echo "	已取消..." && echo
        fi
    else
        echo -e "当前已是最新版本[ ${sh_new_ver} ] !"
        sleep 5s
    fi
}
remove_all(){
    rm -rf /usr/local/lib/python3.*
    rm -rf /usr/local/bin/2to3-3.* to
    rm -rf /usr/local/bin/pyvenv-3.*
    rm -rf /usr/local/bin/pydoc3.*
    rm -rf /usr/local/bin/idle3.*
    rm -rf /usr/local/lib/python2.*
    rm -rf /usr/local/bin/2to3-2.* to
    rm -rf /usr/local/bin/pyvenv-2.*
    rm -rf /usr/local/bin/pydoc2.*
    rm -rf /usr/local/bin/idle2.*
}

#开始菜单
start_menu(){
    clear
    echo && echo -e " Python 一键安装管理脚本 ${Red_font_prefix}[v${sh_ver}]${Font_color_suffix}

${Red_font_prefix}如果安装成功最后一行会显示当前python的版本号，否则就是失败。${Font_color_suffix}
${Red_font_prefix}如果安装成功最后一行会显示当前python的版本号，否则就是失败。${Font_color_suffix}
${Red_font_prefix}如果安装成功最后一行会显示当前python的版本号，否则就是失败。${Font_color_suffix}

 ${Green_font_prefix}0.${Font_color_suffix} 升级脚本
————————————安装管理————————————
 ${Green_font_prefix}1.${Font_color_suffix} ok安装 python2.7.5
 ${Green_font_prefix}2.${Font_color_suffix} ok安装 python2.7.16
 ${Green_font_prefix}3.${Font_color_suffix} ok安装 python3.5.7
 ${Green_font_prefix}4.${Font_color_suffix} ok安装 python3.6.9
 ${Green_font_prefix}5.${Font_color_suffix} ok安装 python3.7.3
 ${Green_font_prefix}6.${Font_color_suffix} ok安装 python3.7.4
 ${Green_font_prefix}7.${Font_color_suffix} ok安装 python3.7.5
 ${Green_font_prefix}8.${Font_color_suffix} ok安装 python3.8.0
————————————杂项管理————————————
 ${Green_font_prefix}9.${Font_color_suffix} 
 ${Green_font_prefix}10.${Font_color_suffix} 
 ${Green_font_prefix}11.${Font_color_suffix} 退出脚本
————————————————————————————————" && echo
    
    echo
    read -p " 请输入数字 [0-11]:" num
    case "$num" in
        0)
            Update_Shell
        ;;
        1)
            installpython2.7.5
        ;;
        2)
            installpython2.7.16
        ;;
        3)
            installpython3.5.7
        ;;
        4)
            installpython3.6.9
        ;;
        5)
            installpython3.7.3
        ;;
        6)
            installpython3.7.4
        ;;
        7)
            installpython3.7.5
        ;;
        8)
            installpython3.8.0
        ;;
        9)
            remove_all
        ;;
        10)
            optimizing_system
        ;;
        11)
            exit 1
        ;;
        *)
            clear
            echo -e "${Error}:请输入正确数字 [0-11]"
            sleep 5s
            start_menu
        ;;
    esac
}

#############系统检测组件#############
check_sys
#check_version
[[ ${release} != "debian" ]] && [[ ${release} != "ubuntu" ]] && [[ ${release} != "centos" ]] && echo -e "${Error} 本脚本不支持当前系统 ${release} !" && exit 1
start_menu

