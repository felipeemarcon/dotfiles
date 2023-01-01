<!-- VARS -->
[git-url]: https://git-scm.com/
[curl-url]: https://curl.se/
<!-- END_VARS -->

<div align="center" >
   <img src="./.github/assets/logo_wo_blur.svg" width=300>

   _just let the magic happens_
</div>

### Requirements

Before running this script make sure you have the following installed:
   * [Git][git-url]
   * [Curl][curl-url]
   * A Distro based on Debian with Apitude and Gnome Shell

```sh
   $ apt install curl git
```

### Run

```sh
   $ bash install
```
> **Warning** This script must be used in a sudoer user, otherwise it will not work at all.

| option  |          description             |
|---------|----------------------------------|
| --quiet | skip all logs except error level |
| --skip-settings | skip settings install |
| --skip-dependencies | skip dependencies install |
| --skip-fonts | skip fonts install |
| --skip-sources | skip sources adds to bash config |
