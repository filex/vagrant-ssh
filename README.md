# vagrant-ssh

This shell script is a simple replacement for `vagrant ssh` in many cases. On
my mac `vagrant` invokes ruby and needs ages to find the proper ssh arguments.

By assuming that we only use VirtualBox provider and only a "default" VM, the
ssh fiddling is carried out in bash, which turns out to lack the login lag :)

The `.vagrant` dir is searched in the current directory and subsequently in all
parent directories.

## Setup

Put `vagrant-ssh` anywhere in your `$PATH`

## Usage

```
$ cd /home/fred/stuff/my-vagrant-env/subdir
$ vagrant-ssh
```

Any further arguments are passed to ssh:

```
$ vagrant-ssh "ls |sort "
```

