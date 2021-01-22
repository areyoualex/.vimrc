## Note to self about using gpg-agent as an SSH agent:
Make sure that this:
```
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
```
is in `.zprofile`. Not sure if this is the reason, but the client would refuse to use the proper pinentry until this happened.
