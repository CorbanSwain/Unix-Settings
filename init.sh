SETTINGS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp -r $SETTINGS_DIR/.fonts ~/.fonts
cp $SETTINGS_DIR/home_bash_profile.sh ~/.bash_profile
cp $SETTINGS_DIR/home_bashrc.sh ~/.bashrc
cp $SETTINGS_DIR/home_emacs.el ~/.emacs

touch ~/.bashrc_local.sh
touch ~/.emacs_local.el

EMACS_LOCAL_FILE="$(realpath ~/.emacs_local.el)"
sed -i -e "s#{{.emacs}}#${SETTINGS_DIR}\/.emacs#g" ~/.emacs
sed -i -e "s#{{.emacs_local}}#${EMACS_LOCAL_FILE}#g" ~/.emacs

PLATFORM='unknown'
UNAMESTR=`uname`
if [[ $UNAMESTR == 'MINGW64_NT-10.0' ]]; then
    PLATFORM='git_bash'
fi

if [[ $PLATFORM == 'git_bash' ]]; then
    sed -i -r -e  's/"\/(c)\//"\1:/g' ~/.emacs
fi

bash $SETTINGS_DIR/init_git.sh

source ~/.bashrc
