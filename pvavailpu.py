#! /usr/bin/env python3

t = 0
while t < 24 * 365:
    for i in range(12):
        print(0)
        t += 1
    for i in range(6):
        print(i/5)
        t += 1
    for i in range(6):
        print(1-i/5)
        t += 1
