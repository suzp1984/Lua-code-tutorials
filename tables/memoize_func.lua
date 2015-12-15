local results = {}
setmetatable(results, {__mode = "v"})

function createRGB(r, g, b)
   local key = r .. "-" .. g .. "-" .. b
   if results[key] then
      return results[key]
   else
      local newcolor = {red = r, green = g, blue = b}
      results[key] = newcolor
      return newcolor
   end
end
