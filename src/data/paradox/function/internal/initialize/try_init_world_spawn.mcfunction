
execute if score #worldSpawnInitialized paradox.misc matches 1 run return 0

scoreboard players set #shouldFindWorldSpawn paradox.misc 0
execute unless score #worldspawn paradox.originalX matches -2147483648..2147483647 run scoreboard players set #shouldFindWorldSpawn paradox.misc 1
execute unless score #worldspawn paradox.originalY matches -2147483648..2147483647 run scoreboard players set #shouldFindWorldSpawn paradox.misc 1
execute unless score #worldspawn paradox.originalZ matches -2147483648..2147483647 run scoreboard players set #shouldFindWorldSpawn paradox.misc 1
execute unless data storage paradox:paradox WorldSpawn run scoreboard players set #shouldFindWorldSpawn paradox.misc 1

execute if score #shouldFindWorldSpawn paradox.misc matches 1 run function paradox:internal/initialize/find_world_spawn/setup

scoreboard players reset #shouldFindWorldSpawn paradox.misc
