[
  # Oil Bindings
  {
    mode = "n"; # normal‑mode
    key = "-"; # the key you press
    action = ":Oil<CR>"; # run the Oil command
    options = {
      desc = "Open Oil File Menu";
      noremap = true;
      silent = true;
    };
  }
]
