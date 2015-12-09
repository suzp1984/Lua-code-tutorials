-- loop up for 'k' in list of tables 'plist'
require 'account'


function createClass(list)
   local c = {}

   local function search(k)
      for i=1, table.getn(list) do
         local v = list[i][k]
         if v then return v end
      end
   end

   -- class will search for each method in the list of its
   setmetatable(c, {__index = function(t, k)
                       local v = search(k)
                       t[k] = v
                       return v
   end})

   -- prepare c to be the metatable of its instances
   c.__index = c


   -- define a new constructor for this new class
   function c:new (o)
      o = o or {}
      setmetatable(o, c)
      return o
   end

   return c
end

Named = {}
function Named:getname()
   return self.name
end

function Named:setname(n)
   self.name = n
end

NamedAccount = createClass{Account, Named}

account = NamedAccount:new{name = "Paul"}
print(account:getname())
