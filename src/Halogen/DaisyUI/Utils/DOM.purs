module Halogen.DaisyUI.Utils.DOM
  ( scrollToTop
  , scrollByXY
  ) where

import Prelude

import Effect (Effect)
import Web.HTML (window)
import Web.HTML.Window (scroll, scrollBy)

-- | Scroll the window to the top-left corner
scrollToTop :: Effect Unit
scrollToTop = do
  win <- window
  scroll 0 0 win

-- | Scroll the window by the specified x and y offsets
scrollByXY :: Int -> Int -> Effect Unit
scrollByXY x y = do
  win <- window
  scrollBy x y win

