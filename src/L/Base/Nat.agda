module L.Base.Nat where

-- Reexport definitions
open import L.Base.Nat.Core public

-- Functions on Nats
pred : Nat → Nat
pred = ind (λ _ → Nat) zero (λ x _ → x)

infixl 6 _+_
infixl 7 _*_

_+_ : Nat → Nat → Nat
zero   + y = y
succ x + y = succ (x + y)

{-# BUILTIN NATPLUS _+_ #-}

_*_ : Nat → Nat → Nat
zero   * y = zero
succ x * y = y + x * y

{-# BUILTIN NATTIMES _*_ #-}
