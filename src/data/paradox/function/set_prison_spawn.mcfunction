
execute as @s at @s unless predicate paradox:in_prison run function paradox:message/set_prison_spawn_error
execute as @s at @s unless predicate paradox:in_prison run return fail

function paradox:internal/set_prison_spawn

function paradox:message/set_prison_spawn_success

return 1
