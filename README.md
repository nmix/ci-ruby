# ci-ruby

Docker image for testing ruby projects in the context of gitlab-runner.

A number of packages are pre-installed to run RubyOnRails environments:

* pronto ([link](https://github.com/prontolabs/pronto))
* (to be continued)

## Using

Change the ruby version in the Dockerfile if necessary

```bash
# --- create volume for gems
docker volume create bundle_vol
# --- create image
docker build -t ci-ruby .
# --- run image with bash
docker run --rm -it -v $(pwd):/app -v bundle_vol:/usr/local/bundle ci-ruby bash
# or whatever you want
# for example, load an image into the docker registers and specify it
# as the base image when registering the gitlab runner
```