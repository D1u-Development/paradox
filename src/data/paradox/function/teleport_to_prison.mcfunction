
execute unless score #isTeleportationReady paradox.misc matches 1 run function paradox:message/teleport_to_prison_error
execute unless score #isTeleportationReady paradox.misc matches 1 run return fail

function paradox:internal/teleport_to_prison