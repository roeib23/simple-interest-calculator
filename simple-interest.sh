#!/bin/bash

# Simple Interest Calculator

echo "Enter the principal amount:"
read p

echo "Enter the annual rate of interest (%):"
read r

echo "Enter the time period (in years):"
read t

# Calculation: SI = (P * R * T) / 100
# Using 'bc' for floating-point math support if needed, or basic integer math
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc 2>/dev/null || echo "$(( (p * r * t) / 100 ))")

echo "-------------------------------------"
echo "The Simple Interest is: $interest"
echo "-------------------------------------"
