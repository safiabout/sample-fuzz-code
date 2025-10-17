'''
nested-sum guard then a range check
'''
import os

def fail():
    os.abort()

def outer(x: int, y: int):
    if x > 0 and y > 0:
        inner(x + y)

def inner(s: int):
    if s > 15 and s < 30:
        fail()
# Combined: x > 0 AND y > 0 AND 15 < x + y < 30
