-- this area is for me to study the lua scripting.

local randomTable = {'00', '01', '02', '03', '04', '05', '06'}

function checkSeq(table)
local pos = 0
if #table ~= 3 and #table ~= 4 then error("invalid") end

for gx in pairs(table) do
if gx == 1 then goto case1 else goto case2 end
::case1::
 for i in pairs(randomTable) do
  if table[gx] == randomTable[i] then
  print (table[gx])
  pos = i
  goto case2
  end
 end

::case2::
  if table[gx + 1] ~= randomTable[gx + pos] then break
  else print (table[gx + 1])
  end
 end

end



checkSeq({'00', '01', '02'})
