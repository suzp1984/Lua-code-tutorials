t = {} -- original table
local _t = t -- copy of original 
t = {} -- proxy table

local mt = {
   __index = function(t, k)
      print("*access to element " .. tostring(k))
      return _t[k] -- access the original table
   end,

   __newindex = function(t, k, v)
      print("*update of element " .. tostring(k) ..
               " to " .. tostring(v))
      _t[k] = v
   end
}

setmetatable(t, mt)

t[2] = 'hello'
print(t[2])

print("iparis t output: ")
for i, v in ipairs(t) do
   print(i, v)
end

print("pairs t output: ")
for k in pairs(t) do
   print(k)
end

print("iparis _t output: ")
for i, v in ipairs(_t) do
   print(i, v)
end

print("pairs _t output: ")
for k in pairs(_t) do
   print(k)
end
