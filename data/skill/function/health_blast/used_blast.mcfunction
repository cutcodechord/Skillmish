#> skill:health_blast/used_blast
#

# 爆発

# 
    kill @n[tag=skillmish.skill.health_blast.bullet_icon]
    execute at @s as @a if score @s c3func.id.player = @n[tag=skillmish.skill.health_blast.bullet] skillmish.process.id.check run tag @s add skillmish.skill.health_blast.attacker
    execute at @s as @e[distance=..1.0,type=!#c3func:nomobentity] run damage @s[tag=!skillmish.skill.health_blast.attacker] 10 trident by @n[tag=skillmish.skill.health_blast.attacker]
    execute at @s as @e[distance=1.0001..5,type=!#c3func:nomobentity] run damage @s[tag=!skillmish.skill.health_blast.attacker] 8 player_explosion by @n[tag=skillmish.skill.health_blast.attacker]
    particle gust ~ ~0.5 ~ 1 0 1 1.5 15 force
    tag @a[tag=skillmish.skill.health_blast.attacker] remove skillmish.skill.health_blast.attacker
    kill @s
