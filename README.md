# Docker-PS3DevExtra

This docker image is meant to help developers providing an out-of-the-box setup with all the necessary libraries included and already compiled.
Uses alpine as base to significantly reduce the container's size. 

## Included Libraries

This container includes the following libraries:

* PSL1GHT: Main framework for developing PS3 Homebrew.
* tiny3D: 2D/3D graphics.
* CG Toolkit: 2D/3D graphics.
* PS3SOUNDLIB: Play PCM voices, MP3 and OGG files, using one SPU.
* Linux headers: Some projects use them.

If you'd like more libraries to be included you can edit install-libraries.sh and send a pull request.

## Usage

Run this command in your project's directory:

```bash
docker run -it --rm -v "$PWD:/src" flipacholas/ps3devextra make
```

## Customize

If you want to customize this container run this command to enter the ash shell:

```bash
run -it CONTAINER_ID /bin/ash
```

Don't forget to substitute CONTAINER_ID with your real id, running 'docker ps' will display it.
