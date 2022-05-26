# SQLite3 + Web UI in one Docker
* A Python 3 base Container with `no root access` (except using `sudo ...` and you can remove it using `sudo apt-get remove sudo` to protect your Container). 
```
If [ you are looking for such a common requirement for a base Container ]:
   Then [ this one may be for you ]
```

# Components:
* Python 3 (v3.8+) base image

# Build (`Do this first!`)
* Due to Docker Hub not allowing free hosting services of pre-built images, you have to make local build to use in your environment
    ```
    make build
    ```

# Run (recommended for easy-start)
```
./run.sh
or,
make up
```
# Stop Running
```
./stop.sh
or
make down
```

# Web UI
* Once your have 'build and run' as above, open web-browser endpoint as below:
```
   http://<host>:10808/
e.g.
   http://cyber03:10808/
   http://my_sqlite3:10808/
```

# Quick commands
* Makefile - makefile for build, run, down, etc.
* build.sh - build local image
* logs.sh - see logs of container
* run.sh - run the container
* shell.sh - shell into the container
* stop.sh - stop the container

