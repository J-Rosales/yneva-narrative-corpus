# Periodization Notes

Period names and boundaries in `periodization/` are **meta-historical tools**: they name and partition time for indexing and coordination.
They are not, by themselves, claims about what “really happened.”

## Principles

- Periodization is a **convention** that may be contested, ignored, or replaced by different cultures and polities.
- Minor periods may exist without fixed date ranges; `range: null` is intentional and signals “to be defined.”
- The same event may be placed differently by different historiographical traditions.
- The `timeline/` may reference periods for navigation, without endorsing their ideological content.

## Usage

- `timeline/` entries may optionally include `Major Period` and `Minor Period` labels as indexing aids.
- `corpus/` documents may use period names polemically, anachronistically, or locally; this is allowed.
- If a culture uses its own competing periodization, document it under `world_constraints/` and link to it from here.

## Change Policy

- Renaming or restructuring periods is allowed.
- Avoid embedding period names directly into filenames outside `periodization/` unless they are stable.
- When changing a period name, prefer adding an alias note rather than rewriting all prior corpus documents.
