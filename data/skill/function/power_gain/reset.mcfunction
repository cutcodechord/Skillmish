#> skill:power_gain/reset
#

# リセット

# スコアリセット
    scoreboard players set @s skillmish.skill.ready 0
    effect clear @s minecraft:health_boost
    effect clear @s minecraft:strength
    effect clear @s minecraft:night_vision
    effect clear @s minecraft:speed
    effect clear @s minecraft:jump_boost
    effect clear @s minecraft:haste
    attribute @s minecraft:attack_speed base set 4.8
    tag @s remove skillmish.skill.confirmed_0
    tag @s remove skillmish.skill.confirmed_1
    tag @s remove skillmish.skill.confirmed_2


    