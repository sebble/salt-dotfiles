githooks_rm_symlinks:
  cmd.run:
    - name: rm /usr/share/git-core/templates/hooks/*

{% for hook in ['applypatch-msg' 'commit-msg' 'post-applypatch' 'post-checkout' 'post-commit' 'post-merge' 'post-receive' 'post-rewrite' 'post-update' 'pre-applypatch' 'pre-auto-gc' 'pre-commit' 'prepare-commit-msg' 'pre-push' 'pre-rebase' 'pre-receive' 'update'] %}
/usr/share/git-core/templates/hooks/{{hook}}:
  file.managed:
    - contents: "if [ -x ../../hooks/{{hook}} ]; then ../../hooks/{{hook}}; fi;"
    - mode: 555
    - follow_symlinks: False
    - require:
      - cmd: githooks_rm_symlinks

{% endfor %}
