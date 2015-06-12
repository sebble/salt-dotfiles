python_ssl:
  cmd.run:
    - name: pip3 install requests[security]
    - require:
      - pkg: python3-pip

python3-pip:
  pkg.installed

pip3_latest:
  cmd.run:
    - name: pip3 install -U pip
    - require:
      - pkg: python3-pip

python3_latest:
  cmd.run:
    - name: pip3 install -U python
    - require:
      - pkg: python3-pip
