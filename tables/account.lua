Account = {balance = 0}

function Account:withdraw(v)
   self.balance = self.balance - v
end

a = Account
a:withdraw(100)

Account.withdraw(a, 10)
