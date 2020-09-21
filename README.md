# Container for CTF Executables

This docker container is constructed to build a docker container where CTF executables can be analyzed and executed.


## Installed Tools

Installations after building:

- `git`, `vim`, `curl`
- `gcc`, `clang` and `gdb`
- `strace` and `tcpdump`
- `pwndbg`
- `pwnlib` and `requests`
- `python3` and some other python tools


## Makefile

| Parameter  | Description                            |
| ---------- | -------------------------------------- |
| `attach`   | Spawn a shell for a running container  |
| `start`    | Start container w/ reasonable flags    |
| `stop`     | Stop the container                     |
| `setup`    | Build the container                    |

