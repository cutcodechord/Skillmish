#> c3func:player_id/detect
#

# IDがないPlayerを検知

# 検知
    execute as @a unless score @s c3func.id.player matches 1.. unless score $current c3func.id.player matches 2147483647.. run function c3func:player_id/set_id {"score":c3func.id.player}
    execute as @a unless score @s c3func.id.player matches 1.. if score $current c3func.id.player matches 2147483647.. unless score $current c3func.id.player_2 matches 2147483647.. run function c3func:player_id/set_id {"score":c3func.id.player_2}
    execute as @a unless score @s c3func.id.player matches 1.. if score $current c3func.id.player matches 2147483647.. if score $current c3func.id.player_2 matches 2147483647.. unless score $current c3func.id.player_3 matches 2147483647.. run function c3func:player_id/set_id {"score":c3func.id.player_3}