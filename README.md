# purescript-halogen-daisyui

Halogen components and utilities for building UIs with [daisyUI](https://daisyui.com/) - a Tailwind CSS component library.

## Installation

Add to your `spago.yaml`:

```yaml
workspace:
  extraPackages:
    halogen-daisyui:
      git: https://github.com/mariusgeorgescu/purescript-halogen-daisyui.git
      ref: main
```

Then add to your package dependencies:

```yaml
package:
  dependencies:
    - halogen-daisyui
```

## Features

### Components

- **Buttons** - Primary, secondary, accent buttons with consistent styling
- **Loading** - Spinners, bars, and button loading states
- **Tooltips** - Wrap any element with positioned tooltips
- **Toasts** - Toast notifications with success/error/warning/info styles
- **Modals** - Dialog modals with customizable content
- **Dividers** - Horizontal and vertical dividers
- **Stats** - Statistic display components
- **Tables** - Simple table rendering helpers
- **Cards** - Card components with image overlays
- **Carousels** - Carousel and hover gallery components
- **Accordions** - Collapsible content sections
- **Links** - Styled link components
- **Footer** - Footer layout helpers
- **Filters** - Radio button filter groups
- **TextRotate** - Rotating text animation

### Utilities

- **Strings** - `shortString`, `trimQuotes`, `stringLimitBy`
- **Numbers** - `formatNumberFromStr` for number formatting
- **Dates** - POSIX timestamp formatting with timezone support
- **Arrays** - `enumerate` for adding indices
- **DOM** - `scrollToTop`, `scrollByXY` for scroll operations

### Types

Form field types compatible with `halogen-formless`:
- `Labelled` - Generic labelled form field
- `TextInput` - Text input configuration
- `Textarea` - Textarea configuration
- `Checkbox` - Checkbox configuration
- `Filter` - Filter component configuration

## Usage

```purescript
import Halogen.DaisyUI (renderPrimaryButton, renderToasts, scrollToTop)
import Halogen.DaisyUI.Components.Cards (renderCardWithOverlayImg)

render :: forall m. State -> H.ComponentHTML Action Slots m
render state =
  HH.div_
    [ renderPrimaryButton "Submit" SubmitForm
    , renderCardWithOverlayImg "image.jpg"
        [ HH.text "Card content" ]
    , renderToasts state.toasts
    ]
```

## Requirements

- PureScript 0.15+
- Halogen 7+
- halogen-formless (for form types)
- halogen-svg-elems (for SVG icons)
- daisyUI CSS in your HTML

## License

MIT

