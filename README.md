# Openpilot Snapshot

## Introduction

This code was written as an example of how to pull an RGB image from the rear camera on [Comma AI Openpilot](http://github.com/commaai/openpilot). This code was written for OpenPilot v0.7.2 and will stop working in the future when [VisionIPC is removed/replaced.](https://github.com/commaai/openpilot/issues/1038)

The code connects to VisionIPC and pulls an image from the rear camera. Camerad must be running for an image to be pulled.

## Compiling

This example code is meant to be compiled on the EON. Simply run `make`

## Credits and Attributions

Credits:

- [Shane Smiskol](https://github.com/ShaneSmiskol)
- [Brian Czapiga](https://github.com/BrianCzapiga)

Contains code from:

- [Milo Yip's SVPNG](https://github.com/miloyip/svpng)
- [Comma.AI testraw.cc](https://github.com/commaai/openpilot/blob/da079d47d7d9496723117700ae1bb51c1f1abc38/selfdrive/loggerd/tests/testraw.cc)
- [Sander De Dycker](https://stackoverflow.com/users/822669/sander-de-dycker)'s [Answer on StackOverflow](https://stackoverflow.com/questions/28603510/convert-yuv420p-to-rgb888-in-c)
