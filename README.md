# CSS Lab scripts

Several scripts that work on CSS Lab

To copy/install, copy-paste the lines below one-by-one in shell
```sh
$ mkdir "${HOME}/local/bin"
$ git clone https://github.com/pisanuw/csslabbin "${HOME}/local/bin"
$ echo "# Adding local/bin to PATH" >> "${HOME}/.bashrc"
$ echo "export PATH=\"${PATH}:${HOME}/local/bin\"" >> "${HOME}/.bashrc"
```

# Suggestions for your ~/.bashrc file

## To add NETID/local/bin/ to your PATH (if not doen above)
```sh
export PATH="${PATH}:${HOME}/local/bin"
```

## To change command prompt to be "netid@machine:~/directory$ "
```sh
PS1='\u@\h:\w$ '
```
## enable clang++
```sh
if hash "scl_source" 2>/dev/null; then
    source scl_source enable llvm-toolset-7.0
fi
```