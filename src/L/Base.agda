module L.Base where

-- Reexport definitions
open import L.Base.Sigma public
open import L.Base.Coproduct public renaming (_+_ to _⊎_)
open import L.Base.Empty public
open import L.Base.Unit public
open import L.Base.Nat public
open import L.Base.Id public
