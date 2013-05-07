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
  .vim/colors/molokai-trans.vim:
    .vim_colors_molokai-trans.vim
  .vim/colors/molokai.vim:
    .vim_colors_molokai.vim
