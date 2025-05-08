
execute as @s at @s unless predicate paradox:in_prison if score @s paradox.isVisiting matches 1 run function paradox:internal/teleport_to_prison
execute as @s at @s if predicate paradox:in_prison if score @s paradox.isVisiting matches 0 run function paradox:internal/original_location/teleport_to_original_location
