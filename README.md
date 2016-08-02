Download and extract the [latest release](https://github.com/jvz/psgrep/releases/latest).
Then, re-read what's in there if it's different than the following:

To install, just execute `./install.sh`.  If you wish to install `psgrep`
somewhere other than `/usr/local/bin`, set the `$PREFIX` variable like so:

    PREFIX=/usr sudo ./install.sh

The default `$PREFIX` is `/usr/local`

If you, for example, install `psgrep` to your home directory, don't forget to set
your `PATH` to include `~/bin` as well as your `MANPATH` (or `~/.manpath`) to include
`~/share/man`.

If you wish to install this as an actual package on your system, you will need
the `checkinstall` program.  General syntax you can follow (just accept defaults):

    PREFIX=/usr sudo checkinstall ./install.sh

For example, on my Debian/[K]Ubuntu-based system, I could run:

    PREFIX=/usr sudo checkinstall -D -A all --gzman ./install.sh

For usage information, run

    man psgrep
