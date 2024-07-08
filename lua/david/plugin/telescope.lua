local telescope=require("telescope")
local actions=require("telescope.actions")
telescope.setup{
    defaults={
       initial_mode="normal"
    },
    pickers={
        buffers={
            sort_lastused=true,
            mappings={
                i={
                    ["<c-b>"]=actions.delete_buffer,
                },
                n={
                    ["<c-b>"]=actions.delete_buffer,
                },
            }
        }

    }
}
telescope.load_extension("projects")
