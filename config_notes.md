# Configuration notes for GUI and CLI programs

## Atom (Text Editor)

* To fix the recent (1.7) Atom change to use MRU tab switching add the following to the keymap.cson file:

```coffeescript
'body':
    'ctrl-tab ^ctrl': 'unset!'
    'ctrl-tab': 'pane:show-next-item'
    'ctrl-shift-tab ^ctrl': 'unset!'
    'ctrl-shift-tab': 'pane:show-previous-item'
```
