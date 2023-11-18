import os
import sys
import datetime

if len(sys.argv) < 3:
    print("Missing command line argument", file=sys.stderr)
    sys.exit(1)

check_dir = os.getcwd()
for i in range(int(sys.argv[1]), int(sys.argv[2]) + 1):
    buf_file = open(os.path.join(check_dir, f"{i}.in"), "w")
    buf_file.close()
    buf_file = open(os.path.join(check_dir, f"{i}.out"), "w")
    buf_file.close()


