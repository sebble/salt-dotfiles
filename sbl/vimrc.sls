vimrc:
  file.managed:
    - name: ~/.vimrc
    - source: https://gist.githubusercontent.com/sebble/d50851a0129a98cf7b31/raw/c7090b783db52bab7606daa87585977622cd5fd0/.vim_colors_badwolf.vim
    - require:
      - pgk: vim
      - file: badwolf
      - cmd: powerline
      - cmd: neobundle

badwolf:
  file.managed:
    - name: ~/.vim/colors/badwolf.vim
    - source: https://gist.githubusercontent.com/sebble/d50851a0129a98cf7b31/raw/67f3064f28f784bc2a89ed70ef7eb8fb7f3167e5/.vimrc

powerline:
  cmd.run:
    - name: |
        #...
        #...
    - creates: ~/....

neobundle:
  cmd.run:
    - name: curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
    - creates: ~/.vim/bundle
