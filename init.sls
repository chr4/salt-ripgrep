{% set version = '11.0.1' %}

ripgrep:
  pkg.installed:
    - sources:
      - ripgrep: https://github.com/BurntSushi/ripgrep/releases/download/{{ version }}/ripgrep_{{ version }}_amd64.deb
