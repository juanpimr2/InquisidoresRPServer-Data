Config                            = {}
Config.Locale                     = 'es'

--- #### BASICS
Config.EnablePrice = true -- false = bikes for free
Config.EnableEffects = false
Config.EnableBlips = true


--- #### PRICES	
Config.PriceTriBike = 89
Config.PriceScorcher = 99
Config.PriceCruiser = 129
Config.PriceBmx = 109


--- #### MARKER EDITS
Config.TypeMarker = 27
Config.MarkerScale = { x = 2.000, y = 2.000, z = 0.500}
Config.MarkerColor = { r = 0, g = 255, b = 255}
	
Config.MarkerZones = { 

    {x = -246.980,y = -339.820,z = 29.000},

}


-- Edit blip titles
Config.BlipZones = { 

   {title="Bikes Rental", colour=2, id=376, x = -248.938, y = -339.955, z = 29.969},
}