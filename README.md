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
