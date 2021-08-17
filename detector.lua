-- detecting cards' numbers and attempt to sort.
-- get relevant cards' names.

local colourList = {"a", "b", "c", "d"} -- four colours, respectively red, yellow, green, blue.
local numberList = {'00', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17'} -- 17 is reserved for WL.
local concealedHand = {} -- which is a zone the respective player has.

-- insert codes for detecting the cards below.
local hands = {}
local concealedHand = {}
local exposedHand = {}
local sortedConcealed = {}
local handset = nil -- check which handset is set.

-- define players' hands.

function triggerCalculation()
  hands = {} -- clear the hand list before starting to detect a new set of cards.
  concealedHand = {}
  exposedHand = {}
  sortedConcealed = {}
  handset = -- must be either 13, 16 or 17 in the current. 
  sortConcealedHands()
end


-- insert codes to sort the cards in the concealed hand, after the concealed hand returns the list of cards. except for handset 17, always check the pair.
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


