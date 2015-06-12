python_ssl:
  cmd.run:
    - name: pip install requests[security]
    - require:
      - pkg: python-pip

python-pip:
  pkg.installed

pip_latest:
  cmd.run:
    - name: pip install -U pip
    - require:
      - pkg: python-pip

python_latest:
  cmd.run:
    - name: pip install -U python
    - require:
      - pkg: python-pip
