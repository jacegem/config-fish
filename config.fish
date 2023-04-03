if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x HOSTNAME (hostname | string split -m1 '.')[1]


# JAVA_HOME 확인 : /usr/libexec/java_home -V   
if contains $HOSTNAME mbp23
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-20.jdk/Contents/Home
else
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-16.jdk/Contents/Home
end 

set -x PATH /opt/homebrew/bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/SDK/flutter/bin $PATH
set -x PATH $JAVA_HOME/bin $PATH
set -x PATH $HOME/.amplify/bin $PATH
set -x PATH $HOME/.jenv/bin $PATH
# set -x PATH $HOME/.poetry/bin $PATH
# set -x VAULT_ADDR 'https://vault.jace.link'
