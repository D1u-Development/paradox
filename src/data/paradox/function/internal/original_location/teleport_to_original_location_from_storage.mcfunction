
# Only players have their original locations stored
execute unless entity @s[type=player] run return fail

# Get old position from storage
$data modify storage paradox:temp OriginalLocation set from storage paradox:paradox OriginalLocations[{UUID:$(UUID)}]

# Mark for teleport
scoreboard players set @s paradox.isTeleporting 1

# Teleport to old position
function paradox:internal/teleport_to_location/teleport_to_location with storage paradox:temp OriginalLocation.Location

# Unmark for teleport
scoreboard players set @s paradox.isTeleporting 0

# Clean up temp storage
data remove storage paradox:temp OriginalLocation