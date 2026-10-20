-- Main Monitor
hl.monitor({
    output   = "DP-4",
    mode     = "2560x1440@210",
    position = "0x0",
    scale    = "1",
})
-- Vertical Monitor
hl.monitor({
    output    = "DP-6",
    mode      = "2560x1440@180",
    position  = "-1440x-810",
    transform = 1,
    scale     = "1",
})
-- Top Monitor
hl.monitor({
    output    = "DP-5",
    mode      = "1920x1080@180",
    position  = "0x-1080",
    transform = 2,
    scale     = "1",
})
