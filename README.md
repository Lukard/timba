![Timba CI - Unit Tests](https://github.com/Lukard/timba/workflows/Timba%20CI%20-%20Unit%20tests/badge.svg?branch=master)
![Timba CI - End to End Web](https://github.com/Lukard/timba/workflows/Timba%20CI%20-%20End%20to%20end%20Web/badge.svg?branch=master)
![Timba CI - End to End iOS](https://github.com/Lukard/timba/workflows/Timba%20CI%20-%20End%20to%20end%20iOS/badge.svg?branch=master)
![Timba CI - End to End Android](https://github.com/Lukard/timba/workflows/Timba%20CI%20-%20End%20to%20end%20Android/badge.svg?branch=master)
![Timba CD - Publish Web](https://github.com/Lukard/timba/workflows/Timba%20CD%20-%20Publish%20Web/badge.svg)
![Timba CD - Publish Android](https://github.com/Lukard/timba/workflows/Timba%20CD%20-%20Publish%20Android/badge.svg?branch=master)
[![codecov](https://codecov.io/gh/Lukard/timba/branch/master/graph/badge.svg)](https://codecov.io/gh/Lukard/timba)

# Timba

Estimate your tasks in this scrum poker planning session

## Aim of this project
This project is meant to be a full open source product. Everything is (and will be) 
documented so everyone can participate and learn from it.

### For everyone
This product must be able to be used by anyone, so the more platforms where it runs, and
the more accessible it is the better.

## Technology
### Frontend framework
The frontend technology chosen to develop this project is: [Flutter](https://flutter.dev/)

The main reasons to choose Flutter as development frontend framework:
- **Multiplatform framework**. The very first dilemma that I faced as a single developer who
has to build an entire product by himself is how to invest properly my limited time. 
The first idea that came to my mind is: `Write once run everywhere`.
- **Huge community behind**. The community is pretty big, lots of articles, lots of 
questions on stackoverflow. So in case of needing help I know where to look for it.
- **Solid company behind**. Google is actively developing Flutter in the most open-source way
possible. Meanwhile, Google is well-known for abruptly abandoning some of their project 
(I still love Project Tango). However, Flutter is being really well-received by developer
community, and it will be the main framework for building apps in Fuchsia.

### Continuous Integration / Delivery
**Github Actions** is the chosen solution for continuous integration / delivery because:
- Integrated in the repository
- Huge community developing really useful actions
- Free for open-source projects
- Linux, MacOs and Windows supported, so it fits the compilation needs of this project

## Continuous Integration
The Continuous Integration system for this project will run on every push/merge to master 
and every push to a pull request. There are four things that will be checked:
- Unit tests
- End to end tests for Web
- End to end tests for Android
- End to end tests for iOS

If all those four checks are green you will be able to merge your branch to master.
