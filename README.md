<p align="center"><img src="http://svgur.com/i/3Dp.svg"></p>

<p align="center">gruvbox inspired, clean and elegant <a href="https://tmux.github.io" target="_blank">tmux</a> color theme.</p>

<p align="center"><img src="https://github.com/sridharsridha/gruvbox-tmux/blob/master/doc/assert/images/overview.png"/></p>

# Quick Start

Thanks to existing plugin managers for tmux, Gruvbox tmux can be installed for all platforms in a uniform way within a few lines of codes. The recommended manager is [tpm](https://github.com/tmux-plugins/tpm), but any other manager like [tundle](https://github.com/javier-lopez/tundle) can also be used.

To automatically download and activate Gruvbox tmux, follow the install instructions for [tpm](htts::/github.com/tmux-plugins/tpm) and

1. add below code to your `tmux.conf`, by default `.tmux.conf` located in your home directory

```tmux
    set -ga terminal-overrides ",screen-256color:Tc"
    set -g default-terminal "screen-256color"
    set -g @plugin "sridharsridha/gruvbox-tmux"
```

2. press the default key binding `prefix` + <kbd>I</kbd> to fetch- and install the plugin

<p align="center"><img src="https://github.com/sridharsridha/gruvbox-tmux/blob/master/doc/assert/images/quickstart.png"/></p>


Also see [tpm's_ install instructions](https://github.com/tmux-plugins/tpm#installation) for more details.

# Thanks
Inspired by [nord-tmux](https://github.com/arcticicestudio/nord-tmux)
