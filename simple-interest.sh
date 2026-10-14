#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P × R × T) / 100

echo "================================"
echo "  Simple Interest Calculator"
echo "================================"
echo ""

# Take input from user
read -p "Enter Principal amount (P): " principal
read -p "Enter Rate of Interest (R in %): " rate
read -p "Enter Time Period (T in years): " time

# Calculate simple interest
# SI = (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display results
echo ""
echo "================================"
echo "         Results"
echo "================================"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "--------------------------------"
echo "Simple Interest  : $interest"
echo "Total Amount     : $total"
echo "================================"
