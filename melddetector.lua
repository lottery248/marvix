-- detecting cards' numbers and attempt to sort.
-- get relevant cards' names.

local colourList = {"a", "b", "c", "d"} -- four colours, respectively red, yellow, green, blue.
local numberList = {'00', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17'} -- 17 is reserved for WL.


-- insert codes to sort the cards in the concealed hand, after the concealed hand returns the list of cards. except for handset 17, always check the pair.
-- remake this code to connect the object below.
function sortConcealedHands(objectTarget)
 for i, obj in ipairs(concealedHandZone.getObjects()) do
    local cardCache = {}
    local cardSepr = {}
    cardCache = obj[i].getName()
    for g in (cardCache.." "):gmatch("(.-)".." ") do
      table.insert(cardSepr, g)
    end
    table.insert(concealedHand, {cardSepr[1], cardSepr[2]})
 end
  table.sort(concealedHand)
  objectTarget.concealedHand = concealedHand
end 

-- remake this function here.

function sendMeldInfo(codes)
local colours = 0
local isSequence = false
local isTriplet = false
local isQuad = false
local sortedMeldCount = 0
local case0 = "invalid meld"
local colourCache = {0, 0, 0, 0}
local bridgeCache = {}

-- check how many cards inside this meld
sortedMeldCount = #codes
print ("meld card:", sortedMeldCount)
if (not (sortedMeldCount == 3 or sortedMeldCount == 4)) then return case0 end

-- check the colours
for i in pairs(codes) do
  for g in pairs(colourList) do
    if (codes[i][1] == colourList[g]) then 
      colourCache[g] = colourCache[g] + 1
    end
  end
end

for i in pairs(colourCache) do
  if (colourCache[i] >=1) then
    colours = colours + 1
  end
end
print ("different colour counts:",colours)

-- checks triplets
for i = 1, sortedMeldCount -1, 1 do
  if (not (codes[i][2] == codes[i+1][2])) then
    isTriplet = false break
  end
  isTriplet = true
  end
  print("triplet indicator:",isTriplet)
  
-- checks bridge, only triggers when it's not a triplet nor is it with mix.
if (not (isTriplet == true or not (colours == 1))) then
local startpoint = 0
local seqChain = 0
  for i = 1, #numberList, 1 do
    for g = 1, #codes, 1 do
     if codes[g][2] == numberList[i] then
       if (bridgeCache[i] == 1) then return print("invalid") 
      else
       bridgeCache[i] = 1
       startpoint = i
      end
    end
  end
  end  
for i = startpoint, startpoint - #codes, -1 do
  if (bridgeCache[i] == 1) then
    seqChain = seqChain + 1 else break end
  end
print("sequence indicator", seqChain)
else print("sequence indicator:", isSequence) end

--check mixes
if (isTriplet == true and colours > 1) then
 if (sortedMeldCount == 4 and (colours == 2 or colours == 4)) then
    print ("quadmix") end
 elseif (sortedMeldCount == 3 and colours == 3) then
    print ("mix") 
  else print ("not mix") end


end
