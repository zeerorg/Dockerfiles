# Introduction

This my collection of docker files for popular applications. It is heavily inspired from [Jessie Frazelle's images](https://github.com/jessfraz/dockerfiles).

## Why another ?
There have been a lot of such repositories on Github, this repo differentiates from other repos by some points:
1. Using docker-compose, I use docker-compose so that I don't need to create any external functions and can easily build these. This also helps avoid messy bash scripts and functions. Some people prefer bash functions and this gives them that option too.
2. Using linux groups to manage data directory, will write something related to this point.
3. Using ubuntu image instead of debian, a lot of people creating these images have used debian images, but that gave a lot of errors (and sometimes text rendering issues).

## Next steps:
1. Adding a base desktop image.
2. Image for android development
3. IMage for java development
