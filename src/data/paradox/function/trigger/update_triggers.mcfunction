
execute unless score @s paradox.isVisiting matches -2147483648..2147483647 unless predicate paradox:in_prison run scoreboard players set @s paradox.isVisiting 0
execute unless score @s paradox.isVisiting matches -2147483648..2147483647 if predicate paradox:in_prison run scoreboard players set @s paradox.isVisiting 1
execute unless score @s paradox.isPrisoner matches -2147483648..2147483647 run scoreboard players set @s paradox.isPrisoner 0

execute unless score @s paradox.isPrisoner matches 1 if score @s paradox.isVisiting matches 1 run scoreboard players enable @s paradox.endVisit
execute unless score @s paradox.isPrisoner matches 1 if score @s paradox.isVisiting matches 0 run scoreboard players enable @s paradox.beginVisit

execute if score @s paradox.isPrisoner matches 1 run scoreboard players reset @s paradox.beginVisit
execute if score @s paradox.isPrisoner matches 1 run scoreboard players reset @s paradox.endVisit

scoreboard players enable @a paradox.info
