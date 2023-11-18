import os
import sys

def norm_num(n):
    ans = str(n)
    if len(ans) < 2:
        return "0" + ans
    return ans

base_path = "/home/dmitry/My_files/IT/Sem4/code"
cmake_path = "/home/dmitry/My_files/IT/Sem4/code/CMakeLists.txt"
template_file_path = "/home/dmitry/.scripts/template_cpp.cpp"

contest_num = int(sys.argv[1])
problems_num = int(sys.argv[2])




"""
add_executable(4-1 contest04/1/1.cpp)
add_executable(4-2 contest04/2/2.cpp)
add_executable(4-3 contest04/3/3.cpp)
add_executable(4-4 contest04/4/4.cpp)
add_executable(4-5 contest04/5/5.cpp)
"""




contest_dir = os.path.join(base_path, f"contest{norm_num(contest_num)}")
os.mkdir(contest_dir)
for i in range(1, problems_num + 1):
    problem_dir = os.path.join(contest_dir, str(i))
    os.mkdir(problem_dir)
    problem_file_path = os.path.join(problem_dir, f"{i}.cpp")
    with open(template_file_path) as template_file:
        template = template_file.read()
    with open(problem_file_path, "w") as problem_file:
        problem_file.write(template)
    with open(cmake_path, "a") as cmake_file:
        dst_path = f"{contest_num}-{i}"
        src_path = f"contest{norm_num(contest_num)}/{i}/{i}.cpp"
        cmake_file.write(f"add_executable({dst_path} {src_path})\n")

with open(cmake_path, "a") as cmake_file:
    cmake_file.write("\n");






