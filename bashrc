# Path to your oh-my-bash installation.
export OSH=$HOME/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="powerline-multiline"

POWERLINE_LEFT_PROMPT="user_info oslogin kubecontext scm cwd"

POWERLINE_LEFT_PROMPT="oslogin kubecontext scm cwd"
POWERLINE_RIGHT_PROMPT="clock user_info"


DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

completions=(
  git
  composer
  ssh
  kubectl
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $OSH/oh-my-bash.sh

#
# OSLOGIN prompt thingie
#
OSLOGIN_THEME_PROMPT_DEFAULT_COLOR=1
OSLOGIN_THEME_PROMPT_DEV_COLOR=2
OSLOGIN_THEME_PROMPT_UAT_COLOR=4

function __oslogin_prompt_color {
  if [[ $1 == *"-dev" || $1 == "user-"* ]]; then
    echo -n ${OSLOGIN_THEME_PROMPT_DEV_COLOR}
  elif [[ $1 == *"-uat" ]]; then
    echo -n ${OSLOGIN_THEME_PROMPT_UAT_COLOR}
  else
    echo -n ${OSLOGIN_THEME_PROMPT_DEFAULT_COLOR}
  fi
}

function __powerline_oslogin_prompt {
  if [[ -n "${OS_PROJECT_NAME}" ]]; then
    os_project_name="${OS_PROJECT_NAME}"
  fi
  [[ -n "${os_project_name}" ]] && echo "${os_project_name^^}|$(__oslogin_prompt_color ${os_project_name})"
}

function __powerline_kubecontext_prompt {
  if [[ -n "${KUBECONFIG}" ]]; then
    context_name=$(cat ${KUBECONFIG} | grep current-context | sed -e 's/.*@//')
  fi
  orig_context_name=${context_name}
  if [[ -n ${context_name} && ${context_name} == ${OS_PROJECT_NAME} ]]; then
    context_name="(k8s)"
  fi
  [[ -n "${context_name}" ]] && echo "${context_name^^}|$(__oslogin_prompt_color ${orig_context_name})"
}


export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export GOPATH=~/go
alias dc=docker-compose
alias ls='ls --color=auto'
alias tigs='tig status'
