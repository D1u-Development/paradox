
execute unless score #isTeleportationReady paradox.misc matches 1 run return fail

scoreboard players set @s paradox.isTeleporting 1

function paradox:internal/teleport_to_location/teleport_to_location with storage paradox:paradox WorldSpawn

scoreboard players set @s paradox.isTeleporting 0
