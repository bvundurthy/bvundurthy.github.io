---
layout: archive
title: "Game Theory"
permalink: /game-theory/
author_profile: true
---
{% include toc %}

This page focuses on strategic interaction in multi-agent systems facing intelligent adversaries. My research explores geometric evasion tactics, dynamic role-switching using differential games, and methods for exploiting opponent learning through strategic deception.

## Handling a Vision-guided Adversary

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/2_GameTheory/2. Intro Rescue.mp4">
  Your browser does not support the video tag.
</video>

In high-risk environments like defense zones, autonomous agents must complete delivery tasks while simultaneously evading intelligent adversaries, creating a complex multi-objective problem. This is challenging because the adversary is often faster and better equipped, for instance, using vision sensors, while friendly rescue agents may operate with less information, relying only on wireless communication. To address this, the paper introduces a geometric framework based on Apollonius circles to compute "safe regions" where a delivery agent can rendezvous with a rescue agent before being intercepted. The impact of this technique is a hardware-efficient strategy that enables effective protection using only low-end microcontrollers, demonstrating that complex coordination and defense can be achieved without costly sensors on every agent. 

---

## Adversarial Interactions via Differential Games

<video width="400" height="250" controls style="float: right; margin-right: 1em; border-radius: 8px;" src="/media/2_GameTheory/TAD_New_Expt_2_revision_submit_final.mp4">
  Your browser does not support the video tag.
</video>

In complex defense scenarios, a defending agent faces the multi-objective dilemma of either intercepting an attacker or rescuing multiple targets. This decision is difficult because the interactions are not fixed; the defender can switch its role, and the attacker can dynamically change which target it pursues, making the engagement highly unpredictable. This paper models the conflict as a linear quadratic differential game and introduces a receding horizon approach to manage these dynamic changes. The impact is a framework that allows the defender to autonomously switch between "rescue" and "interception" modes based on the current threat level.

---

## Deception against Boundedly Rational Players

Fictitious Play (FP) typically assume all participants are playing by the same rules. The attached paper investigates what happens when this assumption is broken by introducing a single "intelligent player" (IP) who knows the entire game's payoff structure and is not required to follow FP. By strategically deviating from the standard algorithm, the IP can manipulate its opponents, who are predictably learning based on the history of actions. This allows the intelligent player to secure a payoff for itself that is superior to both the Nash and Stackelberg equilibrium outcomes. This result highlights a key fragility in the Fictitious Play algorithm, demonstrating how a strategic, deceptive agent can exploit the system and gain a significant advantage by leveraging superior information.

---
