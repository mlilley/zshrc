# ZSHRC

* impoved prompt with time, path, git info (branch, dirty/clean status), and last exitcode.
* enhanced tab completion (including for git)
* change directories without having to type 'cd'
* command line text in bold
* working home/end keys (macos)

![prompt example](prompt.png)

## Item2

Iterm2 supports the required powerline glyphs already (via enableable setting), but its default color scheme needs an update to be xterm256 accurate: 
* Preferences > Profiles > Default > Text > enable `Use built-in Powerline glyphs`
* Preferences > Profiles > Default > Colors > Color Presets > import and apply the supplied `xterm.itermcolors` file

## Terminal

Terminal requires you install and use a font with the required powerline glyphs patched in:
* https://github.com/supermarin/powerline-fonts
* https://gist.github.com/lujiacn/32b598b1a6a43c996cbd93d42d466466

## Home/End keys

I don't know why zsh makes this hard, but I've found different platforms need different keycodes mapped. If it doesn't work out of the box, try the alternative mappings I've included (commented out).
