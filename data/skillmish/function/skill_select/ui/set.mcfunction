#> skillmish:skill_select/ui/set
#

# UI設置

# 設置者
    tag @p add skillmish.process.ui_box.placer

# jukebox
    setblock ~ ~ ~ minecraft:dispenser{components:{"minecraft:custom_data":{"skillmish.process.ui_box.dispenser":true}},CustomName:'{"text":"スキルプレーヤー"}'} keep

# block_display
    summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:jukebox"},Tags:["skillmish.process.ui_box.block_display"],transformation:{right_rotation:[0f,0f,0f,1f],scale:[1.011f,1.011f,1.011f],left_rotation:[0f,0f,0f,1f],translation:[-0.51f,-0.01f,-0.51f]},brightness:{block:15,sky:15},glow_color_override:15}

# text_display
    summon minecraft:text_display ~ ~ ~ {alignment:center,text:'[{"text":"[ ","color":"gray"},{"selector":"@p[tag=skillmish.process.ui_box.placer]","color":"green"},{"text":" ]","color":"gray"}]',billboard:"vertical",Tags:["skillmish.process.ui_box.text_display"],transformation:{right_rotation:[0f,0f,0f,1f],scale:[1f,1.f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f]},brightness:{block:15,sky:15},glow_color_override:15}

# tag
    tag @s add skillmish.process.ui_box.marker.set

# Score
    scoreboard players operation @s skillmish.process.id.check = @p c3func.id.player

# 演出
    particle minecraft:trial_omen ~ ~1 ~ 0.25 0.5 0.25 1 3 normal
    particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.25 0.5 0.25 0 10 normal
    playsound minecraft:block.wood.place block @a ~ ~ ~ 1 0.8
    playsound minecraft:block.note_block.bit block @a ~ ~ ~ 1

# アイテムセット
    item replace block ~ ~ ~ container.0 with minecraft:name_tag[minecraft:max_stack_size=1,minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:item_name='[{"text":" ","color":"white"}]',minecraft:custom_data={"skillmish.process.mustbe_deleted":true}]
    item replace block ~ ~ ~ container.1 with minecraft:name_tag[minecraft:max_stack_size=1,minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:item_name='[{"text":" ","color":"white"}]',minecraft:custom_data={"skillmish.process.mustbe_deleted":true}]
    item replace block ~ ~ ~ container.2 with minecraft:name_tag[minecraft:max_stack_size=1,minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:item_name='[{"text":" ","color":"white"}]',minecraft:custom_data={"skillmish.process.mustbe_deleted":true}]
    item replace block ~ ~ ~ container.6 with minecraft:name_tag[minecraft:max_stack_size=1,minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:item_name='[{"text":" ","color":"white"}]',minecraft:custom_data={"skillmish.process.mustbe_deleted":true}]

    item replace block ~ ~ ~ container.7 with minecraft:name_tag[minecraft:max_stack_size=1,minecraft:item_model="minecraft:trial_key",minecraft:item_name='[{"text":"< ","color":"gray"},{"text":"決定!","color":"green"},{"text":" >","color":"gray"}]',minecraft:custom_data={"skillmish.process.item.ui_box.decide":true}]
    item replace block ~ ~ ~ container.8 with minecraft:name_tag[minecraft:max_stack_size=1,minecraft:item_model="minecraft:structure_void",minecraft:item_name='[{"text":"< ","color":"gray"},{"text":"終了","color":"red"},{"text":" >","color":"gray"}]',minecraft:custom_data={"skillmish.process.item.ui_box.exit":true}]

# Skillset
    execute at @s run function skillmish:skill_select/ui/set_skill