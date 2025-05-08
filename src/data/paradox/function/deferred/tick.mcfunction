
execute store result score #time paradox.misc run time query gametime

scoreboard players operation #time paradox.misc %= #CONST.SECONDS_TO_TICKS paradox.misc

execute if score #time paradox.misc matches 0 run \
	function paradox:deferred/internal/check_deferred

scoreboard players reset #time paradox.misc