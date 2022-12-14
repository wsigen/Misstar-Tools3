clear

## Check The Router Hardware Model 
model=$(uname -m)
cd /tmp/
curl -s -k http://www.wymlw.cn/demo/rom/$model/mtinstall -o /tmp/mtinstall 
#改自己域名跟文件目录,域名需要http的，https是wget不了的
if [ $? != 0 ];then
    curl -s -k http://mirror1.misstar.com/download/$model/mtinstall -o /tmp/mtinstall
    if [ $? != 0 ];then
    	echo "下载程序失败,即将退出"
        exit
    fi
fi
chmod +x /tmp/mtinstall
/tmp/mtinstall
