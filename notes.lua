-- this area is for me to study the lua scripting.

local randomTable = {'00', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16'}
local colourTable = {'a', 'b', 'c', 'd'}
local handset = '13' -- a sample for being handset 13, meaning a legal hand at your turn is 14.

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

-- under this area, try to make a code that will group the cards by valid meld types, and put the remainder as the pair.
-- if the hand has exposed melds including the concealed quad, then the cards needed in the concealed hand needs to be deducted by 3 per so created.
-- on handset 17, do not let the function below to search the pair because it's non-existent.

function groupMelds(cardSample, pairFinder)
local groupedList = {}
local cardSample1 = nil
cardSample1 = cardSample -- a cache that will have cards removed as the cards are being sorted.
-- attempt to find a pair before grouping. if the pairFinder number is corresponding to a nil of cardSample, then return error "unable to calculate".
if handset == 17 then goto case1
 elseif cardSample[pairFinder][1] == nil then error "unable to calculate"
 else goto case1 end
 
 ::case1:: 
-- attempt to find a pair. continue until a pair is found.
 for i in pairs(cardSample) do
  if cardSample[i] == cardSample[i+1] then goto case2 end
 end
 
 ::case2::
-- assuming a pair is found, check how many cards left first. from case2, ensure to use cardSample1 otherwise will break the code.
 if #cardSample1 % 3 ~= 0 then error "unable to calculate at checking remaining cards."
  else goto case3 end

 ::case3:: -- define the melds first.
 
 
 verifyHands(groupedList, cardSample, pairFinder)
end

function verifyHands(cardSampleAfter, originalHand, pairNext)
-- a function to verify if the all the melds qualify as valid melds. if not, throw back to groupMelds with originalHand. 
-- if it passes, combine with exposed melds and advance calculating the score.
end


function checkMeld(groups)
  if #groups == 3 then goto case0
  elseif #groups == 4 goto case1
  else error "not a correct meld!" end

::case0:: -- when this group is a 3-card meld.
  
  
end

groupMelds({{'a', '12'}, {'a', '12'}, {'a', '12'}, {'a', '13'}, {'a', '14'}, {'a', '14'},  {'a', '15'}, {'a', '15'}, {'a', '16'}, {'b', '00'}, {'b', '00'}, {'b', '01'}, {'b', '02'}, {'b', '03'}}, 1) -- a complete hand with a triplet of a12, a(13 14 15), a(14 15 16), b(01 02 03) and a pair of b00. expected to have an output that puts the pair of b00 at the end.
groupMelds({{'a', '12'}, {'a', '12'}, {'a', '12'}, {'a', '13'}, {'a', '14'}, {'a', '14'},  {'a', '15'}, {'a', '15'}, {'a', '16'}, {'b', '01'}, {'b', '02'}, {'b', '02'}, {'b', '02'}, {'b', '03'}}, 1) -- same as above, but the pair has to be b02.

-- pure melds always go first.
