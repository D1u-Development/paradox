
# Only players have their original locations stored
execute unless entity @s[type=player,predicate=!paradox:in_prison] run return fail

# Store in scoreboard
execute store result score @s paradox.originalX run data get entity @s Pos[0]
execute store result score @s paradox.originalY run data get entity @s Pos[1]
execute store result score @s paradox.originalZ run data get entity @s Pos[2]
scoreboard players reset @s paradox.originalDimension
execute as @s at @s if predicate paradox:in_overworld run scoreboard players set @s paradox.originalDimension 0
execute as @s at @s if predicate paradox:in_the_nether run scoreboard players set @s paradox.originalDimension -1
execute as @s at @s if predicate paradox:in_the_end run scoreboard players set @s paradox.originalDimension 1

# Store UUID and Pos in storage as well
data modify storage paradox:temp OriginalLocation set value {Location: {}}
data modify storage paradox:temp OriginalLocation.UUID set from entity @s UUID
data modify storage paradox:temp OriginalLocation.Location.Pos set from entity @s Pos
data modify storage paradox:temp OriginalLocation.Location.Dimension set from entity @s Dimension

# Remove old positions
function paradox:internal/original_location/remove_old_locations_by_uuid with storage paradox:temp OriginalLocation

# Store properly
data modify storage paradox:paradox OriginalLocations append from storage paradox:temp OriginalLocation

# Clean up temp storage
data remove storage paradox:temp OriginalLocation
