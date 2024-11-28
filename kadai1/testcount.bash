#!/bin/bash


ng () {
    echo "error"
    res=1
}

res=0

#Test1
output=$(echo "" | python3 count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e 's/^[ \t]*//;s/[ \t]*$//' -e '/^$/d')
expected="No input"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test1 Passed"
fi

#Test2
output=$(echo "a" | python3 count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e 's/^[ \t]*//;s/[ \t]*$//' -e '/^$/d')
expected="Counter({'a': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test2 Passed"
fi

#Test3
output=$(echo "aaa" | python3 count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e 's/^[ \t]*//;s/[ \t]*$//' -e '/^$/d')
expected="Counter({'a': 3})"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test3 Passed"
fi

#Test4
output=$(echo "hello world" | python3 count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e 's/^[ \t]*//;s/[ \t]*$//' -e '/^$/d')
expected="Counter({'l': 3, 'o': 2, 'h': 1, 'e': 1, ' ': 1, 'w': 1, 'r': 1, 'd': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng 
else
    echo "Test4 Passed"
fi

exit $res



