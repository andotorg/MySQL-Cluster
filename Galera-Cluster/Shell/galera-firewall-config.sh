echo "*******************************************************"
echo "** CentOS7部署Galera Cluster MySQL5.7 一 批处理命令  **"
echo "**     安装前环境准备                                **"
echo "**     1、为MySQL配置SELinux                         **"
echo "**     2、配置firewall开放端口                       **"
echo "**     3、禁用AppArmor                               **"
echo "**     命令编写作者：andot                           **"
echo "**     最后更新日期：2018-9-14 13:46:21              **"
echo "**     GitHub: http://andotorg.github.com            **"
echo "**     WeChat-Public: ucisoftcom                     **"
echo "**     Blog：https://andot.org                       **"
echo "*******************************************************"

yum provides /usr/sbin/semanage

yum -y install policycoreutils-python

echo “1、为MySQL配置SELinux”
echo "开放4567TCP端口"
semanage port -a -t mysqld_port_t -p tcp 4567
echo "开放4568TCP端口"
semanage port -a -t mysqld_port_t -p tcp 4568
echo "开放4444TCP端口"
semanage port -a -t mysqld_port_t -p tcp 4444
echo "开放4567UDP端口"
semanage port -a -t mysqld_port_t -p udp 4567
echo "设置数据库服务器许可模式"
semanage permissive -a mysqld_t
echo "2、firewall 端口开放"
echo "启动数据库服"
firewall-cmd --zone=public --add-service=mysql --permanent
echo "开放3306|4567|4568|4444"
firewall-cmd --zone=public --add-port=3306/tcp --permanent
firewall-cmd --zone=public --add-port=4567/tcp --permanent
firewall-cmd --zone=public --add-port=4568/tcp --permanent
firewall-cmd --zone=public --add-port=4444/tcp --permanent
firewall-cmd --zone=public --add-port=4567/udp --permanent
echo "重新启动firewall，使开放端口生效"
firewall-cmd --reload











