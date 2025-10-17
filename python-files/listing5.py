'''
same callee called from two checks (aggregation)
'''
import os

def fail():
    os.abort()

def main(a: int, b: int):
    if a > 2:
        f(a)
    if b > 3:
        f(b)

def f(x: int):
    if x > 10:
        fail()
# Combined: (a > 10) OR (b > 10)
