module Halogen.DaisyUI.Components.Accordions
  ( renderAccordionElement
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render an accordion element (collapsible section)
renderAccordionElement :: forall w i. String -> Boolean -> Boolean -> String -> HH.HTML w i -> HH.HTML w i
renderAccordionElement accordionId isChecked overflow title content =
  HH.div [ HP.classes [ HH.ClassName $ "collapse collapse-arrow " <> (if overflow then " relative overflow-visible " else "") ] ]
    [ HH.input [ HP.name accordionId, HP.type_ HP.InputRadio, HP.checked isChecked ]
    , HH.div [ HP.classes [ HH.ClassName "collapse-title text-xl font-medium" ] ]
        [ HH.p_ [ HH.text title ] ]
    , HH.div [ HP.classes [ HH.ClassName "collapse-content" ] ]
        [ content ]
    ]

