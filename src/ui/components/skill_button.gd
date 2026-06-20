extends Button

func setup(skill: SkillData) -> void:
	text = skill.display_name
	tooltip_text = skill.description

	if skill.icon:
		icon = skill.icon
