# Timeline Conventions

The `timeline/` directory provides a thin, non-diegetic chronology used for navigation and synchronization.

## Principles
- Entries are minimal and neutral.
- Dates may be fuzzy; deep-time entries are coarse.
- Timeline does not resolve contradictions found in `corpus/`.
- Timeline records recognized changes (foundings, collapses, transformations), not daily life.
- Timeline entries should align to HICEL `TimelineEntry` and `TemporalMarker` conventions.

## Dating
- Uses B.R. / A.R.
- No year 0.
- The B.R./A.R. hinge is treated as a conventionally defined epochal transition.

## Linking
- Prefer linking entries to corpus documents via `Narratives:` lists.
- If an entry is disputed, mark `Status: disputed` and keep the summary minimal.
- Future entries should include `refs.hicel` to document the schema reference.
