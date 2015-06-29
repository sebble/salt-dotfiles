bash_aliases:
  file.append:
    - name: ~/.bashrc
    - text:
      - alias lsb='echo "$(lsb_release -ds) ($(lsb_release -cs))"'
      - alias dog='pygmentize -g'
      - alias ww='sudo -sHu www-data'
