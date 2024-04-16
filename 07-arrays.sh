#!/bin/bash

FRUITS=("Apple" "Bannana" "Mango" "Kiwi")

echo "First value: ${FRUITS(0)}"

echo "Second value: ${FRUITS(1)}"

echo "Second value: ${FRUITS(2)}"

echo "Third value: ${FRUITS(3)}"

echo "All Fruits: ${FRUITS(@)}"