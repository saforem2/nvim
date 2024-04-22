return {
    "lukas-reineke/headlines.nvim",
    enabled = true,
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config = function()
        vim.cmd [[highlight Quote guifg=#0099EC]]
        -- vim.cmd [[highlight Dash guibg=#58DB01]]
        vim.cmd [[highlight Dash guifg=#58DB01 gui=bold]]
        require("headlines").setup({
            markdown = {
                -- query = vim.treesitter.parse_query({
                --     "markdown",
                --     [[
                --         (atx_heading [
                --             (atx_h1_marker)
                --             (atx_h2_marker)
                --             (atx_h3_marker)
                --             (atx_h4_marker)
                --             (atx_h5_marker)
                --             (atx_h6_marker)
                --         ] @headline)
                --
                --         (thematic_break) @dash
                --
                --         (fenced_code_block) @codeblock
                --
                --         (block_quote_marker) @quote
                --         (block_quote (paragraph (inline (block_continuation) @quote)))
                --         (block_quote (paragraph (block_continuation) @quote))
                --         (block_quote (block_continuation) @quote)
                --     ]]
                -- }),
                headline_highlights = { "Headline1", "Headline2" },
                bullet_highlights = {
                    "@text.title.1.marker.markdown",
                    "@text.title.2.marker.markdown",
                    "@text.title.3.marker.markdown",
                    "@text.title.4.marker.markdown",
                    "@text.title.5.marker.markdown",
                    "@text.title.6.marker.markdown",
                },
                bullets = { "◉", "○", "✸", "✿" },
                codeblock_highlight = "CodeBlock",
                dash_highlight = "Dash",
                dash_string = "-",
                quote_highlight = "Quote",
                quote_string = "┃",
                fat_headlines = true,
                fat_headline_upper_string = "▃",
                fat_headline_lower_string = "🬂",
            },
            -- quarto = {
            --     query = vim.treesitter.parse_query(
            --         "markdown",
            --         [[
            --             (atx_heading [
            --                 (atx_h1_marker)
            --                 (atx_h2_marker)
            --                 (atx_h3_marker)
            --                 (atx_h4_marker)
            --                 (atx_h5_marker)
            --                 (atx_h6_marker)
            --             ] @headline)
            --
            --             (thematic_break) @dash
            --
            --             (fenced_code_block) @codeblock
            --
            --             (block_quote_marker) @quote
            --             (block_quote (paragraph (inline (block_continuation) @quote)))
            --             (block_quote (paragraph (block_continuation) @quote))
            --             (block_quote (block_continuation) @quote)
            --         ]]
            --     ),
            --     headline_highlights = { "Headline1", "Headline2" },
            --     bullet_highlights = {
            --         "@text.title.1.marker.markdown",
            --         "@text.title.2.marker.markdown",
            --         "@text.title.3.marker.markdown",
            --         "@text.title.4.marker.markdown",
            --         "@text.title.5.marker.markdown",
            --         "@text.title.6.marker.markdown",
            --     },
            --     bullets = { "◉", "○", "✸", "✿" },
            --     codeblock_highlight = "CodeBlock",
            --     dash_highlight = "Dash",
            --     dash_string = "-",
            --     quote_highlight = "Quote",
            --     quote_string = "┃",
            --     fat_headlines = true,
            --     fat_headline_upper_string = "▃",
            --     fat_headline_lower_string = "🬂",
            -- },
        })
    end
}
        --     quarto = {
        --         query = vim.treesitter.parse_query(
        --             "markdown",
        --             [[
        --                 (atx_heading [
        --                     (atx_h1_marker)
        --                     (atx_h2_marker)
        --                     (atx_h3_marker)
        --                     (atx_h4_marker)
        --                     (atx_h5_marker)
        --                     (atx_h6_marker)
        --                 ] @headline)
        --
        --                 (thematic_break) @dash
        --
        --                 (fenced_code_block) @codeblock
        --
        --                 (block_quote_marker) @quote
        --                 (block_quote (paragraph (inline (block_continuation) @quote)))
        --                 (block_quote (paragraph (block_continuation) @quote))
        --                 (block_quote (block_continuation) @quote)
        --             ]]
        --         ),
        --         headline_highlights = { "Headline1", "Headline2", "Headline3" },
        --         bullet_highlights = {
        --             "@text.title.1.marker.markdown",
        --             "@text.title.2.marker.markdown",
        --             "@text.title.3.marker.markdown",
        --             "@text.title.4.marker.markdown",
        --             "@text.title.5.marker.markdown",
        --             "@text.title.6.marker.markdown",
        --         },
        --         treesitter_language = "markdown",
        --         bullets = { "◉", "○", "✸", "✿" },
        --         codeblock_highlight = "CodeBlock",
        --         dash_highlight = "Dash",
        --         dash_string = "-",
        --         quote_highlight = "Quote",
        --         quote_string = "┃",
        --         fat_headlines = true,
        --         fat_headline_upper_string = "▃",
        --         fat_headline_lower_string = "🬂",
        --     },
        --     markdown = {
        --         query = vim.treesitter.parse_query(
        --             "markdown",
        --             [[
        --                 (atx_heading [
        --                     (atx_h1_marker)
        --                     (atx_h2_marker)
        --                     (atx_h3_marker)
        --                     (atx_h4_marker)
        --                     (atx_h5_marker)
        --                     (atx_h6_marker)
        --                 ] @headline)
        --
        --                 (thematic_break) @dash
        --
        --                 (fenced_code_block) @codeblock
        --
        --                 (block_quote_marker) @quote
        --                 (block_quote (paragraph (inline (block_continuation) @quote)))
        --                 (block_quote (paragraph (block_continuation) @quote))
        --                 (block_quote (block_continuation) @quote)
        --             ]]
        --         ),
        --         headline_highlights = { "Headline1", "Headline2", "Headline3" },
        --         bullet_highlights = {
        --             "@text.title.1.marker.markdown",
        --             "@text.title.2.marker.markdown",
        --             "@text.title.3.marker.markdown",
        --             "@text.title.4.marker.markdown",
        --             "@text.title.5.marker.markdown",
        --             "@text.title.6.marker.markdown",
        --         },
        --         bullets = { "◉", "○", "✸", "✿" },
        --         codeblock_highlight = "CodeBlock",
        --         dash_highlight = "Dash",
        --         dash_string = "-",
        --         quote_highlight = "Quote",
        --         quote_string = "┃",
        --         fat_headlines = true,
        --         fat_headline_upper_string = "▃",
        --         fat_headline_lower_string = "🬂",
        --     },
        --     -- qmd = {
        --     --     query = vim.treesitter.parse_query(
        --     --         "markdown",
        --     --         [[
        --     --             (thematic_break) @dash
        --     --
        --     --             (fenced_code_block) @codeblock
        --     --
        --     --             (block_quote_marker) @quote
        --     --             (block_quote (paragraph (inline (block_continuation) @quote)))
        --     --             (block_quote (paragraph (block_continuation) @quote))
        --     --             (block_quote (block_continuation) @quote)
        --     --         ]]
        --     --     ),
        --     --     -- headline_highlights = { "Headline1", "Headline2", "Headline3" },
        --     --     headline_highlights = { "Headline" },
        --     --     bullet_highlights = {
        --     --         "@text.title.1.marker.markdown",
        --     --         "@text.title.2.marker.markdown",
        --     --         "@text.title.3.marker.markdown",
        --     --         "@text.title.4.marker.markdown",
        --     --         "@text.title.5.marker.markdown",
        --     --         "@text.title.6.marker.markdown",
        --     --     },
        --     --     bullets = { "◉", "○", "✸", "✿" },
        --     --     codeblock_highlight = "CodeBlock",
        --     --     dash_highlight = "Dash",
        --     --     dash_string = "-",
        --     --     quote_highlight = "Quote",
        --     --     quote_string = "┃",
        --     --     fat_headlines = true,
        --     --     fat_headline_upper_string = "▃",
        --     --     fat_headline_lower_string = "🬂",
        --     -- },
        -- })
--     end,
-- }