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
   - search buffers: `\t`
 - Toggle NERDTree: `F5`, in NERDTree:
   - Scope to directory: `C`
   - Go up one directory: `U`
   - go to parent: `p`
   - set working directory: `cd` inside NERDTree
   - search folder by name: `/foo` and `?foo` as you would normally search in a file
   - create/delete file/folder: `m`
   - refresh tree: `r`
   
## In File

 - Character: `h j k l`
 - Word/WORD: `bB <--> wW`
 - Line: `0 <--> $`
 - First char of line: `^`
 - Prev/Next occurence of word under cursor: `# <--> *`
 - Page: `^d v--^ ^u`
 
## Buffers

 - Properly close buffer `:Bd`
 - Go to buffer `:b1`, where `1` is buffer id
 - Next buffer: `bn`
 - Previous buffer: `bp`
 
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

# Selecting

Select inner block of matching brace: `vi{`
 - `{` can replaced with `(`, `'`, `"`, `[` 
 - use `va{` if you also want to include the brace

Column select: `ctrl-v`
Line select: `V`

# Change Settings

Edit `.vimrc`: `\\r`
Source `.vimrc`: `\r`

# Neat Commands

 - Execute perl tidy on current file: `:Tidy` (usually you won't need to do this because saving the file executes perl tidy)
 - Open terminal: `:vert term`, `<c-w> :q` to close
 
