#!/bin/bash

read -p "Enter your email: " EMAIL
read -s -p "Enter your password: " PASSWORD
echo
read -p "Enter your current 6-digit Authenticator code: " CODE

curl -X POST http://localhost:5050/api/auth/login \
  -H "Content-Type: application/json" \
  -d "{\"email\":\"$EMAIL\",\"password\":\"$PASSWORD\",\"mfaCode\":\"$CODE\"}"

echo
