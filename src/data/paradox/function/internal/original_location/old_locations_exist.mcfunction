
execute unless entity @s[type=player] run return fail

return run function paradox:internal/original_location/old_locations_exist_by_uuid with entity @s
