
# Number of attempts to find a valid spawn
scoreboard players set #worldspawnSurfaceAttempts paradox.misc 10

function paradox:internal/initialize/find_prison_spawn/snap_marker_to_surface_loop

# If we failed after 10 attempts, default to 100 90 700
execute as @s at @s unless predicate paradox:valid_natural_prison_spawn run tp @s 100 90 700

scoreboard players reset #worldspawnSurfaceAttempts paradox.misc
