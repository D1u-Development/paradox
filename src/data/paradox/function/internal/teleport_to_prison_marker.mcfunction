
data modify entity @s Pos set from storage paradox:paradox PrisonSpawn.Pos

execute in france:hell positioned as @s run tp @s ~ ~ ~ 0 0

execute in france:hell positioned as @s as @a[scores={paradox.isTeleporting=1}] run tp @s ~ ~ ~

kill @s
