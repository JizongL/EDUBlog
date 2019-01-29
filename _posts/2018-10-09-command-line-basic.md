---
layout: post
title:  Command Line Basic
date:   2018-10-09 11:28
categories: websites
tags: developers websites
---
* content
{: toc}



`vagrant init ubuntu/trusty64`


`vagrant up`
`vagrant ssh`

## Filenames and Contents

Some common commands

`history`

press `ctr+r` reverse search command line.

`unzip things.zip`

`cat`
`wc filename.txt`
`diff file1.txt file2.txt`


Manual pages
e.g
`man cowsay`

`.` cashing and configuring
e.g
`.secret`

look at manual for checking `.`

`ls -a` list all files, including `.` files.

recursively remove everything.
`rm -rf /`

Line-Based programs

`ping 8.8.8.8`

`sort`
`ctr+d` equals ends of file.


## Intro to the Filesystem

files and directory
file name does not allow `/`

if file name contains `!$#()[]%&`,use `\` in front of it, or wrap it with `''`

<figure>
<img src = "{{root_url | prepend: site.baseurl}}/asset/linux_shell/file_system.png" width = "660">
<figurecpation> </figurecpation>
</figure>


The working directory
`absolute path` and `relative path`.

`absolute path` starts with `/`
/home/philip/clam

`relative path` doesn't
clam/giant
../mountain
.
~
~/ocean/otter


## Moving and copying
`mv`
`cp`
`mkdir`

remove a directory
`rmdir`
can't use `rm`

remove an entire directory
`rm -r directory`

**Globbing**

ls *html
ls *s
ls *pp*

`{keywords}`
`{css,html}`

one letter wildcard.
`?` or `??`

`[]` fit any of those inside `[]`
`be[aeiou]r.png`

Globbing is case sensitive

## Linux for Web developers

### different distributions

redhat
not free, for enterprise.

ubuntu
Ease of use on servers, desktops, laptops.

Linux Mint
Desktop users with proprietary media support.

CoreOS
Clustered, containerized deployment of apps.


debian

stable, reliable


Vagrant commands
`vagrant status`
`vagrant up`
`vagrant ssh`
`vagrant halt`


`bin`
`sbin`
Traversing the File System

`echo $PATH`

### Security
The Rule of Least Privileges

```linux
vagrant@vagrant-ubuntu-trusty-64:/$ ls -al /home/ubuntu/.ssh
ls: cannot open directory /home/ubuntu/.ssh: Permission denied
```

### super user
`sudo`

Package Source List

`cat /etc/apt/sources.list`

update software reprository
`sudo apt-get update`

`sudo apt-get upgrade`

`man apt-get`

`sudo apt-get autoremove`

### Finger package
`finger`

keep track of all users on the system
`cat /etc/passwd`



* username: the user’s login name

* password: the password, will simply be an x if it’s encrypted

* user ID (UID): the user’s ID number in the system. 0 is root, 1-99 are for predefined users, and 100-999 are for other system accounts

* group ID (GID): Primary group ID, stored in /etc/group.

* user ID info: Metadata about the user; phone, email, name, etc.

* home directory: Where the user is sent upon login. Generally /home/

* command/shell: The absolute path of a command or shell (usually /bin/bash). Does not have to be a shell though!

### Users management

`sudo adduser 'username'`

`sudo adduser student`

connect user to the server

`ssh student@127.0.0.1 -p 2222`

If failed, display the following

```terminal
ssh: connect to host 127.0.0.1 port 2222: Connection refused
```
then fun `sudo nano /etc/ssh/sshd_config` to configure the port to be 2222

then reload `sudo service ssh force-reload`

read [this feed](https://askubuntu.com/questions/673597/ssh-connect-to-host-127-0-0-1-port-2222-connection-refused) for solution.

But this new account has no access to `sudo` command, so something needs to be done.

now, if key in `sudo cat /etc/passwd`, it will prompts 'student is not in the sudoers file...'

To solve this, we need to copy the login to vagrant account.

note: password for default vagrant account is `vagrant`

**etc sudoers**

run `sudo cat /etc/sudoers`, find a file `sudoers.d`

run `sudo ls /etc/sudoers.d`

will a file named `vagrant`


need to copy the `vagrant` file to the student account

`sudo cp /etc/sudoers.d/vagrant /etc/sudoers.d/student`

run `sudo nano /etc/sudoers.d/student` to enter nano editor

change keyword vagrant to student
student ALL=(ALL) NOPASSWD:ALL

run `sudo cat /etc/passwd` under student account again.
now, access is granted.

force password expired
`passwd`
passwd -e student




### Key base authentication

Generate key pairs

different keytypes.

RSA,DSA,ECDSA,SHA256,ED25519,MD5

SSH version 2 supports DSA, ECDSA, ED25519 and RSA key types.


run `ssh-keygen` on Mac terminal

When finished.
Your public key has been saved in `/Users/tmmgeek/.ssh/linuxCourse.pub`

`man ssh-keygen`

installing a public key
if `.ssh` not alrady exists, make folder.
`mkdir .ssh`

`touch .ssh/authorized_keys`

cat `/Users/tmmgeek/.ssh/linuxCourse.pub`

copy the keypairs there.

run `nano .ssh/authorized_keys`

paste keypairs there.

owner can read, write and execute
`chmod 700 .ssh`
I can change it, everyone else can read it.
`chmod 644 .ssh/authorized_keys`

`ssh vagrant@217.0.0.1 -p 2222 -i ~/.ssh/new_one`

### Forcing Key Based Authentication

listen to all ssh connection

`sudo nano /etc/ssh/sshd_config`

change it to no .

```nano
# Change to no to disable tunnelled clear text passwords
PasswordAuthentication no
```

restart the service.

`sudo service ssh restart`

```terminal
vagrant@vagrant-ubuntu-trusty-64:~$ sudo service ssh restart
ssh stop/waiting
ssh start/running, process 20945
```

Now, all users, regardless of user names or password, will be forced to logged in
with the key pairs.


### File permission
`rw-`    owner
`r--`    group

```terminal
student@vagrant-ubuntu-trusty-64:~$ ls -al
total 28
drwxr-xr-x 4 student student 4096 Oct 18 03:25 .
drwxr-xr-x 5 root    root    4096 Oct 18 02:48 ..
-rw-r--r-- 1 student student  220 Oct 18 02:48 .bash_logout
-rw-r--r-- 1 student student 3637 Oct 18 02:48 .bashrc
drwx------ 2 student student 4096 Oct 18 02:51 .cache
-rw-r--r-- 1 student student  675 Oct 18 02:48 .profile
drwx------ 2 student student 4096 Oct 18 03:25 .ssh
```

octal permissions
r = 4
w = 2
x = 1

rw-  6
r--  4
r--  4

`chgrp`
`chown`

e.g
change group won't effect the ownership of the file.
`sudo chgrp root .bash_history`
change owner would stop permission of access this file.
`sudo chown root .bash_history`

### Intro to ports
http   80
Https  443
pop3   110
stmp    25
ftp    21
ssh  22

### Intro to Firewall
UFW
`sudo ufw status`

`sudo ufw default deny incoming`

`sudo ufw default allow outcoming`

`sudo ufw status`


`sudo ufw allow ssh`

`sudo ufw allow 2222/tcp`

`sudo ufw allow www`

`sudo ufw enable`

confirm status
`sudo ufw status`
