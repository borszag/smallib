module L.Base.Empty.Core where

open import Agda.Primitive

-- Introducing the empty type
data ⊥ : Set where

exfalso : ∀{c} (C : ⊥ → Set c) → (a : ⊥) → C a
exfalso = λ C ()
