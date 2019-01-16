#! /usr/bin/env python3

def f(n):
    print(300 + n * 700)
    
t = 0
while t < 24 * 365:
    for i in range(6):
        f(0)
        t += 1
    for i in range(12):
        f(i/11)
        t += 1
    for i in range(6):
        f(1-i/5)
        t += 1
