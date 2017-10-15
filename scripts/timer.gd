extends Control

var timer_active = false
var time_start = 0
var time_now = 0
var elapsed = 0
var paused_elapsed = 0

func _ready():
	pass

func _process(delta):
	time_now = OS.get_unix_time()
	elapsed = time_now - time_start + paused_elapsed
	var hours = elapsed / 3600
	var minutes = elapsed / 60
	while minutes >= 60:
		minutes /= 60
	var seconds = elapsed % 60
	var milliseconds = OS.get_ticks_msec() % 1000
	var str_elapsed = "%02d:%02d:%02d.%03d" % [hours, minutes, seconds, milliseconds]
	get_node("Current Time").set_text(str_elapsed)

func _on_Start_Pause_Button_pressed():
	if !timer_active:
		#get_node("Start Pause Button").set_text("Pause")
		#time_start = OS.get_unix_time()
		#set_process(true)
		#timer_active = true
		#get_node("../Seed Generator/Generate Button").set_disabled(true)
		#get_node("../Seed Generator/Reset Button").set_disabled(true)
		start_timer()
	elif timer_active:
		pause_timer()

func start_timer():
	get_node("Start Pause Button").set_text("Pause")
	time_start = OS.get_unix_time()
	set_process(true)
	timer_active = true
	get_node("../Seed Generator/Generate Button").set_disabled(true)
	get_node("../Seed Generator/Reset Button").set_disabled(true)

func pause_timer():
	get_node("Start Pause Button").set_text("Resume")
	paused_elapsed = elapsed
	set_process(false)
	timer_active = false
	get_node("../Seed Generator/Generate Button").set_disabled(false)
	get_node("../Seed Generator/Reset Button").set_disabled(false)

func _on_Reset_Button_pressed():
	set_process(false)
	timer_active = false
	paused_elapsed = 0
	get_node("Current Time").set_text("00:00:00.000")
	get_node("Start Pause Button").set_text("Start")
	get_node("../Seed Generator/Generate Button").set_disabled(false)
	get_node("../Seed Generator/Reset Button").set_disabled(false)
