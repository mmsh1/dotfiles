return {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_linters = {
            lua = {'lua_language_server'}
        }
    end
}
