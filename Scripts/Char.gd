extends CharacterBody2D

@onready var animation = $AnimatedSprite2D
const speed = 100
var moving: bool = false
var dir: String = "None"
@onready var mobile = $Tombol_Gerak
@onready var tombol = $pencet


func _ready():
	pass 



func _process(delta):
	move()
	anim()
	

	

	

		
	
	

	
		
	
	
	
	

	

func move():
	#pc/etc
	if Input.is_action_pressed("Right"):
		velocity = Vector2.RIGHT * speed 
		moving = true
		dir = "Right"
	elif Input.is_action_pressed("Left"):
		velocity = Vector2.LEFT * speed 
		moving = true
		dir = "Left"
	elif Input.is_action_pressed("Down"):
		velocity = Vector2.DOWN * speed 
		moving = true
		dir = "Down"
	elif Input.is_action_pressed("Top"):
		velocity = Vector2.UP * speed 
		moving = true
		dir = "Top"
		
	#Mobile
	elif Input.is_action_pressed("Right_Mobile"):
		velocity = Vector2.RIGHT * speed 
		moving = true
		dir = "Right"
	elif Input.is_action_pressed("Left_Mobile"):
		velocity = Vector2.LEFT * speed 
		moving = true
		dir = "Left"
	elif Input.is_action_pressed("Down_Mobile"):
		velocity = Vector2.DOWN * speed 
		moving = true
		dir = "Down"
	elif Input.is_action_pressed("Top_Mobile"):
		velocity = Vector2.UP * speed 
		moving = true
		dir = "Top"
		
	
	else :
		velocity = Vector2.ZERO
		moving = false
		
		
	
	
		
		
	move_and_slide()
		
func anim():
	#Jika moving true maka, animation nya walk
	if moving == true :
		match dir:
			"Right":
				animation.play("Side_Walk")
				animation.flip_h = false
			"Left":
				animation.play("Side_Walk")
				animation.flip_h = true
			"Down":
				animation.play("Down_Walk")
			"Top":
				animation.play("Top_Walk")
			
	#Jika movingnya false, maka jadi idle	
	elif moving == false:
		match dir:
			"Right":
				animation.play("Side_Idle")
				animation.flip_h = false
			"Left":
				animation.play("Side_Idle")
				animation.flip_h = true
			"Down":
				animation.play("Down_Idle")
			"Top":
				animation.play("Top_Idle")
				
			
	
	move_and_slide()
		


