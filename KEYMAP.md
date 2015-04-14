EnhancedReadline Keymap
=======================

Cursor Movement
---------------

  * Forward by words `ctrl+f`

  ```js
  {
    "command": "move",
    "args": { "by": "wordends", "forward": true }
  }
  ```

  * Backward by words `ctrl+b`

  ```js
  {
    "command": "move",
    "args": { "by": "words", "forward": false }
  }
  ```

  * Beginning of line (soft) `ctrl+a`

  ```js
  {
    "command": "move_to",
    "args": { "to": "bol" }
  }
  ```

  * Beginning of file `alt+p`

  ```js
  {
    "command": "move_to",
    "args": { "to": "bof" }
  }
  ```

  * End of file `alt+n`

  ```js
  {
    "command": "move_to",
    "args": { "to": "eof" }
  }
  ```

  * Forward by words `shift+alt+f`

  ```js
  {
    "command": "move",
    "args": { "by": "wordends", "forward": true, "extend": true }
  }
  ```

Selection
---------

  * Select backward by words `shift+alt+b`

  ```js
  {
    "command": "move",
    "args": { "by": "words", "forward": false, "extend": true }
  }
  ```

  * Select to previous line `shift+ctrl+p`

  ```js
  {
    "command": "move",
    "args": { "by": "lines", "forward": false, "extend": true }
  }
  ```

  * Select to end of File `shift+alt+n`

  ```js
  {
    "command": "move_to",
    "args": { "to": "eof", "extend": true }
  }
  ```

  * Select to begining of File `shift+alt+p`

  ```js
  {
    "command": "move_to",
    "args": { "to": "bof", "extend": true }
  }
  ```

Line editing
------------

  * Delete word Forward `alt+d`

  ```js
  {
    "command": "delete_word",
    "args": { "forward": true, "sub_words": true }
  }
  ```

  * Toggle comment `ctrl+/`

  ```js
  {
    "command": "toggle_comment",
    "args": { "block": false }
  }
  ```

  * Join lines `ctrl+j`

  ```js
  {
    "command": "join_lines"
  }
  ```

Multiple Cursors
----------------

  * New Cursor Up `ctrl+alt+p`

  ```js
  {
    "command": "select_lines",
    "args": { "by": "characters", "forward": true }
  }
  ```

  * New Cursor Down `ctrl+alt+n`

  ```js
  {
    "command": "select_lines",
    "args": { "by": "characters", "forward": false }
  }
  ```

Line movement
-------------

  * Swap line Up `ctrl+cmd+p`

  ```js
  {
    "command": "swap_line_up"
  }
  ```

  * Swap line Down `ctrl+cmd+n`

  ```js
  {
    "command": "swap_line_down"
  }
  ```

Extra Readline Enhacements
--------------------------
  * Indent with ctrl instead of super `ctrl+]`

  ```js
  {
    "command": "indent"
  }
  ```

  * Unindent with ctrl instead of super `ctrl+[`

  ```js
  {
    "command": "unindent"
  }
  ```

  * Toggle comments with ctrl instead of super `ctrl+/`

  ```js
  {
    "command": "toggle_comment",
    "args": { "block": false }
  }
  ```

  * Toggle fold comments with ctrl instead of super `shift+ctrl+c`

  ```js
  {
    "command": "toggle_fold_comments"
  }
  ```
