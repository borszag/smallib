module L.Data.Bool.Core where

open import L.Base.Coproduct.Core
open import L.Base.Unit.Core

-- Deriving the introduction rule as a special case of Coproducts.
Bool : Set
Bool = ⊤ + ⊤

ff : Bool
ff = inr ⋆

tt : Bool
tt = inl ⋆

-- And the elimination rule
if : ∀{c} (C : Bool → Set c)
     → C tt → C ff → (e : Bool) → C e
if = λ C c d e → case C (λ _ → c) (λ _ → d) e
