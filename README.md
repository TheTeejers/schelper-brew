# schelper-brew
schelper homebrew custom tap for [schelper](https://github.com/mdsauce/schelper)

### Upgrading to a new version?
Make sure you change ALL existing versions listed.  There should be three
- the url: ..."/schelper/archive/v1.0.4.tar.gz"
- the version: " version "1.0.4"
- the install block: ..."r/cmd.CurVersion=1.0.4", "-o"...


Run `brew fetch your-formula --build-from-source` to get the proper checksum

Run `brew upgrade schelper` locally to make sure the new version upgrades properly.


### Steps to Automate
get ver. number
- get new version number from user
open new release
- add tag of new version number to master
- push tag to master
update schelper-brew
- download the tar file of latest release
- get sha256 sum of release
- update schelper.brew with new sha
- update URL ver. for github release  
- update literal ver number in schelper
- update version number in install block for compile time instructions
