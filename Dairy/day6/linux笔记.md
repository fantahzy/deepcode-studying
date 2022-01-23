## 文件与目录相关操作

1、touch  file ## 创建一个名为file的文件,touch的本质是修改文件的时间戳

2、mkdir test ## 创建一个名为test的目录

3、rm -f file ##强行删除文件不提醒

4、rm -r 目录 ##强行删除目录? -r 表示递归，就是目录本身和里面的所有内容

5、cat file  ##文件内容查看命令

6、cp file1 file2 ##把file1复制到file2

​      cp file file1 file2 ... directory? ##把file ?file1 file2 ... 复制到 directory中

​      cp file test ##建立test文件模板为file

​      cp -r directory direcotry1 ##复制目录

7、ls  file ##如果后面没有目标那么默认目标为当前目录

​      ls direcory|filename ##列出文件或目录内容

​      ls -d direcotry ##列出目录本身

​      ls -l filename|directory ##列出文件或目录里面内容的属性

​      ls -ld directory ##列出目录本身属性

​      ls -a ##显示目录中的所有内容，包括以"."开头的隐藏文件

​      ls -R ##递归显示目录中的内容

8、cd directory ##切换到指定的目录

​      cd - ##切换到工作目录到之前的目录

​      cd ~ ##切换到家目录

​      cd ~username ##切换到指定用户的家目录

​      cd .. #切换到上一级目录



9、file filename? ##查看文件类型

​      head ? ? ?##显示指定文件的前多少行

​      head -n 7 passwd ?##显示文件的前7行

​      tail ? ? ?##显示文件的后多少行

​      tail -n 5 passwd ?##显示文件的最后5行

​      less ? ? ?##分页浏览

​      wc ? ? ?##统计文件的字数，字符数，字节数

​      wc -l ? ? ?##行数

​      wc -m ? ? ?##字符数

​      wc -c ? ? ?##字节数

​      wc -w ? ? ?##字数

## vim方式编辑文件

(1)vim filename ##进入到命令模式，命令模式无法编辑文件

(2)按"i"进入插入模式

(3)如果完成编辑按"esc"退出插入模式，

(4) 输入":wq"完成编辑并保存退出。

(5) vim? ##直接执行vim操作 在文件的编写结束之后需要 :wq filename

(6)vim filename 如果文件名字不存在则直接自动新建

(7)vim的退出模式

：q 当用vim打开文件但没有对字符作出任何操作时可直接退出

：q！ 当用vim打开文件并对字符作操作，放弃所有操作推出

：wq 保存退出

：wq！ 强行保存退出，对超级用户及文件所有人生效



## 正则表达式

5.正则表达式

\* ##匹配0到任意字符

？? ? ##匹配单个字符

[[:alpha:]] ##匹配单个字母

[[:lower:]] ##匹配单个小写字母

[[:upper:]]? ##匹配单个大写字母

[[:digit:]]? ##匹配单个数字

[[:alnum:]] ##匹配单个数字或字母

[[:punct:]]? ##匹配单个符号

[[:space:]]? ##匹配单个空格

{ } 表示不存在的或者存在的

{1..9}? ###1-9

{a..f}? ###a-f

{1,3,5} ###135

{a,c,e} ###a c e

{1..3}{a..c}? ###1a 2a 3a 2a 2b 2c 3a 3b 3c

touch westos{1..3}{a..c}共建立了9个文件

[ ] 表示存在的

[a-C] ###aA bB cC

[a-c] ###aA或者bB或者c

[1-3] ###1或者2或者3

[145] ###1或者4或者5

[^abc]|[!abc] ###除了a并且除了b并且除了c



## 压缩与打包

**tar**：

使用tar打包的文件会保存原有的文件路径，并默认取出了所有成员文件路径的根目录

```
*.Z           //    compress程序压缩产生的文件(现在很少使用)
*.gz          //    gzip程序压缩产生的文件
*.bz2         //    bzip2程序压缩产生的文件
*.zip　　　　　//　　 zip压缩文件

*.tar         //    tar程序打包产生的文件
*.tar.gz      //    由tar程序打包并由gzip程序压缩产生的文件
*.tar.bz2     //    由tar程序打包并由bzip2程序压缩产生的文件
```

