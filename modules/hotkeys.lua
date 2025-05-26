-- modules/hotkeys.lua
local module = {} -- 定义模块对象

-- 定义私有函数（不暴露给外部）
local function _launchTerminal()
  hs.application.launchOrFocus("Warp")
end

-- 定义公有函数（通过模块对象暴露）
function module.init()
	hs.alert.show("hotkeys init")
  -- 定义热键绑定
  -- 例如：将 Command + Shift + T 绑定到打开 Terminal 应用程序的热键
  -- 注意：在 macOS 中，Command 键通常被称为 Cmd 键，而 Shift 键通常被称为 Shift 键
  hs.hotkey.bind({"cmd", "shift"}, "T", _launchTerminal)
  -- 其他热键绑定...
end

module.init()

return module -- 返回模块供外部调用