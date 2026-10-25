extends CanvasLayer


var time: float = 0.0
var game_started_at: int

# call this once at the start of game to initialize the starting timestamp
func start_game_timing() -> void:
	game_started_at = Time.get_ticks_msec()

# call this every frame while the game is running to get the current elapsed time
# update the time label with the string it returns
func get_current_game_time_string() -> String:
	var current_timestamp := Time.get_ticks_msec()
	var duration = current_timestamp - game_started_at
	var timestring = "%02d:%02d.%03d"%[(duration / 60000), (duration / 1000) % 60, duration % 1000]
	return timestring
	

func stop() -> void:
	set_process(false) 
	
