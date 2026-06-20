extends Node

var skills: Array[SkillData] = []

func _ready() -> void:
	_load_all_skills()

func _load_all_skills() -> void:
	var dir = DirAccess.open("res://data/skills/")
	if not dir:
		push_error("Could not open skills directory.")
		return

	dir.list_dir_begin()
	var file_name = dir.get_next()

	while file_name != "":
		if file_name.ends_with(".tres"):
			var skill = load("res://data/skills/" + file_name)
			if skill is SkillData:
				skills.append(skill)
		file_name = dir.get_next()

	dir.list_dir_end()
