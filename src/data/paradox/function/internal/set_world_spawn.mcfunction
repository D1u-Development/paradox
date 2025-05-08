
# Store location in scoreboard
execute as @s store result score #worldspawn paradox.originalX run data get entity @s Pos[0]
execute as @s store result score #worldspawn paradox.originalY run data get entity @s Pos[1]
execute as @s store result score #worldspawn paradox.originalZ run data get entity @s Pos[2]

# Wipe previous WorldSpawn location
data modify storage paradox:paradox WorldSpawn set value {}

# If this is a player, save current dimension to WorldSpawn location; otherwise, save as overworld
execute if entity @s[type=minecraft:player] run data modify storage paradox:paradox WorldSpawn.Dimension set from entity @s Dimension
execute unless entity @s[type=minecraft:player] run data modify storage paradox:paradox WorldSpawn.Dimension set value "minecraft:overworld"

# Save Pos to WorldSpawn location
data modify storage paradox:paradox WorldSpawn.Pos set from entity @s Pos

# Set worldSpawnInitialized to true
scoreboard players set #worldSpawnInitialized paradox.misc 1