```
基本格式：tar [Options] file_archive　　//注意tar的第一参数必须为命令选项，即不能直接接待处理文件
常用命令参数：
//指定tar进行的操作，以下三个选项不能出现在同一条命令中
-c　　　　　　　　//创建一个新的打包文件(archive)
-x　　　　　　　　//对打包文件(archive)进行解压操作
-t　　　　　　　　//查看打包文件(archive)的内容,主要是构成打包文件(archive)的文件名

//指定支持的压缩/解压方式，操作取决于前面的参数，若为创建(-c),则进行压缩，若为解压(-x),则进行解压，不加下列参数时，则为单纯的打包操作
-z　　　　　　　　//使用gzip进行压缩/解压，一般使用.tar.gz后缀
-j　　　　　　　　//使用bzip2进行压缩/解压，一般使用.tar.bz2后缀

//指定tar指令使用的文件，若没有压缩操作，则以.tar作为后缀
-f filename　　 //-f后面接操作使用的文件，用空格隔开，且中间不能有其他参数，推荐放在参数集最后或单独作为参数
　　　　　　　　　//文件作用取决于前面的参数，若为创建(-c),则-f后为创建的文件的名字(路径)，若为(-x/t),则-f后为待解压/查看的打包压缩文件名

//其他辅助选项
-v　　　　　　　　//详细显示正在处理的文件名
-C Dir　　　　　 //将解压文件放置在 -C 指定的目录下
-p(小写)　　　　 //保留文件的权限和属性，在备份文件时较有用
-P(大写)　　　　 //保留原文件的绝对路径，即不会拿掉文件路径开始的根目录
--exclude=file //排除不进行打包的文件
```

**gzip**：

　　gzip可以压缩产生后缀为 .gz 的压缩文件，也可以用于解压gzip、compress等程序压缩产生的文件。不带任何选项和参数使用gzip或只带有参数 - 时，gzip从标准输入读取输入，并在标准输出输出压缩结果。

```
基础格式: gzip [Options] file1 file2 file3
指令选项：(默认功能为压缩)
-c　　　　　　　//将输出写至标准输出，并保持原文件不变
-d　　　　　　　//进行解压操作
-v　　　　　　　//输出压缩/解压的文件名和压缩比等信息
-digit　　　　 //digit部分为数字(1-9)，代表压缩速度，digit越小，则压缩速度越快，但压缩效果越差，digit越大，则压缩速度越慢，压缩效果越好。默认为6.
```

gzip命令进行操作时，源文件不进行备份。



**bzip2**

　　bzip2是采用更好压缩算法的压缩程序，一般可以提供较之gzip更好的压缩效果。其具有与gzip相似的指令选项，压缩产生 .bz2 后缀的压缩文件。

```
基础格式: bzip2 [Options] file1 file2 file3
指令选项：(默认功能为压缩)
-c　　　　　　　//将输出写至标准输出
-d　　　　　　　//进行解压操作
-v　　　　　　　//输出压缩/解压的文件名和压缩比等信息
-k　　　　　　　//在压缩/解压过程中保留原文件
-digit　　　　 //digit部分为数字(1-9)，代表压缩速度，digit越小，则压缩速度越快，但压缩效果越差，digit越大，则压缩速度越慢，压缩效果越好。默认为6.
```

bzip2 exp1.txt exp2.txt　　　　  //分别将exp1.txt和exp2.txt压缩，且不保留原文件。**
**

　　bzip2 -dv exp1.bz2　　　　　　 //将exp1.bz2解压，并显示压缩比等信息。

　　bzip2 -kd exp1.bz2 　　　　　　 //将exp1.bz2解压，并且原压缩文件exp1.bz2不会消失



## 重定向输出和管道

输出指输出一整个语块 管道只输出一个结果

'>'替换

'>>'增添叠加



## Linux用户及权限管理

 root用户  （ID 0）

 系统用户 （ID 1-499）

普通用户 （ID 500以上）

Linux系统中的每个文件或者文件夹，都有一个所属用户及所属组，使用id命令可以显示当前用户的信息，使用passwd命令可以修改当前用户密码。Linux操作系统用户的特点如下：

每个用户拥有一个UserID，操作系统实际读取的是UID，而非用户名；

每个用户属于一个主组，属于一个或多个附属组，一个用户最多有31个附属组；

每个组拥有一个GroupID；

每个进程以一个用户身份运行，该用户可对进程拥有资源控制权限；

每个可登陆用户拥有一个指定的Shell环境。



### Linux用户在操作系统可以进行日常管理和维护，涉及到的相关配置文件如下：

