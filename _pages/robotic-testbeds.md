---
layout: archive
title: "Robotic Testbeds"
permalink: /robotic-testbeds/
author_profile: true
---
{% include toc %}


My research centers on deploying intelligent robotic systems to solve practical challenges in hazardous and unstructured environments. This page highlights testbeds used to develop and validate new methods for multi-robot teamwork in search and rescue and advanced single-robot mobility for industrial inspection.

## Highly Evolved Heterogeneous Multi-robotic Fleet

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/4_ConvoyMMPUG/IntroFleet.mp4">
  Your browser does not support the video tag.
</video>

In critical scenarios like search and rescue, teams must simultaneously map unknown areas, navigate complex terrain, and maintain communication. Achieving these diverse objectives is a significant challenge, particularly in environments without reliable GPS or communication infrastructure. This project deploys a fleet of robots equipped with a versatile, multi-sensor payload for advanced perception and mapping. My efforts in this project pertain to operating this fleet as a convoy, strategically "peeling" off robots to create a communication relay network back to the base station. This technique enhances operational range and situational awareness while minimizing the cognitive load on human operators in hazardous conditions.

---

## Advancing Snake Robot Locomotion and Autonomy

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/3_Testbeds/SnakeRobot.mp4">
  Your browser does not support the video tag.
</video>

Snake robots are uniquely suited for inspecting hazardous and inaccessible pipe networks in industries like power generation, as their flexible bodies can navigate complex structures impossible for rigid robots. Still, autonomously navigating external obstacles and T-junctions has been a significant hurdle. This work introduces two novel locomotion strategies to solve this: a **spiraling gait** to maneuver around obstructions and a **windowed rolling helix gait** to seamlessly cross T-junctions. These strategies enhance the robot's autonomy, enabling more effective and robust inspections of intricate industrial pipelines with minimal operator intervention.

---

##  Developing minimalistic robots from scratch

![A descriptive alt text for your GIF](/media/3_Testbeds/four_rbt_pic.JPG){: .align-right style="width: 40%; height: auto;"}

<!-- During my PhD, I designed and developed a minimalistic multi-robot fleet of wheeled robots that costed less than $50 a robot. The primary purpose of these robots is to illustrate the efficacy of my search algorithms by implementing them on minimalistic robots with nothing more than a microcontroller for computation purposes. In order to keep them minimalistic, these robots used wheel encoders using opto-isolator sensors for dead reckoning, Arduino UNO for compute, and XBee modules for inter-agent communication. In addition to an efficient execution of multi-robot rendezvous and search algorithms, these robots also demonstrated advanced pursuit evasion games where a vision-guided adversary was equipped with a Raspberry Pi to perform on-board computer vision to detect and pursue a weaker prey robot.  -->

During my PhD, I designed and developed a fleet of minimalistic multi-robot systems, with each robot costing less than $50 to build. The primary purpose of this fleet was to demonstrate the efficacy of my search algorithms on hardware with significant computational and sensing constraints.

To maintain this minimalist design, the robots relied on wheel encoders with opto-isolator sensors for dead reckoning, an Arduino UNO for computation, and XBee modules for inter-agent communication. This fleet successfully executed multi-robot rendezvous and search algorithms. Furthermore, it demonstrated advanced pursuit-evasion games where a vision-guided adversary, equipped with a Raspberry Pi, used on-board computer vision to detect and pursue a weaker prey robot.

