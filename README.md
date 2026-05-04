# Chang'an Night 长安夜

A dark color theme inspired by Tang Dynasty Chang'an (长安) at night —
ink-blue sky, lantern-warm yellows, palace vermilion, jade, moon-white silk.

The canonical palette with traditional Chinese pigment names lives in
[`palette.md`](palette.md). Tool-specific theme files derive from it.

## Status

Early draft. Living in this repo until the palette stabilizes through
daily use, then I'll port to other tools.

| Tool | Status |
|---|---|
| Ghostty | starter draft |
| VS Code / Cursor | starter draft |
| Sublime Text | starter draft |
| iTerm2 | starter draft |
| Kitty | starter draft |
| Alacritty | starter draft |
| Neovim | starter draft |
| Zed | starter draft |
| bat / delta | planned |
| starship | planned |
| tmux | planned |

## Install — Ghostty

Symlink the theme into Ghostty's themes dir, then reference it in your config:

```bash
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty/themes"
ln -sf "$(pwd)/ghostty/changan-night" \
  "$HOME/Library/Application Support/com.mitchellh.ghostty/themes/changan-night"
```

In your Ghostty config:

```
theme = changan-night
```

## Install — VS Code / Cursor

Symlink the `vscode/` directory into the editor's extensions folder.
This installs it as a local extension — no marketplace needed, no
packaging required.

```bash
# VS Code
ln -sf "$(pwd)/vscode" ~/.vscode/extensions/mjnchen.changan-night-0.0.1

# Cursor
ln -sf "$(pwd)/vscode" ~/.cursor/extensions/mjnchen.changan-night-0.0.1
```

Then restart the editor and select **Chang'an Night** via
`Cmd+K Cmd+T` (Color Theme picker).

## Install — Sublime Text

Symlink the scheme into Sublime's `User` packages directory:

```bash
ln -sf "$(pwd)/sublime/Chang'an Night.sublime-color-scheme" \
  "$HOME/Library/Application Support/Sublime Text/Packages/User/Chang'an Night.sublime-color-scheme"
```

Then activate it via the command palette (`Cmd+Shift+P`) →
**UI: Select Color Scheme** → **Chang'an Night**.

## Install — iTerm2

iTerm2 imports color presets as `.itermcolors` files. Either:

```bash
open "$(pwd)/iterm2/changan-night.itermcolors"
```

…which prompts iTerm2 to register the preset, or import manually via
**iTerm2 → Settings → Profiles → Colors → Color Presets… → Import**,
then select `iterm2/changan-night.itermcolors`.

Once imported, pick it from the same **Color Presets…** menu while the
target profile is selected.

## Install — Kitty

Symlink the scheme into Kitty's themes dir, then `include` it from your
main config:

```bash
mkdir -p ~/.config/kitty/themes
ln -sf "$(pwd)/kitty/changan-night.conf" ~/.config/kitty/themes/changan-night.conf
```

In `~/.config/kitty/kitty.conf`:

```
include themes/changan-night.conf
```

Reload Kitty (`Ctrl+Shift+F5` on Linux, `Cmd+Ctrl+,` on macOS) or restart.

## Install — Alacritty

Symlink the theme into Alacritty's config dir, then import it from your
main config:

```bash
mkdir -p ~/.config/alacritty/themes
ln -sf "$(pwd)/alacritty/changan-night.toml" ~/.config/alacritty/themes/changan-night.toml
```

In `~/.config/alacritty/alacritty.toml` (Alacritty 0.13+):

```toml
[general]
import = ["~/.config/alacritty/themes/changan-night.toml"]
```

Alacritty hot-reloads on save — no restart needed.

## Install — Neovim

Symlink the colorscheme file into your Neovim config's `colors/` dir:

```bash
mkdir -p ~/.config/nvim/colors
ln -sf "$(pwd)/nvim/colors/changan-night.lua" ~/.config/nvim/colors/changan-night.lua
```

Then in your Neovim config (`init.lua`):

```lua
vim.cmd.colorscheme("changan-night")
```

Or for one-off use: `:colorscheme changan-night`. Requires
`termguicolors` enabled (`vim.o.termguicolors = true`).

## Install — Zed

Symlink the theme into Zed's user themes dir:

```bash
mkdir -p ~/.config/zed/themes
ln -sf "$(pwd)/zed/changan-night.json" ~/.config/zed/themes/changan-night.json
```

Then open the theme picker with `Cmd+K Cmd+T` and select
**Chang'an Night**, or set it explicitly in `~/.config/zed/settings.json`:

```json
{
  "theme": "Chang'an Night"
}
```
