local _sector = nil
function SetSector(n)
    _sector = n
end

local _GetSector = GetSector
function GetSector()
    if _sector then
        return _sector
    else
        return _GetSector()
    end
end

local Replace = {}

function Replace:Load()
    -- nothing to do
end

return Replace