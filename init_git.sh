SETTINGS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp $SETTINGS_DIR/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Corban Swain"
git config --global user.email "CorbanSwain@gmail.com"
