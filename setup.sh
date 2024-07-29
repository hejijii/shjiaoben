#!/bin/bash

# 更新系统
sudo apt update && sudo apt upgrade -y

# 检查并安装 curl
if ! command -v curl &> /dev/null
then
    echo "curl 未安装，正在安装..."
    sudo apt install curl -y
else
    echo "curl 已安装"
fi

# 清除现有 iptables 规则
echo "清除现有 iptables 规则..."
sudo iptables -F
sudo iptables -X

# 卸载 iptables
echo "卸载 iptables..."
sudo apt remove --purge iptables -y

# 安装 ufw
echo "安装 ufw..."
sudo apt install ufw -y

# 在 ufw 中允许 SSH 连接
echo "在 ufw 中允许 SSH 连接（端口22）..."
sudo ufw allow 22/tcp

# 启用 ufw
echo "启用 ufw..."
sudo ufw enable

# 显示 ufw 状态
sudo ufw status verbose

# 下载并执行 quick_start.sh
echo "下载并执行 quick_start.sh..."
curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && bash quick_start.sh

echo "脚本执行完毕！"
