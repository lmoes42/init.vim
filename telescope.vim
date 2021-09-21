nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
autocmd User TelescopePreviewerLoaded setlocal wrap
lua << EOF
require("telescope").setup {
  defaults = {
    file_previewer   = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer   = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    previewer        = true
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true,
      previewer = true,
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
          -- Right hand side can also be the name of the action as a string
          ["<c-d>"] = "delete_buffer",
        },
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    },
    find_files = {
    }
  },
  extensions = {
    -- Your extension config goes in here
            fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
  }
}

EOF
