# Info

CentOS basic [Dockerfiles][df] for automated builds on [docker hub][dhub].

Produces following tags for `grossws/centos` image:
- `7`, `latest` -- CentOS 7 with [gosu][gosu] and locales (`en_US.UTF-8`, `ru_RU.UTF-8` and `ru_RU.CP1251`)
- `7-dev`, `dev` -- CentOS 7 with [gosu][gosu], locales and yum package group `@development`

Based on official `centos:7` image.

Modification:
- ru\_RU locales added,
- [gosu][gosu] by [@tianon][tianon] added (lightweight `su`/`sudo` replacement which gives `setuid`, `setgid`, sets `$HOME` and does `exec`),
- package group `@development` installed in `grossws/centos:7-dev`/`grossws/centos:dev` images.

Is part of the [docker-components][dcomp] repo.

[df]: http://docs.docker.com/reference/builder/ "Dockerfile reference"
[dhub]: https://hub.docker.com/?namespace=grossws
[dcomp]: https://github.com/grossws/docker-components
[gosu]: https://github.com/tianon/gosu
[tianon]: https://github.com/tianon


# Licensing

Licensed under MIT License. See [LICENSE file](LICENSE)
