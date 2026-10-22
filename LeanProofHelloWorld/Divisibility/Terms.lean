import Init

namespace LeanProofHelloWorld.Divisibility


theorem solution_terms_compact (a b c : Nat)
    (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c :=
  Exists.elim h1 (fun k hk =>
    Exists.elim h2 (fun m hm =>
      Exists.intro (k * m)
        (Eq.trans hm
          (Eq.trans
            (congrArg (fun x : Nat => x * m) hk)
            (Nat.mul_assoc a k m)))))

/--
Same proof but with explicit terms
-/
theorem solution_terms_expanded (a b c : Nat)
    (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c :=
  Exists.elim h1 (fun k hk =>
    Exists.elim h2 (fun m hm =>

      let h3 : b * m = (a * k) * m :=
        congrArg (fun x : Nat => x * m) hk

      let h4 : (a * k) * m = a * (k * m) :=
        Nat.mul_assoc a k m

      let h5 : c = a * (k * m) :=
        Eq.trans hm (Eq.trans h3 h4)

      Exists.intro (k * m) h5))

end LeanProofHelloWorld.Divisibility