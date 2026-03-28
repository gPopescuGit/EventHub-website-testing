import json
import os
from pathlib import Path

base_dir = Path(__file__).resolve().parent
json_path = base_dir / "healer_credentials.json"

email = os.getenv("TEST_USER_EMAIL")
password = os.getenv("TEST_USER_PASSWORD")

if email and password:
    EMAIL = email
    PASS = password
else:
    with open(json_path, "r", encoding="utf-8") as f:
        creds = json.load(f)
    EMAIL = creds["user"]
    PASS=  creds["pass"]

