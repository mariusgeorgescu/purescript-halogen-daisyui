module Halogen.DaisyUI.Utils.Numbers
  ( formatNumberFromStr
  ) where

import Prelude

import Data.Formatter.Number (formatOrShowNumber)
import Data.Maybe (maybe)
import Data.Number as Number

-- | Parse a string as a number and format it with thousands separators
-- | Example: formatNumberFromStr "1234567" -> "1,234,567"
formatNumberFromStr :: String -> String
formatNumberFromStr str = formatOrShowNumber "0,0" $ maybe 0.0 identity $ Number.fromString str

