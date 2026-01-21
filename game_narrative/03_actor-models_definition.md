    ---
    kit: narrative-refactor-kit
    version: 1.0
    generated: 2026-01-19
    title: Actor Models — Definition and Use
    ---

    ## Purpose
This document defines *actor models* as a unit for keeping character and faction behavior consistent during revision.

The goal is not psychological realism. The goal is *predictable causality*.

## Definition
An **actor model** is a compact specification of how an actor (character, faction, institution, force) makes decisions.

Actor models prevent “personality drift” and “IQ drift” during rewrites.

## Required fields
A good actor model is short and includes:
- **Goal:** what the actor optimizes.
- **Constraint:** what limits the actor (material, social, metaphysical).
- **Blind spot:** what the actor fails to perceive or refuses to value.
- **Escalation pattern:** how the actor responds when blocked.

Optional but useful:
- **Resources:** what tools/power they can reliably deploy.
- **Taboos:** what they will not do (until they do).
- **Tells:** repeatable behaviors that signal internal state.

## Why this helps LLMs
LLMs will often “fix” a plot problem by changing a character’s competence or morality between scenes.

Actor models keep rewrites honest:
- If a fix requires a character to act out-of-model, the fix is suspect.
- If a scene needs a different choice, update the model *and* justify that change in-text.

## Best practices
- Write in **behavioral** terms, not vibes.
- Avoid backstory unless it directly constrains decisions.
- Separate **actor** (decision engine) from **role** (plot function).

## Validation prompts
- *If this actor appears in a new scene, what is the default move?*
- *What would this actor sacrifice to win?*
- *What does this actor predictably misunderstand?*

