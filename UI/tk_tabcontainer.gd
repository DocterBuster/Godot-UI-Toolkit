class_name TK_TabContainer
extends TabContainer


func _on_pre_popup_pressed() -> void:
	pass # Replace with function body.


func _on_tab_button_pressed(tab: int) -> void:
	pass # Replace with function body.


func _on_tab_changed(tab: int) -> void:
	pass


func _on_tab_clicked(tab: int) -> void:
	
	var tab_node : TK_TabHolder = get_child(tab)
	
	var tween : Tween = create_tween()
	
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK).set_parallel(true)
	tween.tween_property(tab_node, "scale", Vector2(1.1, 1.1), 0.4).from(Vector2(1.0, 1.0))

func _on_tab_hovered(tab: int) -> void:
	pass # Replace with function body.


func _on_tab_selected(tab: int) -> void:
	pass # Replace with function body.
