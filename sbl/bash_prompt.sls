bash_prompt:
  file.append:
    - name: ~/.bashrc
    - text: |
        export GIT_PS1_SHOWDIRTYSTATE=1
        export GIT_PS1_SHOWCOLORHINTS=1
        if [ "$(id -u)x" = "0x" ]; then
          PS1=$'\n \[\e[38;5;127;1m\](\d) (\\t) [$?]\[\e[0m\] \[\e[31;1m\][\u@\h]\[\e[0m\]\n \[\e[38;5;33;1m\]\w\[\e[0m\]\[\e[30;1m\]$(__git_ps1 " [%s]")\[\e[0m\]\n \[\e[31;1m\]#\[\e[0m\] '
        else
          PS1=$'\n \[\e[38;5;127;1m\](\d) (\\t) [$?]\[\e[0m\] \[\e[30;1m\][\u@\h]\[\e[0m\]\n \[\e[38;5;33;1m\]\w\[\e[0m\]\[\e[30;1m\]$(__git_ps1 " [%s]")\[\e[0m\]\n \[\e[38;5;214;1m\]$\[\e[0m\] '
        fi
        export PS1

bash_prompt:
  file.append:
    - name: /root/.bashrc
    - text: |
        export GIT_PS1_SHOWDIRTYSTATE=1
        export GIT_PS1_SHOWCOLORHINTS=1
        PS1=$'\n \[\e[38;5;127;1m\](\d) (\\t) [$?]\[\e[0m\] \[\e[31;1m\][\u@\h]\[\e[0m\]\n \[\e[38;5;33;1m\]\w\[\e[0m\]\[\e[30;1m\]$(__git_ps1 " [%s]")\[\e[0m\]\n \[\e[31;1m\]#\[\e[0m\] '
        export PS1
