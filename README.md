<!--
 * @Description: 简单描述一下这个脚本
 * @Autor: lxyok
 * @Date: 2019-09-25 17:40:30
 * @LastEditors: lxyok
 * @LastEditTime: 2019-10-05 21:44:22
 -->
# 说明   
--------------

## Change_SSport.sh 
### 改变ss服务端的端口和密码
 ``` BASH
 wget --no-check-certificate -O Change_SSport.sh https://raw.githubusercontent.com/lxyok/Untitled/master/Change_SSport.sh &&
chmod +x Change_SSport.sh && bash Change_SSport.sh
 ```
## setup_python.sh
### 安装多个版本的python
 ``` BASH
wget -N --no-check-certificate "https://raw.githubusercontent.com/lxyok/Untitled/master/setup_python.sh" && 
chmod +x setup_python.sh && bash setup_python.sh
 ```

 ## unaliyun.sh 
 ### 卸载阿里云盾
  ``` BASH
  wget --no-check-certificate -O unaliyun.sh https://raw.githubusercontent.com/lxyok/Untitled/master/unaliyun.sh &&
chmod +x unaliyun.sh && bash unaliyun.sh
  ```
## shadowsocks-all.sh 

 ``` BASH
 wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh 
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
 ```