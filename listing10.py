'''
caller applies integer transform used by callee's threshold
'''
import os

def fail():
    os.abort()

def start(v: int):
    w = v // 2
    if v > 0:
        mid(w + 4)

def mid(u: int):
    if u > 9:
        fail()
# Derived: v >= 12  (since (v // 2) + 4 > 9 -> v // 2 >= 6 -> v >= 12)
