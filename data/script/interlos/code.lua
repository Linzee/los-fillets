
-- -----------------------------------------------------------------
-- Init
-- -----------------------------------------------------------------
local function prog_init()
    initModels()
    sound_playMusic("music/rybky04.ogg")
    local pokus = getRestartCount()


    -- -------------------------------------------------------------
    local function prog_init_room()

        local pom1, pom2, pomb1, pomb2 = 0, 0, false, false
        local boring = 0

        room.uzreklnavod = 0
        room.qcount = 0
        if pokus == 1 then
            room.qnavod1 = 110
            room.qnavod2 = 500
        else
            room.qnavod1 = 400
            room.qnavod2 = 2000
        end
        room.kecyoceli = random(100) + 80
        room.malanepohne = 0
        room.malanemuze = 0
        room.tlustoch = 0
        room.restrt = 0

        return function()
            if small:getAction() == "rest" and big:getAction() == "rest" then
                boring = boring + 1
            else
                boring = 0
            end

            room.qcount = room.qcount + 1
            if room.qcount == 3 then
                addm(15 + random(5), "1st-m-cotobylo")
                addv(6, "1st-v-netusim")
                addv(random(10) + 10, "1st-v-ven")
                addm(3, "1st-m-pockej")
            end
            if no_dialog() and isReady(small) and isReady(big) then
                if room.qnavod1 > 0 and boring >= room.qnavod1 then
                    room.qnavod1 = -1
                    addm(5, "1st-m-proc")
                    planBusy(small, true, 3)
                    addm(5, "1st-m-hej")
                elseif game_getCycles() >= room.qnavod2 and room.qnavod2 ~= -1 then
                    room.qnavod1 = -1
                    planBusy(small, true, 3)
                    addm(5, "1st-m-hej")
                end
                if room.qnavod1 == -1 then
                    room.qnavod1 = 600
                    room.qnavod2 = -1
                    planBusy(big, true, 4)
                    addv(5, "1st-v-navod1")
                    planBusy(small, false, 3)
                    planBusy(big, false, 1)
                    planBusy(small, true, 100)
                    planBusy(big, true, 2)
                    addm(3, "1st-m-navod4")
                    addv(0, "1st-v-navod5")
                    addm(2, "1st-m-navod6")
                    planBusy(big, false, 3)
                    planBusy(small, false, 2)
                    addv(20, "1st-v-navod7")
                    addm(20, "1st-m-navod8")
                    if room.uzreklnavod == 0 then
                        room.uzreklnavod = 1
                        addv(35, "1st-v-davej")
                        addm(0, "1st-m-nechtoho")
                        addv(5, "1st-v-takdobre")
                    end
                end
                if room.kecyoceli == 0 then
                    room.kecyoceli = random(600) + 300
                else
                    room.kecyoceli = room.kecyoceli - 1
                end
                if big.X < 20 and room.tlustoch == 1 then
                    room.tlustoch = room.tlustoch + 1
                end
            end
        end
    end

    -- --------------------
    local update_table = {}
    local subinit
    subinit = prog_init_room()
    if subinit then
        table.insert(update_table, subinit)
    end
    return update_table
end
local update_table = prog_init()


-- -----------------------------------------------------------------
-- Update
-- -----------------------------------------------------------------
function prog_update()
    for key, subupdate in pairs(update_table) do
        subupdate()
    end
end
