#> c3func:mob_damage/hp_set
#

# HP設定
    execute as @s store result score @s c3func.mob_damage.hp_max run attribute @s minecraft:max_health get 100
    scoreboard players set @s c3func.mob_damage.hp_0 102400
    scoreboard players operation @s c3func.mob_damage.hp_0 -= @s c3func.mob_damage.hp_max
    scoreboard players set @s c3func.mob_damage.hp_current 102400
    scoreboard players set @s c3func.mob_damage.hp_old 102400
    attribute @s max_health base set 1024
    data merge entity @s {Health:1024d}
    tag @s add c3func.mob_damage.marked