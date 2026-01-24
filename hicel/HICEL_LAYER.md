# Historically-Informed Causal Encoding Layer (HICEL)

## 1) Scope Boundary

**INCLUDES**
- Encoding schemas
- Representation conventions
- Data structures
- Structural grammars
- Domain object models
- Reference systems
- Linking models
- Temporal encoding conventions
- State encoding conventions
- Change/delta representation
- Constraint encoding
- Causality encoding
- Evaluation artifacts
- Inter-domain binding structures

**EXCLUDES**
- World semantics
- Narrative content
- Cultural meaning
- Symbolic interpretation
- Canonical histories
- Ontological commitments
- Cosmological structures
- Theological systems
- Species metaphysics
- Environmental specifics

## 2) Extracted Patterns

- Pattern → Document metadata in YAML frontmatter → Description → Consistent metadata blocks (e.g., title, document_type/kind, scope/status, refs) precede content → Generalizable? → Yes → Candidate Schema Element → `DocumentHeader` schema with `identifiers`, `classification`, `scope`, `refs` fields.【F:templates/CORPUS_DOCUMENT_HIPF_TEMPLATE.md†L1-L10】【F:templates/TIMELINE_ENTRY_HIPF_TEMPLATE.md†L1-L9】【F:world_constraints/species/nyelves.md†L1-L9】
- Pattern → Diegetic vs non-diegetic separation by directory → Description → Narrative corpus is isolated from analytical constraints and belief modeling → Generalizable? → Yes → Candidate Schema Element → `ContentLayer` vs `ConstraintLayer` separation in repo and schema namespaces.【F:corpus/README.md†L1-L10】【F:world_constraints/README.md†L1-L8】【F:beliefs/README.md†L1-L9】
- Pattern → Thin chronology index with neutral summaries → Description → Timeline entries emphasize minimal, non-resolving summaries and fuzzy dating → Generalizable? → Yes → Candidate Schema Element → `TimelineEntry` with `date`, `status`, `scope`, `refs`, and minimal summary text.【F:timeline/TIMELINE_CONVENTIONS.md†L3-L18】【F:templates/TIMELINE_ENTRY_HIPF_TEMPLATE.md†L1-L12】
- Pattern → Periodization split into major narrative index and minor YAML subperiods → Description → Major periods are human-readable; minor periods are structured lists for indexing → Generalizable? → Yes → Candidate Schema Element → `PeriodizationIndex` with `MajorPeriods` (narrative) and `MinorPeriods` (structured list).【F:periodization/PERIODS_MAJOR.md†L1-L18】【F:periodization/PERIODS_MINOR.yml†L1-L20】
- Pattern → World constraints authored as instantiations, not frameworks → Description → Constraints assert parameterization without redefining global plausibility → Generalizable? → Yes → Candidate Schema Element → `WorldConstraint` objects with explicit `refs.hipf` anchors and non-authoritative status markers.【F:world_constraints/README.md†L1-L8】【F:world_constraints/lattices/pressure_lattice_candidates.md†L1-L22】
- Pattern → Explicit HIPF reference pointers → Description → World-instance documents carry explicit HIPF reference links → Generalizable? → Yes → Candidate Schema Element → `ExternalAuthorityRef` field in all constraint-oriented schemas.【F:world_constraints/species/nyelves.md†L1-L9】

## 3) Candidate Schema Primitives

- `DocumentHeader` (title, identifiers, classification, scope, refs)
- `ReferenceNode` (canonical id, aliases, external authority links)
- `EntityModel` (actor or institutional entity descriptor)
- `InstitutionModel` (roles, capacities, governance modes)
- `BeliefRegimeModel` (motifs, practices, transmission, authority)
- `CultureModel` (descriptive profile without ontology)
- `RegionAbstraction` (place/zone without geography)
- `TemporalMarker` (approximate date, range, uncertainty)
- `TimelineEntry` (minimal event/process pointer with refs)
- `PeriodizationIndex` (major/minor period sets)
- `StateSlice` (snapshot across domains)
- `ChangeEntry` (event/process/structural transformation/condition/crisis)
- `DeltaEncoding` (state change with causality links)
- `ConstraintProfile` (bounds and affordances)
- `CapabilityEnvelope` (capacity limits by domain)
- `ResourceEnvelope` (inputs/outputs and constraints)
- `PressureObject` (stressors/shocks)
- `ConditionObject` (derived persistent constraints)
- `CrisisObject` (derived multi-domain strain)
- `LatticeAnchor` (gating structures without enumerating world values)
- `LensModifier` (interpretive modifier without gating)
- `EvaluationContext` (inputs used by HIPF evaluators)
- `DomainBinding` (cross-domain references and link rules)

## 4) Schema Layers

- **HIPF Layer** → Theory, ontology, evaluation logic, naming conventions
- **HICEL Layer** → Schemas, representations, conventions, tooling grammar
- **World Layer** → Content, meaning, narrative, lore

## 5) Architecture Model

```
HIPF (theory/validation)
  ↓
HICEL (schemas/conventions/tools)
  ↓
World corpora (content/meaning/instantiation)
```

## 6) Repo Structure Proposal for HICEL

```
hicel/
  schemas/
  primitives/
  encodings/
  domains/
  temporal/
  state/
  deltas/
  evaluation/
  bindings/
  templates/
  conventions.md
  glossary.md
```

## 7) Interoperability Rules

- HICEL consumes HIPF terminology by reference only; no HIPF modification.
- HICEL remains version-agnostic by isolating HIPF-dependent mappings in `schemas/compat/`.
- HICEL supports multiple world corpora by keeping all world content outside `hicel/`.
- HICEL supports multiple cosmologies/metaphysics by prohibiting domain semantics in primitives.
- HICEL stays content-neutral by requiring `refs` for external authority and forbidding canonical enumerations.
- HICEL exposes deterministic schemas for tools (YAML/JSON) without enforcing narrative truth.

## 8) Validation Conditions

- HIPF evaluation can operate using HICEL objects without schema extension.
- Worlds can be instantiated without modifying HICEL schemas.
- Lattices, lenses, and pressures can operate on HICEL structures.
- No world semantics embedded in HICEL primitives.
- No cosmological or metaphysical assumptions exist in HICEL.
- No genre constraints exist in HICEL.
- No simulation requirement exists in HICEL.
