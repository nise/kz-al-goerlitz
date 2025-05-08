function extract_myfigure_args(str)
    local base, scale = string.match(str, "\\myfigure%s*{([^}]*)}%b{}%b{}%b{}{%b{([^}]*)}}")
    if base then
      return base, scale
    end
    return nil
  end
  
  function RawInline(el)
    if el.format == "latex" and el.text:match("\\myfigure") then
      local base, scale = extract_myfigure_args(el.text)
      if base then
        local path = "images/" .. base .. ".png"
        return pandoc.Image({pandoc.Str("")}, path)
      end
    end
  end
  
  function RawBlock(el)
    return RawInline(el)
  end
  