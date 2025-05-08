
# Only players have their original locations stored
execute unless entity @s[type=player] run return fail

# Try to restore from storage if possible
execute as @s if function paradox:internal/original_location/old_locations_exist run \
	return run function paradox:internal/original_location/teleport_to_original_location_from_storage with entity @s

# Check if we have data stored in paradox.originalX/Y/Z
scoreboard players set #hasScoreboardPreviousPosition paradox.misc 1
execute unless score @s paradox.originalX matches -2147483648..2147483647 run scoreboard players set #hasScoreboardPreviousPosition paradox.misc 0
execute unless score @s paradox.originalY matches -2147483648..2147483647 run scoreboard players set #hasScoreboardPreviousPosition paradox.misc 0
execute unless score @s paradox.originalZ matches -2147483648..2147483647 run scoreboard players set #hasScoreboardPreviousPosition paradox.misc 0
execute unless score @s paradox.originalDimension matches -1..1 run scoreboard players set #hasScoreboardPreviousPosition paradox.misc 0

execute if score #hasScoreboardPreviousPosition paradox.misc matches 1 run function paradox:internal/original_location/teleport_to_original_location_from_scoreboard
execute unless score #hasScoreboardPreviousPosition paradox.misc matches 1 run function paradox:internal/teleport_to_world_spawn

scoreboard players reset #hasScoreboardPreviousPosition paradox.misc

