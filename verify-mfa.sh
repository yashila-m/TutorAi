#!/bin/bash

read -s -p "Paste your login token: " TOKEN
echo
read -p "Enter your current 6-digit Authenticator code: " CODE

curl -X POST http://localhost:5050/api/auth/mfa/verify \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $TOKEN" \
  -d "{\"code\":\"$CODE\"}"

echo
