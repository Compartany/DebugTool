dem = mod_loader.mods.EnvManipulators
drs = mod_loader.mods.RndSquad
dai = mod_loader.mods.IntelligentAI

local Mods = {
    em = dem,
    rs = drs,
    ai = dai
}

function Mods:Load()
    -- nothing to do
end

return Mods