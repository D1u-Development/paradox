
# Store location in scoreboard
execute as @s store result score #spawn paradox.originalX run data get entity @s Pos[0]
execute as @s store result score #spawn paradox.originalY run data get entity @s Pos[1]
execute as @s store result score #spawn paradox.originalZ run data get entity @s Pos[2]

# Wipe previous PrisonSpawn location
data modify storage paradox:paradox PrisonSpawn set value {Dimension: "france:hell"}

# Save Pos to PrisonSpawn location
data modify storage paradox:paradox PrisonSpawn.Pos set from entity @s Pos

# Set prisonSpawnInitialized to true
scoreboard players set #prisonSpawnInitialized paradox.misc 1
