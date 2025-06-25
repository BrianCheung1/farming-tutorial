class_name Player
extends CharacterBody2D

@onready var hit_component = $HitComponent

@export var current_tool: DataTypes.Tools = DataTypes.Tools.None
@export var speed: float = 50.0

var player_direction:Vector2
var walk_state


func _ready()->void:
	walk_state = $StateMachine/Walk
	walk_state.speed = speed
	ToolManager.tool_selected.connect(on_tool_selected)

func on_tool_selected(tool:DataTypes.Tools) -> void:
	current_tool = tool
	hit_component.current_tool = tool
