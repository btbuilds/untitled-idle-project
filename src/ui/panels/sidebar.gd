extends PanelContainer

const SkillButton = preload("res://src/ui/components/skill_button.tscn")

@onready var button_container: VBoxContainer = $MarginContainer/VBoxContainer

func _ready() -> void:
	_populate_skills()

func _populate_skills() -> void:
	for skill in SkillManager.skills:
		var btn = SkillButton.instantiate()
		button_container.add_child(btn)
		btn.setup(skill)
