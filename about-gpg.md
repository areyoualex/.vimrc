# GPG problems that seem to pop up _every_ time
## gpg-agent as an ssh-agent
Make sure that this:
```sh
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
```
is in `.zprofile`. Not sure if this is the reason, but the client would refuse to use the proper pinentry until this happened.
## Pinentry problems
With WSL, install [pinentry-wsl-ps1](https://github.com/diablodale/pinentry-wsl-ps1) by running the following:
```sh
cd /opt && sudo git clone https://github.com/diablodale/pinentry-wsl-ps1.git
sudo chmod 755 pinentry-wsl-ps1/pinentry-wsl-ps1.sh
sudo ln -sf /opt/pinentry-wsl-ps1/pinentry-wsl-ps1.sh /etc/alternatives/pinentry
sudo ln -sf /etc/alternatives/pinentry /usr/bin/pinentry
```
This clones the repo into `/opt`, makes it executable, and then makes it the default pinentry program by soft-linking it to `/etc/alternatives/pinentry` and `/usr/bin/pinentry`.

Occasionally, the pinentry program will just stop working and display an error like:
```
gpg: signing failed: Operation cancelled
gpg: [stdin]: clear-sign failed: Operation cancelled
```
This error is hard to debug, but if running `powershell.exe` doesn't correctly execute, then try running this **in Powershell, not Command Line:**
```
wsl --shutdown
```
If it still fails, consult [this GitHub issue](https://github.com/microsoft/WSL/issues/4567).
