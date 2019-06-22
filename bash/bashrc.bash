function set_prompt {
  local reset='\e[0m'
  local reverse='\e[7m'
  local git_branch_command="git branch 2> /dev/null | grep '*' | sed 's/* \(.*\)/ \1/'"
  PS1="$reverse\u@\h: \w\$($git_branch_command)$reset\n\\$ "
}

export VISUAL=vim

if [[ -e ~/.git_completion.bash ]]; then
  source ~/.git_completion.bash
fi

if [[ ${OSTYPE} == darwin* ]]; then
  alias ctags="$(brew --prefix)/bin/ctags"
fi

set_prompt
