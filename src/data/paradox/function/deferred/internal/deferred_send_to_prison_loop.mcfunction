
$execute store result score #entity-count paradox.misc if entity $(Player)

$execute unless score #entity-count paradox.misc matches 0 run \
	data remove storage paradox:paradox Deferred.SendToPrison[{Player: "$(Player)"}]

$execute if score #entity-count paradox.misc matches 1 run \
	execute as $(Player) run function paradox:internal/send_to_prison

data remove storage paradox:temp DeferredList[-1]
execute if data storage paradox:temp DeferredList[0] run function paradox:deferred/internal/deferred_send_to_prison_loop with storage paradox:temp DeferredList[-1]

