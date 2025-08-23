#> skillmish:skill_select/ui/set
#

# UI設置

# jukebox
    setblock ~ ~ ~ minecraft:dispenser{components:{"minecraft:custom_data":{"skillmish.process.ui_box.dispenser":"true"}},CustomName:'{"text":"スキルプレーヤー"}'} keep

# block_display
    summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:jukebox"},Tags:["skillmish.process.ui_box.block_display"],transformation:{right_rotation:[0f,0f,0f,1f],scale:[1.05f,1.05f,1.05f],left_rotation:[0f,0f,0f,1f],translation:[-0.51f,-0.01f,-0.51f]},brightness:{block:15,sky:15},glow_color_override:15}

# text_display
    summon minecraft:text_display ~ ~1.5 ~ {alignment:center,text:'[{"text":"Owner: "},{"selector":"@p","color":"green"}]',billboard:"center",Tags:["skillmish.process.ui_box.text_display"]}

# tag
    tag @s add skillmish.process.ui_box.marker.set

# 演出
    particle minecraft:trial_omen ~ ~1 ~ 0.25 0.5 0.25 1 3 normal
    particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.25 0.5 0.25 0 10 normal
    playsound minecraft:block.wood.place block @a ~ ~ ~ 1 0.8
    playsound minecraft:block.note_block.bit block @a ~ ~ ~ 1
