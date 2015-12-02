
-- local n = assert(io.read("*number"), "invalid input")
-- print(n)

function foo(n)
   if n == 1 then
      return n
   else
      error({code=121})
   end
end

local status, err = pcall(foo, 11)

if status then
   print(err)
else
   print(err.code)
end
