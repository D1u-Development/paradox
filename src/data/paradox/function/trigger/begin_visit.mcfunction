
scoreboard players reset @s paradox.beginVisit
scoreboard players reset @s paradox.endVisit

function paradox:internal/original_location/store_original_location

execute unless score #isTeleportationReady paradox.misc matches 1 run function paradox:message/begin_visit_error
execute unless score #isTeleportationReady paradox.misc matches 1 run return fail

scoreboard players set @s paradox.isVisiting 1

function paradox:teleport_to_prison