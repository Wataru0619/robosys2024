#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Wataru Suenaga

from collections import Counter

print("Please enter text")
text = input().strip()

if not text:
    print("No input")
    exit()

c = Counter(text)

print(c)
