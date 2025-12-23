module Halogen.DaisyUI.Components.Links
  ( renderLink
  , renderLinkHover
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render a link with custom classes
renderLink :: forall w i. String -> String -> String -> HH.HTML w i
renderLink classes title link =
  HH.a
    [ HP.classes [ HH.ClassName $ "link " <> classes ]
    , HP.target "_blank"
    , HP.href link
    ]
    [ HH.text title ]

-- | Render a link with hover underline effect
renderLinkHover :: forall w i. String -> String -> HH.HTML w i
renderLinkHover = renderLink "link-hover"

