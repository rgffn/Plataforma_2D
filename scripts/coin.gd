extends Area2D

var coins := 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
 

func _on_body_entered(body):
	$anim.play("collect")
	#evitar duppar moeda
	await $collision.call_deferred("queue_free()")
	Globals.coins += coins
	print(Globals.coins)
	
	# print("O player colidiu com a moeda")


func _on_anim_animation_finished():
	queue_free()
