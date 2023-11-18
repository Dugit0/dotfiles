import os
import sys
import datetime

if len(sys.argv) < 2:
    print("Missing command line argument", file=sys.stderr)
    sys.exit(1)

contest_dir = os.getcwd()
problem_name = sys.argv[1]
problem_dir = os.path.join(contest_dir, problem_name)
os.mkdir(problem_dir)
buf_file = open(os.path.join(problem_dir, "prog.py"), "w")
buf_file.close()
check_dir = os.path.join(problem_dir, "check")
os.mkdir(check_dir)
for i in range(1, 4):
    buf_file = open(os.path.join(check_dir, f"{i}.in"), "w")
    buf_file.close()
    buf_file = open(os.path.join(check_dir, f"{i}.out"), "w")
    buf_file.close()


