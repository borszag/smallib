module L.Base.Coproduct.Core where

open import Agda.Primitive

private
  variable
    a b : Level

-- Introducing Coproduct types
data _+_ (A : Set a) (B : Set b) : Set (a ⊔ b) where
  inl : A → A + B
  inr : B → A + B


case : ∀{a b c} {A : Set a} {B : Set b}
       → (C : A + B → Set c)
       → ((x : A) → C (inl x)) → ((y : B) → C (inr y))
       → (e : A + B) → C e
case C c d (inl a) = c a
case C c d (inr b) = d b
