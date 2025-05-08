
$data modify entity @s Pos set value $(Pos)

$execute in $(Dimension) positioned as @s run tp @s ~ ~ ~ 0 0

$execute in $(Dimension) positioned as @s as @a[scores={paradox.isTeleporting=1}] run tp @s ~ ~ ~

kill @s


