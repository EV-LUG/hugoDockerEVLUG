# My Personal Site
##### https://carlhicks.me

[![Build Status](https://semaphoreci.com/api/v1/projects/6b75b67a-b199-41bc-9844-41a2303fdc17/493481/badge.svg)](https://semaphoreci.com/hicksca/carlhicksdotme)

This repository is the source [hugo](http://gohugo.io) uses to build my personal site.

Curretly building this site with [Hugo](http://gohugo.io).

(You can find my current blog at [carlhicke.me](http://carlhicks.me/blog/))

---

## Run locally

[Install Hugo](http://gohugo.io/overview/installing/) and run the local server by issuing this command
```
$ hugo server --theme=blackAndWhite --buildDrafts --watch
```

## Generate the public site

Generate only published pages with this command
```
$ hugo -t blackAndWhite
```

For Other Hugo features and how-to information see the documenation: [Hugo Doc's](http://gohugo.io/overview/introduction/)

Copyright (c) 2013-2015 - Carl Hicks - All rights reserved.
