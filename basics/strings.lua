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


-- Compatibility: Lua-5.1
function split(str, pat)
   local t = {}  -- NOTE: use {n = 0} in Lua-5.0
   local fpat = "(.-)" .. pat
   local last_end = 1
   local s, e, cap = str:find(fpat, 1)
   while s do
      if s ~= 1 or cap ~= "" then
	 table.insert(t,cap)
      end
      last_end = e+1
      s, e, cap = str:find(fpat, last_end)
   end
   if last_end <= #str then
      cap = str:sub(last_end)
      table.insert(t, cap)
   end
   return t
end

function split_path(str)
   return split(str,'[\\/]+')
end

parts = split_path("/usr/local/bin")

for key, value in pairs(parts) do
   print(value)
end

print("-------------")
session = "5d147a51-ea65-453f-b918-dee08c74c65e.hqvm-l127"
print(session:gsub("%..+$", ""))
