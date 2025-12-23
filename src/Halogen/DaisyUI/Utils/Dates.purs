module Halogen.DaisyUI.Utils.Dates
  ( printPOSIX
  , printPOSIX'
  , printPOSIX''
  ) where

import Prelude

import Data.DateTime (adjust)
import Data.DateTime.Instant (instant, toDateTime)
import Data.Either (hush)
import Data.Formatter.DateTime (formatDateTime)
import Data.Maybe (Maybe, fromMaybe)
import Data.Time.Duration (Milliseconds(..), Minutes, negateDuration)

-- | Format a POSIX timestamp (milliseconds) as a string with timezone offset
-- | Returns Nothing if the timestamp or formatting fails
printPOSIX :: String -> Minutes -> Number -> Maybe String
printPOSIX format tzoffset n = do
  dt <- toDateTime <$> instant (Milliseconds n)
  localdt <- adjust (negateDuration tzoffset) dt
  fdt <- hush $ formatDateTime format localdt
  pure fdt

-- | Format a POSIX timestamp as "D-MMM-YYYY HH:mm"
-- | Returns empty string on failure
printPOSIX' :: Minutes -> Number -> String
printPOSIX' tzoffset = fromMaybe "" <<< printPOSIX "D-MMM-YYYY HH:mm" tzoffset

-- | Format a POSIX timestamp as ISO format "YYYY-MM-DDTHH:mm"
-- | Returns empty string on failure
printPOSIX'' :: Minutes -> Number -> String
printPOSIX'' tzoffset = fromMaybe "" <<< printPOSIX "YYYY-MM-DDTHH:mm" tzoffset

