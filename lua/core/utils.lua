function _G.req(module)
    local ok, result = pcall(require, module)
    if not ok then
        vim.notify(string.format('Error requiring: %s', module), vim.log.levels.ERROR)
        return ok
    end
return result
end
