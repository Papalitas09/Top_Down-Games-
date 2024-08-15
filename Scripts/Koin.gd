extends Area2D
var masuk:bool
@onready var text = $Label
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if masuk == true and Input.is_action_just_pressed("Take_Items"):
		queue_free()
		
		



func _on_body_entered(body):
	masuk = true
	text.visible = true
	



func _on_body_exited(body):
	masuk = false
	text.visible = false
