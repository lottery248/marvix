-- make a list of attributes when the hand is detected.
-- remember, make it an object so that it won't end up complicated codes.


function completeHands:new (list, concealedHand, exposedHand, handset)
 list = list or {}
 setmetatable(list, self)
 self.handset = handset
 if exposedHand == {} then
    self.hasExposure = true
    self.exposedMeld = exposedHand
 else self.hasExposure = false end
 self.concealedHand = concealedHand
  
end
