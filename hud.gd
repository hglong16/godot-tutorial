extends CanvasLayer

signal start_game

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	
func show_game_over():
	show_message("Game Over Lan Anh Ngoc Nghek")
	await $MessageTimer.timeout
	
	$Message.text = "Chay Tron \nQuai Vat"
	$Message.show()
	
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()


func update_score(score):
	$ScoreLabel.text = str(score)
	
func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()
	
func _on_message_timer_timeout():
	$Message.hide()


func _on_start_game():
	pass # Replace with function body.
