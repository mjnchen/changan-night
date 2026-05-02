# Chang'an Night 长安夜 — Palette

A dark theme inspired by Tang Dynasty Chang'an (长安) at night: ink-blue
sky, lantern-warm yellows, palace vermilion, jade, and moon-white silk.

This file is the **single source of truth** for the palette. All
tool-specific theme files (ghostty, bat, starship, tmux, vscode)
should derive their colors from here.

## Core surfaces

| Role | Name | Pinyin | Meaning | Hex |
|---|---|---|---|---|
| Background | 黛 | dài | ink blue-black, "eyebrow ink" | `#1a1d2e` |
| Foreground | 月白 | yuèbái | moon white on paper | `#e8e4d4` |
| Cursor | 杏黄 | xìnghuáng | apricot lantern light | `#f4c860` |
| Selection bg | 玄 | xuán | deep heaven-black | `#262a3f` |

## ANSI normal (0–7)

| # | Role | Name | Pinyin | Meaning | Hex |
|---|---|---|---|---|---|
| 0 | black | 玄 | xuán | deep heaven-black | `#0d0e1a` |
| 1 | red | 朱砂 | zhūshā | cinnabar | `#c93f3f` |
| 2 | green | 翠 | cuì | jade / kingfisher | `#5a8c4a` |
| 3 | yellow | 鵝黄 | éhuáng | duckling yellow (lantern) | `#d4a23f` |
| 4 | blue | 黛青 | dàiqīng | dusk ink-blue | `#5a7aa8` |
| 5 | magenta | 绛 | jiàng | crimson | `#a04a64` |
| 6 | cyan | 青 | qīng | dark teal | `#4a8c8c` |
| 7 | white | 缃 | xiāng | light silk | `#bdb59d` |

## ANSI bright (8–15)

| # | Role | Name | Pinyin | Meaning | Hex |
|---|---|---|---|---|---|
| 8 | bright black | 烟灰 | yānhuī | smoke ash | `#3a3d4e` |
| 9 | bright red | 朱红 | zhūhóng | vermilion (palace pillar) | `#e85a4a` |
| 10 | bright green | 嫩绿 | nènlǜ | tender spring green | `#7dc26d` |
| 11 | bright yellow | 杏黄 | xìnghuáng | apricot lantern | `#f4c860` |
| 12 | bright blue | 月下青 | yuèxiàqīng | blue under moonlight | `#7a9ad4` |
| 13 | bright magenta | 桃红 | táohóng | peach blossom | `#d48a9e` |
| 14 | bright cyan | 碧 | bì | bright jade | `#7ac0c0` |
| 15 | bright white | 缟 | gǎo | white silk | `#f5efde` |

## Design principles

- **Background is not pure black.** Pure `#000000` reads as void; 黛 (dài,
  `#1a1d2e`) reads as night sky and lets the lantern accents glow.
- **Warm anchor.** 杏黄 (apricot lantern) is the cursor and brightest yellow
  — it's the visual "lantern light" that gives the theme its identity.
- **Vermilion sparingly.** 朱红 is reserved for things that need to feel
  important (errors, prompt accents) — like a vermilion seal stamp.
- **Sancai allusion.** Tang sancai (三彩) tri-color glaze pottery used
  amber-yellow, green, and white. Those three roles (3 yellow, 2 green,
  15 white) carry the most "Tang" identity weight.
- **Contrast.** Background-to-foreground is ~12:1 (WCAG AAA). Verify any
  changes against contrast-ratio.com before committing.
