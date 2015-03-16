### Make history behave itself
export HISTCONTROL=ignoredups # don't put duplicate lines in history
shopt -s histappend           # make Bash append rather than overwrite history on disk
shopt -s cdspell              # Help me get places
# write previous line to disk when prompt is displayed
export PROMPT_COMMAND='history -a'
export HISTFILESIZE=100000000
export HISTSIZE=10000000

PS1="[\u@:$(scutil --get ComputerName) \W]\\$ "

# tab completion
bind "set completion-ignore-case on"

export LC_CTYPE=en_US.UTF-8
export EDITOR="subl"

# shortcut to edit this file
alias editbash="subl ~/.bash_profile"
alias rlbash='source ~/.bash_profile'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#export PATH=/Applications/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:$PATH
export PATH=/Users/jmcnamee/Downloads/adt-bundle-mac-x86_64-20140321/sdk:$PATH
export ANDROID_HOME=/Users/jmcnamee/Downloads/adt-bundle-mac-x86_64-20140321/sdk

#alias adbrb="adb forward tcp:9222 localabstract:chrome_devtools_remote"
# then go to localhost:9222

# My path
export PATH=/opt/subversion/bin:$PATH

#http://stackoverflow.com/questions/6482738/installing-ruby-gems-not-working-with-home-brew
export PATH=$(brew --prefix ruby)/bin:$PATH
export PATH=/usr/local/Cellar/ruby/2.0.0-p0/lib/ruby/gems/2.0.0/gems:$PATH
#export PATH=/Users/jmcnamee/.gem/ruby/2.0.0:$PATH
#export PATH=/usr/local/Cellar/ruby/2.0.0-p0/lib/ruby/gems/2.0.0/gems/compass-0.12.2/bin:$PATH

#export FLEX_HOME=/Applications/HFCD/3.5.0/server

#alias hfcd="cd /Applications/HFCD/3.5.0/server/bin && ./hfcd"
#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin

# edit vhosts in TextMate
alias vhosts="subl /etc/apache2/extra/httpd-vhosts.conf"
# restart apache
alias ra="sudo apachectl -k restart"

alias resetsim=rm ~/Library/Preferences/com.apple.iphonesimulator.plist

alias synergyw="/Applications/Synergy-1.4.2/synergyc -f rchigl003.meg.local"
alias synergyh="/Applications/Synergy-1.4.2/synergyc hemulen.local"

# ls
alias ls='ls -al'
alias lsg='ls -al | grep $1'
alias la="ls -lah"
alias ll="ls -lh"
alias cd..="cd .."
alias resin='/resin/bin/httpd.sh'

# git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gcm='git commit -m '

alias got='git '
alias get='git '

alias gh='open /Applications/GitHub.app'

#function to checkout branch and then up that branch in one command
goup() {
	go $1
	git up $1
}

# Gruntfile completion
# https://github.com/gruntjs/grunt-cli/blob/master/completion/bash
eval "$(grunt --completion=bash)"

# sonar
alias sonar="/Applications/sonar-2.6/bin/macosx-universal-32/sonar.sh console"

# workspace directory
alias wsd="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_trunk/"
alias wsd-js="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_trunk/movideo_js_sdk"
alias wsd-ui="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_trunk/movideo_js_ui"
alias wsd-p="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_trunk/movideo_as3_css_player"
alias wsd-ps="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_trunk/movideo_as3_css_player_shared"

# java workspace directory
alias wsj="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_java"

alias wsjs="cd /Volumes/movideo/jmcnamee/development/dotfold"
alias wsadmin="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_trunk/movideo_js_admin"

alias wsios="cd /Volumes/movideo/jmcnamee/development/movideo/workspace_ios"

# flash
alias flog="tail -f /Users/jmcnamee/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt"
alias flop="tail -f /Users/jmcnamee/Library/Preferences/Macromedia/Flash\ Player/Logs/policyfiles.txt"
alias flogr="flog | grep"
alias flash='tail -n 20 -f /Users/jmcnamee/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt'

# rhino js - http://www.mozilla.org/rhino/
#export RHINO_HOME="/Applications/rhino1_7R2"
#alias js="java -cp $RHINO_HOME/js.jar org.mozilla.javascript.tools.shell.Main -opt -1"
#alias jsd="java -cp $RHINO_HOME/js.jar org.mozilla.javascript.tools.debugger.Main"

# hfcd
alias hfcd="cd /Applications/HFCD/3.5.0/server/bin && ./hfcd"

# MacPorts Installer addition on 2009-09-04_at_14:43:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# set Flash Player location for Maven
export PATH=/Applications/Flash\ Player.app/Contents/MacOS:$PATH
#export PATH=/Applications/Flash\ Player.app:$PATH

# export PhantomJS
#export PATH=/Volumes/moomin/movideo/testing/phantomjs-1.5.0/bin:$PATH
# PhantomJS 1.8.1
#export PATH=/Applications/phantomjs-1.8.2-macosx/bin:$PATH
#export PHANTOMJS_BIN=/Applications/phantomjs-1.8.2-macosx/bin/phantomjs

#PhantomJS 1.9.1
export PATH=/Applications/phantomjs-1.9.1-macosx/bin:$PATH
export PHANTOMJS_BIN=/Applications/phantomjs-1.9.1-macosx/bin/phantomjs

# Set heap size for Maven
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=512m'

# give ant moar rams
export ANT_OPTS="-Xms512m -Xmx512m -XX:MaxPermSize=1024m"

# http from a folder
alias httpy="python -m SimpleHTTPServer"

# dns
alias flushdns="dscacheutil -flushcache"


# MacPorts Installer addition on 2009-09-04_at_14:43:24: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

# terminal colours
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s /Users/jmcnamee/.nvm/nvm.sh ]] && . /Users/jmcnamee/.nvm/nvm.sh # This loads NVM
