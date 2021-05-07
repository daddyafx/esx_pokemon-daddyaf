ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

cards = { "bulbasaur", "ivysaur", "venusaur", "charmander", "charmeleon", "charizard", "squirtle", "wartortle", "blastoise", "caterpie", "metapod", "butterfree", "weedle", "kakuna", "beedrill", "pidgey",
"pidgeotto", "pidgeot", "rattata", "raticate", "spearow", "fearow", "ekans", "arbok", "pikachu", "raichu", "sandshrew", "sandslash", "nidoran", "nidorina", "nidoqueen", "nidorino", "nidoking", "clefairy",
"clefable", "vulpix", "ninetales", "jigglypuff", "wigglytuff", "zubat", "golbat", "oddish", "gloom", "vileplume", "paras", "parasect", "venonat", "venomoth", "diglett", "dugtrio", "meowth", "persian", "psyduck", 
"golduck", "mankey", "primeape", "growlithe", "arcanine", "poliwag", "poliwhirl", "poliwrath", "abra", "kadabra", "alakazam", "machop", "machoke", "machamp", "bellsprout", "weepinbell", "victreebel", "tentacool", 
"tentacruel", "geodude", "graveler", "golem", "ponyta", "rapidash", "slowpoke", "slowbro", "magnemite", "magneton", "farfetchd", "doduo", "dodrio", "seel", "dewgong", "grimer", "muk", "shellder", "cloyster", 
"gastly", "haunter", "gengar", "onix", "drowzee", "hypno", "krabby", "kingler", "voltorb", "electrode", "exeggcute", "exeggutor", "cubone", "marowak", "hitmonlee", "hitmonchan", "lickitung", "koffing", "weezing", 
"rhyhorn", "rhydon", "chansey", "tangela", "kangaskhan", "horsea", "seadra", "goldeen", "seaking", "staryu", "starmie", "mr. mime", "scyther", "jynx", "electabuzz", "magmar", "pinsir", "tauros", "magikarp", 
"gyarados", "lapras", "ditto", "eevee", "togepi", "vaporeon", "jolteon", "flareon", "porygon", "omanyte", "omastar", "kabuto", "kabutops", "aerodactyl", "snorlax", "articuno", "zapdos", "moltres", "dratini", "dragonair", 
"dragonite", "mewtwo", "mew"}

total = #cards


--[[ESX.RegisterUsableItem('boosterpack', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
            xPlayer.addInventoryItem(cards[cardToGive])
        end
    end

    xPlayer.removeInventoryItem('boosterpack', 1)
end)]]--

ESX.RegisterUsableItem('boosterPack', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
     xPlayer.addInventoryItem(cards[cardToGive], 1)
    xPlayer.removeInventoryItem('boosterPack', 1)
end)