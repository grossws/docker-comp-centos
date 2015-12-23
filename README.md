# Info

CentOS basic [Dockerfiles][df] for automated builds on [docker hub][dhub].

Based on official `centos:7` image.

Modification:
- ru\_RU locales added,
- [gosu][gosu] by @tianon added (lightweight `su`/`sudo` replacement which gives `setuid`, `setgid`, sets `$HOME` and does `exec`).

Is part of the [docker-components][dcomp] repo.

[df]: http://docs.docker.com/reference/builder/ "Dockerfile reference"
[dhub]: https://hub.docker.com/u/grossws/
[dcomp]: https://github.com/grossws/docker-components
[gosu]: https://github.com/tianon/gosu


# Licensing

Licensed under MIT License. See [LICENSE file](LICENSE)
