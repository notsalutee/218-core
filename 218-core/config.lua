218Config = {}

218Config.MaxPlayers = GetConvarInt('sv_maxclients', 48) -- Gets max players from config file, default 48
218Config.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
218Config.UpdateInterval = 5 -- how often to update player data in minutes
218Config.StatusInterval = 5000 -- how often to check hunger/thirst status in ms

218Config.Money = {}
218Config.Money.MoneyTypes = { ['cash'] = 500, ['bank'] = 5000, ['crypto'] = 0 } -- ['type']=startamount - Add or remove money types for your server (for ex. ['blackmoney']=0), remember once added it will not be removed from the database!
218Config.Money.DontAllowMinus = { 'cash', 'crypto' } -- Money that is not allowed going in minus
218Config.Money.PayCheckTimeOut = 10 -- The time in minutes that it will give the paycheck

218Config.Player = {}
218Config.Player.MaxWeight = 120000 -- Max weight a player can carry (currently 120kg, written in grams)
218Config.Player.MaxInvSlots = 41 -- Max inventory slots for a player
218Config.Player.HungerRate = 4.2 -- Rate at which hunger goes down.
218Config.Player.ThirstRate = 3.8 -- Rate at which thirst goes down.
218Config.Player.Bloodtypes = {
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-",
}

218Config.Server = {} -- General server config
218Config.Server.closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
218Config.Server.closedReason = "Server Closed" -- Reason message to display when people can't join the server
218Config.Server.uptime = 0 -- Time the server has been up.
218Config.Server.whitelist = false -- Enable or disable whitelist on the server
218Config.Server.pvp = true -- Enable or disable pvp on the server (Ability to shoot other players)
218Config.Server.discord = "" -- Discord invite link
218Config.Server.PermissionList = {} -- permission list

218Config.Notify = {}

218Config.Notify.NotificationStyling = {
    group = false, -- Allow notifications to stack with a badge instead of repeating
    position = "right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
218Config.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'done'
    },
    primary = {
        classes = 'primary',
        icon = 'info'
    },
    error = {
        classes = 'error',
        icon = 'dangerous'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}
