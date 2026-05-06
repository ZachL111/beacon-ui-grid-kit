# beacon-ui-grid-kit

`beacon-ui-grid-kit` explores frontend apps with a small Lua codebase and local fixtures. The technical goal is to develop a Lua command-oriented project for grid scenarios with seeded input scenarios, deterministic summary checks, and fixture-scale datasets.

## Project Rationale

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Beacon UI Grid Kit Review Notes

The first comparison I would make is `layout risk` against `interaction cost` because it shows where the rule is most opinionated.

## Feature Set

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/beacon-ui-grid-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `layout risk` and `interaction cost`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `view drift`, `state pressure`, `layout risk`, and `interaction cost`.

The Lua code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Next Improvements

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
