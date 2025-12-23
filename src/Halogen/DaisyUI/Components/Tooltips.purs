module Halogen.DaisyUI.Components.Tooltips
  ( setToolTip
  , setToolTipLeft
  , setToolTipBottom
  , setToolTipRight
  ) where

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Wrap content with a tooltip (default: top)
setToolTip :: forall w i. String -> HH.HTML w i -> HH.HTML w i
setToolTip tooltip html =
  HH.div
    [ HP.classes [ HH.ClassName "tooltip" ]
    , HP.attr (HH.AttrName "data-tip") tooltip
    ]
    [ html ]

-- | Wrap content with a tooltip on the left
setToolTipLeft :: forall w i. String -> HH.HTML w i -> HH.HTML w i
setToolTipLeft tooltip html =
  HH.div
    [ HP.classes [ HH.ClassName "tooltip tooltip-left" ]
    , HP.attr (HH.AttrName "data-tip") tooltip
    ]
    [ html ]

-- | Wrap content with a tooltip on the bottom
setToolTipBottom :: forall w i. String -> HH.HTML w i -> HH.HTML w i
setToolTipBottom tooltip html =
  HH.div
    [ HP.classes [ HH.ClassName "tooltip tooltip-bottom" ]
    , HP.attr (HH.AttrName "data-tip") tooltip
    ]
    [ html ]

-- | Wrap content with a tooltip on the right
setToolTipRight :: forall w i. String -> HH.HTML w i -> HH.HTML w i
setToolTipRight tooltip html =
  HH.div
    [ HP.classes [ HH.ClassName "tooltip tooltip-right" ]
    , HP.attr (HH.AttrName "data-tip") tooltip
    ]
    [ html ]

