---
layout: archive
title: "Multi-agent Systems"
permalink: /multi-agent-systems/
author_profile: true
---
{% include toc %}

This page is primarily concerned with collaboration in multi-agent systems in the presence of obstacles and constraints. Collaborative Multi-agent systems is a multi-faceted domain with multiple research thrusts. What follows is a brief summary of such research. 

## Multi-agent Rendezvous Problems

<!-- ![A descriptive alt text for your research image](/media/1_Rendezvous/rob_3_obst_2_poly_static.mp4){: .align-right} -->

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/1_Rendezvous/rob_3_obst_2_poly_static.mp4">
  Your browser does not support the video tag.
</video>

In collaborative robotics for search-and-rescue operations and welfare support, agents must often meet to exchange items or perform joint tasks. This **rendezvous problem** is challenging in cluttered environments, where the goal is to find an optimal meeting spot that minimizes travel distance or time while navigating around obstacles. Our work employs geometric algorithms to compute this optimal location, such as a "gathering point" that minimizes the maximum path any robot travels or a "time-optimal" point for heterogeneous robots with differing speeds. Our research also addresses variants including navigation around both static and dynamic obstacles and rendezvous using only limited communication like IR beacons.

<!-- **Relevant Publications**

1. **[Multiagent Gathering With Collision Avoidance and a Minimax Distance Criterion—Efficient Algorithms and Hardware Realization](https://ieeexplore.ieee.org/document/8333810)** (*IEEE Transactions on Industrial Informatics*, 2019)  
**B. Vundurthy** and K. Sridharan  [Preprint](https://bvundurthy.github.io/media/6_papers/2_Minimax_TII_2018.pdf)
1. **[Rendezvous of Heterogeneous Robots in Minimum Time - Theory and Experiments](https://dl.acm.org/doi/abs/10.1145/3352593.3352647)** (*Advances in Robotics (AIR)*, 2019)  
Onkar Kulkarni, **B. Vundurthy**, and K. Sridharan
1. **[Time Optimal Rendezvous for Multi-Agent Systems Amidst Obstacles - Theory and Experiments](https://ieeexplore.ieee.org/document/8591456)** (*IECON*, 2018)  
**B. Vundurthy** and K. Sridharan
1. **[Rendezvous of heterogeneous robots amidst obstacles with limited communication](https://ieeexplore.ieee.org/document/7441158)** (*Indian Control Conference (ICC)*, 2016)  
**B. Vundurthy**, A. More, S. V. V. Raju and K. Sridharan -->


<!-- Key publications in this area include work on [robotic convoying](/publication/2025-robotic-convoying) and multi-target defense games. -->

---

## Multi-agent Collaborative Construction 

![A descriptive alt text for your research image](https://placehold.co/400x250/EEE/31343C?text=Your+Image+Here){: .align-right}

To enable large-scale robotic construction in hazardous settings like space or disaster sites, teams of agents must build complex structures from simple blocks. This problem is challenging because robots must build and later remove temporary scaffolding to access higher locations, creating an intractable long-horizon planning problem for large structures. Our work introduces novel **decomposition** and **hierarchical** techniques, first planning abstractly before calculating detailed robot paths. These planners are designed for efficiency, achieving up to a 100x speedup in simulation over previous optimal methods, making them viable for future implementation on physical robotic platforms.

<!-- Key publications in this area include work on [robotic convoying](/publication/2025-robotic-convoying) and multi-target defense games. -->

---

## Multi-agent convoying 

![A descriptive alt text for your research image](https://placehold.co/400x250/EEE/31343C?text=Your+Image+Here){: .align-right}

For logistics and search-and-rescue missions, robotic convoys must navigate complex environments, often requiring the convoy to split or merge to meet changing operational needs. This is challenging because it requires both high-level route synchronization for the entire team and low-level, high-speed control to maintain tight formations without instability. Our work presents a novel framework combining a centralized **Vehicle Routing Problem (VRPMS-CC)** for mission planning with a decentralized **Model Predictive Control (MPC)** scheme for execution. This allows for optimal route planning while enabling individual robots to reactively adjust to their neighbors at high speeds. We have successfully demonstrated this approach on our custom-fabricated ground vehicles, showing robust performance in cluttered indoor environments.

<!-- Key publications in this area include work on [robotic convoying](/publication/2025-robotic-convoying) and multi-target defense games. -->

---

## Multi-agent Ergodic search 

<!-- ![A descriptive alt text for your research image](https://placehold.co/400x250/EEE/31343C?text=Your+Image+Here){: .align-right} -->

<iframe width="400" height="250" src="https://www.youtube.com/embed/dQw4w9WgXcQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="float: right; margin-right: 1em; border-radius: 8px;"></iframe>

In real-world emergencies like search-and-rescue, a robot must find survivors while also mapping hazards—a difficult multi-objective problem. This is tough because optimally assigning conflicting tasks to a robotic team is a computationally expensive combinatorial challenge. We tackle this with two specialized planners: a sequential local search to find a Pareto front of optimal trade-offs for a single robot, and a branch-and-bound algorithm for multi-agent ergodic search to efficiently allocate team tasks.  Our methods deliver up to a 10x speedup over standard approaches and have been validated on physical robots, confirming their practical readiness.


<!-- Key publications in this area include work on [robotic convoying](/publication/2025-robotic-convoying) and multi-target defense games. -->

---
