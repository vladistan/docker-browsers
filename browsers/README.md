# browsers

* installs Firefox and Chrome
* installs `nave` and `nave usemain stable`

## Running on MacOSX

The mac story with docker sucks. To verify this image, you can 

* `vagrant up`.
* `vagrant ssh`
* `cd /docker` (mapped inside `Vagrantfile`)
* `sudo docker run -i -t mnichols/browsers:{tag}`

## TODO

* successfully installed chrome and firefox, now need to verify running testem inside the box



