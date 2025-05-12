
# Don't do the worldspawn-based prison spawn if we don't know worldspawn
execute unless score #worldSpawnInitialized paradox.misc matches 1 run return fail

# Don't execute if we've already found prison spawn
execute if score #prisonSpawnInitialized paradox.misc matches 1 run return fail

scoreboard players set #shouldFindPrisonSpawn paradox.misc 0
execute unless score #spawn paradox.originalX matches -2147483648..2147483647 run scoreboard players set #shouldFindPrisonSpawn paradox.misc 1
execute unless score #spawn paradox.originalY matches -2147483648..2147483647 run scoreboard players set #shouldFindPrisonSpawn paradox.misc 1
execute unless score #spawn paradox.originalZ matches -2147483648..2147483647 run scoreboard players set #shouldFindPrisonSpawn paradox.misc 1
execute unless data storage paradox:paradox PrisonSpawn run scoreboard players set #shouldFindPrisonSpawn paradox.misc 1

execute if score #shouldFindPrisonSpawn paradox.misc matches 1 run function paradox:internal/initialize/find_prison_spawn/setup

scoreboard players reset #shouldFindPrisonSpawn paradox.misc