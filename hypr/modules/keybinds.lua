local programs = require("modules/programs")

-- Bind mainMod
hl.config({ input = { kb_options = "caps:super" } }) -- bind CAPS to SUPER
local mainMod = "SUPER" -- Is technically CAPS. We set it in kb_options

-- Direct program binds
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(programs.terminal)) -- Terminal
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(programs.menu)) -- Menu
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(programs.browser))  -- Browser
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.fileManager)) -- File Manager
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(programs.ide)) -- IDE

-- Generic binds
hl.bind(mainMod .. " + C", hl.dsp.window.close()) -- Close window
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")) -- Restart hyprland
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true }) -- Move windows
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true }) -- Resize windows

-- Workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i})) -- Focus to a specific workspace
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i })) -- Move the focused window to a specific workspace
end
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" })) -- Scroll backward through workspaces
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" })) -- Scroll forward through workspaces

-- Audio controls
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true }) -- Next
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }) -- Pause
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }) -- Play
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true }) -- Previous
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 0.02+"), { locked = true }) -- Vol up
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.02-"), { locked = true }) -- Vol down

-- Screenshots
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -zm window --clipboard-only"))
hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -zm region --clipboard-only"))
