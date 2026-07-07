-- ==========================================
-- MAIN VARIABLES
-- ==========================================
local mainMod = "SUPER"
local terminal = "foot"
local fileManager = "dolphin"


-- ==========================================
-- X11 SETTINGS (Environment Variables)
-- ==========================================
-- Flickering fix for Intellij Idea which blocks X11 usage
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")


-- ==========================================
-- WINDOW RULES
-- ==========================================
-- Windows rule to make experience in jetbrains products smoother
-- Turning off animations which can be spawned (shadows, etc...)
-- In Hyprland/Lua, multiple conditions are combined using a comma
-- Используем просто windowrule вместо windowrulev2
hl.config({
    windowrulev2 = {
        "noanim, class:^(jetbrains-.*)$, title:^(win.*)$",
          "noinitialfocus, class:^(jetbrains-.*)$, title:^(win.*)$"
    }
})

-- For small menus on different parts of the screen (deprecated)
-- (Currently empty, just like in your source file)
