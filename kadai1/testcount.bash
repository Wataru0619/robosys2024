#!/bin/bash


ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

#Test1
output=$(echo "abbccc" | python3 count.py)

expected="Counter({'c': 3, 'b': 2, 'a': 1})"

if [ "$output" != "$expected" ]; then
    ng "$LINENO"
else
    echo "Test1 Passed"
fi

exit $res


