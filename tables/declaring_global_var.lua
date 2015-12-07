
function declare(name, initval)
   rawset(_G, name, initval or false)
end


setmetatable(_G, {
                __newindex = function(_, n)
                   error("attempt to write to undeclared variable "..n, 2)
                end,
                __index = function(_, n)
                   error("attempt to read undeclared "..n, 2)
                end,
})


