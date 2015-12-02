local a = {}
for i=1, 100 do
   a[i] = 0
end

local list = nil

for i=1, 10 do
   list = {next = list, value = i}
end

local l = list
while l do
   print(l.value)
   l = l.next
end
