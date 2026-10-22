import Init

namespace LeanProofHelloWorld.Divisibility

theorem solution_library (a b c : Nat)
    (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by
  exact Nat.dvd_trans h1 h2

end LeanProofHelloWorld.Divisibility