module L.Base.Sigma.Properties where

open import L.Base.Sigma.Core

choice : ∀{a b c} {A : Set a} {B : Set b} → {C : A → B → Set c}
         → ((x : A) → Σ B (λ y → C x y)) → Σ (A → B) (λ f → (a : A) → C a (f a))
choice = λ F → ((λ x → fst (F x)) , λ a → snd (F a))
