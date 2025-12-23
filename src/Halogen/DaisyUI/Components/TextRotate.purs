module Halogen.DaisyUI.Components.TextRotate
  ( renderTextRotate
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render rotating text animation
renderTextRotate :: forall w i. String -> Array String -> HH.HTML w i
renderTextRotate classes texts =
  HH.span [ HP.classes [ HH.ClassName ("text-rotate " <> classes) ] ]
    [ HH.span [ HP.classes [ HH.ClassName "justify-items-center" ] ]
        (map (\t -> HH.span_ [ HH.text t ]) texts)
    ]

