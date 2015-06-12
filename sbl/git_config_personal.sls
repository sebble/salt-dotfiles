git_config_personal:
  cmd.run:
    - name: |
        git config --global user.name "Sebastian Mellor ($(hostname))"
        git config --global user.email sebble@sebble.com
        git config --global push.default simple
