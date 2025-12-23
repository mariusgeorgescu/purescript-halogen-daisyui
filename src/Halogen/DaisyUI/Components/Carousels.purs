module Halogen.DaisyUI.Components.Carousels
  ( renderCarousel
  , renderHoverGallery
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render a centered carousel
renderCarousel :: forall w i. Array (HH.HTML w i) -> HH.HTML w i
renderCarousel elements =
  HH.div [ HP.classes [ HH.ClassName "carousel carousel-center bg-base-300 rounded-box max-w-md space-x-4 p-4" ] ]
    [ HH.div [ HP.classes [ HH.ClassName "carousel-item" ] ] elements ]

-- | Render a hover gallery (images revealed on horizontal hover)
renderHoverGallery :: forall w i. Array String -> HH.HTML w i
renderHoverGallery imageUrls =
  HH.figure [ HP.classes [ HH.ClassName "hover-gallery max-w-[200px] sm:max-w-60 w-full" ] ]
    (map (\url -> HH.img [ HP.src url, HP.classes [ HH.ClassName "w-full sm:w-60 h-auto sm:h-90 object-contain" ] ]) imageUrls)

