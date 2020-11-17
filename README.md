# Tailwind CSS Typed

Definition of [Tailwind CSS](https://tailwindcss.org/) classes as Elm types.

## Example

Look in div's attribute list.

```Elm
import TailwindCSS exposing (..)
import Html exposing (Html, div, text)

view : String -> Html msg
view str =
  div [ tailwind [ TextGreen400, HOVER BgYellow400 ] ]
    [ text "Green \"" ++ str ++ "\" with yellow background on hover"
    ]
```

If you call `view "Hello world!"` you get something like this:

```Html
<div class="text-green-400 hover:bg-yellow-400">
    Green "Hello world!" with yellow background on hover
</div>
```

## Naming conventions

- All types starts with a capital letter.
- All letters after hyphens are uppercase.
- All hyphens are removed.
- Slash between numbers changed to underscore.
- Negating minus in beginning changed to postfix underscore.

Examples:

| This library type | Talewind CSS class      |
| ----------- | ----------- |
|   BgYellow400 | "bg-yellow-400" |
|   BorderOpacity75 | "border-opacity-75" |
|   SkewX12_ | "-skew-x-12" |
|   TranslateY1_2 | "translate-y-1/2" |
|   SM W1_2 | "sm:w-1/2" |
|   LG W1_4 | "lg:w-1/4" |
|   HOVER BgTeal300 | "hover:bg-teal-300" |

