# archer.vim #

This plugin change behaviour of arrow keys.
They begin interact as text shifters instead of cursor movers.

So, what they will do?

* The "Up" arrow key deletes a blank line above the current line (a non-empty
  line will not be deleted), while the "Down" arrow key inserts a blank line
  above the current line. The result is hitting "Up" or "Down" moves the current
  line up or down, in both normal as well as insert mode.

* Pressing "Ctrl-Up" and "Ctrl-Down", instead, deletes or inserts a blank line
  below the current line. The result is that the text below the current line
  moves up or down, respectively.

* Pressing "Left" arrow de-dents the current line, while "Right" indents it.
  The result is that text shifts left and right, respectively.

All the plugin code I took from [http://vim.wikia.com/](http://vim.wikia.com/wiki/Quickly_adding_and_deleting_empty_lines)
and [Jeet Sukumaran's blog](http://www.jeetworks.org/node/89).

This plugin was created only by two reasons:

1. I don't use keys arrow for text navigation and really line an idea to use
   them as text shifters.
2. Implemented functionality takes too much space in my vimrc. It is much more
   convenient include it as a git submodule.
