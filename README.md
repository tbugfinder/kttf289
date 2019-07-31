# kttf289
Reproduce the issue seen in kitchen-terraform - #289

Usage:
`make -f Makefile.test init` &&
`make -f Makefile.test test`
#### Create Error
- Edit `test/fixture/default/main.tf` and uncomment #breakit
- `make -f Makefile.test test`
- Edit `test/fixture/default/main.tf` and comment #breakit
- `make -f Makefile.test test`
At this step it fails another execution of `make -f Makefile.test test` might be successfully in this simple szenario.
However if `.kitchen` is removed that, it doesn't fail.
