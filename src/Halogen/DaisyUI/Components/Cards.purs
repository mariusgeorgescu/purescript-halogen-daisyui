module Halogen.DaisyUI.Components.Cards
  ( renderImage
  , renderCardWithOverlayImg
  , renderCardWithOverlayImgSingle
  , renderCardWithOverlayImg2
  , renderHover3DCard
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render a rounded image figure
renderImage :: forall w i. String -> HH.HTML w i
renderImage imageUrl =
  HH.figure_
    [ HH.img
        [ HP.classes [ HH.ClassName "rounded-xl" ]
        , HP.src imageUrl
        , HP.width 600
        , HP.height 600
        , HP.alt "Some image"
        ]
    ]

-- | Card with image overlay and stat elements
renderCardWithOverlayImg :: forall w i. String -> Array (HH.HTML w i) -> HH.HTML w i
renderCardWithOverlayImg imageUrl elements =
  HH.div [ HP.classes [ HH.ClassName "card bg-base-200 image-full w-80 shadow-lg rounded-box max-w-md space-x-2 p-2" ] ]
    [ HH.figure_ [ renderImage imageUrl ]
    , HH.div [ HP.classes [ HH.ClassName "card-body place-content-center max-w-80" ] ]
        [ HH.div [ HP.classes [ HH.ClassName "stat" ] ] elements ]
    ]

-- | Card with image overlay, elements, and action buttons
renderCardWithOverlayImgSingle :: forall w i. String -> Array (HH.HTML w i) -> Array (HH.HTML w i) -> HH.HTML w i
renderCardWithOverlayImgSingle imageUrl elements actions =
  HH.div [ HP.classes [ HH.ClassName "card bg-base-200 image-full shadow-lg rounded-box max-w-md space-x-2 p-2" ] ]
    [ HH.figure_ [ HH.img [ HP.src imageUrl ] ]
    , HH.div [ HP.classes [ HH.ClassName "card-body place-content-center" ] ]
        $ [ HH.div [ HP.classes [ HH.ClassName "stat" ] ] elements ]
        <> [ HH.div [ HP.classes [ HH.ClassName "card-actions justify-end" ] ] actions ]
    ]

-- | Squircle-masked card with image overlay
renderCardWithOverlayImg2 :: forall w i. String -> Array (HH.HTML w i) -> Array (HH.HTML w i) -> HH.HTML w i
renderCardWithOverlayImg2 imageUrl elements actions =
  HH.div [ HP.classes [ HH.ClassName "mask mask-squircle card bg-base-200 image-full shadow-lg rounded-box max-w-md space-x-2 p-2" ] ]
    [ HH.figure_ [ HH.img [ HP.src imageUrl ] ]
    , HH.div [ HP.classes [ HH.ClassName "card-body place-content-between" ] ]
        $ elements
        <> [ HH.div [ HP.classes [ HH.ClassName "card-actions justify-end" ] ] actions ]
    ]

-- | Wraps content in a daisyUI 3D hover card effect.
-- | The 8 empty divs are required for the CSS 3D grid effect.
renderHover3DCard :: forall w i. HH.HTML w i -> HH.HTML w i
renderHover3DCard content =
  HH.div [ HP.classes [ HH.ClassName "hover-3d" ] ]
    [ content
    -- 8 empty divs needed for the 3D effect
    , HH.div_ []
    , HH.div_ []
    , HH.div_ []
    , HH.div_ []
    , HH.div_ []
    , HH.div_ []
    , HH.div_ []
    , HH.div_ []
    ]

