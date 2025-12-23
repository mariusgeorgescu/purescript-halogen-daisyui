module Halogen.DaisyUI.Components.Modals
  ( renderModal
  , renderModal'
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP

-- | Render a modal with a primary button trigger
renderModal :: forall w i. String -> String -> i -> HH.HTML w i -> HH.HTML w i
renderModal = renderModal' "primary"

-- | Render a modal with a custom button type
renderModal' :: forall w i. String -> String -> String -> i -> HH.HTML w i -> HH.HTML w i
renderModal' buttonType modalId buttonName action modalContent =
  HH.div [ HP.classes [] ]
    [ HH.button
        [ HP.classes [ HH.ClassName $ "btn btn-" <> buttonType ]
        , HE.onClick \_ -> action
        ]
        [ HH.text buttonName ]
    , HH.dialog
        [ HP.id modalId
        , HP.classes [ HH.ClassName "modal bg-base-300 text-base-content" ]
        ]
        [ HH.div [ HP.classes [ HH.ClassName "modal-box w-11/12 max-w-5xl" ] ]
            [ modalContent
            , HH.div [ HP.classes [ HH.ClassName "modal-action" ] ]
                [ HH.form [ HP.attr (HH.AttrName "method") "dialog" ]
                    [ HH.button_ [ HH.text "Close" ] ]
                ]
            ]
        ]
    ]

