module L.Data.Bool where

-- Reexport definitions
open import L.Data.Bool.Core public
open import L.Data.Bool.Properties public

-- Functions on Bools
infix  7 not_
infixr 6 _∧_
infixr 5 _∨_ _xor_

not_ : Bool → Bool
not x = if (λ _ → Bool) ff tt x

_∧_ : Bool → Bool → Bool
x ∧ y = if (λ _ → Bool) y ff x

_∨_ : Bool → Bool → Bool
x ∨ y = if (λ _ → Bool) tt y x

_xor_ : Bool → Bool → Bool
x xor y = if (λ _ → Bool) y (not y) x

