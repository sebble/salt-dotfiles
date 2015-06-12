dmenu:
  pkg.installed
  file.managed:
    - contents: |
        #!/bin/bash
## Pass all files in the PATH to dmenu and execute on success (with sorting by usage frequency)
        tmp_bin=$(tempfile)
        echo $PATH | tr ':' '\n' | xargs ls -1 | grep -Ev '^(/|$)' | sort -u > $tmp_bin
        cat ~/.dme_history >> $tmp_bin
        tmp_count=$(tempfile)
        cat $tmp_bin | sort | uniq -c | sort -sb -k 1,1rn -k 2,2f > $tmp_count
        run=$(cat $tmp_count | awk '{print $2}' | dmenu -b -i) && (echo $run >> ~/.dme_history ; $run)
        rm $tmp_bin
        rm $tmp_count
    - require:
      - pkg: dmenu
