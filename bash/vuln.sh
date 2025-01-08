#!/bin/bash
# bash/test.sh

# Hardcoded credentials (vulnerability)
USERNAME="admin"
PASSWORD="password123"

# Insecure HTTP request (no SSL)
curl -u $USERNAME:$PASSWORD http://example.com
