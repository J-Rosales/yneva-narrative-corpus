    ---
    kit: narrative-refactor-kit
    version: 1.0
    generated: 2026-01-19
    title: Narrative Contracts — Definition and Use
    ---

    ## Purpose
This document defines *narrative contracts* as a unit for analyzing and refactoring a story outline with an LLM.

Use this kit when you want an LLM agent to:
- preserve global coherence while rewriting locally,
- detect contradictions as **contract breaches**, not as isolated “plot holes”,
- avoid lore-bloat fixes that patch one scene while breaking others.

## Definition
A **narrative contract** is a *global promise* the story makes to the audience about how the world, causality, and interpretation work.

A contract is not a plot point. It is a constraint that shapes many plot points.

**A contract is valid if a competent reader can infer it from the text and use it to predict what should be possible.**

## What contracts are (and are not)
### Contracts are:
- **Global**: they apply across chapters unless explicitly revised.
- **Predictive**: they let a reader anticipate outcomes.
- **Testable**: scenes can comply with or violate them.
- **Minimal**: short, clear, non-explanatory statements.

### Contracts are not:
- background lore dumps,
- in-world “physics textbooks”,
- moral theses,
- lists of events.

## Why this helps LLMs
LLMs struggle when the narrative’s implicit rules shift without being stated.

Contracts turn hidden assumptions into explicit constraints, which lets an agent:
- revise a scene while maintaining *system-level invariants*,
- flag inconsistencies early,
- propose fixes that *remove* contradictions instead of inventing new powers.

## Best practices
1. **Write contracts in one sentence** each.
2. **Prefer limits over capabilities.** (“X cannot happen unless Y.”)
3. **Avoid proper nouns.** Contracts should outlive renames.
4. **Keep the list small.** ~10–25 contracts is usually enough.
5. **Treat changes as versioned edits.** If you must change a contract, record when and why.

## Common failure modes
- **Contract sprawl**: too many contracts, no hierarchy.
- **Local contracts**: rules that only exist to justify one scene.
- **Explainer contracts**: long metaphysical lectures that introduce more exceptions than constraints.

## How to validate contracts
For each contract, ask:
- *Which scenes depend on this being true?*
- *Which scenes would break if it were false?*
- *Does the text clearly communicate this to the player?*

If you cannot answer these, the contract is too vague or not actually a contract.

