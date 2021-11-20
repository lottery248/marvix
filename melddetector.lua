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

function sendMeldInfo()
local sortedMeld = {}
local colours = 0
local isSequence = false
local isTriplet = false
local case0 = "there are invalid exposed melds."

 for i, obj in ipairs(meldZone.getObjects()) do
   local cardCache = {}
   local cardSepr = {}
   cardCache = obj[i].getName()
   for g in (cardCache.." "):gmatch("(.-)".." ") do
      table.insert(cardSepr, g)
    end
  table.insert(sortedMeld, {cardSepr[1], cardSepr[2]})
  end
 table.sort(sortedMeld)
 end

local sortedMeldCount = 0
for _ in pairs(sortedMeld) do sortedMeldCount = sortedMeldCount + 1 end
if (not (sortedMeldCount == 3 or sortedMeldCount == 4)) then error case0 end

-- first, check if the meld is in the same colour.
for i in pairs(sortedMeld) do
  if (not sortedMeld[i][1] == sortedMeld[i+1][1]) then colours = colours + 1
end
