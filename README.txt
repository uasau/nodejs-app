#>> Get Alpine images for Node.js 8.7.0 / 6.11.4 / 4.8.4

https://hub.docker.com/_/node/

>> ONLY FOR BUILD : 8.7.0, 8.7, 8, latest (8.7/Dockerfile)

8.7.0-alpine, 8.7-alpine, 8-alpine, alpine (8.7/alpine/Dockerfile)
8.7.0-onbuild, 8.7-onbuild, 8-onbuild, onbuild (8.7/onbuild/Dockerfile)
8.7.0-slim, 8.7-slim, 8-slim, slim (8.7/slim/Dockerfile)

6.11.4-alpine, 6.11-alpine, 6-alpine, boron-alpine (6.11/alpine/Dockerfile)
6.11.4-onbuild, 6.11-onbuild, 6-onbuild, boron-onbuild (6.11/onbuild/Dockerfile)
6.11.4-slim, 6.11-slim, 6-slim, boron-slim (6.11/slim/Dockerfile)

4.8.4-alpine, 4.8-alpine, 4-alpine, argon-alpine (4.8/alpine/Dockerfile)
4.8.4-onbuild, 4.8-onbuild, 4-onbuild, argon-onbuild (4.8/onbuild/Dockerfile)
4.8.4-slim, 4.8-slim, 4-slim, argon-slim (4.8/slim/Dockerfile)

node:<version>
This is the defacto image. If you are unsure about what your needs are, you probably want to use this one. It is designed to be used both as a throw away container (mount your source code and start the container to start your app), as well as the base to build other images off of. This tag is based off of buildpack-deps. buildpack-deps is designed for the average user of docker who has many images on their system. It, by design, has a large number of extremely common Debian packages. This reduces the number of packages that images that derive from it need to install, thus reducing the overall size of all images on your system.

node:alpine
This image is based on the popular Alpine Linux project, available in the alpine official image. Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

node:onbuild
The ONBUILD image variants are deprecated, and their usage is discouraged. For more details, see docker-library/official-images#2076.

https://derickbailey.com/2017/03/09/selecting-a-node-js-image-for-docker/

Alpine Linux: ‘-alpine’

Alpine Linux is a distribution that was almost purpose-built for Docker images and other small, container-like uses. It clocks in at a whopping 5MB of drive space for the base operating system.

By the time you add in the Node.js runtime requirements, this image does move up to around 50MB in space. But even at 10x the original Alpine size, it’s still 1/5 the size of the the `-slim` option.