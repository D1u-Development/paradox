
# Teleport to overworld worldspawn coords in paradox
execute store result entity @s Pos[0] double 1 run scoreboard players get #worldspawn paradox.originalX
execute store result entity @s Pos[2] double 1 run scoreboard players get #worldspawn paradox.originalZ

# Use spreadplayers to snap to surface
spreadplayers ~ ~ 1000 250 under 250 false @s

# Reduce number of attempts
scoreboard players remove #worldspawnSurfaceAttempts paradox.misc 1

# If we still are invalid, try again
execute as @s at @s unless predicate paradox:valid_natural_prison_spawn if score #worldspawnSurfaceAttempts paradox.misc matches 1.. run function paradox:internal/initialize/find_prison_spawn/snap_marker_to_surface_loop