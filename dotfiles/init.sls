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

/home/imil/.vim:
  file.recurse:
    - source: salt://dotfiles/.vim
    - include_empty: True
    - user: imil
