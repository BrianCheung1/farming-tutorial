extends PanelContainer

@onready var tool_axe : Button = $MarginContainer/HBoxContainer/ToolAxe
@onready var tool_tilling : Button = $MarginContainer/HBoxContainer/ToolTilling
@onready var tool_watering_can : Button = $MarginContainer/HBoxContainer/ToolWateringCan
@onready var tool_corn : Button = $MarginContainer/HBoxContainer/ToolCorn
@onready var tool_tomato : Button = $MarginContainer/HBoxContainer/ToolTomato


func _on_tool_axe_pressed():
	ToolManager.select_tool(DataTypes.Tools.AxeWood)

func _on_tool_tilling_pressed():
	ToolManager.select_tool(DataTypes.Tools.TillGround)


func _on_tool_watering_can_pressed():
	ToolManager.select_tool(DataTypes.Tools.WaterCrops)
	

func _on_tool_corn_pressed():
	ToolManager.select_tool(DataTypes.Tools.PlantCorn)

		
func _on_tool_tomato_pressed():
	ToolManager.select_tool(DataTypes.Tools.PlantTomato)

func _unhandled_input(event: InputEvent):
	if event.is_action_pressed("release_tool"):
		ToolManager.select_tool(DataTypes.Tools.None)
		tool_axe.release_focus()
		tool_tilling.release_focus()
		tool_watering_can.release_focus()
		tool_corn.release_focus()
		tool_tomato.release_focus()
