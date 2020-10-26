from timenow import time_is
import os

user = os.getenv("USER")

print(f"Welcome, {user}!")
print(f"It is now {time_is()}")