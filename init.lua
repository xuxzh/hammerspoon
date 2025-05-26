-- init.lua
require("modules.hotkeys")

-- 自动重载配置
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()