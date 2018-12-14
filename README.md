Bruce's Ultimate Perl Vim Configuration
===================================

# Vim App

 - Save (write): `:w`
 - Save All: `:wa`
 - Save All + quit: `:wqa`
 - Quit: `:q`
 - Quit (no save): `:q!`
 - Quit+Save: `:wq`
 - Quit all: `:qa`
 - Quit all no save: `:qa!`
 
**Note:** You can use `Ctrl-z` to put vim in background, and `fg` command to put vim back to foreground.

**Tip**: execute any bash command via `:!`. For example, quickly change the permission of your current file via `:!chmod +x %`.

# Navigation

## Open Files by Name

 - Search files by name: `<c-p>`, in CtrlP:
   - Switch filename/fullpath search only: `<c-d>`
   - next/previous string in the prompt's history: `<c-n>, <c-p>`
   - regex mode: `<c-r>`
   - cycle modes: `<c-f> <--> <c-b>`
   - search buffers: `\b`
 - Toggle NERDTree: `F5`, in NERDTree:
   - Scope to directory: `C`
   - Go up one directory: `U`
   - go to parent: `p`
   - set working directory: `cd` inside NERDTree
   - search folder by name: `/foo` and `?foo` as you would normally search in a file
   - create/delete file/folder: `m`
   - refresh tree: `r`

## Jump to Definition

You need to have ctags configured

 - Go to definition: `ctrl-]`, `ctrl-t` to go back
 - Navigate around jumps: `ctrl-o <--> ctrl-i`
 
## In File

 - Character: `h j k l`
 - Word/WORD: `bB <--> wW`
 - Line: `0 <--> $`
 - First char of line: `^`
 - Prev/Next occurence of word under cursor: `# <--> *`
 - Page: `^d v--^ ^u`
 
## Code Outline

Launch TagBar: `<F8>`
In Tagbar:
 - Jump to file without closing the panel: `p`
 - Go to area and close panel `<cr>`
 
## Buffers

 - Properly close buffer: `\w`
 - Close all buffers but this: `\aw`
 - Go to buffer `:b1`, where `1` is buffer id
 - Next buffer: `bn`
 - Previous buffer: `bp`

# Error Checking

Errors then show up in the location panel, which you can open `:lopen` and close `:lclose`.

# Editing Code

## Code Commenting

 - comment line: `\cl`
 - minimal comment block: `\cm`
 - uncomment line/block `\cu`
 - append comment: `\cA`

# Search/Replace in Files

## Within file

- Search: `?foo <--> /foo`, on `[enter]`, press `N <--> n` to jump between matches
- 	- Clear search highlight: `:noh` 
- Replace: `:%s/source/target/gcI`
	- `%` search whole file
        - `'<,'>` search selection (visual select)
        - default to search current line
	- `c` asks for confirmation, default to replace all
		- on `c+[enter]`, `y` `n` to replace, `q` to stop
	- `I` case sensitive, default to insensitive

### In visual mode:

 - search selection: `<c-l>`
 - search+replace selection with confirmation: `<c-r>`

### In normal mode:
 - Search word under cursor: `*`
 
## Across files (Using [CtrlSF](https://github.com/dyng/ctrlsf.vim))

Toggle search panel: `\t`

**CtrlSF Arguments**
- `-R` - Use regular expression pattern.
- `-I`, `-S` - Search case-insensitively (`-I`) or case-sensitively (`-S`).
- `-C`, `-A`, `-B` - Specify how many context lines to be printed, identical to their counterparts in Ag/Ack.
- `-W` - Only match whole words.

### In insert mode:

 - search something: `\f`
 - search word under cursor: `\n`

### In visual mode:

 - search selection: `\f`

# Copy Pasting 

## Within Vim

copy (yank): `y`
paste: `p`

## Outside Vim

Copy the whole file: leave vim and use `cat filename`, then copy from terminal.

If your vim doesn't copy to clipboard, a hack is to copy from the terminal. `<F3>` disables mouse input and line numbers, but allows you to select the text to copy. Press `<F3` to toggle back again.

# Selecting

Select inner block of matching brace: `vi{`
 - `{` can replaced with `(`, `'`, `"`, `[` 
 - use `va{` if you also want to include the brace

Column select: `ctrl-v`
Line select: `V`

# Code Folding

Define Folds
- Fold visual select: `zf`
- Fold all within `{}` block: `zfa{`
- Delete fold: `zd`

Using Folds
- close/open fold `zc`/`zo`
- close/open all folds: `zM`/`zR`

# Change Settings

Edit `.vimrc`: `\\r`
Source `.vimrc`: `\r`

# Neat Commands

 - Execute perl tidy on current file: `:Tidy` (usually you won't need to do this because saving the file executes perl tidy)
 - Open terminal: `:vert term`, `<c-w> :q` to close
 
