{% for rcfile, remote in pillar['dotfiles'].iteritems() %}
/home/imil/{{ rcfile }}:
  file.managed:
    - source: salt://dotfiles/{{ remote }}
    - user: imil
    {% if grains['os'] == 'NetBSD' %}
    - group: wheel
    {% else %}
    - group: imil
    {% endif %}
    - mode: 644
{% endfor %}

/home/imil/.vim/spell:
  file.recurse:
    - source: salt://dotfiles/vim-spell
    - include_empty: True

/home/imil/.vim:
  file.directory:
    - user: imil
    - recurse:
      - user
    - require:
      - file: /home/imil/.vim/spell
