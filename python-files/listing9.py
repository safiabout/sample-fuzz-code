'''
combined linear constraint with local test
'''
import os

def fail():
    os.abort()

def s(a: int, b: int):
    if 2 * a + b > 20:
        t(a, b)

def t(a: int, b: int):
    if a > 5 and b > 3:
        fail()
# Combined: (a > 5) AND (b > 3) AND (2*a + b > 20)
