
execute if score #worldSpawnInitialized paradox.misc matches 1 run return 0

scoreboard players set #shouldFindWorldSpawn paradox.misc 0
execute unless score #worldspawn paradox.originalX matches -2147483648..2147483647 run scoreboard players set #shouldFindWorldSpawn paradox.misc 1
execute unless score #worldspawn paradox.originalY matches -2147483648..2147483647 run scoreboard players set #shouldFindWorldSpawn paradox.misc 1
execute unless score #worldspawn paradox.originalZ matches -2147483648..2147483647 run scoreboard players set #shouldFindWorldSpawn paradox.misc 1
execute unless data storage paradox:paradox WorldSpawn run scoreboard players set #shouldFindWorldSpawn paradox.misc 1

# Commands are by default run at the world spawn
execute if score #shouldFindWorldSpawn paradox.misc matches 1 align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run function paradox:internal/initialize/find_world_spawn

scoreboard players reset #shouldFindWorldSpawn paradox.misc

# Schedule finding prison spawn if it hasn't already been set
execute unless score #prisonSpawnInitialized paradox.misc matches 1 run schedule function paradox:internal/initialize/try_init_prison_spawn 1t
