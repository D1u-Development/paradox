
scoreboard players set #duration paradox.misc 0

# Test if it's been passed as an int
execute store success score #duration.temp paradox.misc store result score #duration paradox.misc run data get storage paradox:temp Duration 1
execute if score #duration.temp paradox.misc matches 1 run return run function paradox:internal/parse_duration_cleanup

# Ticks
execute if data storage paradox:temp Duration.Ticks run \
	execute store result score #duration.ticks paradox.misc run data get storage paradox:temp Duration.Ticks 1 
execute if data storage paradox:temp Duration.Ticks run \
	scoreboard players operation #duration paradox.misc += #duration.ticks paradox.misc

# Seconds
execute if data storage paradox:temp Duration.Seconds run \
	execute store result score #duration.seconds paradox.misc run data get storage paradox:temp Duration.Seconds 20
execute if data storage paradox:temp Duration.Seconds run \
	scoreboard players operation #duration paradox.misc += #duration.seconds paradox.misc

# Minutes
execute if data storage paradox:temp Duration.Minutes run \
	execute store result score #duration.minutes paradox.misc run data get storage paradox:temp Duration.Minutes 1200
execute if data storage paradox:temp Duration.Minutes run \
	scoreboard players operation #duration paradox.misc += #duration.minutes paradox.misc

# Hours
execute if data storage paradox:temp Duration.Hours run \
	execute store result score #duration.hours paradox.misc run data get storage paradox:temp Duration.Hours 72000
execute if data storage paradox:temp Duration.Hours run \
	scoreboard players operation #duration paradox.misc += #duration.hours paradox.misc

# Days
execute if data storage paradox:temp Duration.Days run \
	execute store result score #duration.days paradox.misc run data get storage paradox:temp Duration.Days 1728000
execute if data storage paradox:temp Duration.Days run \
	scoreboard players operation #duration paradox.misc += #duration.days paradox.misc

# Cleanup & Return
return run function paradox:internal/parse_duration_cleanup
