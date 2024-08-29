extends CharacterBody2D

var speed = 40
var player = null
var playerChase = false
@onready var animations = $AnimationPlayer



func _physics_process(delta):
	
	$AnimatedSprite2D.play("walkIdle")
	
	if playerChase:
		position += (player.position - position)/speed
		move_and_collide(Vector2(0,0))
		
		$AnimatedSprite2D.play("walkIdle")
		
		
		

func _on_area_2d_body_entered(body):
	player = body
	playerChase = true


func _on_area_2d_body_exited(body):
	player = null 
	playerChase = false 
	
