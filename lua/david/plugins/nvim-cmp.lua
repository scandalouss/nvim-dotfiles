return{
    "hrsh7th/nvim-cmp",
    event="InsertEnter",
    dependencies={
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        {
            "L3MON4D3/LuaSnip",
            version="v2.*",
            build="make install_jsregexp",
        },
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim",
    },
    config=function()
        local cmp=require("cmp")
        local luasnip=require("luasnip")
        local lspkind=require("lspkind")

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion={
                completeopt="menu,menuone,preview,noselect",
            },
            mapping=cmp.mapping.preset.insert({
                ["<C-k>"]=cmp.mapping.select_prev_item(),
                ["<C-j>"]=cmp.mapping.select_next_item(),
                ["<C-b>"]=cmp.mapping.scroll_docs(-4),
                ["<C-f>"]=cmp.mapping.scroll_docs(4),
                ["<C-Space>"]=cmp.mapping.complete(),
                ["<C-e>"]=cmp.mapping.abort(),
                ["<CR>"]=cmp.mapping.confirm({select=false}),
            }),
            sources=cmp.config.sources({
                {name="nvim_lsp"},
                {name="luansnip"},
                {name="buffer"},
                {name="path"},
            }),
            formatting={
                expandable_indicator=true,
                format=lspkind.cmp_format({
                    maxwidth=50,
                    ellipsis_char="...",
                }),
                fields={},
            },
        })
    end
}