'''
multiplicative transform
'''
import os

def fail():
    os.abort()

def p(x: int):
    if x > 2:
        q(3 * x - 1)

def q(t: int):
    if t > 20:
        fail()
# Derived: x > 7  (x > 2 is implied)
