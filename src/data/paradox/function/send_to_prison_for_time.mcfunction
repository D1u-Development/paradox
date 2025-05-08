$execute store result score #entity-count paradox.misc if entity $(Player)

execute if score #entity-count paradox.misc matches 2.. run \
	return run function paradox:message/selector_has_multiple_targets_error

$execute if score #entity-count paradox.misc matches 0 run \
	return run function paradox:deferred/maybe_defer_send_to_prison_for_time {Player: "$(Player)", PlayTime: $(PlayTime), WorldTime: $(WorldTime)}

$execute as $(Player) run function paradox:internal/send_to_prison_for_time {PlayTime: $(PlayTime), WorldTime: $(WorldTime)}