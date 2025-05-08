
# Calculate duration
$data modify storage paradox:temp Duration set value $(Duration)
execute store result score #paradox.return paradox.misc run function paradox:internal/parse_duration
data remove storage paradox:temp Duration

# Add current world time to duration
scoreboard players operation #paradox.return paradox.misc += #worldTime paradox.sentence.worldTime

return run scoreboard players get #paradox.return paradox.misc
