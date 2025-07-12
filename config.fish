fish_add_path "/opt/homebrew/bin/"

# Enable Starship prompt
# starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x HOSTNAME (hostname | string split -m1 '.')[1]


# JAVA_HOME 확인 : /usr/libexec/java_home -V
if contains $HOSTNAME mbp23
    # set -x JAVA_HOME /opt/homebrew/opt/openjdk/bin/java
    # set -x JAVA_HOME /opt/homebrew/Cellar/openjdk/20.0.1/libexec/openjdk.jdk/Contents/Home
    # set -x JAVA_HOME /opt/homebrew/Cellar/openjdk/21.0.2/libexec/openjdk.jdk/Contents/Home
    set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
    set -x GITHUB_USERNAME jacegem
    set -x LOGSEQ_HUGO /Users/jace/workspace/hugo/logseq-hugo
    set -Ux MONGODB_URL (cat ~/.secret/mongodb_url)
else if contains $HOSTNAME jaceui-MacBookPro.local
    set -x SENTRY_AUTH_TOKEN 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
    # SENTRY_AUTH_TOKEN=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
else
    # set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-16.jdk/Contents/Home
    set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
end

# set -x VISUAL /opt/homebrew/bin/nvim
# set -x EDITOR /opt/homebrew/bin/nvim
set -x PATH /opt/homebrew/bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/SDK/flutter/bin $PATH
set -x PATH $JAVA_HOME/bin $PATH
set -x PATH $HOME/.amplify/bin $PATH
set -x PATH $HOME/.jenv/bin $PATH
set -x PATH $HOME/.pub-cache/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/miniconda3/bin $PATH
set -x PATH /usr/local/share/dotnet/ $PATH
set -x PATH /Library/Frameworks/Mono.framework/Versions/Current/Commands/ $PATH


# set -x PATH $HOME/.poetry/bin $PATH
# set -x VAULT_ADDR 'https://vault.jace.link'

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/jace/.lmstudio/bin


fish_add_path /Users/jace/.codeium/windsurf/bin
fish_add_path /opt/homebrew/opt/postgresql@17/bin

# pnpm
set -gx PNPM_HOME "/Users/jace/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
