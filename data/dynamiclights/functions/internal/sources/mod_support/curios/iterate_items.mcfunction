##by Tschipcraft
# Iterates over all items in the current stack

# Check if item renders
execute store result score curios.render ts.dl.temp run data get storage dynamiclights:curios stacks[0].StacksHandler.Renders.Renders[0].Render

# Parse item and advance to next
execute if score curios.render ts.dl.temp matches 1 run function dynamiclights:internal/sources/mod_support/curios/parse
data remove storage dynamiclights:curios stacks[0].StacksHandler.Stacks.Items[0]
data remove storage dynamiclights:curios stacks[0].StacksHandler.Renders.Renders[0]

execute if data storage dynamiclights:curios stacks[0].StacksHandler.Stacks.Items[0] run function dynamiclights:internal/sources/mod_support/curios/iterate_items
