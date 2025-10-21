class_name TK_Labeld_Slider
extends VBoxContainer


func _process(delta: float) -> void:
	var percent = ($HBoxContainer/HSlider.value / $HBoxContainer/HSlider.max_value) * 100
	$HBoxContainer/SliderPercent.text = str(percent, "%")


func _on_focus_entered() -> void:
	self.release_focus()
	$HBoxContainer/HSlider.grab_focus()
