Check this thread on stackexchange The script has been taken from there: http://apple.stackexchange.com/questions/146849/how-do-i-recompile-bash-to-avoid-the-remote-exploit-cve-2014-6271


**IMPORTANT: Install Xcode before executing the script!**

## Usage

```
git clone git@github.com:mdix/OSX-bash-fix.git
cd OSX-bash-fix
chmod +x *.sh
./build.sh
# If build.sh went well, your patched bash has been compiled - ONLY THEN run install.sh
./replace.sh
```

## Check afterwards
```
env x='() { :;}; echo vulnerable' bash -c 'echo hello'
```
should output

```
bash: warning: x: ignoring function definition attempt
bash: error importing function definition for `x'
hello
```

**I take no responsibility for loss, damages, etc. Use at your own risk.**
