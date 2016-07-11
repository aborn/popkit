#!/usr/bin/env bash

# grep的或操作，查看当前打开的网络链接
lsof -i | grep -E "(LISTEN|ESTABLISHED)"

# 列出当前网络打开的端口号与进程的对应关系
lsof -i :portNumber

# 列出mvn的依赖树
mvn dependency:tree

# 检查网络端口监听也可以用(linux only)
sudo netstat -tupln

# grep查找，递归查找关键字 Redis
grep -r  "Redis" .

# 查找文件
sudo find / -name erl_crash.dump

# 创建用户及创建用户对应的home目录
useradd -m USERNAME
passwd USERNAME

# change zsh
chsh -s $(which zsh)
# You may not change the shell for 'popkit'
sudo usermod -s /bin/zsh popkit


# 按文件大小排序
ls -lhtr --sort=size
# 查看当前目录下所占空间
du -h --max-depth=0 .  # linux
du -h -d=0 .           # mac
du -h --max-depth=1 .  |sort -h   # 从小到大排序
# 找到当前文件夹下大于10M的文件
find . -type f -size +10M
find . -maxdepth 1 -type f -size +10M  # 递归

# 解压.gz文件
gunzip -c abc.gz >abc16
# 解压.xz文件
xz -d <filename>.tar.xz
# 解压.tar文件
tar -xvf emacs-25.0.95.tar