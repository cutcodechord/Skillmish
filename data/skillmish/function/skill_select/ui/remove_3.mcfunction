#> skillmish:skill_select/ui/remove_3
#

# remove 3

# power_gain
    execute if items block ~ ~ ~ container.5 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"}] run execute at @s as @a if score @s c3func.id.player = @n skillmish.process.id.check run tag @s remove skillmish.skill.power_gain
    execute if items block ~ ~ ~ container.5 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"}] run execute at @s as @a if score @s c3func.id.player = @n skillmish.process.id.check run tag @s remove skillmish.skill.power_gain_3
    execute if items block ~ ~ ~ container.5 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"}] run execute at @s as @a if score @s c3func.id.player = @n skillmish.process.id.check run give @s minecraft:name_tag[minecraft:item_model="minecraft:music_disc_chirp",minecraft:item_name='[{"text":"[ ","color":"gray"},{"text":"Power Gain","color":"red"},{"text":" ]","color":"gray"}]',minecraft:lore=[],minecraft:custom_data={"skillmish.skill.item.power_gain":"true"}]
    execute if items block ~ ~ ~ container.5 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"}] run tag @s remove skillmish.process.ui_box.prepare.power_gain_3
    execute if items block ~ ~ ~ container.5 minecraft:name_tag[minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"}] run item replace block ~ ~ ~ container.5 with minecraft:air


# その他
    function c3func:inventory_manage/container_throw {slot_nbt:"5b",x:"~",y:"~2",z:"~"}
    item replace block ~ ~ ~ container.5 with minecraft:air