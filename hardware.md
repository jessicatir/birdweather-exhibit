# Hardware

<<<<<<< Updated upstream
The BirdWeather FAQ and Forums has plenty of information on the additional hardware needed to create a remote listening location. We have compiled some of that information here.
=======
The BirdWeather FAQ and Forums has information on the additional hardware needed to create a remote listening location. We have compiled some of that information here. 

Each listening station needs a PUC or Raspberry Pi, power source, and internet connection. The various options for powering and connecting the station are organized from least complex/expensive (★) to most complex/expensive (★★★).
>>>>>>> Stashed changes

## PUC vs Raspberry Pi

### PUC

The PUC is a portable audio recording device created by BirdWeather. The device is also capable of reporting its GPS coordinates, gyroscopic information, and environmental data (air quality, light).

The PUC can be purchased on the [Birdweather website](https://www.birdweather.com/) for $249.

<<<<<<< Updated upstream
### Raspberry Pi

A similar setup could be made using a Raspberry Pi running BirdNet-Pi.
=======
## Helpful Resources

This thread on the BirdWeather forums has several users sharing their equipment lists:  
https://community.birdweather.com/t/thoughts-on-solar-powering-puc/44

### Raspberry Pi

A similar setup could be made using a Raspberry Pi running BirdNet-Pi. This method would require buying additional equipment including a microphone and weatherproof housing. The Birdweather Exhibit app should still work if your listening station uses a Pi, but may be missing some features (for example, if data from the environmental sensors is integrated).

## Internet

The PUC must be connected to Wi-Fi in order for the exhibit to show a realtime feed of bird detections.

### (★) Existing Wi-Fi Connection
For setup near buildings or some established research stations, this may not be an issue. This option is likely the cheapest and easiest, but you may be restricted to more human-populated areas. This will influence the number and types of birds your station will encounter, as many species are unlikely to be found in urban areas. If your exhibit is highlighting urban wildlife, perhaps this is fine!

### (★★) Mobile Hotspot
A live feed can be made possible in more remote areas that still have cellular service by using a mobile hotspot.

How much data does the PUC use?
This will heavily depend on how many birds are around your listening station. More detections = higher data use. A very active station should use ~3GB/day ([relevant BirdWeather Forum post](https://community.birdweather.com/t/internet-consumption/439/3)).

Another consideration is mobile hotspot limits on your data plan. Some mobile data plans, even "unlimited" plans, may cap the amount of data that can be used via a mobile hotspot. Double-check the plan terms to make sure it will meet your needs.

Choose a mobile router that works with your specific plan. Not all routers/plans are compatible.

Examples of Mobile Routers:
* https://a.co/d/1ORFCvG
* https://a.co/d/ghZYDpW

### (★★★) No Cellular Service?
A live feed is still possible in some locations that lack ceullar service, but the monthly costs will be more expensive. 

Starlink's roaming plan starts at $50/mo for 50GB. This may not be enough data for a recording station that runs 24/7 at a site with high bird activity, but it may be fine for other sites.
>>>>>>> Stashed changes

## Power

The PUC takes AA batteries. However, it will not be able to operate for more than a day on battery power alone.

The cheapest, most straight-forward option to continuously power the PUC is to plug it in via the USB-C port. If the power cable and/or PUC will be exposed to the elements, a weather-resistent power cable with a rubber seal on the connector should be used. BirdWeather's FAQ recommends the [Ring Indoor/Outdoor Power Adapter](https://a.co/d/3Smtuv1).

### Solar Power

<<<<<<< Updated upstream
If you're setting up the PUC in a remote location, you'll likely need to set up a solar panel. 

## Internet

The PUC must be connected to Wi-Fi in order for the exhibit to show a realtime feed of bird detections. For setup near buildings or some established research stations, this may not be an issue. This option is likely the cheapest and easiest, but you may be restricted to more human-populated areas. This will influence the number and types of birds your station will encounter, as many species do not occur in urban areas. If your exhibit is highlighting urban wildlife, perhaps this is fine!
=======
If you're setting up the PUC in a remote location, you'll likely need to use solar power. To do this, you'll need a solar panel, a controller, and a power bank.

**Solar Panel:**
To generate enough power to keep the station running, you'll need at least a 10W solar panel. Your local conditions, canopy coverage, etc may influence how much power you can generate. A higher wattage panel would be more conservative.
>>>>>>> Stashed changes

### Mobile Hotspot
A live feed can be made possible in more remote areas that still have cellular service by using a mobile hotspot.

<<<<<<< Updated upstream
How much data does the PUC use?
This will heavily depend on 
=======
Examples:
* Solar Panel:
	https://www.amazon.com/dp/B01M9B6RQI?_encoding=UTF8&psc=1&ref_=cm_sw_r_cp_ud_dp_M0RNGF1Y713X5J90R78D_1&skipTwisterOG=2
* Solar Panel with Built-in Controller:
	https://a.co/d/0egXe1j
>>>>>>> Stashed changes

### No Cellular Service?
A live feed is still possible in some locations that lack ceullar service, but the monthly costs will be more expensive.

<<<<<<< Updated upstream
Starlink's roaming plan starts at $50/mo for 50GB. This may not be enough data for a recording station that runs 24/7 at a site with high bird activity, but it may be fine for other sites. I have not heard of anyone attempting 
=======
**Controller:**
A controller is needed to ensure that the solar panel does not overcharge the battery and to prevent the battery from discharging into the solar panel at night. Some solar panels have a built-in controller.

Examples:
* Controller with Built-in Battery:
	https://a.co/d/0LfLbcK
* Controller:
	https://a.co/d/dsJuNis


**Power Bank:**
A power bank is used to keep the device from turning off when the solar panel isn't generating power.

Many power banks, like the ones used for charging devices when traveling, are designed to shut off when not in use. This is problematic for a remote station because the power bank would not charge the PUC until it's manually turned back on again. Thus, a power bank or battery without an auto shutoff is essential.

Some people prefer a LiFePO4 battery because it lasts for many charge/discharge cycles.

Examples:
* LiFeP04 battery:
	https://a.co/d/2y4V5po
* Another LiFeP04 battery:
	https://a.co/d/gMHWlzJ
* Voltaic "Always On" Power Bank:
	https://a.co/d/9YIoK8z

### (★★★) Solar Power + No Wi-Fi Connection

If you're setting up the PUC in a remote location, you may not have access to a power source or an existing Wi-Fi connection. You'll need to set up a system similar to the one described in the section "Solar Polar + Existing Wi-Fi Connection" but with more power to cover the addition of a mobile hotspot/router. Different routers may have different power draws. People have reported using a 100W solar panel for similar setups which would provide more than enough power.
>>>>>>> Stashed changes
