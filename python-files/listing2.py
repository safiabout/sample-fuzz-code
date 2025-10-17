'''
3-level chain, linear transforms
'''
import os

def fail():
    os.abort()

def a(p: int):
    if p > 1:
        b(p - 2)

def b(q: int):
    if q < 10:
        c(2 * q)

def c(r: int):
    if r > 10:
        fail()
# Derived predicate: 7 < p < 12
