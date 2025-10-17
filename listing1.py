'''
Code containing nested vulnerablility
'''
import os

def fail():
    os.abort()

def foo(x: int):
    if x > 1:
        x = 2 * x
    if x > 10:
        fail()

def bar(y: int, z: int):
    if 100 > y:
        foo(y)
    if z > 3:
        fail()
# (2x > 10 && x > 1) -> (x > 5) causes fail

if __name__ == '__main__':
    foo()