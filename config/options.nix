{
  opts = {
    number = true;
    relativenumber = true;     # Show the line number relative to the line with the cursor in front of each line.
    clipboard = "unnamedplus"; # uses the clipboard register for all operations except yank.                                                                      
    syntax = "on";             # When this option is set, the syntax with this name is loaded.
    autoindent = true;         # Copy indent from current line when starting a new line.
    cursorline = true;         # Highlight the screen line of the cursor with CursorLine.
    expandtab = true;          # In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
    shiftwidth = 4;            # Number of spaces to use for each step of (auto)indent.
    tabstop = 4;               # Number of spaces that a <Tab> in the file counts for.
    ruler = true;              # Show the line and column number of the cursor position, separated by a comma.
    title = true;              # When on, the title of the window will be set to the value of 'titlestring'
    hidden = true;             # When on a buffer becomes hidden when it is |abandon|ed
    wildmenu = true;           # When 'wildmenu' is on, command-line completion operates in an enhanced mode.
    showcmd = true;            # Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
    showmatch = true;          # When a bracket is inserted, briefly jump to the matching one.
    inccommand = "split";      # When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.
    wrap = true;
  };
}
