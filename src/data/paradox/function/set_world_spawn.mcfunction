
execute as @s at @s if predicate paradox:in_prison run function paradox:message/set_world_spawn_error
execute as @s at @s if predicate paradox:in_prison run return fail

function paradox:internal/set_world_spawn

function paradox:message/set_world_spawn_success

return 1
