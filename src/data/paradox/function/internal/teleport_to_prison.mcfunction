
execute unless score #isTeleportationReady paradox.misc matches 1 run return fail

scoreboard players set @s paradox.isTeleporting 1

execute in france:hell summon minecraft:marker run function paradox:internal/teleport_to_prison_marker

scoreboard players set @s paradox.isTeleporting 0
