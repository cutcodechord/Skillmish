#> c3func:mob_id/detect
#

# IDがないMobを検知

# 検知
    execute as @e[type=!#c3func:nomobentity] unless score @s c3func.id.mob matches 1.. unless score $current c3func.id.mob matches 2147483647.. run function c3func:mob_id/set_id {"score":c3func.id.mob}
    execute as @e[type=!#c3func:nomobentity] unless score @s c3func.id.mob matches 1.. if score $current c3func.id.mob matches 2147483647.. unless score $current c3func.id.mob_2 matches 2147483647.. run function c3func:mob_id/set_id {"score":c3func.id.mob_2}
    execute as @e[type=!#c3func:nomobentity] unless score @s c3func.id.mob matches 1.. if score $current c3func.id.mob matches 2147483647.. if score $current c3func.id.mob_2 matches 2147483647.. unless score $current c3func.id.mob_3 matches 2147483647.. run function c3func:mob_id/set_id {"score":c3func.id.mob_3}