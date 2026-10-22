import LeanProofHelloWorld.Divisibility.Library
import LeanProofHelloWorld.Divisibility.Tactics
import LeanProofHelloWorld.Divisibility.Terms

namespace LeanProofHelloWorld.Divisibility

-- Version using an existing theorem
example : 2 ∣ 30 :=
  solution_library 2 6 30
    ⟨3, rfl⟩
    ⟨5, rfl⟩

-- Version using tactis and calc
example : 2 ∣ 30 :=
  solution_tactics_calc 2 6 30
    ⟨3, rfl⟩
    ⟨5, rfl⟩

-- Version using elementary tactis.
example : 2 ∣ 30 :=
  solution_tactics_basic 2 6 30
    ⟨3, rfl⟩
    ⟨5, rfl⟩

-- Version no tactis
example : 2 ∣ 30 :=
  solution_terms_compact 2 6 30
    ⟨3, rfl⟩
    ⟨5, rfl⟩

-- Version no tactics, expanded
example : 2 ∣ 30 :=
  solution_terms_expanded 2 6 30
    ⟨3, rfl⟩
    ⟨5, rfl⟩

-- Inspect types of theorems
#check solution_library
#check solution_tactics_calc
#check solution_tactics_basic
#check solution_terms_compact
#check solution_terms_expanded

-- Inspecting used axioms
#print axioms solution_terms_compact

end LeanProofHelloWorld.Divisibility