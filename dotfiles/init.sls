{% for rcfile, remote in pillar['dotfiles'].iteritems() %}
/home/imil/{{ rcfile }}:
  file.managed:
    - source: salt://{{ remote }}/dotfiles
    - user: imil
    {% if grains['os'] == 'NetBSD' %}
    - group: wheel
    {% else %}
    - group: imil
    {% endif %}
    - mode: 644
{% endfor %}

/home/imil/.vim:
  file.directory:
    - user: imil
    - recurse:
      - user
