#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
###
# @Description: 快速修改SS配置文件的端口和密码
# @Autor: lxyok
# @Date: 2019-09-25 14:36:45
 # @LastEditors: lxyok
 # @LastEditTime: 2019-10-04 14:29:22
###

change_port() {
    while true
    do
        dport=$(shuf -i 9000-49999 -n 1)
        echo -e "Please enter a port for ${software[${selected}-1]} [1-65535]"
        read -p "(Default port: ${dport}):" shadowsocksport
        [ -z "${shadowsocksport}" ] && shadowsocksport=${dport}
        expr ${shadowsocksport} + 1 &>/dev/null
        if [ $? -eq 0 ]; then
            if [ ${shadowsocksport} -ge 1 ] && [ ${shadowsocksport} -le 65535 ] && [ ${shadowsocksport:0:1} != 0 ]; then
                echo
                echo "port = ${shadowsocksport}"
                echo
                break
            fi
        fi
        echo -e "[${red}Error${plain}] Please enter a correct number [1-65535]"
    done
}
change_password(){
    echo "Please enter password for ${software[${selected}-1]}"
    
    read -p "(Default password: wdmm):" shadowsockspwd
    [ -z "${shadowsockspwd}" ] && shadowsockspwd="wdmm"
    echo
    echo "password = ${shadowsockspwd}"
    echo
}
change_port
change_password
#/etc/shadowsocks-libev/config.json

cat << EOF > /etc/shadowsocks-libev/config.json
{
"server":"0.0.0.0",
"server_port":"${shadowsocksport}",
"password":"${shadowsockspwd}",
"timeout":300,
"user":"nobody",
"method":"aes-256-cfb",
"fast_open":false,
"nameserver":"8.8.8.8",
"mode":"tcp_and_udp"
}
EOF


/etc/init.d/shadowsocks-libev restart