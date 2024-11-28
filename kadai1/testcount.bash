#!/bin/bash


ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

#Test1
output=$(echo "" | python3 count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e 's/^[ \t]*//;s/[ \t]*$//' -e '/^$/d')
expected="No input"
if [ "$output_cleaned" != "$expected" ]; then
    ng "$LINENO"
else
    echo "Test1 Passed"
fi

#Test2
output=$(echo "a" | python3 count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e 's/^[ \t]*//;s/[ \t]*$//' -e '/^$/d')
expected="Counter({'a': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng "$LINENO"
else
    echo "Test2 Passed"
fi

#Test3
output=$(echo "abbccc" | python3 count.py)
output_cleaned=$(echo "$output" | sed -e 's/Please enter text//' -e 's/^[ \t]*//;s/[ \t]*$//' -e '/^$/d')
expected="Counter({'c': 3, 'b': 2, 'a': 1})"
if [ "$output_cleaned" != "$expected" ]; then
    ng "$LINENO"
else
    echo "Test3 Passed"
fi

exit $res



