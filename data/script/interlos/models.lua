
createRoom(40, 32, "images/"..codename.."/prvni-p.png")
setRoomWaves(4, 12, 5)

room = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXX.................XXXXXXXXXXXXXXXXXX
XXXXX...................XXXXXXXXXXXXXXXX
XXXX......................XXXXXXXXXXXXXX
XXX..........................XXXXXXXXXXX
XXX.............................XXXXXXXX
XXX...............................XXXXXX
XXX................................XXXXX
XXXXXXXXXXXXXXXXXXXX...XXXX.........XXXX
XXXXXXXXXXXXXXXXXX.....XXX..........XXXX
XXXXXXXXXXXX............XX..........XXXX
XXX.....................XX.............X
XXX....................................X
XX.....................................X
XX.....................................X
X......................................X
XX..................................XXXX
XX..................................XXXX
XXX.......XXXXX....................XXXXX
XXX..........XXX...................XXXXX
XXX.........XXXX........................
XXX.....................................
XXX...................XXXXXX....XXXXXX.X
XXX..........X.......XXXXXXX.....XXXXXXX
XX...........X..................XXXXXXXX
XX............................XXXXXXXXXX
XX....................XX.....XXXXXXXXXXX
XX....XXXXXXXXXXX..XXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXX.XXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXX.XXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(room, "images/"..codename.."/prvni-w.png")

small = addModel("fish_small", 20, 17,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 20, 15,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

loos = addModel("item_light", 29, 13,
[[
.XX.XX.
XXX.XXX
XXXXXXX
XXX.XXX
.XXXXX.
..XXXX.
.XXXX..
.XX....
]])
addItemAnim(loos, "images/"..codename.."/los.png")
-- extsize=7; first="los1.BMP"

one = addModel("item_light", 6, 24,
[[
X
]])
addItemAnim(one, "images/"..codename.."/one.png")

two = addModel("item_light", 33, 20,
[[
X
X
]])
addItemAnim(two, "images/"..codename.."/two.png")

three1 = addModel("item_light", 7, 5,
[[
X
X
X
]])
addItemAnim(three1, "images/"..codename.."/three.png")

three2 = addModel("item_light", 17, 25,
[[
X
X
X
]])
addItemAnim(three2, "images/"..codename.."/three.png")

es = addModel("item_light", 8, 4,
[[
X...
XXXX
XXXX
...X
]])
addItemAnim(es, "images/"..codename.."/es.png")

el = addModel("item_light", 14, 21,
[[
XX..
.X..
XXXX
...X
]])
addItemAnim(el, "images/"..codename.."/el.png")

roh = addModel("item_light", 4, 17,
[[
....XXX
..XXXX.
.XX.XXX
XX.....
]])
addItemAnim(roh, "images/"..codename.."/roh.png")

bar = addModel("item_light", 18, 22,
[[
X...........X
X...........X
XXXXXXXXXXXXX
]])
addItemAnim(bar, "images/"..codename.."/bar.png")
