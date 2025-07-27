# BirdWeather Exhibit

A real-time bird detection display app that brings the sounds of nature into museums, visitor centers, and educational spaces. This app connects to remote bird listening stations to show visitors what birds are calling right now in natural areas, providing a window into local wildlife and AI-powered conservation technology.

## What This App Does

The BirdWeather Exhibit displays live bird detection data by:

- **Showing real-time bird detections** from one or more remote listening stations
- **Displaying bird photos and information** as species are detected
- **Providing educational content** about local bird species and their behaviors
- **Demonstrating AI technology** in wildlife conservation and research
- **Creating visitor experiences** that connect people with nature

Suitable for museums, nature centers, visitor centers, research stations, and educational institutions that want to showcase local wildlife and conservation technology.

## How It Works

1. **Remote Listening Station**: A weatherproof recording device (BirdWeather PUC) is placed in a natural area
2. **AI Detection**: The device uses artificial intelligence to identify bird calls in real-time
3. **Live Display**: Your exhibit screen shows detected birds as they're calling, with photos and information
4. **Educational Impact**: Visitors see live wildlife activity and learn about birds and conservation technology

## What You'll Need

### For the Exhibit Display
- **A display device**: Tablet, computer, or large screen
- **Internet connection**: To receive live data from the listening station
- **The BirdWeather Exhibit app**: This software (installation instructions below)

### For the Remote Listening Station
- **BirdWeather PUC device**: A specialized bird recording device (From [BirdWeather.com](https://www.birdweather.com/) or self-made)
- **Power source**: Either electrical outlet or solar power setup
- **Internet connection**: Wi-Fi or cellular data for the remote location

## Setting Up Your Listening Station

For complete hardware setup instructions, equipment lists, power options, and internet connectivity solutions, see our [Hardware Setup Guide](hardware.md). This covers everything from simple wall-powered setups to advanced remote solar installations.

## Installing the App

### Prerequisites

Before installing the app, you'll need:
- A computer with Flutter development tools installed
- Your BirdWeather station ID (see "Finding Your Station ID" below)
- A name for your location (what visitors will see in the app)

### Finding Your Station ID

1. Go to [BirdWeather.com](https://birdweather.com)
2. Find your station or the station you want to display
3. Look at the web address (URL) - the station ID is the number at the end
   - Example: `https://birdweather.com/stations/2354` → Station ID is `"2354"`

### Installation Steps

1. **Download the app code**:
   ```bash
   git clone https://github.com/jessicatir/birdweather-exhibit.git
   cd birdweather-exhibit/birdweather_exhibit
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Configure your station**:
   Open the file `lib/main.dart` and find these lines:
   ```dart
   stationId: "STATION_ID", // Replace with your station ID
   locationName: "LOCATION_NAME", // Replace with your location name
   ```

   Replace `"STATION_ID"` with your station ID and `"LOCATION_NAME"` with your location name.

4. **Build and run the app**:
   ```bash
   flutter run
   ```

### Configuration Details

The app uses a simple configuration system that connects to your specific BirdWeather station:

- **Station ID**: The unique identifier for your listening station
- **Location Name**: The friendly name displayed to visitors (e.g., "Forest Research Site", "Downtown Park", "University Campus")

When you change these settings, the app automatically:
- Connects to the correct listening station
- Updates all displays with your location name
- Caches data for offline viewing
- Subscribes to real-time detection updates

## Using the App

Once installed and configured, the app will:

1. **Connect to your listening station** and start showing live bird detections
2. **Display recent detections** with photos and species information
3. **Show location information** and current status
4. **Work offline** using cached data when internet is unavailable
5. **Update automatically** as new birds are detected

The interface is designed for visitors while requiring no interaction - suitable for public display screens.

## Features

- **Real-time bird detection display** with automatic updates
- **Species photos** and educational information
- **Offline functionality** with caching
- **Responsive design** that works on tablets, computers, and large displays
- **Educational content** about local bird species
- **Live status indicators** showing connection to the listening station
- **Automatic transitions** between different detected species

## Technical Details

Built with Flutter for cross-platform compatibility, the app uses:
- **GraphQL API** for real-time data from BirdWeather
- **Smart caching** for offline functionality
- **Responsive design** for various screen sizes
- **Real-time subscriptions** for live updates
- **Modular architecture** for easy customization

## Troubleshooting

### App Won't Connect
- Check your internet connection
- Verify your station ID is correct
- Ensure your listening station is online and detecting birds

### No Bird Detections Showing
- Confirm your listening station is powered and connected
- Check that birds are actually calling in your area
- Verify the station is properly configured on BirdWeather.com

### App Crashes or Won't Start
- Check that you've run `flutter pub get` to install dependencies
- Verify your station configuration in `main.dart` is correct
- Try running `flutter clean` and then `flutter pub get` again

## Hardware Setup Help

For specific hardware setup questions and community support, visit the [BirdWeather Community Forums](https://community.birdweather.com). See our [Hardware Guide](hardware.md) for equipment recommendations and setup instructions.

## Affiliation

The authors of this project are not affiliated with BirdWeather and did not create the BirdWeather PUC or BirdWeather API. This is an independent project that uses the BirdWeather platform to create educational exhibits.
