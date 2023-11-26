{% set version = '14.0.3' %}

ripgrep:
  pkg.installed:
{% if grains['os'] == 'Ubuntu' and grains['osrelease']|float < 20.04 %}
    - sources:
      - ripgrep: https://github.com/BurntSushi/ripgrep/releases/download/{{ version }}/ripgrep_{{ version }}_amd64.deb
{% else %}
    - pkgs: [ripgrep]
{% endif %}
