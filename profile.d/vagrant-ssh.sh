# register vagrant-ssh as a drop-in replacement for "vagrant ssh"

alias vagrant='vagrant_func'
function vagrant_func() {
    if [ "$1" = "ssh" ]; then
        if [ $# == 1 -o "${2:0:1}" = "-" ]; then
            shift
            vagrant-ssh $@
            return
        fi
    fi

    $(which vagrant) $@
}

