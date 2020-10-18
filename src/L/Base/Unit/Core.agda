module L.Base.Unit.Core where

-- Import the unit type and its only element tt : ⊤
open import Agda.Builtin.Unit renaming (tt to ⋆) public

⊤-elim : ∀{c} (C : ⊤ → Set c) → C ⋆ → (a : ⊤) → C a
⊤-elim = λ C c a → c

