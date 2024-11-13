extends enemy

func _physics_process(delta: float) -> void:
	if player_chase == true:
		self.position += (player.position - self.position)/speed

		sprite.play("run")
		if(player.position.x - self.position.x) > 0:
			sprite.flip_h = false
		else:
			sprite.flip_h = true
	else:
		sprite.play("idle")
func _on_detection_area_body_entered(body:Node2D) -> void:
	self.body_entered(body)


func _on_detection_area_body_exited(body:Node2D) -> void:
	self.body_exited(body)
