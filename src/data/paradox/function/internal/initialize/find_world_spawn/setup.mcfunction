
# Don't repeat the function if we're already in the middle of finding world spawn
execute if score #locatingWorldSpawn paradox.misc matches 1 run return fail

# Flag that we're currently looking for the world spawn
scoreboard players set #locatingWorldSpawn paradox.misc 1

# Store value of spawnRadius gamerule
execute store result score #initialSpawnRadius paradox.misc run gamerule spawnRadius
gamerule spawnRadius 0

# Check whether or not we should remove the forceloading after we're done here
execute in minecraft:the_end store result score #endForceLoaded paradox.misc run forceload query 256 256

# Forceload a chunk in the end
execute in minecraft:the_end run forceload add 256 256

# Use an armor stand since markers can't go through portals
execute in minecraft:the_end run summon minecraft:armor_stand 256 128 256 {Tags: ["paradox.worldspawn-finder"], Invulnerable:1b, Invisible:1b}
execute in minecraft:the_end run setblock 256 128 256 minecraft:end_portal

return 1