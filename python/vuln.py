import requests

# Hardcoded credentials (vulnerability)
USERNAME = "admin"
PASSWORD = "password123"

# Insecure HTTP request (no SSL)
response = requests.get('http://example.com', auth=(USERNAME, PASSWORD))
print(response.text)
