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
local handset17 = false -- if played in handset 17, this should be a true boolean. it will tell the system to avoid detecting the pair.

-- define players' hands.

function triggerCalculation()
  hands = {} -- clear the hand list before starting to detect a new set of cards.
  concealedHand = {}
  exposedHand = {}
  sortedConcealed = {}
  sortConcealedHands()
end


-- insert codes to sort the cards in the concealed hand, after the concealed hand returns the list of cards. except for handset 17, always check the pair.
function sortConcealedHands()
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
  groupConcealed(concealedHand)
end 

-- after the preliminary sorting, group the melds together. multiple possible outputs needed because mixes are a thing. unless mixes in such situation rather offer a better score, pure prevails. as a result, check by ascending order first. concealed hands must be in 3 cards except for concealed quad.
-- there are triple, bridge, and mix. 
function groupConcealed(cards)
  
end

-- insert codes to check the exposed meld zone. use points and tags. unlike the concealed hand, sort by number and verify if they are valid melds.
function checkExposedMelds()

  return
end

-- return the hand after it is sorted.
function combineHands()

end

-- verify if all the melds are valid, otherwise check if they are either special hands or invalid hands. put error if it is neither.
function verifyHand()
  
end
