module Halogen.DaisyUI.Components.Tables
  ( renderTable
  , mapToTH
  , mapToTD
  ) where

import Prelude

import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

-- | Render a table with column headers and row data
renderTable :: forall w i. Array String -> Array (Array String) -> HH.HTML w i
renderTable columns contents =
  HH.div [ HP.classes [ HH.ClassName "overflow-x-auto" ] ]
    [ HH.table [ HP.classes [ HH.ClassName "table" ] ]
        [ HH.thead [] [ HH.tr [] (mapToTH columns) ]
        , HH.tbody [] ((\c -> HH.tr [] (mapToTD c)) <$> contents)
        ]
    ]

-- | Map strings to table header cells
mapToTH :: forall w i. Array String -> Array (HH.HTML w i)
mapToTH strings = map (\s -> HH.th [] [ HH.text s ]) strings

-- | Map strings to table data cells
mapToTD :: forall w i. Array String -> Array (HH.HTML w i)
mapToTD strings = map (\s -> HH.td [] [ HH.text s ]) strings

