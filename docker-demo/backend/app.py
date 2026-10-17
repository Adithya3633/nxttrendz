import os

print("next Hello")
print("Mode: ", os.environ.get("APP_ENV"))

os.makedirs("/app/data", exist_ok=True)
with open("/app/data/starts.txt", "a", encoding="utf-8") as f:
    f.write("started\n")

with open("/app/data/starts.txt", "r", encoding="utf-8") as f:
    print("Time started so far:", len(f.readlines()))