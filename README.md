# shjiaoben
你可以通过以下步骤来确保脚本文件使用正确的行尾字符：

使用正确的编辑器创建脚本文件，确保使用的是LF行尾字符。如果你已经在Windows系统上创建了脚本文件，可以使用dos2unix工具转换行尾字符。

在Linux系统上安装dos2unix工具：

sudo apt install dos2unix

dos2unix setup.sh

chmod +x setup.sh

bash <(curl -fsSL https://get.hy2.sh/)
