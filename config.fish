if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-16.jdk/Contents/Home

set -x PATH /opt/homebrew/bin $PATH
set -x PATH $HOME/.poetry/bin $PATH
set -x PATH $HOME/SDK/flutter/bin $PATH
set -x PATH $JAVA_HOME/bin $PATH
