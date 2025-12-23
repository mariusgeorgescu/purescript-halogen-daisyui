module Halogen.DaisyUI.Components.Stats
  ( renderStats
  , renderStatItem
  , renderStatItemWithFig
  ) where

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Container for stat items
renderStats :: forall w i. Array (HH.HTML w i) -> HH.HTML w i
renderStats stats = HH.div [ HP.classes [ HH.ClassName "stats stats-vertical shadow gap-2 w-full" ] ] stats

-- | Single stat item with title, value, and description
renderStatItem :: forall w i. String -> String -> String -> HH.HTML w i
renderStatItem title value desc =
  HH.div [ HP.classes [ HH.ClassName "stats-shadow w-full" ] ]
    [ HH.div [ HP.classes [ HH.ClassName "stat-title" ] ] [ HH.text title ]
    , HH.div [ HP.classes [ HH.ClassName "stat-desc" ] ] [ HH.text desc ]
    , HH.div [ HP.classes [ HH.ClassName "stat-value" ] ] [ HH.text value ]
    ]

-- | Stat item with a figure/image
renderStatItemWithFig :: forall w i. String -> String -> String -> HH.HTML w i
renderStatItemWithFig fig title desc =
  HH.div [ HP.classes [ HH.ClassName "stats-shadow w-full" ] ]
    [ HH.div [ HP.classes [ HH.ClassName "stat-figure" ] ]
        [ HH.div [ HP.classes [ HH.ClassName "mask mask-circle w-16" ] ]
            [ HH.img [ HP.src fig ] ]
        ]
    , HH.div [ HP.classes [ HH.ClassName "stat-title" ] ] [ HH.text title ]
    , HH.div [ HP.classes [ HH.ClassName "stat-desc" ] ] [ HH.text desc ]
    ]

