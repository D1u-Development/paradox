
# Create scoreboard objectives

scoreboard objectives add paradox.misc dummy

scoreboard objectives add paradox.originalX dummy
scoreboard objectives add paradox.originalY dummy
scoreboard objectives add paradox.originalZ dummy
scoreboard objectives add paradox.originalDimension dummy

scoreboard objectives add paradox.isPrisoner dummy
scoreboard objectives add paradox.isVisiting dummy

scoreboard objectives add paradox.isTeleporting dummy

# Login objective

scoreboard objectives add paradox.gamesQuit minecraft.custom:minecraft.leave_game

# Time objectives

scoreboard objectives add paradox.sentence.gameTime dummy
scoreboard objectives add paradox.sentence.worldTime dummy

# Create trigger objectives

scoreboard objectives add paradox.beginVisit trigger
scoreboard objectives add paradox.endVisit trigger
scoreboard objectives add paradox.info trigger

# Initialize the world spawn if necessary
function paradox:internal/initialize/try_init_world_spawn

# Initialize OriginalLocations array
execute unless data storage paradox:paradox OriginalLocations run data modify storage paradox:paradox OriginalLocations set value []

# Initialize Deferred arrays
execute unless data storage paradox:paradox Deferred.SendToPrison run data modify storage paradox:paradox Deferred.SendToPrison set value []
execute unless data storage paradox:paradox Deferred.ReleaseFromPrison run data modify storage paradox:paradox Deferred.ReleaseFromPrison set value []
execute unless data storage paradox:paradox Deferred.SetGameTime run data modify storage paradox:paradox Deferred.SetGameTime set value []
execute unless data storage paradox:paradox Deferred.SetWorldTime run data modify storage paradox:paradox Deferred.SetWorldTime set value []

# Initialize sentence scoreboard
execute unless score #worldTime paradox.sentence.worldTime matches -2147483648..2147483647 run scoreboard players set #worldTime paradox.sentence.worldTime 0

# Initialize constants
scoreboard players set #CONST.SECONDS_TO_TICKS paradox.misc 20
scoreboard players set #CONST.MINUTES_TO_TICKS paradox.misc 1200
scoreboard players set #CONST.HOURS_TO_TICKS paradox.misc 72000
scoreboard players set #CONST.DAYS_TO_TICKS paradox.misc 1728000

scoreboard players set #CONST.MINUTES_TO_SECONDS paradox.misc 60
scoreboard players set #CONST.HOURS_TO_MINUTES paradox.misc 60
scoreboard players set #CONST.DAYS_TO_HOURS paradox.misc 24

scoreboard players set #inf paradox.sentence.gameTime -2147483648
scoreboard players set #inf paradox.sentence.worldTime -2147483648