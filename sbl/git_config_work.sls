git_config_work:
  cmd.run:
    - name: |
        git config --global user.name "Sebastian Mellor ($(hostname))"
        git config --global user.email s.j.i.mellor@ncl.ac.uk
        git config --global push.default simple
