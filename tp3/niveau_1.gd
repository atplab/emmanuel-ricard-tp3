extends Node2D


func _on_coins_body_entered(body: Node2D) -> void:
	$coins/coins1.visible = false  
	$coins/coins1.queue_free()
	$coins/coins.play()


func _on_coins_2_body_entered(body: Node2D) -> void:
	$coins/coins2.visible = false
	$coins/coins2.queue_free()
	$coins/coins.play()


func _on_coins_3_body_entered(body: Node2D) -> void:
	$coins/coins3.visible = false
	$coins/coins3.queue_free()
	$coins/coins.play()


func _on_coins_4_body_entered(body: Node2D) -> void:
	$coins/coins4.visible = false
	$coins/coins4.queue_free()
	$coins/coins.play()

func _on_coins_5_body_entered(body: Node2D) -> void:
	$coins/coins5.visible = false
	$coins/coins5.queue_free()
	$coins/coins.play()

func _on_coins_6_body_entered(body: Node2D) -> void:
	$coins/coins6.visible = false
	$coins/coins6.queue_free()
	$coins/coins.play()
	
func _on_coins_7_body_entered(body: Node2D) -> void:
	$coins/coins7.visible = false
	$coins/coins7.queue_free()
	$coins/coins.play()

func _on_coins_8_body_entered(body: Node2D) -> void:
	$coins/coins8.visible = false
	$coins/coins8.queue_free()
	$coins/coins.play()


func _on_silvercoin_body_entered(body: Node2D) -> void:
	$coins/silvercoin/silvercoin.visible = false
	$coins/silvercoin/silvercoin.queue_free()
	$coins/silvercoin/silvercoins.play()


func _on_bouton_body_entered(body: Node2D) -> void:
	print(body.name)
	if body is Player:
		Main.porte_ouvrable = true
		$porte/porte.play("Open")
	


func _on_porte_body_entered(body: Node2D) -> void:
	if body is Player:
		if Main.porte_ouvrable == true :
			get_tree().change_scene_to_file("res://niveau2.tscn")
		

func _on_bee_1_body_entered(body: Node2D) -> void:
	print("collision")
	$ennemies/bee1/bee.play("dead")
	$ennemies/bee1/dead_bee.play()
	$ennemies/bee1/dead_player.monitoring = false
	$ennemies/bee1/dead_player.monitorable = false
	body.sauter()
	var timer = get_tree().create_timer(0.5)
	await timer.timeout
	$ennemies/bee1.queue_free()

func _on_dead_player_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()
		

func _on_bee_2_body_entered(body: Node2D) -> void:
	print("collision")
	$ennemies/bee2/bee.play("dead")
	$ennemies/bee2/dead_bee.play()
	$ennemies/bee2/dead_player2.monitoring = false
	$ennemies/bee2/dead_player2.monitorable = false
	body.sauter()
	var timer = get_tree().create_timer(0.5)
	await timer.timeout
	$ennemies/bee2.queue_free()



func _on_dead_player_2_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hide()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		var timer = get_tree().create_timer(2)
		await timer.timeout
		get_tree().reload_current_scene()
