#> skillmish:main
#

# 毎ティックの実行

# common
# 全員の処理
    execute as @a at @s run function skill:common/loop

# Markerkill
    execute if entity @e[tag=skillmish.process.mustbe_killed] run kill @e[tag=skillmish.process.mustbe_killed]

# ui
# ループ
    execute if entity @e[tag=skillmish.process.ui_box.marker.set] as @e[tag=skillmish.process.ui_box.marker.set] at @s run function skillmish:skill_select/ui/loop

# Itemcheck
    execute as @a if items entity @s player.cursor minecraft:name_tag[minecraft:custom_data={"skillmish.process.item.ui_box.decide":"true"}] as @s at @s run function skillmish:skill_select/ui/decide_player

# Itemkill
    execute as @a run function c3func:inventory_manage/item_delete {delete_item_custom_data:"{\"skillmish.process.mustbe_deleted\":\"true\"}"}
    execute as @a run function c3func:inventory_manage/item_delete {delete_item_custom_data:"{\"skillmish.process.item.ui_box.decide\":\"true\"}"}
    execute as @a run function c3func:inventory_manage/item_delete {delete_item_custom_data:"{\"skillmish.process.item.ui_box.exit\":\"true\"}"}
    execute as @a run function c3func:inventory_manage/item_delete {delete_item_custom_data:"{\"skillmish.process.item.ui_box.remove_1\":\"true\"}"}
    execute as @a run function c3func:inventory_manage/item_delete {delete_item_custom_data:"{\"skillmish.process.item.ui_box.remove_2\":\"true\"}"}
    execute as @a run function c3func:inventory_manage/item_delete {delete_item_custom_data:"{\"skillmish.process.item.ui_box.remove_3\":\"true\"}"}
    execute as @a[tag=!skillmish.skill.power_gain] run function c3func:inventory_manage/item_delete {delete_item_custom_data:"{\"skillmish.skill.item.power_gain_icon\":\"true\"}"}

# break, set
    execute if entity @e[tag=skillmish.process.ui_box.marker.set] as @e[tag=skillmish.process.ui_box.marker.set] at @s unless block ~ ~ ~ minecraft:dispenser{components:{"minecraft:custom_data":{"skillmish.process.ui_box.dispenser":"true"}}} run function skillmish:skill_select/ui/break
    execute if entity @e[tag=skillmish.process.ui_box.marker] as @e[tag=skillmish.process.ui_box.marker,tag=!skillmish.process.ui_box.marker.set] at @s run function skillmish:skill_select/ui/set

# power_gain
# tagがある人に能力付与
    execute as @a if entity @s[tag=skillmish.skill.power_gain,scores={skillmish.skill.ready=0}] at @s run function skill:power_gain/
    execute as @a if entity @s[tag=skillmish.skill.power_gain] at @s run function skill:power_gain/loop

# リセット
    execute as @a if entity @s[tag=!skillmish.skill.power_gain] at @s run function skill:power_gain/reset
