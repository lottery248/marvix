-- make a list of attributes when the hand is detected.
-- remember, make it an object so that it won't end up complicated codes.
-- this code should be placed in global area.


function completeHands:new (list, concealedHand, exposedHand, handset)
 list = list or {}
 setmetatable(list, self)
 self.handset = handset
 if exposedHand == {} then
    self.hasExposure = false
 else self.hasExposure = true 
      self.exposedMeld = exposedHand end
 self.concealedHand = concealedHand
  
end

-- add detector zones.

