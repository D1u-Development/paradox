
scoreboard players set #isTeleportationReady.temp paradox.misc 1

execute unless score #worldSpawnInitialized paradox.misc matches 1 run scoreboard players set #isTeleportationReady.temp paradox.misc 0
execute unless score #prisonSpawnInitialized paradox.misc matches 1 run scoreboard players set #isTeleportationReady.temp paradox.misc 0

scoreboard players operation #isTeleportationReady paradox.misc = #isTeleportationReady.temp paradox.misc

scoreboard players reset #isTeleportationReady.temp paradox.misc