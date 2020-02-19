
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/a0k01tm/google-cloud-sdk/path.bash.inc' ]; then . '/Users/a0k01tm/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/a0k01tm/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/a0k01tm/google-cloud-sdk/completion.bash.inc'; fi

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Powerline
# export PATH=/Users/a0k01tm/Library/Python/2.7/lib/python/site-packages/powerline/config_files:$PATH
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /Users/a0k01tm/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

export SPARK_HOME=/Users/a0k01tm/spark-2.4.4
export HADOOP_HOME=/Users/a0k01tm/spark-2.4.4

export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/

set -o vi
