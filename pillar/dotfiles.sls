dotfiles:
  .tmux.conf:
  {% if grains['kernel'] == 'Linux' %}
    .tmux.conf-linux
  {% else %}
    .tmux.conf
  .profile:
    .profile
  .bashrc:
    .bashrc
  {% endif %}
  .vimrc:
    .vimrc
