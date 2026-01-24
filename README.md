# Yneva Narrative Corpus

This repository is a **narrative-first world archive** for the Yneva setting.

It is a corpus of **perspectives** (diegetic and quasi-diegetic) plus a small set of **world-instance constraints** used to support coherent narrative production.

## External authority: Historically Informed Plausibility Framework (HIPF)

All structural plausibility rules, admissibility criteria, and evaluative language are defined by HIPF:

- https://github.com/J-Rosales/historically-informed-plausibility-framework

## Representation layer: Historically-Informed Causal Encoding Layer (HICEL)

Encoding conventions and schema structure for representation are defined by HICEL:

- https://github.com/J-Rosales/historically-informed-causal-encoding-layer

This repository contains **no internal plausibility constitution**. See `constitution/README.md`.

## Repository structure

### `corpus/`
Primary narrative materials. All documents are diegetic or quasi-diegetic.

Subdirectories:
- `traditions/` myths, oral histories, sacred narratives, poetry
- `polities/` decrees, laws, court chronicles, annals
- `personal/` letters, memoirs, diaries, marginalia
- `foreign_views/` outsider accounts

### `world_constraints/`
Non-diegetic, world-instance constraints (species baselines, social norms, institutional affordances).
These are **instantiations** used by Yneva; they do not define new global theory.

### `beliefs/`
Non-diegetic reconstructions of belief patterns and institutionalized practice.

### `timeline/`
A thin, ordered chronology used for navigation and synchronization.

### `periodization/`
Period naming and boundaries used for indexing.

## Document headers

For new documents, prefer **YAML frontmatter** for machine-readability.
Templates are provided under `templates/` (HIPF template filenames end in `_HIPF_TEMPLATE.md`).

## What this repository is not

- Not a canonical "what really happened" database
- Not a simulation engine
- Not a framework defining plausibility rules (HIPF provides that)
