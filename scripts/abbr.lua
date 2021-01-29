function de()
    return dm().LiveEnvironment
end

function deloc()
    return dm().LiveEnvironment.Locations
end

function dl(obj)
    if type(obj) == "table" then
        return Debug:PrintV(obj)
    else
        return LOG(obj)
    end
end

function dm()
    return GetCurrentMission()
end

function dp(xy)
    local x = math.floor(xy / 10)
    local y = xy % 10
    return Point(x, y)
end

-- dp00: Point(0, 0)
-- ...
-- dp77: Point(7, 7)
for x = 0, 7 do
    for y = 0, 7 do
        _G["dp" .. x .. y] = Point(x, y)
    end
end

function dpawn(point)
    if type(point) == "number" then
        return Board:GetPawn(dp(point))
    else
        return Board:GetPawn(point)
    end
end

local Abbr = {
    e = de,
    l = dl,
    m = dm,
    p = dp,
    pawn = dpawn
}

function Abbr:Load()
    -- nothinng to do
end

return Abbr