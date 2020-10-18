module L.Base.Id.Core where


-- Use the builtin _≡_ and refl
open import Agda.Builtin.Equality public


J : ∀{a c} {A : Set a} → (C : (x y : A) → x ≡ y → Set c)
              → ((x : A) → C x x refl)
              → (M N : A) → (P : M ≡ N ) → C M N P
J C c M .M refl = c M


