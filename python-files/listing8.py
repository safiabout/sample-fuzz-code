'''
recursion with immediate small-n fault
'''
import os

def fail():
    os.abort()

def r(n: int):
    if n > 2:
        r(n - 1)
    if n < 2:
        fail()
# Inputs causing fail: n < 2
