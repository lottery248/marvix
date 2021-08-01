local scoreList13 = {
  repBr2 = {2, 1, 2, 1},
  repBr3 = {12, 4, 16, 6}, -- the first number of this array is for simple scoring system or levelled for second at [10], [16] for the third and fourth respectively. if there is only two numbers, then it's combined.
  repBr4 = {32, 10, 64, 12},
  qrepBr3 = {16, 6, 32, 10},
  qrepBr4 = {256, 18, 512, 36},
  strBr2 = {4, 2, 4, 2},
  strBr3 = {16, 6, 16, 6},
  strBr4 = {32, 12, 128, 16},
  allBr = {8, 4, 8, 4},
  allBr1 = {12, 6, 12, 6}, -- all bridges that looks for at least 3 cards to win.
  allBr4c = {64, 12, 64, 12},
  trpl = {16, 4, 16, 4},
  trplMix = {24, 8, 24, 8},
  trplPure = {24, 8, 24, 8},
  trplOdd = {24, 8, 24, 8}, -- all odd or even. this type is not exclusive to all triplets.
  trplSta = {32, 12, 32, 12}, -- staired triplets
  trpl4Quad = {256, 36, 256, 36}, -- four quads
  trplDia = {128, 18, 128, 18}, -- Diadora
  trplDio = {256, 36, 512, 36}, -- Diadoro
  trplUv = {1024, 18*3, 2048, 18*3}, -- the ultimate vision
  contrpl = {32, 12, 32, 12}, -- four concealed triplets which isn't a self-drawn
  contrplA = {128, 18, 128, 18}, -- same as above, but self-drawn
  contrplB = {256, 36, 256, 36}, -- singlewait four concealed triplets
  colourA = {4, 2, 4, 2}, -- one less
  colourB = {12, 4, 12, 4}, -- half flush
  colourC = {32, 8, 32, 8}, -- full flush
  colourD = {256, 18, 128, 18}, -- nine gates
  colourE = {512, 36, 256, 18}, -- pure nine gates
  colourF = {512, 36, 256, 18}, -- ten gates
  sevP = {24, 8, 24, 8}, -- seven pairs
  sevPst = {48, 12, 48, 12}, -- staired seven pairs
  straight = {12, 4, 128, 18},
  straight1 = {24, 8, 256, 36}, -- straight based on all four colours
  straight2 = {32, 8, 512, 54}, -- straight in the same colour
  msc3Quad = {32, 8, 32, 8}, -- three quads
  mscCont = {24, 6, 24 6}, -- three concealed triplets
  mscHL = {32, 8, 32, 8}, -- all highs or lows
  mscP = {8, 4, 8, 4}, -- triplets and pairs
  mscIden = {16, 6, 32, 8}, -- three identical triplets
  mscIdenA = {32, 8, 64, 12}, -- three identical triplets, but that part must be fully in mixes or pures
}

local typeOverlap = {
-- a list of types that cannot be awarded in conjunction with major types. ie. there are types that always follow by (a) smaller type(s), which the latter is/are removed.
  qrepBr4 = {repBr4, allBr4c, allBr, xFull},
  strBr4 = {allBr, xFull},
  allBr4c = {allBr, xFull},
  contrpl = {xNon, trpl},
  contrplA = {xNon, trpl, tsumo},
  contrplB = {xNon, trpl},
  
}
