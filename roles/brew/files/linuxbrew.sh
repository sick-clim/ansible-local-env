#!/bin/sh

readonly BREW_HOME=/home/linuxbrew

if [[ -d "$BREW_HOME/.linuxbrew" ]]; then
    export PATH="$BREW_HOME/.linuxbrew/bin:$PATH"
    export MANPATH="$BREW_HOME/.linuxbrew/share/man:$MANPATH"
    export INFOPATH="$BREW_HOME/.linuxbrew/share/inf:$INFOPATH"
    export LD_LIBRARY_PATH="$BREW_HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
fi
