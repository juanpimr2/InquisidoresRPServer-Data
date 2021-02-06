Config                            = {}
Config.Locale                     = 'es'

--- #### BASICS
Config.EnablePrice = false -- false = bikes for free
Config.EnableEffects = true
Config.EnableBlips = true


--- #### PRICES	
Config.PriceTriBike = 89
Config.PriceScorcher = 99
Config.PriceCruiser = 129
Config.PriceBmx = 109


--- #### MARKER EDITS
Config.TypeMarker = 1
Config.MarkerScale = { x = 2.000, y = 2.000, z = 0.500}
Config.MarkerColor = { r = 0, g = 255, b = 255}
	
Config.MarkerZones = { 

    {x = -238.62,y = -981.74,z = 28.29},

}


-- Edit blip titles
Config.BlipZones = { 
   {title="Bikes Rental", colour=2, id=376, x = -238.62, y = -981.74, z = 28.29},
}