#> skill:power_gain/
#

# プレイヤーのパワーを増やす

# スコアセット
    scoreboard players set @s skillmish.skill.ready 1

# タグ
    execute if entity @s[tag=skillmish.skill.power_gain_1] run tag @s add skillmish.skill.confirmed_0
    execute if entity @s[tag=skillmish.skill.power_gain_2] run tag @s add skillmish.skill.confirmed_1
    execute if entity @s[tag=skillmish.skill.power_gain_3] run tag @s add skillmish.skill.confirmed_2

# 演出
    playsound minecraft:block.anvil.place master @s ~ ~ ~ 1 1.5
    particle minecraft:trial_spawner_detection ~ ~ ~ 0.25 0.5 0.25 0 25
    particle minecraft:ominous_spawning ~ ~ ~ 0.05 1 0.05 1.0 20
    particle minecraft:soul_fire_flame ~ ~ ~ 0.25 1 0.25 0 15
    particle minecraft:flame ~ ~ ~ 0.25 1 0.25 0 15

# 効果付与
    effect give @s minecraft:slowness 1 10 true
    effect give @s minecraft:health_boost infinite 1 true
    effect give @s minecraft:strength infinite 0 true
    effect give @s minecraft:night_vision infinite 0 true
    effect give @s minecraft:speed infinite 0 true
    effect give @s minecraft:jump_boost infinite 0 true
    effect give @s minecraft:haste infinite 1 true
    effect give @s minecraft:instant_health 1 1 true
    attribute @s minecraft:attack_speed base set 4.9

# アイテム
    execute if entity @s[tag=skillmish.skill.power_gain_1] run item replace entity @s hotbar.0 with minecraft:name_tag[minecraft:item_model="minecraft:fire_charge",minecraft:item_name='[{"text":"[ ","color":"gray"},{"text":"Power Gain","color":"red"},{"text":" ]","color":"gray"}]',minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"},minecraft:lore=['["",{"text":"力をみなぎらせるスキル","italic":false,"color":"white"}]','["",{"text":"オラオラオラオラオラオラ","italic":false,"color":"gray"}]','[""]','["",{"text":"使用方法","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"常時","italic":false,"color":"light_purple"}]','["",{"text":"使用効果","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"移動速度上昇 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"暗視 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"採掘速度上昇 II","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"体力増強 II","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"跳躍力上昇 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"攻撃力上昇 I","italic":false,"color":"green"}]']]
    execute if entity @s[tag=skillmish.skill.power_gain_2] run item replace entity @s hotbar.1 with minecraft:name_tag[minecraft:item_model="minecraft:fire_charge",minecraft:item_name='[{"text":"[ ","color":"gray"},{"text":"Power Gain","color":"red"},{"text":" ]","color":"gray"}]',minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"},minecraft:lore=['["",{"text":"力をみなぎらせるスキル","italic":false,"color":"white"}]','["",{"text":"オラオラオラオラオラオラ","italic":false,"color":"gray"}]','[""]','["",{"text":"使用方法","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"常時","italic":false,"color":"light_purple"}]','["",{"text":"使用効果","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"移動速度上昇 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"暗視 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"採掘速度上昇 II","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"体力増強 II","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"跳躍力上昇 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"攻撃力上昇 I","italic":false,"color":"green"}]']]
    execute if entity @s[tag=skillmish.skill.power_gain_3] run item replace entity @s hotbar.2 with minecraft:name_tag[minecraft:item_model="minecraft:fire_charge",minecraft:item_name='[{"text":"[ ","color":"gray"},{"text":"Power Gain","color":"red"},{"text":" ]","color":"gray"}]',minecraft:custom_data={"skillmish.skill.item.power_gain_icon":"true"},minecraft:lore=['["",{"text":"力をみなぎらせるスキル","italic":false,"color":"white"}]','["",{"text":"オラオラオラオラオラオラ","italic":false,"color":"gray"}]','[""]','["",{"text":"使用方法","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"常時","italic":false,"color":"light_purple"}]','["",{"text":"使用効果","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"移動速度上昇 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"暗視 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"採掘速度上昇 II","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"体力増強 II","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"跳躍力上昇 I","italic":false,"color":"green"}]','["",{"text":"　　　　","italic":false,"color":"white"},{"text":" - ","italic":false,"color":"gray"},{"text":"攻撃力上昇 I","italic":false,"color":"green"}]']]
