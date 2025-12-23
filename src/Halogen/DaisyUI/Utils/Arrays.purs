module Halogen.DaisyUI.Utils.Arrays
  ( enumerate
  ) where

import Prelude

import Data.Array as A
import Data.Tuple (Tuple)

-- | Add index numbers to an array
-- | Example: enumerate ["a", "b", "c"] -> [(0, "a"), (1, "b"), (2, "c")]
enumerate :: forall a. Array a -> Array (Tuple Int a)
enumerate arr = A.zip (A.range 0 $ A.length arr) arr

