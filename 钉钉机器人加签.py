#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2020/4/11 21:46
# @Author  : Shark
# @Site    : 
# @File    : 钉钉机器人加签.py
# @Software: PyCharm
import time
import hmac
import hashlib
import base64
import urllib.parse
'''
timestamp  第一步使用到的时间戳

sign  第一步得到的签名值

https://oapi.dingtalk.com/robot/send?access_token=XXXXXX&timestamp=XXX&sign=XXX
https://oapi.dingtalk.com/robot/send?access_token=f416f738b52acd7c281024d98e2bdc2994e19da8779b83f1cee76cacf58da938&timestamp=1586612842971&sign=RYQ4S43AoOcmB1FESuoFNZaJsdWcWFnjaH5S0KJL1iw%3D

curl 'https://oapi.dingtalk.com/robot/send?access_token=f416f738b52acd7c281024d98e2bdc2994e19da8779b83f1cee76cacf58da938&timestamp=1586612842971&sign=RYQ4S43AoOcmB1FESuoFNZaJsdWcWFnjaH5S0KJL1iw%3D' \
   -H 'Content-Type: application/json' \
   -d '{"msgtype": "text", 
        "text": {
             "content": "我就是我, 是不一样的烟火"
        }
      }'
'''

timestamp = str(round(time.time() * 1000))
secret = 'SECfc696ae2f3a7a611a6795c149e387316c0a79f41cfcc93d914d304648f6114ba'
secret_enc = secret.encode('utf-8')
string_to_sign = '{}\n{}'.format(timestamp, secret)
string_to_sign_enc = string_to_sign.encode('utf-8')
hmac_code = hmac.new(secret_enc, string_to_sign_enc, digestmod=hashlib.sha256).digest()
sign = urllib.parse.quote_plus(base64.b64encode(hmac_code))
print(timestamp)
print(sign)