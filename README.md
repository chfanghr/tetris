# tetris
## 二进制文件
位于bin目录下，可以直接运行。
## 编译
首先克隆代码
```bash
fanghr@admin:/mnt/d$ git clone https://gitee.com/Fanghr/tetris.git
fanghr@admin:/mnt/d$ cd tetris
```
然后编译，
编译环境：Linux/Cygwin，需要gcc和make支持
```bash
fanghr@admin:/mnt/d/tetris$ make
cc  -DENABLE_SCORE -DENABLE_PREVIEW -DENABLE_HIGH_SCORE  -c -o tetris.o tetris.c
cc   tetris.o   -o tetris
```
然后用
```bash 
fanghr@admin:/mnt/d/tetris$ ./tetris
```
## 蜜汁BUG
* 在bash下运行完后导致bash异常，重启bash即可；
* 运行后提示
```bash
cat: /home/fanghr/.tetris.scores: 没有那个文件或目录
```
该文件是储存分数用的，在家目录下建立一个`.tetris.scores`文件即可
```bash
fanghr@admin:~$ echo >>~/.tetris.scores
```