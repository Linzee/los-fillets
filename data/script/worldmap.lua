
-- branch_addNode(parent, codename, datafile, x, y, hidden=false, poster="")

print("#map init")

branch_addNode("", "interlos", "script/interlos/init.lua", 320, 121)


-- -----------------------------------------------------------------
file_include("script/worlddesc.lua")
file_include("script/worldfame.lua")
