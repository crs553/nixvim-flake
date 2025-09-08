[
  {
    mode = "n";
    key = "<leader>a";
    action.__raw = "function() require'harpoon':list():add() end";
    options = {
      desc = "Harpoon Add";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "]h";
    action.__raw = "function() require('harpoon'):list():next() end";
    options = {
      desc = "Harpoon Next Mark";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "[h";
    action.__raw = "function() require('harpoon'):list():prev() end";
    options = {
      desc = "Harpoon Previous Mark";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<C-h>";
    action.__raw = "function() require('harpoon'):list():select(1) end";
    options = {
      desc = "Harpoon Mark 1";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<C-j>";
    action.__raw = "function() require('harpoon'):list():select(2) end";
    options = {
      desc = "Harpoon Mark 2";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<C-k>";
    action.__raw = "function() require('harpoon'):list():select(3) end";
    options = {
      desc = "Harpoon Mark 3";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<C-l>";
    action.__raw = "function() require('harpoon'):list():select(4) end";
    options = {
      desc = "Harpoon Mark 4";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<C-e>";
    action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
    options = {
      desc = "Harpoon Menu";
      silent = true;
    };
  }
]
