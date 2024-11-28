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

- このソフトウェアパッケージは，GPL3.0ライセンスの下，再頒布および使用が許可されます．
- © 2024:Wataru Suenaga
