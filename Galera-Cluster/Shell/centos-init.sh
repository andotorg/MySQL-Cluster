echo "*******************************************************"
echo "**     初始化CentOS7.X系统基本使用工具   批处理命令  **"
echo "**     1、安装vim文本编辑器                          **"
echo "**     2、安装wget下载组件                           **"
echo "**     命令编写作者：andot                           **"
echo "**     最后更新日期：2018-9-14 13:46:21              **"
echo "**     GitHub: http://andotorg.github.com            **"
echo "**     WeChat-Public: ucisoftcom                     **"
echo "**     Blog：https://andot.org                       **"
echo "*******************************************************"

echo "1、安装vim"

yum install -y vim

echo "vim安装完成" 

echo "2、安装wget下载组件"

yum install -y wget

echo "wget下载完成"        

echo "3、安装telnet"

yum install -y telnet

echo "4、安装C++组件"

yum install -y gcc gcc-c++ 

echo "5、安装常用类库"

yum install -y boost-devel check-devel openssl-devel libaio perl perl-devel rsync lsof net-tools autoconf

echo "6、安装Development Tools"

yum groupinstall "Development Libraries"
yum groupinstall "Development Tools"
yum install ncurses-devel zlib-devel texinfo gtk+-devel gtk2-devel qt-devel tcl-devel tk-devel libX11-devel kernel-headers kernel-devel