/etc/passwd   保存用户信息

 /etc/shdaow   保存用户密码（以加密形式保存）

 /etc/group    保存组信息

 /etc/login.defs  用户属性限制,密码过期时间,密码最大长度等限制

 /etc/default/useradd 显示或更改默认的useradd配置文件

如需创建新用户，可以使用命令useradd，执行命令useradd test1即可创建test1用户，同时会创建一个同名的组test1，默认该用户属于test1主组。

Useradd test1命令默认创建用户test1，会根据如下步骤进行操作：

 在/etc/passwd文件中添加用户信息；

如使用passwd命令创建密码，密码会被加密保存在/etc/shdaow中；

 为test1创建家目录：/home/test1；

 将/etc/skel中的.bash开头的文件复制至/home/test1家目录；

 创建与用户名相同的test1组，test1用户默认属于test1同名组；

 test1组信息保存在/etc/group配置文件中。

在使用useradd命令创建用户时，可以支持如下参数：

 

用法：useradd [选项] 登录

useradd -D

useradd -D [选项]

 

选项：

-b, --base-dir BASE_DIR     指定新账户的家目录；

 

-c, --comment COMMENT      新账户的 GECOS 字段；

 

-d, --home-dir HOME_DIR     新账户的主目录；

 

-D, --defaults         显示或更改默认的 useradd 配置；

 

-e, --expiredate EXPIRE_DATE  新账户的过期日期；

 

-f, --inactive INACTIVE     新账户的密码不活动期；

 

-g, --gid GROUP         新账户主组的名称或ID；

 

-G, --groups GROUPS     新账户的附加组列表；

 

-h, --help           显示此帮助信息并推出；

 

-k, --skel SKEL_DIR       使用此目录作为骨架目录；

 

-K, --key KEY=VALUE       不使用 /etc/login.defs 中的默认值；

 

-l, --no-log-init      不要将此用户添加到最近登录和登录失败数据库；

 

-m, --create-home      创建用户的主目录；

 

-M, --no-create-home    不创建用户的主目录；

 

-N, --no-user-group     不创建同名的组；

 

-o, --non-unique        允许使用重复的 UID 创建用户；

 

-p, --password  PASSWORD     加密后的新账户密码；

 

-r, --system          创建一个系统账户；

 

-R, --root CHROOT_DIR      chroot 到的目录；

 

-s, --shell SHELL        新账户的登录 shell；

 

-u, --uid UID          新账户的用户 ID；

 

-U, --user-group        创建与用户同名的组；

 

-Z, --selinux-user SEUSER    为SELinux 用户映射使用指定 SEUSER



### Linux组管理

 所有的Linux或者Windows系统都有组的概念，通过组可以更加方便的管理用户，组的概念应用于各行行业，例如企业会使用部门、职能或地理区域的分类方式来管理成员，映射在Linux系统，同样可以创建用户，并用组的概念对其管理。

Linux组有如下特点：

 每个组有一个组ID；

 组信息保存在/etc/group中；

 每个用户至少拥有一个主组，同时还可以拥有31个附属组。

通过命令groupadd、groupdel、groupmod来对组进行管理，详细参数使用如下：

 

groupadd用法

-f, --force       如果组已经存在则成功退出；

并且如果 GID 已经存在则取消 –g；

-g, --gid GID       为新组使用 GID；

-h, --help         显示此帮助信息并推出；

-K, --key KEY=VALUE    不使用 /etc/login.defs 中的默认值；

-o, --non-unique      允许创建有重复 GID 的组；

-p, --password PASSWORD  为新组使用此加密过的密码；

-r, --system        创建一个系统账户；

groupmod用法

-g, --gid GID       将组 ID 改为 GID；

-h, --help         显示此帮助信息并推出；

-n, --new-name NEW_GROUP 改名为 NEW_GROUP；

-o, --non-unique      允许使用重复的 GID；

-p, --password PASSWORD  将密码更改为(加密过的) PASSWORD；

groupdel用法

groupdel admin         删除admin组；



### Linux权限管理

Linux权限是操作系统用来限制对资源访问的机制，权限一般分为读、写、执行。系统中每个文件都拥有特定的权限、所属用户及所属组，通过这样的机制来限制哪些用户或用户组可以对特定文件进行相应的操作。

 

Linux每个进程都是以某个用户身份运行，进程的权限与该用户的权限一样，用户的权限越大，则进程拥有的权限就越大。

 

