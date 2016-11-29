#lightsML

Let's monitor the lights around the house and see if we can train a machine learner to predict when they should be on or off.

Currently only works with Belkin WeMo lights.

##What to monitor?

Obviously we need to record light status.

It seems likely that this might change depending on:

- time
- occupancy
- weather
- sunrise/sunset times

Occupancy is a tough problem - we have to talk to sensors and have an
idea of room layout, so we'll shelve that for now.

Weather - we'll obtain current weather conditions via OpenWeatherMap.

Sunrise/sunset - if we know our geo coordinates then we can calculate these.
