function is_tmux_runnning() { [ ! -z "$TMUX" ]; }

function tmuxtabinfo() {
    local tabinfo project_name
    if is_tmux_runnning ; then
        project_name=`tmuxtabinfo_projectname`
        tabinfo=`basename $PWD`
        tmux rename-window "$project_name//$tabinfo"
    fi
}

function tmuxtabinfo_projectname () {
    local project_name=`git rev-parse --show-toplevel 2>/dev/null`
    if [ ! $project_name ]; then
        project_name=.
    fi
    echo `basename $project_name`
}
autoload -Uz add-zsh-hook
add-zsh-hook chpwd tmuxtabinfo
