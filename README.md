# Docker-PS3DevExtra

This docker image is meant to help PS3 Homebrew developers providing an out-of-the-box setup with all the necessary libraries included and compiled.
Uses alpine as base image to significantly reduce the container's size. 

## Included Libraries

This container includes the following libraries:

* [PSL1GHT](https://github.com/ps3dev/PSL1GHT): Main framework for developing PS3 Homebrew.
* [tiny3D](https://github.com/wargio/tiny3D): 2D/3D graphics.
* [CG Toolkit](https://developer.nvidia.com/cg-toolkit): Nvidia's shading toolkit.
* [PS3SOUNDLIB](https://github.com/wargio/ps3soundlib): Play PCM voices, MP3 and OGG files, using one SPU.
* [Linux headers](https://www.kernel.org): Use some kernel funtions.

If you'd like more libraries to be included you can edit install-libraries.sh and send a pull request.

## Usage

Run this command in your project's directory:

```bash
docker run -it --rm -v "$PWD:/src" flipacholas/ps3devextra make
```

## Customize

If you want to customize this container run this command to enter the ash shell:

```bash
docker exec -it CONTAINER_ID /bin/ash
```

Don't forget to substitute CONTAINER_ID with your real id, running 'docker ps --filter "status=exited"' will display it.

## Thanks

[Mathias Lafeldt](https://github.com/mlafeldt) and [the guys at ps3dev](https://github.com/ps3dev)
