hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 15,
        border_size = 2,
        col = {
            active_border   = { colors = {"rgba(ebdbb2ee)", "rgba(d65d0eee)"}, angle = 60 },
            inactive_border = "rgba(272727aa)",
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding = 3,
        active_opacity   = 1.0,
        inactive_opacity = 0.75,
        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 1,
        },
    },

    animations = {
        enabled = true,
    },
})

hl.config({
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
