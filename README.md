dotfiles.git
============
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure your `bash` and `emacs` development environment as follows:

```sh
cd $HOME
git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
```

See also http://github.com/startup-class/setup to install prerequisite
programs. If all goes well, in addition to a more useful prompt, now you can
do `emacs -nw hello.js` and hitting `C-c!` to launch an interactive SSJS
REPL, among many other features. See the
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.

git subtree add --prefix .emacs.d/custom/Fill-Column-Indicator https://github.com/alpaker/Fill-Column-Indicator.git master --squash
git subtree add --prefix .emacs.d/custom/emacs-color-theme-solarized  https://github.com/sellout/emacs-color-theme-solarized.git master --squash
git subtree add --prefix .emacs.d/custom/better-defaults https://github.com/technomancy/better-defaults.git master --squash

git subtree pull --prefix .emacs.d/custom/emacs-color-theme-solarized  https://github.com/sellout/emacs-color-theme-solarized.git master --squash
git subtree pull --prefix .emacs.d/custom/Fill-Column-Indicator https://github.com/alpaker/Fill-Column-Indicator.git master --squash
git subtree pull --prefix .emacs.d/custom/better-defaults https://github.com/technomancy/better-defaults.git master --squash

