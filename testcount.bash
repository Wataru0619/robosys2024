#!/bin/bash
# SPDX-FileCopyrightText: 2024 Wataru Suenaga
# SPDX-License-Identifier: GPL-3.0-only

ng () {
    echo "error"
    res=1
}

res=0

# Test1: 空の入力
output=$(echo "" | ./count 2>&1)
status=$?
expected_output="No input"
if [ "$output" != "$expected_output" ] || [ $status -ne 1 ]; then
    ng
else
    echo "Test1 Passed"
fi

# Test2: 単一文字
output=$(echo "a" | ./count)
status=$?
expected_output="a: 1"
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test2 Passed"
fi

# Test3: 同じ文字の繰り返し
output=$(echo "aaa" | ./count)
status=$?
expected_output="a: 3"
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test3 Passed"
fi

# Test4: 英数字とスペース
output=$(echo "hello world" | ./count)
status=$?
expected_output=$'h: 1\ne: 1\nl: 3\no: 2\n : 1\nw: 1\nr: 1\nd: 1'
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test4 Passed"
fi

# Test5: 特殊文字
output=$(echo "!@#$%^&*()" | ./count)
status=$?
expected_output=$'!: 1\n@: 1\n#: 1\n$: 1\n%: 1\n^: 1\n&: 1\n*: 1\n(: 1\n): 1'
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test5 Passed"
fi

# Test6: 数字
output=$(echo "1234567890" | ./count)
status=$?
expected_output=$'1: 1\n2: 1\n3: 1\n4: 1\n5: 1\n6: 1\n7: 1\n8: 1\n9: 1\n0: 1'
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test6 Passed"
fi

# Test7: 日本語（ひらがな）
output=$(echo "なまむぎなまごめなまたまご" | ./count)
status=$?
expected_output=$'な: 3\nま: 4\nむ: 1\nぎ: 1\nご: 2\nめ: 1\nた: 1'
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test7 Passed"
fi

# Test8: 日本語（漢字）
output=$(echo "生麦生米生卵" | ./count)
status=$?
expected_output=$'生: 3\n麦: 1\n米: 1\n卵: 1'
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test8 Passed"
fi

# Test9: 絵文字
output=$(echo "😀😃😄😁😆" | ./count)
status=$?
expected_output=$'😀: 1\n😃: 1\n😄: 1\n😁: 1\n😆: 1'
if [ "$output" != "$expected_output" ] || [ $status -ne 0 ]; then
    ng
else
    echo "Test9 Passed"
fi

exit $res


#Tes
# This software package is licensed under the GPL-3.0 License, and redistribution and usage are permitted under its terms.
# © 2024:Wataru Suenaga
