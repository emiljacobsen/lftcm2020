import for_mathlib.category_theory -- This imports some simp lemmas that I realised belong in mathlib while writing this exercise.

universes v₁ v₂ u₁ u₂

open category_theory

variables {C : Type u₁} [category.{v₁} C]
variables {D : Type u₂} [category.{v₂} D]

lemma equiv_reflects_mono {X Y : C} (f : X ⟶ Y) (e : C ≌ D)
  (hef : mono (e.functor.map f)) : mono f :=
-- Hint: when `e : C ≌ D`, `e.functor.map_injective` says
--   `∀ f g, e.functor.map f = e.functor.map g → f = g`
-- Hint: use `cancel_mono`.
sorry

lemma equiv_preserves_mono {X Y : C} (f : X ⟶ Y) [mono f] (e : C ≌ D) :
  mono (e.functor.map f) :=
-- Hint: if `w : f = g`, to obtain `F.map f = F.map G`,
--   you can use `have w' := congr_arg (λ k, F.map k) w`.
sorry
