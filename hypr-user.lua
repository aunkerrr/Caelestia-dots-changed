-- ==========================================
-- VARIABLES
-- ==========================================
local terminal = "foot"

-- ==========================================
-- KEYBINDS
-- ==========================================
-- Terminal
hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))

-- Mouse actions
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- ==========================================
-- ENVIRONMENT VARIABLES
-- ==========================================
hl.env("LIBVA_DRIVER_NAME", "iHD")
hl.env("VDPAU_DRIVER", "va_gl")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("OZONE_PLATFORM", "wayland")

-- ==========================================
-- CORE CONFIGURATION (Rules, Input, Animations)
-- ==========================================
hl.config({
    windowrulev2 = {
        "workspace 1, class:^(discord)$",
          "workspace 1, initialClass:^(discord)$",

          -- Same for Vesktop just in case
          "workspace 1, class:^(vesktop)$",
          "workspace 1, initialClass:^(vesktop)$"
    },

    input = {
        kb_layout = "us,ru,it,ua",
        kb_options = "grp:alt_shift_toggle",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = true,
            scroll_factor = 1.5
        }
    },

    animations = {
        enabled = true,
        -- Custom Bezier curve for a snappy, responsive feel
        bezier ={
          "myBezier, 0.05, 0.9, 0.1, 1.05"
        },
        -- Window and workspace animations
        animation = {
            "windows, 1, 3, myBezier",
            "windowsOut, 1, 3, default, popin 80%",
            "border, 1, 5, default",
            "fade, 1, 3, default",
            "workspaces, 1, 2, myBezier, slide"
        }
    }
})
