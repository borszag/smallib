module L.Base.Sigma.Core where

-- Import the Σ record with constructors fst, snd
open import Agda.Builtin.Sigma public

split : ∀{a b c} {A : Set a} {B : A → Set b} (C : Σ A B → Set c)
        → ((x : A)(y : B x) → C (x , y)) → (p : Σ A B) → C p
split C g (a , b) = g a b
