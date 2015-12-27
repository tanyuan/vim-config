# Tanyuan using Vim

[Vim](http://www.vim.org/) is a free and open source code editor from the old days.

![Vim Screenshot](screenshot.png)

## Philosophy

I was born in a graphical user interface age and Vim is really a new way of thinking for me. The Normal Mode and Insert Mode is nothing I have ever thought of. That is what makes Vim so different and attractive. You navigate codes with sequential key strokes, not the shortcut that you have to press several keys simultaneously (chord). It feels more natural. It feels more like talking.

The configuration (settings) of my Vim is actually very simple. There are no fancy status bars and split window plugins around. I like Vim for its modest visual appearance. Vim does not tell you to do anything, thus you will think what you need to do for yourself. It is like making a friend.

## Learn Vim

For first time users, run `vimtutor` command to learn by doing.

For some important concepts, refer to [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html).

For place to learn more, search [Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki) for nice tutorials and advice.

## How to use my configuration

Put folder `.vim` and file `.vimrc` under home directory `~` on Linux.

Note these are hidden files and you might not see them after download.

`ls -a` in Bash to see hidden files.

### .vimrc 

My settings are mainly to work more smoothly in subtle ways. To keep important keys close to reach, I map `Caps Lock` to `Ctrl` in my operating system and map `Tab` to `Esc` in Vim. (This is the [original keyboard layout](https://en.wikipedia.org/wiki/File:KB_Terminal_ADM3A.svg) back in time when Vi is designed) `Space` to quickly switch in buffers. And the greatest of all, mapping `;` to `:` to trigger Command Mode in a single key stroke on modern keyboards.

You can read my comments in the file to get what you need.

### .vim/

The folder contains several subfolders:

- **colors**: Vim color themes, including syntax highlighting. 
    - Monokai: Original Monokai theme, which is default theme in Sublime Text.
    - Monokai-Arc: I change the background to fit Arch theme.
- **doc**: documents for plugins.
- **indent**: language indent rules.
    - css.vim: Better indentation for CSS.
- **plugin**: plugins.
    - [NERD\_commenter](http://www.vim.org/scripts/script.php?script_id=1218): Easy commenting by `<Leader>c<Space>` which I map to `Ctrl-/` in `.vimrc`.
    - [AutoClose](http://www.vim.org/scripts/script.php?script_id=1849): Automatic add corresponding closing brace when typing `(` `[` `{`. Jump out of nested braces by typing `)`.
- **syntax**: language syntax hightlighting.
    - c.vim/cpp.vim: function highlighting for C/C++.
    - gnuplot.vim: syntax highlighting for gnuplot files

## Beyond Vim 

This is the environment I work in with Vim if you would like to know:

- Operating System: [Arch Linux](https://www.archlinux.org/)
- Desktop Environment: GNOME
- Terminal Emulator: GNOME Terminal
- GTK+ Theme: [Arc Theme](https://github.com/horst3180/Arc-theme) (best with `monokai-arc` Vim theme)
- Terminal font: [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

I also had `vim-gnome` installed for better GNOME integration (system copy-paste and terminal window title). For more information on Vim packages on Arch Linux, see [Arch Linux Wiki](https://wiki.archlinux.org/index.php/Vim).

[Ranger](http://ranger.nongnu.org/) is a nice console file manager with Vim-like key binding. You would feel like home with everything Vim-like. Though Vim has its file browser, Ranger is better for leisure file browsing.

For a Vim-like web browsing experience, [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb) for Chrome/Chromium and [VimFx](https://addons.mozilla.org/zh-tw/firefox/addon/vimfx/) for Firefox provide customizable key bindings. You can access shortcuts of specific website by hitting `i`.
