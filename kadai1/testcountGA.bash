#!/bin/bash
# SPDX-FileCopyrightText: 2024 Wataru Suenaga
# SPDX-License-Identifier: GPL-3.0-only

ng () {
    echo "error"
    res=1
}

res=0

# Test1
output=$(echo "" | python3 ./kadai1/count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e '/^$/d')
expected="No input"
if [ "$output_cleaned" != "$expected" ]; then
    ng
else
    echo "Test1 Passed"
fi

#Test2
output=$(echo "a" | python3 ./kadai1/count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e '/^$/d')expected="Counter({'a': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng
else
    echo "Test2 Passed"
fi

exit $res

