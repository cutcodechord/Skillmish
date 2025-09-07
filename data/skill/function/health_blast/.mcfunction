#> skill:health_blast/
#

# アイテム準備

# スコアセット
    scoreboard players set @s skillmish.skill.health_blast.ready 1

# 演出
    playsound block.brewing_stand.brew block @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.breeze.wind_burst block @a ~ ~ ~ 1 1.5
    particle minecraft:sculk_charge_pop ~ ~ ~ 0.05 1 0.05 0.1 25
    particle minecraft:ominous_spawning ~ ~ ~ 0.05 1 0.05 1.0 20
    particle minecraft:gust ~ ~ ~ 0.25 1 0.25 0 5
    particle minecraft:heart ~ ~ ~ 0.25 1 0.25 0 5

    effect give @s minecraft:slowness 1 10 true
