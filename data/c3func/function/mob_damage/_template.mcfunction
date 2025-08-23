#> c3func:mob_damage/_template
#

# 検知のテンプレート

    execute if entity @e[tag=c3func.mob_damage.attacker] run tellraw @a ["",{"text":"> ","color":"gray"},{"selector":"@n[tag=c3func.mob_damage.attacker]","color":"green"},{"text":" \ud83d\udde1","color":"white"},{"text":" [ ","color":"gray"},{"score":{"name":"@s","objective":"c3func.mob_damage.takendamage"},"color":"blue"},{"text":" damage","color":"white"},{"text":" ] → ","color":"gray"},{"selector":"@s","color":"green"}]
    execute unless entity @e[tag=c3func.mob_damage.attacker] run tellraw @a ["",{"text":"> ","color":"gray"},{"text":"?","color":"green"},{"text":" \ud83d\udde1","color":"white"},{"text":" [ ","color":"gray"},{"score":{"name":"@s","objective":"c3func.mob_damage.takendamage"},"color":"blue"},{"text":" damage","color":"white"},{"text":" ] → ","color":"gray"},{"selector":"@s","color":"green"}]