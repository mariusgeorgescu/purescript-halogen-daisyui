module Halogen.DaisyUI.Types
  ( Labelled
  , TextInput
  , Textarea
  , Checkbox
  , Filter
  ) where

import Formless as F

-- | A labelled form field with state
type Labelled input output =
  { label :: String
  , state :: F.FieldState input String output
  }

-- | Configuration for a text input field
type TextInput action output =
  { label :: String
  , state :: F.FieldState String String output
  , action :: F.FieldAction action String String output
  }

-- | Configuration for a textarea field
type Textarea action output =
  { label :: String
  , state :: F.FieldState String String output
  , action :: F.FieldAction action String String output
  }

-- | Configuration for a checkbox field
type Checkbox error action =
  { label :: String
  , state :: F.FieldState Boolean error Boolean
  , action :: F.FieldAction action Boolean error Boolean
  }

-- | Configuration for a filter component
type Filter error action =
  { label :: String
  , options :: Array String
  , state :: F.FieldState String error String
  , action :: F.FieldAction action String error String
  }

