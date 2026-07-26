return {
  "saghen/blink.cmp",
  opts = {
    -- Настройка автоматического выбора первого элемента
    completion = {
      list = {
        selection = {
          preselect = false, -- Отключаем "тихую" подсветку без фокуса
          auto_insert = true, -- Включаем автоматическую подстановку при фокусе
        },
      },
    },

    keymap = {
      preset = "none",
      ["<Tab>"] = {
        function(cmp)
          if cmp.is_visible() then
            -- Теперь select_next() на первом шаге выберет именно первый элемент
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

      ["<CR>"] = { "accept", "fallback" },
      ["<Esc>"] = { "hide", "fallback" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    },
  },
}
