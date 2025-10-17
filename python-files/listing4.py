'''
two alternative call-sites (OR)
'''
import os

def fail():
    os.abort()

def wrapper(n: int):
    if n > 0:
        branch1(n)
    if n < -5:
        branch2(n)

def branch1(m: int):
    if m > 8:
        fail()

def branch2(m: int):
    if m < -10:
        fail()
# Combined: (n > 8) OR (n < -10)
