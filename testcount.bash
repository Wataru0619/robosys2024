#!/bin/bash
# SPDX-FileCopyrightText: 2024 Wataru Suenaga
# SPDX-License-Identifier: GPL-3.0-only


ng () {
    echo "error"
    res=1
}

res=0

#Test1
output=$(echo "" | ./count)
expected="No input"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test1 Passed"
fi

#Test2
output=$(echo "a" | ./count)
expected="Counter({'a': 1})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test2 Passed"
fi

#Test3
output=$(echo "aaa" | ./count)
expected="Counter({'a': 3})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test3 Passed"
fi

#Test4
output=$(echo "hello world" | ./count)
expected="Counter({'l': 3, 'o': 2, 'h': 1, 'e': 1, ' ': 1, 'w': 1, 'r': 1, 'd': 1})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test4 Passed"
fi

#Test5
output=$(echo "!@#$%^&*()" | ./count)
expected="Counter({'!': 1, '@': 1, '#': 1, '$': 1, '%': 1, '^': 1, '&': 1, '*': 1, '(': 1, ')': 1})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test5 Passed"
fi

#Test6
output=$(echo "1234567890" | ./count)
expected="Counter({'1': 1, '2': 1, '3': 1, '4': 1, '5': 1, '6': 1, '7': 1, '8': 1, '9': 1, '0': 1})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test6 Passed"
fi

#Test7
output=$(echo "なまむぎなまごめなまたまご" | ./count)
expected="Counter({'ま': 4, 'な': 3, 'ご': 2, 'む': 1, 'ぎ': 1, 'め': 1, 'た': 1})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test7 Passed"
fi

#Test8
output=$(echo "生麦生米生卵" | ./count)
expected="Counter({'生': 3, '麦': 1, '米': 1, '卵': 1})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test8 Passed"
fi

#Test9
output=$(echo "😀😃😄😁😆" | ./count)
expected="Counter({'😀': 1, '😃': 1, '😄': 1, '😁': 1, '😆': 1})"
if [ "$output" != "$expected" ]; then
    ng
else
    echo "Test9 Passed"
fi

exit $res


# This software package is licensed under the GPL-3.0 License, and redistribution and usage are permitted under its terms.
# © 2024:Wataru Suenaga
