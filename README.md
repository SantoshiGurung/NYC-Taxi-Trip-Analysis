# NYC Taxi Trip Analysis: Driver Revenue Strategy

## Project Goal
The objective of this analysis was to move beyond raw data and find actionable insights for NYC taxi drivers. By cleaning and querying 1 million+ records, I focused on identifying where and when a driver can maximize their earnings and avoid "dead time."

## Core Analysis & Logic

### Identifying High-Value Tip Zones
I built a logic that compares average tips in specific neighborhoods against the city-wide average. This allows us to see which zones are consistently more profitable than others.

### Calculating The Traffic Trap (MPH)
Using trip distance and duration, I calculated the average speed in Miles Per Hour for every hour of the day. This reveals the exact windows where traffic congestion makes it physically impossible to maintain a high trip volume.

### Payment Method Influence
I analyzed the correlation between payment types (Credit Card vs. Cash) and tip amounts. This helps determine if the method of payment is a reliable predictor of a driver's final take-home pay.

## Technical Skills Applied
* SQL Logic: Multi-stage CTEs, Data Filtering, Aggregations.
* Data Cleaning: Eliminating $0 fares and 0-minute "ghost" trips.
* Speed Calculation: Converting raw duration into MPH for human-readable insights.
