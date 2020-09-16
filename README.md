# macports

This script is used to configure https://macports.org directly from the git repo. I have found that using mac ports this way enables support for bleeding edge OS versions or CPU architectures. 

## Usage
__EXAMPLE__

```
 ./macports -ip
```

__OPTIONS__
```shell
   -c    Fully remove macports
```
The cleanup option is very heavy handed and nukes all the macports direcotries and files. 
```
   -i    Install macports and ports tree from git
```
Installing will pull down the ports base and ports git repos from github. Compiling ports base and syncing the ports tree is also part of install.
```
   -p    Install ports from file list
```
The port install command will iterate over the list of ports. Port variants can be specified as well.
```
   -u    Upgrade installed ports
```
Upgrade will check for ports base updates, port list updates & update as needed.
```
   -h    Help
```
Use the help on the cli for a reminder of the options
