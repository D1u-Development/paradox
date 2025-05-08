
execute unless entity @s[type=player] run return fail

# Try to restore from storage if possible
execute as @s if function paradox:internal/original_location/old_locations_exist run \
	return 1

# Check if we have data stored in paradox.originalX/Y/Z
scoreboard players set #paradox.return paradox.misc 1
execute unless score @s paradox.originalX matches -2147483648..2147483647 run scoreboard players set #paradox.return paradox.misc 0
execute unless score @s paradox.originalY matches -2147483648..2147483647 run scoreboard players set #paradox.return paradox.misc 0
execute unless score @s paradox.originalZ matches -2147483648..2147483647 run scoreboard players set #paradox.return paradox.misc 0
execute unless score @s paradox.originalDimension matches -1..1 run scoreboard players set #paradox.return paradox.misc 0

execute if score #paradox.return paradox.misc matches 1 run return 1

return fail