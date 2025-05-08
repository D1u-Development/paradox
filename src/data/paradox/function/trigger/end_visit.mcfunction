
scoreboard players reset @s paradox.beginVisit
scoreboard players reset @s paradox.endVisit

execute as @s unless function paradox:internal/original_location/can_teleport_to_original_location unless score #isTeleportationReady paradox.misc matches 1 run function paradox:message/end_visit_error
execute as @s unless function paradox:internal/original_location/can_teleport_to_original_location unless score #isTeleportationReady paradox.misc matches 1 run return fail

scoreboard players set @s paradox.isVisiting 0

function paradox:internal/original_location/teleport_to_original_location
