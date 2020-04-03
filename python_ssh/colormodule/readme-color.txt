


[root@acme-test-227 ~]# pip install colorama
Collecting colorama
  Downloading colorama-0.4.3-py2.py3-none-any.whl (15 kB)
Installing collected packages: colorama
Successfully installed colorama-0.4.3
[root@acme-test-227 ~]#


Fore是针对字体颜色，Back是针对字体背景颜色，Style是针对字体格式


Fore: BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE, RESET.
Back: BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE, RESET.
Style: DIM, NORMAL, BRIGHT, RESET_ALL
注意，颜色RED，GREEN都需要大写，先指定是颜色和样式是针对字体还是字体背景，然后再添加颜色，颜色就是英文单词指定的颜色　



print(Fore.RED + 'some red text')

print(Back.GREEN + 'and with a green background')

print(Style.DIM + 'and in dim text')

print(Style.RESET_ALL)

print('back to normal now')

#!/usr/bin/env python
#encoding: utf-8
 
from colorama import init, Fore, Back, Style
 
 
if __name__ == "__main__":
 
    init(autoreset=True)    #  初始化，并且设置颜色设置自动恢复
    print(Fore.RED + 'some red text')
    print(Back.GREEN + 'and with a green background')
    print(Style.DIM + 'and in dim text')
    # 如果未设置autoreset=True，需要使用如下代码重置终端颜色为初始设置
    #print(Fore.RESET + Back.RESET + Style.RESET_ALL)  autoreset=True
    print('back to normal now')


[root@acme-test-227 ~]# python testcolor.py
some red text
and with a green background
and in dim text
back to normal now


