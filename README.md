# damacs
---
```
git clone --recurse-submodules -j8 git@github.com:400dama/damacs.git

git submodule pull --recursive --remote
git submodule foreach git reset --hard
git submodule foreach git checkout master

sudo ln -s /home/parzival/damacs/site-lisp /home/parzival/emacs27/share/emacs/damacs
sudo ln -s /home/parzival/damacs/site-start.el /home/parzival/emacs27/share/emacs/site-lisp/
```

M-x all-the-icons-install-fonts

```
sudo pacman -S icu npm
cd ~/damacs/site-lisp/extensions/emacs-application-framework/
chmod +x ./install-eaf.sh
./install-eaf.sh
```
