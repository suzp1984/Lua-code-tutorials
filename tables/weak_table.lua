
a = {}
b = {}
setmetatable(a, b)
b.__mode = "k"
key = {}
a[key] = 1
key = {}
a[key] = 2
a[{}] = 2
collectgarbage()

for k, v in pairs(a) do
   print(k, v)
end
