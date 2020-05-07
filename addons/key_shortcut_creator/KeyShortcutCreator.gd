tool
extends WindowDialog

onready var input_key_button: KeyGrabberButton = $VBoxContainer/InputKey
onready var create_button: Button = $VBoxContainer/CreateButton

func _ready():
	call_deferred("popup_centered")

func _on_Create_pressed():
	print("Create '", input_key_button.grabbed_event.as_text(), "'")


func _on_InputKey_grabbed_event_updated(event):
	create_button.disabled = false


func _on_InputKey_grabbed_event_cleared():
	create_button.disabled = true


func _on_about_to_show():
	input_key_button.call_deferred("grab_focus")
