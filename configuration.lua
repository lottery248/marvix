local modules = {} -- modules that will be used. note that not all modules are automated like [4tp.] which requires manual execution.
local rulesetList = {} -- consider as default if left blank.
local handset = {} -- 13/16/17. how many cards in the concealed hand without any exposed melds or concealed quad whenever it's not your turn.
local typeChanges = {} -- in case players want to modify the score reference, typeChanges will have a type and corresponding score in array. for example, repBr4[1] = 200 will change the simple score used in cardset 10 to 200.

function currentConfiguration:new (completedLists, modulesCode, handset, typeChanges)
  completedLists = completedLists or {}
  setmetatable(completedLists, self)
  self.__index = self
  self.modules = modulesCode
  self.handset = handset
  self.typeChanges = typeChanges
  return completedLists
end
