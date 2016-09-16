
d(){ cd `devdir $1`; }
  
  
 -# Prompt
 -parse_git_branch() {
 -    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 -}
 -PS1='[\[\033[01;32m\]\u@\h:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]]\$ '
 -
  
  # Assemble ssh config from components
  cat ~/.ssh/config.* > ~/.ssh/config
 @@ -69,4 +63,30 @@ fixssh() {
        export ${key}="${value}"
      fi
    done
 -} 
 +}
 +
 +# Showing the runtime of the last command; adapted from
 +# http://jakemccrary.com/blog/2015/05/03/put-the-last-commands-run-time-in-your-bash-prompt/
 +
 +function timer_start {
 +  timer=${timer:-$SECONDS}
 +}
 +
 +function timer_stop {
 +  timer_show=$(($SECONDS - $timer))
 +  unset timer
 +}
 +
 +trap 'timer_start' DEBUG
 +
 +if [ "$PROMPT_COMMAND" == "" ]; then
 +  PROMPT_COMMAND="timer_stop"
 +else
 +  PROMPT_COMMAND="$PROMPT_COMMAND; timer_stop"
 +fi
 +
 +# Prompt
 +parse_git_branch() {
 +    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 +}
 +PS1='[\[\033[01;32m\]\u@\h:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]][${timer_show}s]\$ '

