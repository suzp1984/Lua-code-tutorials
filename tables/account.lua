Account = {balance = 0}

function Account:new(o)
   o = o or {}
   setmetatable(o, self)
   self.__index = self
   return o
end

function Account:deposit(v)
   self.balance = self.balance + v
end

function Account:withdraw(v)
   self.balance = self.balance - v
end

a = Account:new{balance = 0}
a:deposit(100)

a:withdraw(100)

Account.withdraw(a, 10)
