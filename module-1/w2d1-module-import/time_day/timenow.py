import time
from datetime import datetime

def time_is():
    now = time.time()
    return datetime.utcfromtimestamp(now).strftime('%Y-%m-%d %H:%M:%S')

if __name__ == "__main__":
    print(time_is())