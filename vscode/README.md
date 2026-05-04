# Chang'an Night 长安夜

A dark color theme inspired by Tang Dynasty Chang'an (长安) at night —
ink-blue sky, lantern-warm yellows, palace vermilion, jade, moon-white silk.

## Palette

The palette draws from traditional Chinese pigment names:

| Role | Name | Pinyin | Hex |
|---|---|---|---|
| Background | 黛 | dài (eyebrow ink) | `#1a1d2e` |
| Foreground | 月白 | yuèbái (moon white) | `#e8e4d4` |
| Cursor / accent | 杏黄 | xìnghuáng (apricot lantern) | `#f4c860` |
| Strings | 鵝黄 | éhuáng (duckling yellow) | `#d4a23f` |
| Keywords | 朱砂 | zhūshā (cinnabar) | `#c93f3f` |
| Operators | 朱红 | zhūhóng (vermilion) | `#e85a4a` |
| Functions | 月下青 | yuèxiàqīng (blue under moonlight) | `#7a9ad4` |
| Types | 碧 | bì (bright jade) | `#7ac0c0` |
| Properties | 桃红 | táohóng (peach blossom) | `#d48a9e` |

The full palette and rationale lives in the
[repo's `palette.md`](https://github.com/mjnchen/changan-night/blob/main/palette.md).

## Design principles

- **Background is not pure black.** Pure `#000000` reads as void; 黛 (dài) reads
  as night sky and lets the lantern accents glow.
- **Warm anchor.** 杏黄 (apricot lantern) is the cursor and brightest yellow —
  the visual "lantern light" that gives the theme its identity.
- **Vermilion sparingly.** 朱红 is reserved for things that need to feel
  important (errors, prompt accents) — like a vermilion seal stamp.
- **Sancai allusion.** Tang sancai (三彩) tri-color glaze pottery used
  amber-yellow, green, and white. Those three roles carry the most "Tang"
  identity weight.
- **Contrast.** Background-to-foreground is ~12:1 (WCAG AAA).

## Companion themes

Matching themes for terminals and other editors live in the
[same repo](https://github.com/mjnchen/changan-night) — Ghostty, Kitty,
Alacritty, iTerm2, Sublime Text, Zed, and Neovim.

## License

MIT — see [LICENSE](https://github.com/mjnchen/changan-night/blob/main/LICENSE).
