EnhancedReadline Keymap
=======================

Cursor Movement
---------------

  * Forward by words `ctrl+f`

  ```js
  {
    "keys": ["alt+f"],
    "command": "move",
    "args": { "by": "wordends", "forward": true }
  }
  ```

  * Backward by words `ctrl+b`

  ```js
  {
    "keys": ["alt+b"],
    "command": "move",
    "args": { "by": "words", "forward": false }
  }
  ```

  * Beginning of line (soft) `ctrl+a`

  ```js
  {
    "keys": ["ctrl+a"],
    "command": "move_to",
    "args": { "to": "bol" }
  }
  ```

  * Beginning of file `alt+p`

  ```js
  {
    "keys": ["alt+p"],
    "command": "move_to",
    "args": { "to": "bof" }
  }
  ```

  * End of file `alt+n`

  ```js
  {
    "keys": ["alt+n"],
    "command": "move_to",
    "args": { "to": "eof" }
  }
  ```

  * Forward by words `shift+alt+f`

  ```js
  {
    "keys": ["shift+alt+f"],
    "command": "move",
    "args": { "by": "wordends", "forward": true, "extend": true }
  }
  ```

Selection
---------

  * Select backward by words `shift+alt+b`

  ```js
  {
    "keys": ["shift+alt+b"],
    "command": "move",
    "args": { "by": "words", "forward": false, "extend": true }
  }
  ```

  * Select to previous line `shift+ctrl+p`

  ```js
  {
    "keys": ["shift+ctrl+p"],
    "command": "move",
    "args": { "by": "lines", "forward": false, "extend": true }
  }
  ```

  * Select to end of File `shift+alt+n`

  ```js
  {
    "keys": ["shift+alt+n"],
    "command": "move_to",
    "args": { "to": "eof", "extend": true }
  }
  ```

  * Select to begining of File `shift+alt+p`

  ```js
  {
    "keys": ["shift+alt+p"],
    "command": "move_to",
    "args": { "to": "bof", "extend": true }
  }
  ```

Line editing
------------

  * Delete word Forward `alt+d`

  ```js
  {
    "keys": ["alt+d"],
    "command": "delete_word",
    "args": { "forward": true, "sub_words": true }
  }
  ```

  * Toggle comment `ctrl+/`

  ```js
  {
    "keys": ["ctrl+forward_slash"],
    "command": "toggle_comment",
    "args": { "block": false }
  }
  ```

  * Join lines `ctrl+j`

  ```js
  {
    "keys": ["ctrl+j"],
    "command": "join_lines"
  }
  ```

Multiple Cursors
----------------

  * New Cursor Up `ctrl+alt+p`

  ```js
  {
    "keys": ["ctrl+alt+n"],
    "command": "select_lines",
    "args": { "by": "characters", "forward": true }
  }
  ```

  * New Cursor Down `ctrl+alt+n`

  ```js
  {
    "keys": ["ctrl+alt+p"],
    "command": "select_lines",
    "args": { "by": "characters", "forward": false }
  }
  ```

Line movement
-------------

  * Swap line Up `ctrl+cmd+p`

  ```js
  {
    "keys": ["ctrl+super+p"],
    "command": "swap_line_up"
  }
  ```

  * Swap line Down `ctrl+cmd+n`

  ```js
  {
    "keys": ["ctrl+super+n"],
    "command": "swap_line_down"
  }
  ```

Extra Readline Enhacements
--------------------------

  * Indent with ctrl instead of super `ctrl+]`

  ```js
  {
    "keys": ["ctrl+]"],
    "command": "indent"
  }
  ```

  * Unindent with ctrl instead of super `ctrl+[`

  ```js
  {
    "keys": ["ctrl+["],
    "command": "unindent"
  }
  ```

  * Toggle comments with ctrl instead of super `ctrl+/`

  ```js
  {
    "keys": ["ctrl+forward_slash"],
    "command": "toggle_comment",
    "args": { "block": false }
  }
  ```

  * Toggle fold comments with ctrl instead of super `shift+ctrl+c`

  ```js
  {
    "keys": ["ctrl+shift+forward_slash"],
    "command": "toggle_fold_comments"
  }
  ```
