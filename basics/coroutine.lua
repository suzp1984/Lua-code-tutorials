co = coroutine.create(function(a, b)
      while true do
         coroutine.yield(a+b, a-b)
      end
end)

print(coroutine.status(co))
print(coroutine.resume(co, 20, 10))
print(coroutine.resume(co, 10, 10))
print(coroutine.resume(co, 20, 1))
print(coroutine.status(co))

