import Init

/-!
# EFMW-GRID-006: elementary monitor semantics

This file formalizes the signed-residual exponential-moving-average recurrence
as specified by the browser demonstrator, without claiming any new physical law.

This is a state-transition model, not a proof of detection superiority,
statistical calibration, feeder dynamics, or cosmological consequences.
-/

namespace EFMWGrid

/-- Exact rational update: mₜ = 0.97 mₜ₋₁ + 0.03 rₜ. -/
def update (memory residual : Rat) : Rat :=
  (97 / 100 : Rat) * memory + (3 / 100 : Rat) * residual

/-- Iterate the residual-memory update in arrival order. -/
def run (initial : Rat) (residuals : List Rat) : Rat :=
  residuals.foldl update initial

/-- Absolute-value score from a rational residual-memory state. -/
def score (memory : Rat) : Rat := abs memory

/-- Strict-threshold alarm, matching the JavaScript > comparison. -/
def alarm (value threshold : Rat) : Bool := decide (value > threshold)

/-- One-step recurrence, as implemented. -/
theorem update_spec (m r : Rat) :
    update m r = (97 / 100 : Rat) * m + (3 / 100 : Rat) * r := rfl

/-- An empty residual stream preserves the initial memory. -/
theorem run_nil (m : Rat) : run m [] = m := rfl

/-- Processing a head residual precedes processing the tail. -/
theorem run_cons (m r : Rat) (rs : List Rat) :
    run m (r :: rs) = run (update m r) rs := rfl

/-- A strict comparator does not alarm exactly at its threshold. -/
theorem alarm_at_threshold (threshold : Rat) :
    alarm threshold threshold = false := by
  simp [alarm]

/-- At zero initial state and zero incoming residual, the state remains zero. -/
theorem update_zero : update 0 0 = 0 := by
  decide

end EFMWGrid
