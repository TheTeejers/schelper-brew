# schelper-brew
schelper homebrew custom tap for [schelper](https://github.com/mdsauce/schelper)

### Upgrading to a new version?
Make sure you change ALL existing versions listed.  There should be three
- the url: ..."/schelper/archive/v1.0.4.tar.gz"
- the version: " version "1.0.4"
- the install block: ..."r/cmd.CurVersion=1.0.4", "-o"...


Run `brew fetch your-formula --build-from-source` to get the proper checksum

Run `brew upgrade schelper` locally to make sure the new version upgrades properly.
