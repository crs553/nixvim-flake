{...} : {
  keymaps = [
    # Oil Bindings
    {
      mode    = "n";            # normal‑mode
      key     = "-";            # the key you press
      action  = ":Oil<CR>";     # run the Oil command
      options = { noremap = true; silent = true; };
     }
     {
       mode    = "n";            # normal‑mode
       key     = "<leader>pv";            # the key you press
       action  = ":Oil<CR>";     # run the Oil command

       options = { noremap = true; silent = true; };
    }
  ];
}