Lnux中有的文件及文件夹都有至少权限三种权限，常见的权限如表5-1所示:

 

| 权限                                    | 对文件的影响   | 对目录的影响           |
| --------------------------------------- | -------------- | ---------------------- |
| r（读取）                               | 可读取文件内容 | 可列出目录内容         |
| w（写入）                               | 可修改文件内容 | 可在目录中创建删除内容 |
| x（执行）                               | 可作为命令执行 | 可访问目录内容         |
| 目录必须拥有 x 权限，否则无法查看其内容 |                |                        |

Linux权限授权，默认是授权给三种角色，分别是user、group、other，Linux权限与用户之间的关联如下：

U代表User，G代表Group，O代表Other；

 每个文件的权限基于UGO进行设置；

权限三位一组（rwx），同时需授权给三种角色，UGO；

 每个文件拥有一个所属用户和所属组，对应UGO，不属于该文件所属用户或所属组使用O来表示；

在Linux系统中，可以通过ls –l查看peter.net目录的详细属性，如图5-1所示：

drwxrwxr-x  2 peter1 peter1 4096 Dec 10 01:36 peter.net

peter.net目录属性参数详解如下：

 d 表示目录，同一位置如果为-则表示普通文件；

 rwxrwxr-x 表示三种角色的权限，每三位为一种角色，依次为u，g，o权限，如上则表示user的权限为rwx，group的权限为rwx，other的权限为r-x；

 2表示文件夹的链接数量，可理解为该目录下子目录的数量；

 从左到右，第一个peter1表示该用户名，第二个peter1则为组名，其他人角色默认不显示；

 4096表示该文件夹占据的字节数；

 Dec 10 01:36 表示文件创建或者修改的时间；

peter.net 为目录的名，或者文件名。

peter.net目录属性参数详解如下：

 d 表示目录，同一位置如果为-则表示普通文件；

 rwxrwxr-x 表示三种角色的权限，每三位为一种角色，依次为u，g，o权限，如上则表示user的权限为rwx，group的权限为rwx，other的权限为r-x；

 2表示文件夹的链接数量，可理解为该目录下子目录的数量；

 从左到右，第一个peter1表示该用户名，第二个peter1则为组名，其他人角色默认不显示；

 4096表示该文件夹占据的字节数；

 Dec 10 01:36 表示文件创建或者修改的时间；

peter.net 为目录的名，或者文件名。



#### 修改某个用户、组对文件夹的权限，用命令chmod实现，其中以代指ugo，、-、=代表加入、删除和等于对应权限，具体案例如下：

（1） 授予用户对peter.net目录拥有rwx权限

chmod  –R  u+rwx  peter.net

（2） 授予组对peter.net目录拥有rwx权限

chmod  –R  g+rwx  peter.net

（3） 授予用户、组、其他人对jpeter.net目录拥有rwx权限

chmod  –R  u+rwx,g+rwx,o+rwx  peter.net

（4） 撤销用户对peter.net目录拥有w权限

chmod  –R  u-w  peter.net

（5） 撤销用户、组、其他人对peter.net目录拥有x权限

chmod  –R  u-x,g-x,o-x peter.net

（6） 授予用户、组、其他人对jpeter.net目录只有rx权限

chmod  –R  u=rx,g=rx,o=rx  peter.net



#### Linux权限默认使用rwx来表示，为了更简化在系统中对权限进行配置和修改，Linux权限引入二进制表示方法，如下代码：

Linux权限可以将rwx用二进制来表示，其中有权限用1表示，没有权限用0表示；Linux权限用二进制显示如下：rwx=111r-x=101rw-=110r--=100依次类推，转化为十进制，对应十进制结果显示如下：rwx=111=4+2+1=7r-x=101=4+0+1=5rw-=110=4+4+0=6r--=100=4+0+0=4得出结论，用r=4,w=2,x=1来表示权限。

使用二进制方式来修改权限案例演示如下，其中默认peter.nett目录权限为755：

（1） 授予用户对peter.net目录拥有rwx权限

chmod  –R  755 peter.net

（2） 授予组对peter.net目录拥有rwx权限

chmod  –R  775 peter.net

（3） 授予用户、组、其他人对peter.net目录拥有rwx权限

chmod  –R  777  peter.net

### 快捷记法

0  ---

1 --x

2 -w-

3 -wx

4 r--

5 r-x

6 rw-

7 rwx

