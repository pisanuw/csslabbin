# CSS Lab scripts

Several scripts that work on CSS Lab

# Suggestions for your ~/.bashrc file

## To add NETID/local/bin/ to your PATH
export PATH="${PATH}:${HOME}/local/bin"

## To change command prompt to be "netid@machine:~/directory$ "
PS1='\u@\h:\w$ '

## enable clang++
if hash "scl_source" 2>/dev/null; then
    source scl_source enable llvm-toolset-7.0
fi