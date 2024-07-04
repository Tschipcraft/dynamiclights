##by Tschipcraft
# Sets attributes to new dynamic light entity and places light block

data merge entity @s {Tags:["ts.dl.light","global.ignore","global.ignore.kill","global.ignore.pos","smithed.block"],Invulnerable:1b,Silent:1b,CustomName:'{"text":"Dynamic Light [9]"}'}

function dynamiclights:internal/place_light/9/update
