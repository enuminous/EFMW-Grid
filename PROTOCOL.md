# EFMW-GRID-006 — Preregistration Protocol v1.0 (DRAFT)

**Scientific state: NOT FROZEN; NO OFFICIAL RESULT.**

## The one-sentence claim

> At a matched false-alarm rate on held-out grid-model-drift scenarios, the frozen EFMW recursive-coherence monitor yields greater paired median detection lead time than equally budgeted residual EWMA, CUSUM, Kalman innovation, and multivariate covariance/whiteness monitors.

This sentence must be frozen in a commit **before running** a claim-bearing test.

## Freeze package checklist

- Repository commit SHA, dependency/environment lock and artifact hashes.
- Feeder model ID, version, license, parameters, checksums, measurement sampling.
- Train/calibration/holdout scenario IDs, random seeds, injection code and ground truth onset/type/magnitude.
- Null windows with explicit count and false-alarm denominator.
- Full EFMW algorithm and *all* constants, defaults, cutoffs and tuning protocol.
- Full comparator algorithms, matched model/state capacity, search spaces and equal computational budgets.
- Training-only threshold calibration to a preselected false-alarm rate.
- Primary statistic: **paired median detection lead time** at matched false-alarm rate. Set non-detection censoring rule, ties, weighting, multiplicity and CI method in frozen analysis code.
- Secondary: net delivered-energy improvement, detection rate, violation rate, actuator wear/cycling, compute, and false-alarm costs.
- Required no-peek policy and independent clean-environment rebuild.

## Comparator ladder

1. Magnitude-residual EWMA.
2. One-sided and two-sided CUSUM as justified by training design.
3. Kalman innovation / normalized innovation squared.
4. Temporal whiteness and multivariate covariance-shift monitor.

**No novelty conclusion from defeating only weak comparators.** A recurrence that is an EWMA must not be promoted as a new mechanism without a specifically differentiated, independently confirmed prediction.

## Decision rules

**SUPPORTED:** holdout gain over *every* preregistered comparator under equal false alarms and costs, statistically validated under frozen procedure, engineering guardrails passed, independent rerun matches output tolerance.

**NARROWED:** practical gain survives but conventional substitution removes EFMW-specific advantage.

**DEAD:** the concrete performance claim fails mandatory guardrails or is substantively refuted after valid execution.

**UNVERIFIED:** interrupted tests, missing provenance, incompatible versions or independent reproduction failure. This is not a scientific finding.

## Status of workstation

The website is an interactive, seeded synthetic example, with simplified innovation and covariance proxies. It does not contain a validated IEEE/utility feeder model, protection, AC power flow, dispatch optimization or real net-energy accounting; **its charts are not scientific findings**.

## Reproducibility gate

An independent researcher receives **only** the frozen repository, checksums, instructions, fixed datasets and expected tolerance declaration. They run a fresh environment, publish their command log and checksums, and replicate primary/secondary results. Until then no SUPPORTED verdict is allowed.

## Engineering caveat

Drift detection lead time and electric-power efficiency are distinct outcomes. Deployment claims require feeder-level AC simulation or a monitored real-world pilot with otherwise identical optimization and safety rules.
