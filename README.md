# docker-rake

Designed for use with github-pages / jekyll. This Docker image provides Ruby and Bundler in order to run `rake` in your current directory.  It exposes port 4000 for Jekyll, but it doesn't install Jekyll; this means that you can always use the version stated in your Gemfile and not have any dependency issues.

Usage:

`docker run -t --rm -v "$PWD":/usr/src/app -p "4000:4000" staticli/rake`

Requirements:

* A Gemfile in your current directory
