
# Don't repeat the function if we're already in the middle of finding prison spawn
execute if score #locatingPrisonSpawn paradox.misc matches 1 run return fail

# We can't do worldspawn-based prison spawn if we don't know worldspawn
execute unless score #worldSpawnInitialized paradox.misc matches 1 run return fail
execute if score #locatingWorldSpawn paradox.misc matches 1 run return fail

# Flag that we're currently looking for a valid paradox spawn
scoreboard players set #locatingPrisonSpawn paradox.misc 1

# Use the marker to find a valid spot
execute in france:hell positioned 100 90 700 summon marker run function paradox:internal/initialize/find_prison_spawn/marker

# Cleanup scoreboard
scoreboard players reset #locatingPrisonSpawn paradox.misc

