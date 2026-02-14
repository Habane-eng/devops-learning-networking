#!/bin/bash
# Basic arithmetic calculator

read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "$num1 + $num2 = $((num1 + num2))"
echo "$num1 - $num2 = $((num1 - num2))"
echo "$num1 * $num2 = $((num1 * num2))"

if [ "$num2" -eq 0 ]; then
  echo "Division by zero is not allowed"
else
  echo "$num1 / $num2 = $((num1 / num2))"
fi
