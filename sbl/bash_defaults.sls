bash_defaults:
  file.append:
    - name: ~/.bashrc
    - text:
      - export TERM='xterm-256color'
      - export EDITOR='vi'
      - PATH=~/bin:$PATH; export PATH
