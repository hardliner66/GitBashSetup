mkdirandcd(){
  arg1=$1
  shift
  mkdir $arg1 "$@"
  cd $arg1
}

alias mm='mkdirandcd'

function gitbranchname {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}
function gitbranchprompt {
  local branch=`gitbranchname`
  if [ $branch ]; then printf " [%s]" $branch; fi
}
PS1="\u@\h \[\033[0;36m\]\W\[\033[0;32m\]\$(gitbranchprompt)\[\033[0m\] \$ "

export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
