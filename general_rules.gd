extends Node

var applePoints = 1
var bananaPoints = 2
var cherryPoints = 3

const FrogJumpPower = -450.0

func change_display_mode(toggle: bool):
	if toggle:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
pass
