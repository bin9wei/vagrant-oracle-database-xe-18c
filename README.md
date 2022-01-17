# vagrant-oracle-database-xe-18c

A vagrant box (Oracle Linux 7) to install Oracle Database XE 18c

# How to use

* Checkout this repo
```
git clone git@github.com:bin9wei/vagrant-oracle-database-xe-18c.git
```
* Download [ol7-latest.box](https://yum.oracle.com/boxes/oraclelinux/latest/ol7-latest.box) and place under root directory
* Download [oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm](https://yum.oracle.com/repo/OracleLinux/OL7/latest/x86_64/getPackage/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm) and place under root directory
* Download [oracle-database-xe-18c-1.0-1.x86_64.rpm](https://www.oracle.com/database/technologies/xe18c-downloads.html) and place under root directory
* Now the directory looks like below
```
bin9w@LAPTOP-ODF35RAF MINGW64 /d/sandbox/code/vagrant-oracle-database-xe-18c (main)
$ ll
total 2979306
-rw-r--r-- 1 bin9w 197609       1064  1月 17 22:22 LICENSE
-rw-r--r-- 1 bin9w 197609  529002950  1月 10 22:40 ol7-latest.box
-rw-r--r-- 1 bin9w 197609      18244  1月 13 21:34 oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm
-rw-r--r-- 1 bin9w 197609 2521766408  1月 10 22:31 oracle-database-xe-18c-1.0-1.x86_64.rpm
-rwxr-xr-x 1 bin9w 197609         31  1月 10 22:33 provision.sh*
-rw-r--r-- 1 bin9w 197609        722  1月 17 22:39 README.md
-rwxr-xr-x 1 bin9w 197609        798  1月 17 15:56 setup.sh*
-rw-r--r-- 1 bin9w 197609        417  1月 17 15:54 Vagrantfile
```
* Add box from local path
```
vagrant box add oraclelinux file:///d:/sandbox/code/vagrant-oracle-database-xe-18c/ol7-latest.box
```
* DB admin password is `.env`. Change if needed.
* Run `vagrant up` to start and provision the box. Oracle database will also be installed and startup.
* To verify connection we can use any db tool with below connection details
```
host=localhost
port=1521
database=XEPDB1
username=system
password=Oracle123456789
```
* To ssh to box run `vagrant ssh`

Blog page [https://blog.csdn.net/bin9wei/article/details/122503781](https://blog.csdn.net/bin9wei/article/details/122503781) 