## Description of the issue

Mounting a cifs share works via `docker-compose exec` and fails when run via`docker-compose run`.  It is only failing for me on ubuntu 14.04.   It works okay with docker-for-mac.

I get permission denied when using `docker-compose run www ./my-script` or when I set the command option in `docker-compose.yml`  to `./my-script`.  The specific cifs error is;

```
mount error(13): Permission denied
Refer to the mount.cifs(8) manual page (e.g. man mount.cifs)
```

But the mount works when I `docker-compose up -d www && docker-compose exec www ./my-script`

clone this repo and run './run-test' to compare
