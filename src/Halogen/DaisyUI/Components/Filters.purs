module Halogen.DaisyUI.Components.Filters
  ( renderFilter
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render a simple filter component (radio buttons)
renderFilter :: forall w i. String -> Array String -> HH.HTML w i
renderFilter name options =
  HH.form [ HP.classes [ HH.ClassName "filter" ] ]
    $ [ HH.input [ HP.classes [ HH.ClassName "btn btn-square" ], HP.type_ HP.InputReset, HP.value "×" ] ]
    <> ( map
          ( \o ->
              HH.label_
                [ HH.input
                    [ HP.classes [ HH.ClassName "btn" ]
                    , HP.type_ HP.InputRadio
                    , HP.name name
                    , HP.attr (HH.AttrName "aria-label") o
                    ]
                ]
          )
          options
      )

