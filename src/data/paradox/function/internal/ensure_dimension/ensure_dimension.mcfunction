
execute as @s at @s if score @s paradox.isPrisoner matches 1 run function paradox:internal/ensure_dimension/ensure_prisoner_dimension
execute as @s at @s unless score @s paradox.isPrisoner matches 1 run function paradox:internal/ensure_dimension/ensure_visitor_dimension