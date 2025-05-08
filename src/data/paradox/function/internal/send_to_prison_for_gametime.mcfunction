
execute if entity @s[type=!player] run return fail

# Calculate duration
$data modify storage paradox:temp Duration set value $(Duration)
execute store result score @s paradox.sentence.gameTime run function paradox:internal/parse_duration
data remove storage paradox:temp Duration

# Call send_to_prison
function paradox:internal/send_to_prison