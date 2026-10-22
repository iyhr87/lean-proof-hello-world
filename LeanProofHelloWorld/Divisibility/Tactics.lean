import Init

namespace LeanProofHelloWorld.Divisibility

/--
Constructive proof.
-/
theorem solution_tactics_calc (a b c : Nat)
    (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by
  obtain ⟨k, hk⟩ := h1
  obtain ⟨m, hm⟩ := h2
  change ∃ n : Nat, c = a * n
  apply Exists.intro (k * m)
  calc
    c = b * m := hm
    _ = (a * k) * m := by rw [hk]
    _ = a * (k * m) := Nat.mul_assoc a k m

/--
Low level Constructive proof
-/
theorem solution_tactics_basic (a b c : Nat)
    (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by
  cases h1 with
  | intro k hk =>
    cases h2 with
    | intro m hm =>
      change ∃ n : Nat, c = a * n
      apply Exists.intro (k * m)
      rw [hm]
      rw [hk]
      exact Nat.mul_assoc a k m

end LeanProofHelloWorld.Divisibility