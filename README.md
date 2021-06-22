# vim-replace
Replace text operator with R

## Why

Vim don't have a fast way to replace yank test with selection.

The most common way to do It is to select with visual mode, the content you want to replace, then paste It.

But It's more slow and yank text get replaced, so can't be copied multiple times.

## How to use the plugin

This plugin binds key `R` as a replace operator, It works in normal and visual mode.

For example, to replace yanked text with a word, It's possible like this:
```
Riw
```

To replace yanked text in visual mode, just press `R`, same as press `p`, but without yank text being replaced, so can be used multiple times.
