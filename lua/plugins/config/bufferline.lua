require('bufferline').setup({
    options = {
        buffer_close_icon = '',
        close_command = 'Bdelete %d',
        close_icon = '',
        indicator_icon = ' ',
        left_trunc_marker = '',
        modified_icon = '●',
        offsets = { { filetype = 'NvimTree', text = 'EXPLORER', text_align = 'center' } },
        right_mouse_command = 'Bdelete! %d',
        right_trunc_marker = '',
        show_close_icon = false,
        show_tab_indicators = true,
    },
})
