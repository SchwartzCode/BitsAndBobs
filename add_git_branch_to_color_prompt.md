# Add this bit to the end of your bash prompt
`\[\033[01;36m\]$(__git_ps1 "(%s)")\[\033[00m\]\`

To add your git branch to your bash prompt. It will look like this:
`user@machine:~/project (main)$`
With the `(main)` part in cyan
