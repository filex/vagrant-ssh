# vagrant-ssh

This shell script is a simple replacement for `vagrant ssh` in many cases. On
my mac `vagrant` invokes ruby and needs ages to find the proper ssh arguments.

By assuming that we only use VirtualBox provider and only a "default" VM, the
ssh fiddling is carried out in bash, which turns out to lack the login lag :)

The `.vagrant` dir is searched in the current directory and subsequently in all
parent directories.

## Setup

### As extra script

Put `vagrant-ssh` anywhere in your `$PATH`.

### As replacement for vagrant ssh

Put `vagrant-ssh` anywhere in your `$PATH`.

Then, put the content of `profile.d/vagrant-ssh.sh` into in your `.bashrc` or
copy the file to `/etc/profile.d/`. This registers a function as `vagrant` that
checks whether the command is a simple `vagrant ssh` call and redirects it to
`vagrant-ssh`. All other vagrant commands are sent to `vagrant` as usual.

## Usage

```
$ cd /home/fred/stuff/my-vagrant-env/subdir
$ vagrant-ssh
```

Any further arguments are passed to ssh:

```
$ vagrant-ssh "ls |sort "
```

