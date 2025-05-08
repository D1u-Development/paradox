
execute if entity @s[type=!player] run return fail

# Calculate gameTime duration
$data modify storage paradox:temp Duration set value $(PlayTime)
execute store result score @s paradox.sentence.gameTime run function paradox:internal/parse_duration
data remove storage paradox:temp Duration

# Calculate worldTime duration
$execute store result score @s paradox.sentence.worldTime run function paradox:internal/calculate_worldtime {Duration: $(WorldTime)}

# Call send_to_prison
function paradox:internal/send_to_prison