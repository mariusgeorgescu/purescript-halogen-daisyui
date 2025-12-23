module Halogen.DaisyUI.Components.Toasts
  ( renderToasts
  , renderToast
  , successSvgIcon
  , errorSvgIcon
  , warningSvgIcon
  , infoSvgIcon
  ) where

import Prelude

import Data.Tuple (Tuple(..))
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Halogen.Svg.Attributes as SA
import Halogen.Svg.Attributes.Color (Color(..))
import Halogen.Svg.Attributes.StrokeLineCap (StrokeLineCap(..))
import Halogen.Svg.Attributes.StrokeLineJoin (StrokeLineJoin(..))
import Halogen.Svg.Elements as SE

-- | Render a collection of toasts in the top-center of the screen
renderToasts :: forall w i. Array (Tuple String String) -> HH.HTML w i
renderToasts toasts = HH.div [ HP.classes [ HH.ClassName "toast toast-center toast-top z-[9999]" ] ] (renderToast <$> toasts)

-- | Render a single toast notification
renderToast :: forall w i. Tuple String String -> HH.HTML w i
renderToast (Tuple alertType message) =
  HH.div [ HP.classes [ HH.ClassName ("alert alert-" <> alertType) ] ]
    [ case alertType of
        "success" -> successSvgIcon
        "error" -> errorSvgIcon
        "warning" -> warningSvgIcon
        _ -> infoSvgIcon
    , HH.span_ [ HH.text message ]
    ]

-- | Success checkmark icon
successSvgIcon :: forall w i. HH.HTML w i
successSvgIcon =
  SE.svg
    [ SA.class_ $ HH.ClassName "h-6 w-6 shrink-0 stroke-current"
    , SA.fill NoColor
    , SA.viewBox 0.0 0.0 24.0 24.0
    ]
    [ SE.path
        [ SA.strokeLineCap LineCapRound
        , SA.strokeLineJoin LineJoinRound
        , SA.strokeWidth 2.0
        , HP.attr (HH.AttrName "d") "M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
        ]
    ]

-- | Error X icon
errorSvgIcon :: forall w i. HH.HTML w i
errorSvgIcon =
  SE.svg
    [ SA.class_ $ HH.ClassName "h-6 w-6 shrink-0 stroke-current"
    , SA.fill NoColor
    , SA.viewBox 0.0 0.0 24.0 24.0
    ]
    [ SE.path
        [ SA.strokeLineCap LineCapRound
        , SA.strokeLineJoin LineJoinRound
        , SA.strokeWidth 2.0
        , HP.attr (HH.AttrName "d") "M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z"
        ]
    ]

-- | Warning exclamation icon
warningSvgIcon :: forall w i. HH.HTML w i
warningSvgIcon =
  SE.svg
    [ SA.class_ $ HH.ClassName "h-6 w-6 shrink-0 stroke-current"
    , SA.fill NoColor
    , SA.viewBox 0.0 0.0 24.0 24.0
    ]
    [ SE.path
        [ SA.strokeLineCap LineCapRound
        , SA.strokeLineJoin LineJoinRound
        , SA.strokeWidth 2.0
        , HP.attr (HH.AttrName "d") "M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"
        ]
    ]

-- | Info icon
infoSvgIcon :: forall w i. HH.HTML w i
infoSvgIcon =
  SE.svg
    [ SA.class_ $ HH.ClassName "h-6 w-6 shrink-0 stroke-current"
    , SA.fill NoColor
    , SA.viewBox 0.0 0.0 24.0 24.0
    ]
    [ SE.path
        [ SA.strokeLineCap LineCapRound
        , SA.strokeLineJoin LineJoinRound
        , SA.strokeWidth 2.0
        , HP.attr (HH.AttrName "d") "M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
        ]
    ]

