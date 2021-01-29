Debug = {}

function Debug:Run(fn, delay)
    delay = delay or 0
    local e = SkillEffect()
    if delay > 0 then
        e:AddDelay(delay)
    end
    fn(e)
    Board:AddEffect(e)
end

function Debug:Damage(point, damage, fn, delay)
    local d = SpaceDamage(point, damage)
    if fn then
        fn(d)
    end
    self:Run(function(e)
        e:AddDamage(d)
    end, delay)
end

function Debug:PrintK(t, wrap)
    wrap = wrap or 5
    local s = ""
    local cnt = 0
    for k, v in pairs(t) do
        s = s .. k .. ", "
        cnt = cnt + 1
        if cnt % wrap == 0 then
            s = s .. "\n"
        end
    end
    LOG(s)
end

function Debug:PrintV(t, wrap)
    wrap = wrap or 2
    local s = ""
    local cnt = 0
    for k, v in pairs(t) do
        if type(v) == "userdata" then
            if v.GetLuaString then
                s = s .. k .. ": " .. v:GetLuaString() .. " || "
            elseif v.GetString then
                s = s .. k .. ": " .. v:GetString() .. " || "
            else
                s = s .. k .. ": [userdata] || "
            end
        else
            s = s .. k .. ": " .. tostring(v) .. " || "
        end
        cnt = cnt + 1
        if cnt % wrap == 0 then
            s = s .. "\n"
        end
    end
    if s == "" then
        LOG("Empty")
    else
        LOG(s)
    end
end

function Debug:Load()
    -- nothing to do
end

return Debug
