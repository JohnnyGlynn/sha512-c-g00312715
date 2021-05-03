#!/bin/bash

echo "Testing opening empty file null.txt"
sha512="$(./sha512 null.txt)"
error="Error occured when opening file: : No such file or directory"
echo "Expected: Error occured when opening file: : No such file or directory"
if [[ $sha512 == $error ]]; then
    echo "Pass"
else
    echo "Fail"
fi

echo "Checking file test.txt."
expected="$(shasum -a 512 test.txt)"
sha512="$(./sha512 test.txt)"
echo "Expected: " $expec
echo "SHA512:   " $sha512
if [[ $sha512 == $expec ]]; then
    echo "Pass"
else
    echo "Fail"
fi