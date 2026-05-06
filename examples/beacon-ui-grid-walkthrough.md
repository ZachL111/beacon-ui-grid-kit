# Beacon UI Grid Kit Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | view drift | 171 | ship |
| stress | state pressure | 152 | ship |
| edge | layout risk | 227 | ship |
| recovery | interaction cost | 140 | ship |
| stale | view drift | 166 | ship |

Start with `edge` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`edge` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
