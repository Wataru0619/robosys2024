#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Wataru Suenaga
# SPDX-License-Identifier: GPL-3.0-only

from collections import Counter

print("Please enter text")
text = input().strip()

if not text:
    print("No input")
    exit()

c = Counter(text)

print(c)
