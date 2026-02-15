local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local actions  = require "telescope.actions"
local action_state = require "telescope.actions.state"
local conf = require("telescope.config").values
local cmds = require("super.commands")

local super = function(opts)
    opts = opts or {}
    pickers.new(opts, {
        prompt_title = "search for a neovim command",
        finder = finders.new_table {
          results = cmds,
          entry_maker = function(entry)
            return {
              value = entry,
              display = ":" .. entry.command .. " - " .. entry.description,
              ordinal = entry.description
            }
          end,
        },
        sorter = conf.generic_sorter(opts),
        attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function()
                actions.close(prompt_bufnr)
                local selection = action_state.get_selected_entry()
                vim.cmd(":" .. selection.value.command)
            end)
            return true
        end
    }):find()
end

return { super = super }
