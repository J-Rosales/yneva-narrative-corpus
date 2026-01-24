# HICEL Adoption Plan for yneva-narrative-corpus

## Scope

This document lists repository changes needed to align Yneva with the HICEL intermediary layer. It specifies deletions, replacements, and amendments required to move repository structure and references to HICEL while preserving HIPF authority and avoiding world semantics inside HICEL.

---

## 1) Deletions

**None required.**  
HICEL alignment does not mandate deletion of Yneva world content. The current corpus, periodization, and world constraints remain world-specific instantiations. Any removal would be optional cleanup only (e.g., stale notes), not an architectural requirement.

---

## 2) Replacements (References to HICEL)

Replace direct HIPF-only references in Yneva templates and documentation with HICEL+HIPF references where the document is describing *representation conventions* rather than *world content*.

### Replace in templates
- **Current:** templates point only to HIPF.  
- **Replace with:** HIPF as authority + HICEL as representation grammar.

**Target files**
- `templates/README.md`
- `templates/*_HIPF_TEMPLATE.md`

**Replacement pattern**
- Add HICEL reference alongside HIPF reference for representation conventions and schema structure guidance.
- Keep HIPF as sole authority for plausibility and evaluation terminology.

---

## 3) Amendments for Alignment

### 3.1 Repository README
**Amend** `README.md`:
- Add HICEL as the representation/schema layer between HIPF and world corpora.
- Clarify that HIPF defines evaluative logic, HICEL defines encoding conventions, and Yneva is a world instantiation.

### 3.2 Constitution README
**Amend** `constitution/README.md`:
- Explicitly reference HICEL for structural representation conventions.
- Preserve the current rule that Yneva may not define plausibility theory.

### 3.3 Templates
**Amend** `templates/*.md`:
- Align template field names to HICEL primitives where possible (e.g., `DocumentHeader`, `TemporalMarker`, `ReferenceNode`).
- Keep YAML frontmatter as the authoritative encoding layer for tool compatibility.
- Add `refs.hicel` alongside `refs.hipf` where representation schema is referenced.

### 3.4 Timeline Conventions
**Amend** `timeline/TIMELINE_CONVENTIONS.md`:
- Map `TimelineEntry` schema explicitly to HICEL primitives.
- Require `refs.hicel` in future entries for schema traceability.

### 3.5 Periodization
**Amend** `periodization/`:
- Identify `PERIODS_MAJOR.md` as narrative index and `PERIODS_MINOR.yml` as structured periodization schema compliant with HICEL.
- Add a small header note describing the HICEL alignment.

### 3.6 World Constraints
**Amend** `world_constraints/README.md` and `world_constraints/*`:
- Add `refs.hicel` for constraint schemas (e.g., lattice/lens/pressure objects).
- Ensure constraints are labeled as world-instance values for HICEL primitives.

### 3.7 Beliefs
**Amend** `beliefs/README.md`:
- Clarify that belief regime documents instantiate HICEL `BeliefRegimeModel` (representation only).

---

## 4) Non-Changes (Explicitly Out of Scope)

- No modification to corpus narrative content.
- No conversion of world semantics into HICEL.
- No changes to HIPF or its evaluation logic.

---

## 5) Minimal Alignment Checklist

- [ ] Add HICEL references to repo-level README and constitution README.
- [ ] Add `refs.hicel` to templates and constraint documents.
- [ ] Align timeline and periodization docs to HICEL `TemporalMarker` and `PeriodizationIndex`.
- [ ] Keep HIPF as sole plausibility authority.
