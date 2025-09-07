#> skillmish:skill_select/ui/decide_player
#

# 決定（プレイヤー）

# Tag

# power_gain
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.power_gain_1] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.power_gain
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.power_gain_2] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.power_gain
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.power_gain_3] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.power_gain

    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.power_gain_1] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.power_gain_1
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.power_gain_2] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.power_gain_2
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.power_gain_3] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.power_gain_3

    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run tag @s remove skillmish.process.ui_box.box_decided.power_gain_1
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run tag @s remove skillmish.process.ui_box.box_decided.power_gain_2
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run tag @s remove skillmish.process.ui_box.box_decided.power_gain_3

# health_blast
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.health_blast_1] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.health_blast
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.health_blast_2] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.health_blast
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.health_blast_3] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.health_blast

    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.health_blast_1] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.health_blast_1
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.health_blast_2] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.health_blast_2
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided,tag=skillmish.process.ui_box.box_decided.health_blast_3] if score @s skillmish.process.id.check = @n c3func.id.player run tag @n add skillmish.skill.health_blast_3


    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run tag @s remove skillmish.process.ui_box.box_decided.health_blast_1
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run tag @s remove skillmish.process.ui_box.box_decided.health_blast_2
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run tag @s remove skillmish.process.ui_box.box_decided.health_blast_3

# common    
    tag @s add skillmish.process.ui_box.placer
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run function skillmish:skill_select/ui/set_skill
    execute at @s as @e[tag=skillmish.process.ui_box.box_decided] if score @s skillmish.process.id.check = @n c3func.id.player run tag @s remove skillmish.process.ui_box.box_decided
