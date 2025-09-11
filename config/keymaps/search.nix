[
  {
    mode = "n";
    key = "<leader>fb";
    action = "<cmd>lua require('snacks').picker.buffers()<CR>";
    options = {
      desc = "Buffers";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fc";
    actions = "<cmd>require('snacks').picker.files({ cwd = vim.fn.stdpath('config') })";
    options = {
      desc = "Find config files";
    };
  }
  {
    mode = "n";
    key = "<leader>fd";
    action = "<cmd>lua require('snacks').picker.files()<CR>";
    options = {
      desc = "Find Files";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fg";
    action = "<cmd>lua require('snacks').picker.git_files()<CR>";
    options = {
      desc = "Find Git Files";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fp";
    action = "<cmd>lua require('snacks').picker.projects()<CR>";
    options = {
      desc = "Projects";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fr";
    action = "<cmd>lua require('snacks').picker.recent()<CR>";
    options = {
      desc = "Recents";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fh";
    action = "<cmd>lua require('snacks').picker.help()<CR>";
    options = {
      desc = "Help tags";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fp";
    action = "<cmd>lua require('snacks').picker.projects()<CR>";
    options = {
      desc = "Projects";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fs";
    action = "<cmd>lua require('snacks').picker.grep()<CR>";
    options = {
      desc = "Live Grep";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fl";
    action = "<cmd>lua require('snacks').picker.lines()<CR>";
    options = {
      desc = "Lines in current file";
      silent = true;
    };
  }
]
