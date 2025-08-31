#> skillmish:skill_select/ui/decide_box
#

# 決定（Box）

# power_gain
    execute if items block ~ ~ ~ container.3 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain":"true"}] run tag @s add skillmish.process.ui_box.box_decided.power_gain_1
    execute if items block ~ ~ ~ container.4 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain":"true"}] run tag @s add skillmish.process.ui_box.box_decided.power_gain_2
    execute if items block ~ ~ ~ container.5 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain":"true"}] run tag @s add skillmish.process.ui_box.box_decided.power_gain_3
    execute if items block ~ ~ ~ container.3 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain":"true"}] run item replace block ~ ~ ~ container.3 with minecraft:air
    execute if items block ~ ~ ~ container.4 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain":"true"}] run item replace block ~ ~ ~ container.4 with minecraft:air
    execute if items block ~ ~ ~ container.5 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain":"true"}] run item replace block ~ ~ ~ container.5 with minecraft:air

# common
    function c3func:inventory_manage/container_throw {slot_nbt:"3b",x:"~",y:"~2",z:"~"}
    function c3func:inventory_manage/container_throw {slot_nbt:"4b",x:"~",y:"~2",z:"~"}
    function c3func:inventory_manage/container_throw {slot_nbt:"5b",x:"~",y:"~2",z:"~"}
    
    item replace block ~ ~ ~ container.3 with minecraft:air
    item replace block ~ ~ ~ container.4 with minecraft:air
    item replace block ~ ~ ~ container.5 with minecraft:air

    tag @s add skillmish.process.ui_box.box_decided

    