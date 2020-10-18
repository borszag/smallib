module L.Base.Id.Properties where

open import L.Base.Id.Core

sym : {A : Set} (x y : A) → x ≡ y → y ≡ x
sym = λ x y p → J (λ a b _ → b ≡ a) (λ _ → refl) x y p

tran : {A : Set}(x y z : A) → x ≡ y → y ≡ z → x ≡ z
tran = λ x y z p → J (λ a b p → b ≡ z → a ≡ z) (λ a q → q) x y p 

ap : {A B : Set} (x y : A) → (f : A → B) → x ≡ y → (f x) ≡ (f y)
ap = λ x y f p → J (λ a b p → (f a) ≡ (f b)) (λ u → refl) x y p

transport : {A : Set}(B : (x : A) → Set) → (x y : A) → x ≡ y → B x → B y
transport = λ B x y p → J (λ a b p → B a → B b) (λ a q → q) x y p
