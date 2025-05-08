
# Only players have their original locations stored
execute unless entity @s[type=player] run return fail

data modify storage paradox:temp OriginalLocation set value {Pos: [0.0d, 0.0d, 0.0d], Dimension: "minecraft:overworld"}

# Set dimension
execute if score @s paradox.originalDimension matches 0 run data modify storage paradox:temp OriginalLocation.Dimension set value "minecraft:overworld"
execute if score @s paradox.originalDimension matches -1 run data modify storage paradox:temp OriginalLocation.Dimension set value "minecraft:the_nether"
execute if score @s paradox.originalDimension matches 1 run data modify storage paradox:temp OriginalLocation.Dimension set value "minecraft:the_end"

# Set Pos
scoreboard players operation #scoreboardPos paradox.originalX = @s paradox.originalX
scoreboard players operation #scoreboardPos paradox.originalY = @s paradox.originalY
scoreboard players operation #scoreboardPos paradox.originalZ = @s paradox.originalZ
# Multiply by 2
scoreboard players operation #scoreboardPos paradox.originalX += #scoreboardPos paradox.originalX
scoreboard players operation #scoreboardPos paradox.originalY += #scoreboardPos paradox.originalY
scoreboard players operation #scoreboardPos paradox.originalZ += #scoreboardPos paradox.originalZ
# Add 1
scoreboard players add #scoreboardPos paradox.originalX 1
scoreboard players add #scoreboardPos paradox.originalY 1
scoreboard players add #scoreboardPos paradox.originalZ 1
# Set Pos
execute store result storage paradox:temp OriginalLocation.Pos[0] double 0.5 run scoreboard players get #scoreboardPos paradox.originalX
execute store result storage paradox:temp OriginalLocation.Pos[1] double 0.5 run scoreboard players get #scoreboardPos paradox.originalY
execute store result storage paradox:temp OriginalLocation.Pos[2] double 0.5 run scoreboard players get #scoreboardPos paradox.originalZ

# Mark for teleport
scoreboard players set @s paradox.isTeleporting 1

# Teleport to old position
function paradox:internal/teleport_to_location/teleport_to_location with storage paradox:temp OriginalLocation

# Unmark for teleport
scoreboard players set @s paradox.isTeleporting 0

# Clean up temp storage
data remove storage paradox:temp OriginalLocation

# Clean up scoreboard
scoreboard players reset #scoreboardPos paradox.originalX
scoreboard players reset #scoreboardPos paradox.originalY
scoreboard players reset #scoreboardPos paradox.originalZ