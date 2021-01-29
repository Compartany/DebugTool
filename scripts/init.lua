local mod = {
    id = "DebugTool",
    name = "DebugTool",
    version = "0.1",
    requirements = {},
    modApiVersion = "2.5.4",
    author = "Compartany"
}

function mod:init()
    self.debug = require(self.scriptPath .. "debug")
    self.abbr = require(self.scriptPath .. "abbr")
    self.replace = require(self.scriptPath .. "replace")
    self.mods = require(self.scriptPath .. "mods")
end

function mod:load(options, version)
    self.debug:Load()
    self.abbr:Load()
    self.replace:Load()
    self.mods:Load()
end

return mod
