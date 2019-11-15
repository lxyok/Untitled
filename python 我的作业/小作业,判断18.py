#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2019/11/15 10:08 
# @Author : lxyok
# @File : 小作业,判断18.py
# @Software: PyCharm
import sys

def play(a):
    if a == 18:
        print("等于 %d  退出游戏" % a)
        sys.exit(0)

    else:
        i = 3
        print('你有三次机会')
        while i > 0:

            a = int(input('请重新输入一个数:'))
            if a == 18:
                print("等于 %d  退出游戏" % a)
                sys.exit(0)
            i -= 1
            print('你还有 %d 次机会' % i, end="")


a = int(input('开始，请输入一个数字'))
play(a)
huifu = input(',你要继续吗，如果继续就再给三次机会(y/n)')
huifu == 'y'
while huifu == 'y':
    if huifu == 'y':
        play(a)
        huifu = input(',你要继续吗，如果继续就再给三次机会(y/n)')
    elif huifu == 'n':
        sys.exit(0)