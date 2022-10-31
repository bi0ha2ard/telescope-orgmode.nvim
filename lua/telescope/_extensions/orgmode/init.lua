local orgmode = require('orgmode.api')

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local entry_display = require("telescope.pickers.entry_display")
local conf = require("telescope.config").values

-- TODO: include headline.level and headline.is_archived() as part of the
-- public orgmode api
-- TODO: add highlight groups
-- TODO: add action to refile/capture

return require("telescope").register_extension {
    exports = {
        search_headings = require("telescope._extensions.orgmode.search_headings"),
        refile_heading = require("telescope._extensions.orgmode.refile_heading")
    },
}
