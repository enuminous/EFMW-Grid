# EFMW-Grid — Claim-first power-grid monitoring laboratory

**EFMW-GRID-006** is a preregistration-first project for testing whether an EFMW-inspired residual-coherence monitor contributes a reproducible advantage in detecting grid-model drift over **matched conventional statistical monitors**.

**[Interactive workstation](index.html)** · [Protocol](PROTOCOL.md) · [Earlier negative result](https://github.com/enuminous/papers/blob/main/WORLD-GRID-005-Equal-Budget-Negative-Result.md).

## Start

Download or clone the repository and open `index.html` locally. This is a fully self-contained browser workstation that runs synthetic training/holdout data and produces downloadable JSON. Its simulations are **demos only**, not a feeder-level energy-grid validation or an independent scientific audit.

To enable the website: GitHub repository Settings → Pages → Deploy from branch → main / root. GitHub Pages deployment has not been verified.

## Lean 4 formalization

[Lean source](EFMWGrid.lean) · [Verification scope](LEAN_FORMALIZATION.md) · [Build workflow](.github/workflows/lean.yml). The pinned Lean 4.28.0 model checks elementary rational recurrence and threshold-alarm obligations; it does **not** prove the synthetic benchmark outcomes or EFMW-specific physical advantage. GitHub Actions build status must be checked independently.

## Research objective

Freeze the test claim before execution. Compare EFMW residual memory against magnitude-EWMA, CUSUM, Kalman innovation testing, and a conventional multivariate temporal/covariance monitor. Each gets equivalent data, model capacity, false-alarm target, tuning budget and held-out evaluation. The final gate is an independent rebuild from the frozen repository and checksummed inputs.

The browser demo includes simplified comparator proxies; **it does not satisfy the full protocol**. A real experimental run requires a pinned AC feeder model, injected drift with traceable ground truth, preregistered statistical tests, and independent reproduction. Do not use workstation scores as validated results.

## Verdicts

- **SUPPORTED**: preregistered advantage over every comparator and successful independent reproduction.
- **NARROWED**: application works, but classical alternatives account for its performance.
- **DEAD**: prespecified claim refuted or mandatory guardrails violated.
- **UNVERIFIED**: execution, provenance or independent reproduction incomplete.

## References

[EFMW post-156 audit](https://github.com/enuminous/EFMW_Post156_Zoo_Audit) · [WORLD-GRID-005 negative result](https://github.com/enuminous/papers/blob/main/WORLD-GRID-005-Equal-Budget-Negative-Result.md).

Research concept: Matthew Chenoweth Wright · Monolithic LLC · October 2026.
