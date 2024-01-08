local setup, nvimtree = pcall(require,"nvim-tree")
if not setup then
  return
end

-- recommended setting to add from documentation
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#FFF01F ]])


vim.g.loaded = 1
vim.g.loaded_netrwplugin = 1

nvimtree.setup({
  renderer = {
      icons = {
        glyphs = {
          folder = {
             arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
         },
        },
      },
    },
    -- disable window_picker for
    -- explorer to work well with
    -- window splits
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    -- 	git = {
    -- 		ignore = false,
    -- 	},
    })

