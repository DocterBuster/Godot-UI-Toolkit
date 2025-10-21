class_name TK_H_Slider
extends HSlider

var tween : Tween

func _on_drag_ended(value_changed: bool) -> void:
	reset_tween()
	self.release_focus()


func _on_drag_started() -> void:
	reset_tween()
	#tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	#tween.tween_property(self, "scale", Vector2(1.2, 1.2), 0.2).from(Vector2(1.0, 1.0))
	grab_focus()


func _on_focus_entered() -> void:
	_on_mouse_entered()

func _on_focus_exited() -> void:
	reset_tween()
	#tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	#tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.2).from(Vector2(1.2, 1.2))
	_on_mouse_exited()

func _on_mouse_entered() -> void:
	reset_tween()
	#tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	#tween.tween_property(self, "scale", Vector2(1.2, 1.2), 0.2).from(Vector2(1.0, 1.0))
	grab_focus()


func _on_mouse_exited() -> void:
	reset_tween()
	#tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	#tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.2).from(Vector2(1.2, 1.2))


func reset_tween():
	if tween:
		tween.kill()
	tween = create_tween()
	tween.kill()
