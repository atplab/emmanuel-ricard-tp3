extends Node2D


func _on_coins_1_body_entered(body: Node2D) -> void:
	$coins/coins1.visible = false  
	$coins/coins1.queue_free()
	$coins/coins.play()


func _on_coins_2_body_entered(body: Node2D) -> void:
	$coins/coins2.visible = false  
	$coins/coins2.queue_free()
	$coins/coins.play()


func _on_bulle_sol_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()


func _on_gouttes_plafond_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()
