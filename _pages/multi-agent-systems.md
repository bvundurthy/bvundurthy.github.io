---
layout: archive
title: "Multi-agent Systems"
permalink: /multi-agent-systems/
author_profile: true
---
{% include toc %}

This page is primarily concerned with the **First C: Constraint**, which studies the collaboration in multi-agent systems in the presence of obstacles and constraints. Collaborative Multi-agent systems is a multi-faceted domain with multiple research thrusts. Here's a look at how my work addresses some of them.

## Multi-agent Rendezvous Problems

<!-- ![A descriptive alt text for your research image](/media/1_Rendezvous/rob_3_obst_2_poly_static.mp4){: .align-right} -->

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/1_Rendezvous/rob_3_obst_2_poly_static.mp4">
  Your browser does not support the video tag.
</video>

In collaborative robotics for search-and-rescue operations and welfare support, agents must often meet to exchange items or perform joint tasks. This **rendezvous problem** is challenging in cluttered environments, where the goal is to find an optimal meeting spot that minimizes travel distance or time while navigating around obstacles. Our work employs geometric algorithms to compute this optimal location, such as a "gathering point" that minimizes the maximum path any robot travels or a "time-optimal" point for heterogeneous robots with differing speeds. Our research also addresses variants including navigation around both static and dynamic obstacles and rendezvous using only limited communication like IR beacons.

**Relevant Publications**

1. **[Multi-agent rendezvous with a minimax distance constraint](https://ieeexplore.ieee.org/document/8333810)** (*IEEE Transactions on Industrial Informatics*, 2019)   [Postprint](https://bvundurthy.github.io/media/0_Pubs/J01_MultiAgentGatheringMinimaxDistance_TII2019_PostPrint.pdf)

2. **[Multi-agent time-optimal rendezvous](https://ieeexplore.ieee.org/document/8591456)** (*IECON*, 2018)  [Postprint](https://bvundurthy.github.io/media/0_Pubs/C002_TimeOptimalRendezvous_IECON2018_PostPrint.pdf)

3. **[Rendezvous of Heterogeneous Robots in Minimum Time](https://dl.acm.org/doi/abs/10.1145/3352593.3352647)** (*Advances in Robotics (AIR)*, 2019)  [Postprint](https://bvundurthy.github.io/media/0_Pubs/C003_RendezvousHeterogeneousMinTime_AIR2019_PDF.pdf)

4. **[Rendezvous of heterogeneous robots with limited communication](https://ieeexplore.ieee.org/document/7441158)** (*Indian Control Conference (ICC)*, 2016) [Postprint](https://bvundurthy.github.io/media/0_Pubs/C001_RendezvousHeterogeneousRobots_ICC2016_PostPrint.pdf)

---

## Multi-agent Collaborative Construction (MACC)

![A descriptive alt text for your GIF](/media/1_Rendezvous/MACC.gif){: .align-right style="width: 27%; height: auto;"}

To enable large-scale robotic construction in hazardous settings like space or disaster sites, teams of agents must build complex structures from simple blocks. This problem is challenging because robots must build and later remove temporary scaffolding to access higher locations, creating an intractable long-horizon planning problem for large structures. Our work introduces novel **decomposition** and **hierarchical** techniques, first planning abstractly before calculating detailed robot paths. These planners are designed for efficiency, achieving up to a 100x speedup in simulation over previous optimal methods, making them viable for future implementation on physical robotic platforms.

**Relevant Publications**

1. **[Hierarchical Planning for Long-Horizon MACC](https://ieeexplore.ieee.org/document/10611496)** (*ICRA*, 2024)   [Postprint](https://bvundurthy.github.io/media/0_Pubs/C009_HierarchicalMultiAgentCollectiveConstruction_ICRA2024_PostPrint.pdf)

2. **[MACC Using 3D Decomposition](https://ieeexplore.ieee.org/document/10341964)** (*IROS*, 2023)  [Postprint](https://bvundurthy.github.io/media/0_Pubs/C007_MultiAgentCollectiveConstruction_IROS2023_PostPrint.pdf)


---

## Multi-agent convoying 

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/4_ConvoyMMPUG/ConvoyDecentralized.mp4">
  Your browser does not support the video tag.
</video>

For logistics and search-and-rescue missions, robotic convoys must navigate complex environments, often requiring the convoy to split or merge to meet changing operational needs. This is challenging because it requires both high-level route synchronization for the entire team and low-level, high-speed control to maintain tight formations without instability. Our work presents a novel framework combining a centralized **Vehicle Routing Problem (VRPMS-CC)** for mission planning with a decentralized **Model Predictive Control (MPC)** scheme for execution. This allows for optimal route planning while enabling individual robots to reactively adjust to their neighbors at high speeds. We have successfully demonstrated this approach on our custom-fabricated ground vehicles, showing robust performance in cluttered indoor environments.

**Relevant Publications**

1. **[A Synchronized Task Formulation for Robotic Convoy Operations](https://ieeexplore.ieee.org/document/11005881)** (*IEEE RA-L*, 2025) [Postprint](https://bvundurthy.github.io/media/0_Pubs/J08_VRPMS-CC_with_Heuristic_RA-L_2025_PostPrint.pdf)

2. **[Distributed Optimal Control Framework for High-Speed Convoys](https://www.sciencedirect.com/science/article/pii/S2405896323015197)** (*IFAC-PapersOnLine*, 2023)  [Postprint](https://bvundurthy.github.io/media/0_Pubs/C005_HighSpeedConvoy_IFAC2023_PostPrint.pdf)


---

## Multi-agent Ergodic search 

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/1_Rendezvous/ergodic.mp4">
  Your browser does not support the video tag.
</video>

In real-world emergencies like search-and-rescue, a robot must find survivors while also mapping hazards—a difficult multi-objective problem. This is tough because optimally assigning conflicting tasks to a robotic team is a computationally expensive combinatorial challenge. We tackle this with two specialized planners: a sequential local search to find a Pareto front of optimal trade-offs for a single robot, and a branch-and-bound algorithm for multi-agent ergodic search to efficiently allocate team tasks.  Our methods deliver up to a 10x speedup over standard approaches and have been validated on physical robots, confirming their practical readiness.

**Relevant Publications**

1. **[A Pareto-Optimal Local Optimization Framework for Multiobjective Ergodic Search](https://ieeexplore.ieee.org/document/10158414)** (*IEEE Transactions on Robotics*, 2023)  [Postprint](https://bvundurthy.github.io/media/0_Pubs/J04_ParetoOptimalMultiObjectiveErgodicSearc_TRO2023_PostPrint.pdf)

2. **[Multi-Agent Multi-Objective Ergodic Search Using Branch and Bound](https://ieeexplore.ieee.org/document/10341353)** (*IROS*, 2023)   [Postprint](https://bvundurthy.github.io/media/0_Pubs/C006_MultiAgentMultiObjectiveErgodicSearch_IROS2023_PostPrint.pdf)


---
