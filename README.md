# Tanyuan's Vim

[Vim](http://www.vim.org/) is a free and open source code editor from the old days.

![Vim Screenshot](screenshot.png)

## Philosophy

I was born in a graphical user interface age and Vim is really a new way of thinking for me. The Normal Mode and Insert Mode is nothing I have ever thought of. That is what makes Vim so different and attractive. You navigate codes with sequential key strokes, not the shortcut that you have to press several keys simultaneously. It feels more natural. It feels more like talking.

The configuration (settings) of my Vim is actually very simple. Except for theme that I use Monokai (default theme in Sublime Text), there are no fancy status bars and split window plugins around. I like Vim for its modest visual appearance. Vim does not tell you to do anything, thus you will think what you need to do for yourself. It is like making a friend.

My settings are mainly for me to work more smoothly in subtle ways. Like `Space` to quickly switch in buffers and `Tab` to quickly switch in split windows. And the greatest of all is to map `;` to `:` to trigger Command Mode in a single key stroke on modern keyboards.

By the way, I map `Caps Lock` to `Esc` in my operating system.

For first time user, run `vimtutor` command to learn by doing. For place to learn more, search [Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki) for nice tutorials and advice.

## Environment

These Vim configuration files should work on all Linux distributions with `vim` installed.

However, if you like to know my workspace, these are what I work with.

- Operating System: [Arch Linux](https://www.archlinux.org/)
- Desktop Environment: GNOME
- Terminal Emulator: GNOME Terminal
- GTK+ Theme: [Arc Theme](https://github.com/horst3180/Arc-theme) (best with `monokai-arc` Vim theme)
- Terminal font: [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

I also had `vim-gnome` installed for better GNOME integration (system copy-paste and terminal window title). For more information on Vim packages on Arch Linux, see [Arch Linux Wiki](https://wiki.archlinux.org/index.php/Vim).

[Ranger](http://ranger.nongnu.org/) is a nice console file manager with Vim-like key binding. You would feel like home with everything Vim-like. Though Vim has its file browser, Ranger is better for leisure file browsing.

For a Vim-like web browsing experience, [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb) for Chrome/Chromium and [VimFx](https://addons.mozilla.org/zh-tw/firefox/addon/vimfx/) for Firefox provide customizable key bindings. You can access shortcuts of specific website by hitting `i`.

## Installation

Put folder `.vim` and file `.vimrc` under home directory `~` on Linux.

Note these are hidden files and you might not see them after download.

`ls -a` in Bash to see hidden files.
