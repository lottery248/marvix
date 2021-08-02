-- detecting cards' numbers and attempt to sort.
-- get relevant cards' names.

local colourList = {"a", "b", "c", "d"} -- four colours, respectively red, yellow, green, blue.
local numberList = {'00', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17'} -- 17 is reserved for WL.
local concealedHand = {} -- which is a zone the respective player has.

-- insert codes for detecting the cards below.
local hands = {}
local concealedHand = {}
local exposedHand = {}

-- define players' hands.

function triggerCalculation()
  hands = {} -- clear the hand list before starting to detect a new set of cards.
  concealedHand = {}
  exposedHand = {}
  sortConcealedHands()
end


-- insert codes to sort the cards in the concealed hand, after the concealed hand returns the list of cards. except for handset 17, always check the pair.
function sortConcealedHands()
 for i, obj in ipairs(concealedHandZone.getObjects()) do
    local cardCache = {}
    cardCache = obj[i].getName()
    for g in cardCache:gmatch
    
 end
    
end

-- insert codes to check the exposed meld zone. use points and tags.
function checkExposedMelds()

  return
end

-- return the hand after it is sorted.
function combineHands()

-- verify if all the melds are valid, otherwise check if they are either special hands or invalid hands.
function verifyHand()
