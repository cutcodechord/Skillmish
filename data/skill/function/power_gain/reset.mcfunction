#> skill:power_gain/reset
#

# リセット

# スコアリセット
    scoreboard players set @s skillmish.skill.power_gain.ready 0
    effect clear @s minecraft:health_boost
    attribute @s minecraft:attack_speed base reset
    attribute @s minecraft:attack_damage base reset

    