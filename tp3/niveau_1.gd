extends Node2D


func _on_ennemie_1_body_entered(body: Node2D) -> void:
	print("collision")
	$ennemies/ennemie1/ennemie1.play("dead")
	$ennemies/ennemie1/dead_bee.play()

func _on_ennemie_1_body_exited(body: Node2D) -> void:
	print("au revoir")
	$ennemies/ennemie1/ennemie1.visible = false


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
	$Door/porte/porte.play("Open")
	


func _on_porte_body_entered(body: Node2D) -> void:
	if body is Joueur:
		Main.changer_scene(main)
