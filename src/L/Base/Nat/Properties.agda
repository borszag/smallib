module L.Base.Nat.Properties where

open import L.Base.Nat
open import L.Base.Id.Core
open import L.Base.Id.Properties using (ap;sym;transport)

-- Properties of +
+-idl : ∀{x} → zero + x ≡ x
+-idl = refl

+-idr : ∀{x} → x + zero ≡ x
+-idr {x} = ind (λ n → n + zero ≡ n) refl (λ _ p → ap succ p) x

+-assoc : {x y z : Nat} → (x + y) + z ≡ x + (y + z)
+-assoc {x}{y}{z} = ind (λ n → (n + y) + z ≡ n + (y + z))
          refl (λ _ p → ap succ p) x

+-succ : {x y : Nat} → x + succ y ≡ succ (x + y)
+-succ {x}{y} = ind (λ n → n + succ y ≡ succ (n + y)) refl (λ _ p → ap succ p) x

+-comm : {x y : Nat} → x + y ≡ y + x
+-comm {x}{y} = ind (λ n → n + y ≡ y + n) (sym +-idr) (λ n p → sym
                (transport (λ q → y + succ n ≡ succ q) (sym p) +-succ)) x

-- Properties of *
*-zl : ∀{x} → zero * x ≡ zero
*-zl = refl

*-zr : ∀{x} → x * zero ≡ zero
*-zr {x} = ind (λ n → n * zero ≡ zero) refl (λ _ p → p) x

*-idl : ∀{x} → 1 * x ≡ x
*-idl = +-idr

*-idr : ∀{x} → x * 1 ≡ x
*-idr {x} = ind (λ n → n * 1 ≡ n) refl (λ _ p → ap succ p) x

*-distrib-+ : {x y z : Nat} → (x + y) * z ≡ x * z + y * z
*-distrib-+ {x}{y}{z} = ind (λ n → (n + y) * z ≡ n * z + y * z) refl
                        (λ m p → transport (λ s → z + (m + y) * z ≡ s)
                        (sym (+-assoc {z} {m * z} {y * z}))
                        (ap (λ k → z + k) p)) x

*-assoc : {x y z : Nat} → (x * y) * z ≡ x * (y * z)
*-assoc {x}{y}{z} = ind (λ n → (n * y) * z ≡ n * (y * z)) refl (λ n p
                    → transport (λ q → (y + n * y) * z ≡ y * z + q) p
                    (*-distrib-+ {y}{n * y})) x
