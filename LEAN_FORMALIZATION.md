# Lean verification scope — EFMW-GRID-006

This project pins **Lean 4.28.0** and uses only the Lean standard library (no Mathlib).

```sh
lake build
```

`EFMWGrid.lean` formalizes the exact-rational signed-residual recurrence
`m[t] = 0.97*m[t-1] + 0.03*r[t]`, processing of residual lists, an absolute-value
score, and a strict threshold alarm. It proves the recurrence unfolds as defined,
that empty streams leave state untouched, that processing respects head-first
sequencing, a zero update property, and a threshold equality does not alarm.

**Scope limits:** JavaScript uses binary floating-point while this Lean model uses
exact rational arithmetic; correspondence for arbitrary inputs is not proved.
The Lean definitions do not formalize the pseudo-random fixture generator,
training quantiles, holdout results, statistical uncertainty, calibration,
false-alarm fairness, a physical AC feeder, or energy savings. In particular,
the recurrence is an ordinary signed-residual EWMA and formal verification
does not establish an EFMW-specific advantage.

A green GitHub Actions build would verify these Lean declarations; inspect its
actual CI status before claiming a passing build. The protocol in
[PROTOCOL.md](PROTOCOL.md) remains draft and not frozen.
