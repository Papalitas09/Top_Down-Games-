extends Area2D
var bodyin = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	bodyin = true
	print("jijij")
	


func _on_body_exited(body):
	bodyin = false
