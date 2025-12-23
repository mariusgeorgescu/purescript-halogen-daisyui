module Halogen.DaisyUI.Components.Buttons
  ( renderButton
  , renderPrimaryButton
  , renderSecondaryButton
  , renderAccentButton
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

-- | Render a button with custom classes
renderButton :: forall w i. String -> String -> i -> HH.HTML w i
renderButton classes text action =
  HH.button
    [ HP.classes [ HH.ClassName ("btn " <> classes) ]
    , HE.onClick (\_ -> action)
    ]
    [ HH.text text ]

-- | Render a primary button (responsive sizing)
renderPrimaryButton :: forall w i. String -> i -> HH.HTML w i
renderPrimaryButton = renderButton "btn-primary btn-sm sm:btn-md w-full sm:w-auto"

-- | Render a secondary button (responsive sizing)
renderSecondaryButton :: forall w i. String -> i -> HH.HTML w i
renderSecondaryButton = renderButton "btn-secondary btn-sm sm:btn-md w-full sm:w-auto"

-- | Render an accent button (responsive sizing)
renderAccentButton :: forall w i. String -> i -> HH.HTML w i
renderAccentButton = renderButton "btn-accent btn-sm sm:btn-md w-full sm:w-auto"

