
# ZSH format:
# : 1569397433:0;rm .bashrc
#
# Bash format:
# #1569400511
# python dotfiles/zsh_to_bash_history.py

with open(".zsh_history") as f:
    lines = f.readlines()

i = 0
while i < len(lines):
    line = lines[i]

    while True:
        next_line = lines[i+1] if i+1 < len(lines) else ": dummy"
        if next_line.startswith(":"):
            break
        line += next_line
        i += 1

    i += 1
    line = line.strip()
    if line:
        parts = line.split(":")
        print("#" + parts[1].strip())
        time, command = parts[2].split(";", 1)
        print("#" + command.strip())
