local cmp = require("cmp")

cmp.setup({
  mapping = {
    -- TAB: Accept the suggestion and close the menu
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.confirm({ select = true }) -- Accept suggestion
        cmp.close() -- Close the menu after selection
      else
        fallback() -- If no menu, fallback to normal TAB behavior
      end
    end,

    -- SHIFT+TAB: Navigate backwards in completion
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,

    -- DISABLE ENTER: Prevents accidental confirmation
    ["<CR>"] = function(fallback)
      fallback() -- Just pass Enter normally, don't accept completion
    end,

    -- ✅ Fix: Ensure Up/Down arrows correctly navigate suggestions
    ["<Down>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item()
      else
        cmp.complete()
      end
    end, { "i", "s" }),

    ["<Up>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      else
        cmp.complete()
      end
    end, { "i", "s" }),

    -- ESC and CTRL+E to close menu manually
    ["<Esc>"] = cmp.mapping.abort(),
    ["<C-e>"] = cmp.mapping.abort(),
  },
})
