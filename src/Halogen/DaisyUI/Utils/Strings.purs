module Halogen.DaisyUI.Utils.Strings
  ( shortString
  , trimQuotes
  , stringLimitBy
  ) where

import Prelude

import Data.String (drop, length, take)
import Data.String as String

-- | Truncate a string to show first and last `i` characters with `middle` in between
-- | Example: shortString 5 "..." "Hello World Example" -> "Hello...ample"
-- | Example: shortString 3 "*" "abc123xyz" -> "abc*xyz"
shortString :: Int -> String -> String -> String
shortString i middle s =
  let
    len = length s
  in
    if len > (2 * i) then
      take i s <> middle <> drop (len - i) s
    else
      s

-- | Remove the first and last character from a string (typically quotes)
trimQuotes :: String -> String
trimQuotes s = String.drop 1 $ String.take (String.length s - 1) s

-- | Limit a string to a maximum length, adding "..." if truncated
stringLimitBy :: Int -> String -> String
stringLimitBy limit content =
  if String.length content > limit then
    (String.take limit content) <> "..."
  else
    content

