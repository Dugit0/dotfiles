return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- Отключаем встроенные пресеты, чтобы избежать конфликтов
      preset = "none",

      -- Настраиваем поведение клавиш вручную под классический Super-tab
      ["<Tab>"] = {
        function(cmp)
          if cmp.is_visible() then
            return cmp.select_next()
          elseif cmp.snippet_active() then
            return cmp.snippet_forward()
          else
            return cmp.select_next()
          end
        end,
        "snippet_forward",
        "fallback",
      },
      ["<S-Tab>"] = {
        function(cmp)
          if cmp.is_visible() then
            return cmp.select_prev()
          elseif cmp.snippet_active() then
            return cmp.snippet_backward()
          else
            return cmp.select_prev()
          end
        end,
        "snippet_backward",
        "fallback",
      },

      -- Опционально: другие привычные клавиши управления меню
      ["<CR>"] = { "accept", "fallback" },
      ["<Esc>"] = { "hide", "fallback" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    },
  },
}
