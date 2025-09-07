#> skill:health_blast/used_loop
#

# ループ

# 検知
    execute positioned ~-0.5 ~ ~ at @n[type=!#c3func:nomobentity,dx=0] as @s unless score @n[type=!#c3func:nomobentity,dx=0] c3func.id.player = @s[tag=skillmish.skill.health_blast.bullet] skillmish.process.id.check run function skill:health_blast/used_blast
    tp @n[tag=skillmish.skill.health_blast.bullet_icon] @s
    execute store result score $motion_x c3func.general.temp run data get entity @s Motion[0] 1000
    execute store result score $motion_y c3func.general.temp run data get entity @s Motion[1] 1000
    execute store result score $motion_z c3func.general.temp run data get entity @s Motion[2] 1000
    execute if score $motion_x c3func.general.temp matches -5..5 if score $motion_y c3func.general.temp matches -5..5 if score $motion_z c3func.general.temp matches -5..5 run function skill:health_blast/used_blast



    #execute if data entity @s {Motion:[0d,0d,0d]} run scoreboard players add @s skillmish.skill.health_blast.collision 1
    #execute unless data entity @s {Motion:[0d,0d,0d]} run scoreboard players reset @s skillmish.skill.health_blast.collision
    #execute if score @s skillmish.skill.health_blast.collision matches 5.. run function skill:health_blast/used_blast