#!/bin/bash
# SPDX-FileCopyrightText: 2024 Wataru Suenaga
# SPDX-License-Identifier: GPL-3.0-only


ng () {
    echo "error"
    res=1
}

res=0

#Test1
output=$(echo "" | python3 ./count)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e '/^$/d')
expected="No input"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test1 Passed"
fi

#Test2
output=$(echo "a" | python3 ./count)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e '/^$/d')
expected="Counter({'a': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test2 Passed"
fi

#Test3
output=$(echo "aaa" | python3 ./count)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e '/^$/d')
expected="Counter({'a': 3})"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test3 Passed"
fi

#Test4
output=$(echo "hello world" | python3 ./count)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e '/^$/d')
expected="Counter({'l': 3, 'o': 2, 'h': 1, 'e': 1, ' ': 1, 'w': 1, 'r': 1, 'd': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test4 Passed"
fi

#Test5
output=$(echo "!@#$%^&*()" | python3 ./count)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e '/^$/d')
expected="Counter({'!': 1, '@': 1, '#': 1, '$': 1, '%': 1, '^': 1, '&': 1, '*': 1, '(': 1, ')': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng
else
    echo "Test5 Passed"
fi

exit $res


# This software package is licensed under the GPL-3.0 License, and redistribution and usage are permitted under its terms.
# © 2024:Wataru Suenaga
