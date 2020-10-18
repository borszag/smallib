module L.Base.Nat.Core where

-- Introducing Nat type with constructors zero and succ
data Nat : Set where
  zero : Nat
  succ : Nat → Nat

-- Enabling the usage of numerals in code.
{-# BUILTIN NATURAL Nat #-}

ind : ∀{c} (C : Nat → Set c)
  → C zero → ((x : Nat) → C x → C (succ x))
  → (n : Nat) → C n
ind C cₒ cₛ  zero    = cₒ
ind C cₒ cₛ (succ n) = cₛ n (ind C cₒ cₛ n)
