module Halogen.DaisyUI.Components.Dividers
  ( renderDevider
  , renderHorizontalDevider
  , renderVerticalDevider
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render a simple divider
renderDevider :: forall w i. String -> HH.HTML w i
renderDevider deviderType = HH.div [ HP.classes [ HH.ClassName $ "divider divider-" <> deviderType ] ] []

-- | Render a horizontal divider with content on left and right
renderHorizontalDevider :: forall w i. HH.HTML w i -> HH.HTML w i -> String -> HH.HTML w i
renderHorizontalDevider contentLeft contentRight text =
  HH.div [ HP.classes [ HH.ClassName "flex flex-row w-full justify-around" ] ]
    [ contentLeft
    , HH.div [ HP.classes [ HH.ClassName "divider divider lg:divider-horizontal grow-0" ] ] [ HH.text text ]
    , contentRight
    ]

-- | Render a vertical divider with content on top and bottom
renderVerticalDevider :: forall w i. HH.HTML w i -> HH.HTML w i -> String -> HH.HTML w i
renderVerticalDevider contentLeft contentRight text =
  HH.div [ HP.classes [ HH.ClassName "flex flex-col w-full justify-around" ] ]
    [ contentLeft
    , HH.div [ HP.classes [ HH.ClassName "divider divider lg:divider-vertical grow-0" ] ] [ HH.text text ]
    , contentRight
    ]

