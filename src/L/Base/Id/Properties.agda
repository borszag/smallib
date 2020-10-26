module L.Base.Id.Properties where

open import L.Base.Id.Core

sym : ∀{a} {A : Set a} {x y : A} → x ≡ y → y ≡ x
sym {x = x}{y = y} = λ p → J (λ a b _ → b ≡ a) (λ _ → refl) x y p

tran : ∀{a} {A : Set a} {x y z : A} → x ≡ y → y ≡ z → x ≡ z
tran {x = x}{y = y}{z = z} =
     λ p → J (λ a b p → b ≡ z → a ≡ z) (λ a q → q) x y p

ap : ∀{a b} {A : Set a} {B : Set b} {x y : A}
     → (f : A → B) → x ≡ y → (f x) ≡ (f y)
ap {x = x}{y = y} =
   λ f p → J (λ a b p → (f a) ≡ (f b)) (λ u → refl) x y p

transport : ∀{a b} {A : Set a} {x y : A}
            → (B : (x : A) → Set b) → x ≡ y → B x → B y
transport {x = x}{y = y} =
          λ B p → J (λ a b p → B a → B b) (λ a q → q) x y p
