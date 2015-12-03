local t = {}
for line in io.lines() do
   table.insert(t, line)
end

s = table.concat(t, '\n') .. '\n'
