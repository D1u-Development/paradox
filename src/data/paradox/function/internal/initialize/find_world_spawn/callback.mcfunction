
# Don't run unless we've already called the setup function
execute unless score #locatingWorldSpawn paradox.misc matches 1 run return fail

# Reset spawnRadius gamerule
execute store result storage paradox:temp Arguments.spawnRadius int 1 run scoreboard players get #initialSpawnRadius paradox.misc
function paradox:internal/initialize/find_world_spawn/callback_gamerule with storage paradox:temp Arguments
data remove storage paradox:temp Arguments

# Set world spawn location
execute as @s at @s run function paradox:internal/set_world_spawn

# Remove end portal we used for the armor stand test
execute in minecraft:the_end run setblock 256 128 256 air

# Reset the forceloading in the end
execute in minecraft:the_end unless score #endForceLoaded paradox.misc matches 1 run forceload remove 256 256

# Cleanup scoreboard
scoreboard players reset #initialSpawnRadius paradox.misc
scoreboard players reset #endForceLoaded paradox.misc
scoreboard players reset #locatingWorldSpawn paradox.misc

# Schedule finding prison spawn if it hasn't already been set
execute unless score #prisonSpawnInitialized paradox.misc matches 1 run schedule function paradox:internal/initialize/try_init_prison_spawn 1t

# Kill the armour stand
kill @s
