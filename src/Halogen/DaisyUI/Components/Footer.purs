module Halogen.DaisyUI.Components.Footer
  ( renderFooter
  , renderFooterNav
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render a footer with aside and navigation sections
renderFooter :: forall w i. HH.HTML w i -> Array (HH.HTML w i) -> HH.HTML w i
renderFooter aside navs =
  HH.footer [ HP.classes [ HH.ClassName "footer md:footer-horizontal bg-neutral text-neutral-content p-10" ] ]
    $ [ aside ]
    <> navs

-- | Render a footer navigation section
renderFooterNav :: forall w i. String -> Array (HH.HTML w i) -> HH.HTML w i
renderFooterNav title contents =
  HH.nav_
    $ [ HH.h6 [ HP.classes [ HH.ClassName "footer-title" ] ] [ HH.text title ] ]
    <> contents

