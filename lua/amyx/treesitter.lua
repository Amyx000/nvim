local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  ensure_installed = {"tsx",
  "javascript",
  "python",
  "toml",
  "fish",
  "php",
  "json",
  "yaml",
  "css",
  "html",
  "lua"},
  sync_install = false, 
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {  }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  autotag={
    enable = true
  },
  indent = { enable = true, disable = { "yaml" } },
}
