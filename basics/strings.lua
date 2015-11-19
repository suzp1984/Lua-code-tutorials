function string.starts(String, Start)
   return string.sub(String, 1, string.len(Start)) == Start
end

function string.ends(String, End)
   return End == '' or string.sub(String, -string.len(End)) == End
end


function string.trim(String)
   return String:gsub("^%s+", ""):gsub("%s+$", "")
   --return String:gsub("$s+", "")
end

function string.firstUpcase(String)
   return String:gsub("^%l", string.upper)
end

print("--------")
print(string.starts("abcde", "ab"))
print(string.trim("  xxxxx   "))
print(string.firstUpcase("abc"))

-- split a string as space
local example = "am example of string"
for i in string.gmatch(example, "%S+") do
   print(i)
end

