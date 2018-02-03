# Docker-PS3DevExtra

This docker image is meant to help PS3 Homebrew developers providing an out-of-the-box setup with all the necessary libraries included and compiled.

## Choose your OS

This project is divided in two branches:

* [![](https://images.microbadger.com/badges/image/flipacholas/ps3devextra.svg)](https://microbadger.com/images/flipacholas/ps3devextra) [Master / Alpine](https://github.com/flipacholas/Docker-PS3DevExtra/tree/master): Uses alpine 3.7, smaller size.
* [![](https://images.microbadger.com/badges/image/flipacholas/ps3devextra:ubuntu-latest.svg)](https://microbadger.com/images/flipacholas/ps3devextra:ubuntu-latest "Get your own image badge on microbadger.com") [Ubuntu](https://github.com/flipacholas/Docker-PS3DevExtra/tree/ubuntu): Uses ubuntu 17:10, bigger size, more tools.

If you just want to use the build tools, choose alpine. Otherwise if you would like to customise the image, ubuntu may help you better.

## Included Libraries

This container includes the following libraries:

* [PSL1GHT](https://github.com/ps3dev/PSL1GHT): Main framework for developing PS3 Homebrew, installed using [ps3toolchain](https://github.com/ps3dev/ps3toolchain).
* [tiny3D](https://github.com/wargio/tiny3D): 2D/3D graphics.
* [CG Toolkit](https://developer.nvidia.com/cg-toolkit): Nvidia's shading toolkit, only included in the Ubuntu build.
* [PS3SOUNDLIB](https://github.com/wargio/ps3soundlib): Play PCM voices, MP3 and OGG files, using one SPU.
* [Linux headers](https://www.kernel.org): Use some kernel functions.

If you'd like more libraries to be included you can edit install-libraries.sh and send a pull request.

## Usage

Run this command in your project's directory:

```bash
docker run -it --rm -v "$PWD:/src" flipacholas/ps3devextra:latest make
```
Substitute 'latest' with 'ubuntu-latest' to use ubuntu branch.

## Customize

If you want to customize this container run this command to enter the container's shell:

Alpine:
```bash
docker run -it flipacholas/ps3devextra:latest /bin/ash
```
Ubuntu:
```bash
docker run -it flipacholas/ps3devextra:ubuntu-latest /bin/bash
```

Don't forget that changes are not persistent in the docker environment, you have to [commit](https://docs.docker.com/engine/reference/commandline/commit/) at the end to create a new image.

## Thanks

[Mathias Lafeldt](https://github.com/mlafeldt) and [the guys at ps3dev](https://github.com/ps3dev)
