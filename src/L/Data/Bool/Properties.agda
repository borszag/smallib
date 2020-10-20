module L.Data.Bool.Properties where

open import L.Data.Bool.Core
open import L.Base.Id.Core
open import L.Base.Coproduct.Core

!∃tt∧!∃ff : (x : Bool) → (x ≡ ff) + (x ≡ tt)
!∃tt∧!∃ff = if (λ b → (b ≡ ff) + (b ≡ tt)) (inr refl) (inl refl)
