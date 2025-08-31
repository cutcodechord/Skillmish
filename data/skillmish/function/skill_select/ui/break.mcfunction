#> skillmish:skill_select/ui/break
#

# UI破壊

# kill
    kill @n[type=item,nbt={Item:{id:"minecraft:dispenser"}}]
    kill @n[type=block_display,nbt={block_state:{Name:"minecraft:jukebox"}},distance=..1]
    kill @n[type=text_display,distance=..1]

# jukebox
    summon minecraft:item ~ ~0.5 ~ {Item:{components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["skillmish.process.ui_box.marker"]},"minecraft:item_name":'"スキルプレーヤー"',"minecraft:item_model":"minecraft:jukebox","minecraft:lore":['{"color":"#FFFFFF","extra":[{"color":"#DDDDDD","font":"minecraft:default","italic":false,"text":"使用方法"},{"color":"#555555","font":"minecraft:default","italic":false,"text":" >"},{"color":"#FF55FF","font":"minecraft:default","italic":false,"text":" 設置してディスクを使用"}],"text":""}','{"color":"#FFFFFF","extra":[{"color":"#DDDDDD","font":"minecraft:default","italic":false,"text":"使用効果"},{"color":"#555555","font":"minecraft:default","italic":false,"text":" >"},{"color":"#CCCCCC","font":"minecraft:default","italic":false,"text":" なし"}],"text":""}', '{"color":"#777777","font":"minecraft:default","italic":false,"text":"・････━━━━━━━━━━━━━━━━━━━━━━････・"}', '{"color":"#DDDDDD","italic":false,"text":" スキルを選択しよう"}', '{"color":"#AAAAAA","italic":false,"text":" 3つまでスキルを入れられるよ!"}', '{"color":"#777777","font":"minecraft:default","italic":false,"text":"・････━━━━━━━━━━━━━━━━━━━━━━････・"}'],"minecraft:rarity":"rare","minecraft:enchantment_glint_override":1b,"minecraft:custom_data":{skillmish.process.ui_box:"true"}}, count: 1, id: "minecraft:cat_spawn_egg"}}

# 演出
    particle minecraft:cloud ~ ~1 ~ 0 0 0 0 1 normal
    playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.8
    playsound minecraft:block.note_block.bit block @a ~ ~ ~ 1 0.5

# kill
    kill @s