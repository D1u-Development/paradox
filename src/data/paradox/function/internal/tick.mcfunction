
scoreboard players reset #paradox.return

scoreboard players add #worldTime paradox.sentence.worldTime 1

function paradox:internal/update_teleportation_ready

function paradox:internal/initialize/find_world_spawn/tick

function paradox:internal/sentence/update_worldtime

execute as @a run function paradox:internal/player_tick

function paradox:deferred/tick