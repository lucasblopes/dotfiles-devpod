return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle" },
        ft = { "markdown" },

        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    {
        "mfussenegger/nvim-lint",
        opts = {
            linters = {
                ["markdownlint-cli2"] = {
                    args = { "--config", vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml" },
                },
            },
        },
    },
}
