module README where

----------------------------------------------------------------------
-- The Agda smallib library, version 0.0-dev
----------------------------------------------------------------------
--
-- This library implements a type theory which is described in the
-- Appendix of the HoTT book. It also contains some properties derived
-- from the rules of this theory.
----------------------------------------------------------------------
--
-- This project is meant to be a practice for the author but as a
-- secondary goal it would be nice to create a small library which is
-- less intimidating than the standard one.
--
-- This version was tested using Agda 2.6.1.
----------------------------------------------------------------------

----------------------------------------------------------------------
-- High-level overview of contents
----------------------------------------------------------------------
--
-- The top-level module L is not implemented (yet), it's sole purpose
-- is to prepend all of the module names with something to avoid
-- possible name clashes with the standard library.
--
-- The structure of the library is the following:
--
-- • Base
--     The derivation rules of the implemented type theory and some
--     useful properties which can be derived from these. To make a
--     clear distinction between these every type has a Core and a
--     Properties submodule. In some cases the latter might be empty.
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Some useful modules
----------------------------------------------------------------------
--
-- • To use several things at once
import L.Base      -- Type theory with it's properties.
import L.Base.Core -- Derivation rules.

-- • To use only one base type
import L.Base.Sigma     -- Products (universe polymorphic).
import L.Base.Coproduct -- Disjoint sums (universe polymorphic).
import L.Base.Empty     -- Empty type.
import L.Base.Unit      -- Unit type.
import L.Base.Nat       -- Natural numbers.
import L.Base.Id        -- Propositional equality (universe poly.).
----------------------------------------------------------------------
