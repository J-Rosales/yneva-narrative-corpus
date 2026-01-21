    ---
    kit: narrative-refactor-kit
    version: 1.0
    generated: 2026-01-19
    title: Methodology — Analyzing a Narrative Corpus with Contracts, Actor Models, and Commitments
    ---

    ## Audience and intent
This document is designed to be provided to an LLM agent alongside a story outline and revision requests.

The agent’s job is **selective refactoring**: improve coherence and causality without uncontrolled invention.

## Definitions (units)
- **Narrative corpus:** the complete material under analysis (outline, scenes, notes, dialogue, lore).
- **Narrative contracts:** global rules the story implicitly promises.
- **Actor models:** decision engines that keep behavior consistent.
- **Commitments:** irreversible state changes that anchor continuity.

## Core principle
Treat “plot holes” as **contract breaches** or **commitment violations**, not as isolated mistakes.

## Workflow
### Phase 0 — Establish constraints
1. Identify genre constraints (e.g., low-magic medieval).
2. Identify prohibited fixes (e.g., no new power systems, no retcons unless explicitly allowed).

Output: a short constraint list.

### Phase 1 — Extract narrative contracts
1. Read for implied rules (magic, memory, institutions, morality, travel, economy).
2. Write 10–25 one-sentence contracts.
3. For each contract, note evidence scenes and edge cases.

Output: `Narrative Contracts vN`.

### Phase 2 — Build actor models
1. List all actors who materially affect outcomes.
2. For each actor, specify Goal / Constraint / Blind spot / Escalation.
3. Validate by predicting what they would do in a new conflict.

Output: `Actor Models vN`.

### Phase 3 — Extract commitments
1. Scan the corpus for irreversible state changes.
2. Write each as a “state becomes true” statement.
3. Record consequences and reversal rules.

Output: `Commitments vN`.

### Phase 4 — Audit the corpus
For each scene or chapter, test:
- **Contract compliance:** does the scene obey the contracts?
- **Actor consistency:** do the choices match actor models?
- **Commitment continuity:** are prior commitments carried forward?

Output: an audit list of issues labeled as:
- CB = Contract Breach
- AD = Actor Drift
- CV = Commitment Violation

### Phase 5 — Refactor (preferred operations)
Apply fixes in this order (least risky to most risky):

1. **Remove** an element causing the breach (delete/merge scene mechanics).
2. **Re-sequence** (move a reveal earlier/later to restore causality).
3. **Replace** a mechanism with an existing one (reuse established systems).
4. **Constrain** (add a limit, cost, or failure mode already compatible with contracts).
5. **Add** only if necessary, and only as a *minimal* extension of existing contracts.

### Phase 6 — Prove the fix
For each proposed change, the agent must state:
- which breach it resolves,
- which contracts it preserves,
- which actor models remain unchanged,
- which commitments are affected.

## Agent operating rules (recommended)
When answering user questions, the LLM agent should:
- cite contract IDs, actor IDs, and commitment IDs,
- propose 1–3 fixes per issue, ranked by minimality,
- avoid new metaphysics unless explicitly requested,
- prefer deletions over explanations.

## Deliverable formats
- **Audit table** (issue → type → IDs → severity → fix options)
- **Patch notes** (what changed and why)
- **Rewritten scene** (only after contracts/models/commitments are stable)

