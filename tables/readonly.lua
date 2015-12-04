function readOnly(t)
   local proxy = {}
   local mt = {
      __index = t,
      __newindex = function(t, k, v)
         error("attempt to update a read-only table", 2)
      end
   }

   setmetatable(proxy, mt)
   return proxy
end

days = readOnly{"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}
print(days[1])
-- assert(days[2] = "R", "error")

if pcall(function () days[2] = "R" end) then
   print("OK")
else
   print("catch error")
end

