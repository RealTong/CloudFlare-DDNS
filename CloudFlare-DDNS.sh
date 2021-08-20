#!/bin/bash

#--------------------------------------------
# CloudFlare-DDNS
# author：Wowooco
# site：www.wushutong.cn
# version：v1.0.0
# repo：https://github.com/Wowooco/CloudFlare-DDNS
#--------------------------------------------

# 请将这些替换为自己的信息
shellScript_dir="${HOME}/ddns/"

function getMyIPAddr(){
    echo  
    curl ip.p3terx.com
    echo
}
function uninstall(){
    echo "已卸载"
}
function touchShellScript(){
    touch "${shellScript_dir}ddns.sh"
    echo -e "\033[32m 脚本文件放在：${shellScript_dir} \033[0m"
}

function StartMenu() {
    clear
    echo -e "\033[31m 欢迎使用 CloudFlare-DDNS 脚本 \033[0m"
    echo -e "\033[36m Author: Wowooco \033[0m"
    echo -e "\033[36m Version: 1.0.0 \033[0m"
    echo -e "\033[36m Repo: https://www.wushutong.cn \033[0m"
    #菜单开始
    echo -e "\033[33m ==================================== \033[0m"
    echo -e "\033[32m 1.配置参数 \033[0m"
    echo -e "\033[32m 2.单次运行 \033[0m"
    echo -e "\033[32m 3.运行定时 \033[0m"
    echo -e "\033[32m 4.关闭定时 \033[0m"
    echo -e "\033[32m 5.查看IP \033[0m"
    echo -e "\033[32m 6.删除脚本 \033[0m"
    echo -e "\033[32m 0.退出 \033[0m"
    echo -e "\033[33m ==================================== \033[0m"
    #菜单结束
    read -p " 请输入数字:" inputMenuNumber
    case "$inputMenuNumber" in
            1 )
           touchShellScript
	        ;;

            2 )
           echo 选择2
	        ;;

            3 )
           echo 选择3
	        ;;

            4 )
           echo 选择4
	        ;;
            5 )
           getMyIPAddr
            ;;
            6 )
           uninstall
            ;;
            0 )
           echo -e "\033[31m 脚本已退出 \033[0m"
           exit 1
            ;;

            * )
           clear
           echo -e "\033[31m 请输入正确数字(3秒后重新开始)!\033[0m"
           sleep 3
           StartMenu
            ;;

    esac
}
StartMenu "first"