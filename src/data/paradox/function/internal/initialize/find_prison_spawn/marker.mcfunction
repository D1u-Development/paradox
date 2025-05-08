
# Teleport to overworld worldspawn coords in paradox
execute store result entity @s Pos[0] double 1 run scoreboard players get #worldspawn paradox.originalX
execute store result entity @s Pos[2] double 1 run scoreboard players get #worldspawn paradox.originalZ

# Use spreadplayers to snap to surface
execute as @s at @s run spreadplayers ~ ~ 1 1 under 250 false @s

# If this spawn is invalid, then look for nearby positions
execute as @s at @s unless predicate paradox:valid_natural_prison_spawn run function paradox:internal/initialize/find_prison_spawn/snap_marker_to_surface

# Set prison spawn location
function paradox:internal/set_prison_spawn

# Kill the marker
kill @s