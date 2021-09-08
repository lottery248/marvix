# marvix
a major script that will be used for my own mahjong game in tabletop simulator.

All scripts are made in .lua due to the fact that TTS only supports lua as a type of script.

**Warning** This code isn't completed.

this code is primarily intended for tabletop simulator. if you use this code, you must convert the scripts like from 
```lua 
what1.getAllObjects()
```
to
```lua
what1.test()
```

The script will mainly cover buttons for scoring and to detect cards.

Checklist (current):
1. complete the meld sorter.
2. complete configuration.
3. sampling.
4. rework the code completely to use object-oriented programming instead.

https://steamcommunity.com/sharedfiles/filedetails/?id=2151704999

what does the files do?

1. overview: mostly about the initialisation, copies the default values from all the files below with the changes by configuration.
2. detector: detecting the cards within the concealed or exposed.
3. scoreset: the default score reference.
4. configuration: a fully-functional UI to let you configure the game rule.
5. sorting: sorts the cards after detector, and returns the hand value.
