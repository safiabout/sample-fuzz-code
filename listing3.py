'''
single caller, transformed arg
'''
import os

def fail():
    os.abort()

def caller(x: int, y: int):
    if x + y > 10:
        callee(x - y)

def callee(z: int):
    if z < 5:
        fail()
# Combined predicate: (x + y > 10) AND (x - y < 5)
