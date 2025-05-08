
execute if entity @s[type=!player] run return fail

# Calculate worldtime
$execute store result score @s paradox.sentence.worldTime run function paradox:internal/calculate_worldtime {Duration: $(Duration)}

# Call send_to_prison
function paradox:internal/send_to_prison