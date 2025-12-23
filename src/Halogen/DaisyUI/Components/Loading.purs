module Halogen.DaisyUI.Components.Loading
  ( renderAccentButtonLoadingSpinner
  , renderAccentLoadingSpinner
  , renderAccentLoadingBars
  ) where

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Button with loading spinner
renderAccentButtonLoadingSpinner :: forall w i. String -> HH.HTML w i
renderAccentButtonLoadingSpinner text =
  HH.button
    [ HP.classes [ HH.ClassName "btn btn-accent" ] ]
    [ HH.span [ HP.classes [ HH.ClassName "loading loading-spinner" ] ] []
    , HH.text text
    ]

-- | Centered loading ring spinner
renderAccentLoadingSpinner :: forall w i. String -> HH.HTML w i
renderAccentLoadingSpinner text =
  HH.div [ HP.classes [ HH.ClassName "flex justify-center" ] ]
    [ HH.div [ HP.classes [ HH.ClassName "text-accent" ] ]
        [ HH.text text
        , HH.span [ HP.classes [ HH.ClassName "loading loading-ring loading-lg text-accent" ] ] []
        ]
    ]

-- | Centered loading bars indicator
renderAccentLoadingBars :: forall w i. String -> HH.HTML w i
renderAccentLoadingBars text =
  HH.div [ HP.classes [ HH.ClassName "flex justify-center" ] ]
    [ HH.div [ HP.classes [ HH.ClassName "grid grid-cols-1 gap-1 text-accent" ] ]
        [ HH.text text
        , HH.span [ HP.classes [ HH.ClassName "loading loading-bars loading-lg text-accent" ] ] []
        ]
    ]

