# zsh

| command          | short for      | meaning                  |
| ---------------- | -------------- | ------------------------ |
| ta [session_nam] | tmux attach -t | attach tmux session      |
| tl               | tmux list      | list active tmux session |

# tmux

##### prefix --- `Ctrl`+`a`

| command | meaning               |
| ------- | --------------------- |
| $       | rename session        |
| s       | switch session        |
| :new    | new session           |
|         |                       |
| ,       | rename window         |
| w       | switch window         |
| c       | new window            |
| q       | close window          |
| p       | select last window    |
| [0-9]   | select window by id   |
|         |                       |
| \       | split pane vertical   |
| -       | split pane horizontal |
| x       | close pane            |
| hjkl    | move between pane     |
|         |                       |

# vim

| command           | meaning                            | plugin                                   |
| ----------------- | ---------------------------------- | ---------------------------------------- |
| `Ctrl`+n          | NERDTree                           | [scroolloose/nerdtree](https://github.com/scrooloose/nerdtree) |
| Tab               | auto complete                      | [ervandew/supertab](https://github.com/ervandew/supertab) |
| hjkl              | move                               |                                          |
| w                 | move to the begin of next word     |                                          |
| b                 | move to the begin of previous word |                                          |
| gg                | jump to end of file                |                                          |
| G                 | jump to begin of file              |                                          |
| i                 | insert                             |                                          |
| A                 | insert end of line                 |                                          |
| I                 | insert begin of line               |                                          |
| f  `word`         | go to the next word in this line   |                                          |
| d                 | remove                             |                                          |
| dd                | remove line and yank               |                                          |
| yy                | rank link                          |                                          |
| p                 | paste                              |                                          |
| v                 | visual mode                        |                                          |
| V                 | visual mode: select line           |                                          |
| `Ctrl`+v          | visual mode: select block          |                                          |
| x                 | remove the select word             |                                          |
| =                 | format                             |                                          |
| #                 | find word the curson on            |                                          |
| /                 | find word                          |                                          |
| :w                | save                               |                                          |
| :q                | quit                               |                                          |
| ZZ                | force save and quit                |                                          |
| u                 | undo                               |                                          |
| `Ctrl`+r          | redo                               |                                          |
| `Ctrl`+e          | Zencoding(emmet)                   | [mattn/emmet-vim](https://github.com/mattn/emmet-vim) |
| `ctrl`+p          | Files jump                         | [kien/ctrlp](https://github.com/kien/ctrlp.vim) |
| `\` `c` `<space>` | comment                            | [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter) |
| `Ctrl`+c          | copy to clipboard                  |                                          |
| :set paste        | copy mode(can copy without indent) |                                          |
| :set nopaste      | not copy mode                      |                                          |
|                   |                                    |                                          |
| `m` `any`         | add a bookmark to a word           |                                          |
| `'` `any`         | jump to the bookmark               |                                          |
| `q` `any`         | record a macro to a word           |                                          |
| `@` `any`         | execute the macro                  |                                          |