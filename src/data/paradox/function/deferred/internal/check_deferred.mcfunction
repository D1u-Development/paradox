
execute if data storage paradox:paradox Deferred.SendToPrison[0] run \
	function paradox:deferred/internal/deferred_send_to_prison
	
execute if data storage paradox:paradox Deferred.ReleaseFromPrison[0] run \
	function paradox:deferred/internal/deferred_release_from_prison

execute if data storage paradox:paradox Deferred.SetWorldTime[0] run \
	function paradox:deferred/internal/deferred_send_to_prison_for_gametime
	
execute if data storage paradox:paradox Deferred.SetGameTime[0] run \
	function paradox:deferred/internal/deferred_send_to_prison_for_worldtime
