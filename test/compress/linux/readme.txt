这是一个图片压缩工具，在图片服务器上，以jar包方式运行，
每晚2:30，用linux crontab -e 的定时任务方式启动一次。

一、安装jpegsrc
   1、解压jpegsrc.v9a.tar.gz包
      tar zxvf jpegsrc.v9a.tar.gz
   2、进入解压后的jpegsrc
      cd jpegsrc
   3、执行./configrue
   4、执行./make install
二、图片压缩程序包安装
    1、复制imgcompress包到任意目录
    2、修改imgcompress包内的start.sh
       把cd /home/imgcompress改为当前机器上的imgcompress目录，如:cd /opt/imgcompress.
    3、如start.sh文件为非可执行文件，修改为可执行文件
        chmod +x start.sh
三、文件服务器上的图片压缩
     执行imgcompress目录下的start.sh
