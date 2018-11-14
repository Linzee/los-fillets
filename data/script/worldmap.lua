
-- branch_addNode(parent, codename, datafile, x, y, hidden=false, poster="")

branch_addNode("", "interlos", "script/interlos/init.lua", 320, 121)
branch_addNode("interlos", "interlos-heslo", "script/interlos-heslo/init.lua", 329, 153)

-- -----------------------------------------------------------------
file_include("script/worlddesc.lua")
file_include("script/worldfame.lua")
