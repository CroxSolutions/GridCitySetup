if [ -n "$SSH_CONNECTION" ]; then
    PS1="\[\e[34m\][SSH] \u@QA\w\$\[\e[0m\] "
else
    PS1="\[\e[32m\]\u@\h:\w\$\[\e[0m\] "
fi