# Create ~/.scripts/data/cur_dir.txt if it doesn't exist
if [ ! -e "$HOME/.scripts/data/cur_dir.txt" ]; then
    mkdir -p "$HOME/.scripts/data"
    touch "$HOME/.scripts/data/cur_dir.txt"
fi

alias ls='ls -l --color'
alias lf='lfcd'
alias scd='pwd -P > ~/.scripts/data/cur_dir.txt'
alias pcd='cat ~/.scripts/data/cur_dir.txt'
alias dcd='cd "$(cat ~/.scripts/data/cur_dir.txt)"'
alias venv_source='source ./venv/bin/activate'
alias bash_source='source ~/.bashrc'
alias cmcmkcontest='python3 ~/.config/bash/scripts/gen_contest_files.py'
alias cmctest='~/.config/bash/scripts/cmctest.sh'
# alias cmcmkproblem='python3 ~/.config/bash/scripts/gen_problem_files.py'
# alias cmcmktests='python3 ~/.config/bash/scripts/gen_tests_files.py'

function cmcML() {
    cd '/home/dmitry/My_files/IT/Sem5/cmc_ML_2023-24'
    source 'venv/bin/activate'
}

function cmcgcc_omp() {
    outfile=${1%%.*}
    echo ${outfile}
    gcc -fopenmp -O2 -std=gnu18 -Wall -Wno-pointer-sign -Werror=vla -o ${outfile} ${1}
}


# alias cmcprintgcc='echo "gcc -m32 -fsanitize=address,undefined,signed-integer-overflow -O2 -std=gnu18 -Wall -Werror -Wno-pointer-sign -Werror=vla -lm"'

# Compilation func for C in sem 3
# function cmcgcc() {
#     outfile=${1%%.*}
#     echo ${outfile}
#     gcc -m32 -fsanitize=address,undefined,signed-integer-overflow,pointer-compare,pointer-subtract,leak,bounds,pointer-overflow -O2 -std=gnu18 -Wall  -Wno-pointer-sign -Werror=vla -lm -o ${outfile} ${1}
# }
# -Werror -fsanitize=shadow-call-stack -pedantic -Wextra

# Compilation func for C++ in sem 4
# function cmcgcc() {
#     outfile=${1%%.*}
#     echo ${outfile}
#     g++ -fsanitize=address,undefined,signed-integer-overflow,pointer-compare,pointer-subtract,leak,bounds,pointer-overflow -O2 -Wall -std=gnu++2b -lm -o ${outfile} ${1}
# }
# -Werror


# function cmcgcc-vg() {
#     outfile=${1%%.*}
#     echo ${outfile}
#     gcc -fsanitize=address,undefined,signed-integer-overflow -O2 -std=gnu18 -Wall -Werror -Wno-pointer-sign -Werror=vla -lm -o ${outfile} ${1}
# }


# function cmcgcc-gdb() {
#     outfile=${1%%.*}
#     echo ${outfile}
#     gcc -g -O2 -std=gnu18 -Wall -Werror -Wno-pointer-sign -Werror=vla -lm -o ${outfile} ${1}
# }


# function cmcmkdir() {
#     # first arg - contest number
#     # second arg - number of problems in contest
#     origin_work_dir=$(pwd)
#     contest_number=${1}
#     num_of_prob=${2}
#     mkdir "contest${contest_number}"
#     cd "contest${contest_number}"
#     for (( i=1; i <= ${num_of_prob}; i++ ))
#     do
#         mkdir ${i}
#         cd ${i}
#         cp "~/.scripts/data/template_C.c" "./${i}.c"
#         cd ..
#     done
#     cd $origin_work_dir
# }

#function vmkrun() {
#    outfile=${1%%.*}
#    gcc -m32 -O2 -std=gnu18 -Wall -Werror -Wno-pointer-sign -Werror=vla -lm -o ${outfile} ${1}
#    exec "./${outfile}"
#}
