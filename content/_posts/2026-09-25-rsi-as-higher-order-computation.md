---
layout: post
title: "Recursive Self-Improvement as Higher-Order Computation"
subtitle: "RSI is computation over the process of computation itself"
date: 2026-09-25
author: "Xiaming Chen"
header-img: "img/post-bg-universe.jpg"
tags: ["RSI", "Higher-Order Computation", "Distributed Computing", "AI"]
---

I have been circling this idea for a while, in different disguises. The
meta-computability notes back in 2018 were one pass: what happens when the thing
being computed is not a value but the *process* of computing. The LaCogito
project, with its Gödel-machine-inspired execution engine, was another pass,
dressed up as an engineering plan. Composable Intelligence was another, seen
from the side of the substrate. This note is the cleanest version I can write
down so far. I want to state it plainly, without the scaffolding of a project
announcement or a framework pitch.

The claim fits in one line: **Recursive Self-Improvement (RSI) is computation over the process of computation itself.**

The rest is just unpacking that sentence. I am writing it down mostly to get it
out of my head (不求看官解，自娱耳). If you have been thinking along similar
lines, welcome to compare notes.

<!-- more -->

## From Computation to Computation of Computation

A conventional computational system follows a relatively fixed process:

```
Input → Computation → Output
```

A distributed system introduces decomposition:

```
Problem → Decomposition → Parallel Computation → Aggregation → Result
```

RSI introduces another layer:

```
Problem → Computation Policy → Computation → Observation → Policy Improvement
```

The system therefore operates on two levels. At the first level it solves the
target problem. At the second level it observes how the problem is being solved
and modifies the strategy used to solve it. This leads to a useful
interpretation: **RSI is computation over the process of computation itself.**
The system is not only searching for better answers. It is searching for better
ways of searching.

## The Core: A High-Order Decomposition Policy

The central mechanism of RSI is a high-order decomposition and orchestration
policy. Such a policy determines:

- how a problem is decomposed;
- which subproblems should be explored;
- which computations should run in parallel;
- which paths should be abandoned;
- when additional exploration is worthwhile;
- how intermediate results influence subsequent exploration;
- when the system should revise its own strategy.

This is fundamentally different from a static task scheduler. A traditional
scheduler decides where and when computation runs. An RSI policy decides *what
computation should exist in the first place*.

The distinction: **distributed computing optimizes the execution of computation,
while RSI optimizes the generation and organization of computation.** This is
why RSI can be considered a higher-order extension of distributed computation.

## From Execution History to Policy

A self-improving system requires information about its previous behavior. Every
execution produces a trajectory:

```
Action → Observation → Outcome
```

Across many trajectories, the system accumulates a history of decisions and
consequences. This history provides the raw material for discovering
relationships between:

- system parameters;
- actions;
- intermediate states;
- predictors;
- outcomes;
- execution costs.

The objective is not to memorize successful solutions, but to understand *why*
certain computational paths produce better outcomes. The accumulated history can
therefore become a substrate for policy optimization.

## Causal Inspection as the Basis of Policy Improvement

A particularly important capability is the automatic inspection of relationships
between system variables.

Suppose a system observes that changes in parameter `A` are repeatedly associated
with changes in outcome `B`. A sufficiently capable reasoning system can
investigate whether this relationship reflects:

- correlation;
- dependency;
- interaction;
- or a deeper causal relationship.

This provides a more meaningful basis for policy improvement. Instead of simply learning **"When A happens, B often happens."**, the system attempts to learn **"Changing A under these conditions causes B, therefore future exploration should allocate computation differently."**

Causal inspection thus becomes a bridge between observations and policy
modification. It allows the system to transform accumulated execution data into
structural knowledge about the target system.

## AI as an Automatic Policy Discovery Engine

The causal inspection process itself can increasingly be automated by AI. An
AI-driven RSI system can continuously:

1. collect execution data;
2. identify important parameters and predictors;
3. discover structural relationships;
4. generate hypotheses about causal dependencies;
5. evaluate those hypotheses through further computation;
6. update its decomposition and exploration policy;
7. execute the improved policy;
8. repeat the cycle.

The resulting loop is:

```
Explore → Observe → Infer → Improve Policy → Explore Again
```

This is the essential recursive structure of RSI. The important point is that
the system is not merely learning a better model of the target problem. It is
using that model to improve the mechanism through which it searches for
solutions.

## RSI as Higher-Order Distributed Intelligence

This perspective also changes how distributed computing can be understood. In
ordinary distributed computing, many computational agents execute a predefined
strategy. In RSI, the distributed system can potentially optimize the strategy
itself.

The hierarchy becomes:

```
Level 0 — Computation
    Execute operations
Level 1 — Distributed Computation
    Decompose and coordinate operations
Level 2 — Adaptive Computation
    Adjust computation according to observations
Level 3 — Recursive Self-Improvement
    Improve the policy that determines the computation
Level 4 — Meta-Recursive Intelligence
    Improve the mechanisms used to improve the policy
```

At each higher level, the system operates on the computational process of the
level below. This provides one possible interpretation of higher-order
intelligence.

## The Deeper Principle

The deepest idea behind RSI is therefore not simply **make the model smarter**. It is **make the system better at discovering how to become smarter**.

The object being optimized moves from the solution to the search process, and
eventually to the policy that controls the search process. This creates a recursive loop: **solutions improve through better policies, policies improve through better understanding of computation, and understanding improves through further computation.**

In this sense, RSI represents a transition from automated computation to
self-improving computation.

## Conclusion

RSI can be understood as a higher-order computational paradigm. Its core is a
hierarchical decomposition and orchestration policy that controls how
computation is generated, distributed, evaluated, and revised. The policy can be
continuously improved by mining execution history and automatically inspecting
structural and causal relationships between parameters, actions, predictors, and
outcomes. AI provides the mechanism for automating this inspection and turning
observations into new policies.

The fundamental transition is **from computing solutions to computing better ways of finding solutions.** And ultimately: **RSI is a computational system that recursively discovers and improves the policies governing its own computation.**

That is the whole claim. I do not think it requires any new physics or
hand-waving about emergence. It requires taking the idea of higher-order
computation seriously enough to actually build the policy layer, instead of just
talking about it. That, as usual, is the hard part.
