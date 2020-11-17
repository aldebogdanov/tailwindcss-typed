module TailwindCSS exposing (tailwind, TailwindCSS)

{-| This library define a list of types to describe Tailwind CSS classes.
Use them as arguments of tailwind function to become Attribute msg with classes.

# Types
@docs TailwindCSS

# Converter function
@docs tailwind

-}

import Html exposing (Attribute)
import Html.Attributes exposing (classList)

{-| Convert a list of TailwindCSS values into a classList of Tailwind CSS classes.
Designed to be used in Html elements.

    Html.div [ tailwind [ BgGreen500, BgOpacity50 ]] [] -- <div class="bg-green-500 bg-opacity-50"></div>
-}
tailwind : List TailwindCSS -> Attribute msg
tailwind tws = classList <| List.map (\t -> (classSelect t, True)) tws


classSelect : TailwindCSS -> String
classSelect cl = case cl of
    SM c -> "sm:" ++ classSelect c
    MD c -> "md:" ++ classSelect c
    LG c -> "lg:" ++ classSelect c
    XL c -> "xl:" ++ classSelect c
    FOCUS c -> "focus:" ++ classSelect c
    HOVER c -> "hover:" ++ classSelect c

    SrOnly -> "sr-only"
    NotSrOnly -> "not-sr-only"
    BgFixed -> "bg-fixed"
    BgLocal -> "bg-local"
    BgScroll -> "bg-scroll"
    BgClipBorder -> "bg-clip-border"
    BgClipPadding -> "bg-clip-padding"
    BgClipContent -> "bg-clip-content"
    BgClipText -> "bg-clip-text"
    BgRepeat -> "bg-repeat"
    BgNoRepeat -> "bg-no-repeat"
    BgRepeatX -> "bg-repeat-x"
    BgRepeatY -> "bg-repeat-y"
    BgRepeatRound -> "bg-repeat-round"
    BgRepeatSpace -> "bg-repeat-space"
    BgOpacity0 -> "bg-opacity-0"
    BgOpacity25 -> "bg-opacity-25"
    BgOpacity50 -> "bg-opacity-50"
    BgOpacity75 -> "bg-opacity-75"
    BgOpacity100 -> "bg-opacity-100"
    BgTransparent -> "bg-transparent"
    BgCurrent -> "bg-current"
    BgBlack -> "bg-black"
    BgWhite -> "bg-white"
    BgGray100 -> "bg-gray-100"
    BgGray200 -> "bg-gray-200"
    BgGray300 -> "bg-gray-300"
    BgGray400 -> "bg-gray-400"
    BgGray500 -> "bg-gray-500"
    BgGray600 -> "bg-gray-600"
    BgGray700 -> "bg-gray-700"
    BgGray800 -> "bg-gray-800"
    BgGray900 -> "bg-gray-900"
    BgRed100 -> "bg-red-100"
    BgRed200 -> "bg-red-200"
    BgRed300 -> "bg-red-300"
    BgRed400 -> "bg-red-400"
    BgRed500 -> "bg-red-500"
    BgRed600 -> "bg-red-600"
    BgRed700 -> "bg-red-700"
    BgRed800 -> "bg-red-800"
    BgRed900 -> "bg-red-900"
    BgOrange100 -> "bg-orange-100"
    BgOrange200 -> "bg-orange-200"
    BgOrange300 -> "bg-orange-300"
    BgOrange400 -> "bg-orange-400"
    BgOrange500 -> "bg-orange-500"
    BgOrange600 -> "bg-orange-600"
    BgOrange700 -> "bg-orange-700"
    BgOrange800 -> "bg-orange-800"
    BgOrange900 -> "bg-orange-900"
    BgYellow100 -> "bg-yellow-100"
    BgYellow200 -> "bg-yellow-200"
    BgYellow300 -> "bg-yellow-300"
    BgYellow400 -> "bg-yellow-400"
    BgYellow500 -> "bg-yellow-500"
    BgYellow600 -> "bg-yellow-600"
    BgYellow700 -> "bg-yellow-700"
    BgYellow800 -> "bg-yellow-800"
    BgYellow900 -> "bg-yellow-900"
    BgGreen100 -> "bg-green-100"
    BgGreen200 -> "bg-green-200"
    BgGreen300 -> "bg-green-300"
    BgGreen400 -> "bg-green-400"
    BgGreen500 -> "bg-green-500"
    BgGreen600 -> "bg-green-600"
    BgGreen700 -> "bg-green-700"
    BgGreen800 -> "bg-green-800"
    BgGreen900 -> "bg-green-900"
    BgTeal100 -> "bg-teal-100"
    BgTeal200 -> "bg-teal-200"
    BgTeal300 -> "bg-teal-300"
    BgTeal400 -> "bg-teal-400"
    BgTeal500 -> "bg-teal-500"
    BgTeal600 -> "bg-teal-600"
    BgTeal700 -> "bg-teal-700"
    BgTeal800 -> "bg-teal-800"
    BgTeal900 -> "bg-teal-900"
    BgBlue100 -> "bg-blue-100"
    BgBlue200 -> "bg-blue-200"
    BgBlue300 -> "bg-blue-300"
    BgBlue400 -> "bg-blue-400"
    BgBlue500 -> "bg-blue-500"
    BgBlue600 -> "bg-blue-600"
    BgBlue700 -> "bg-blue-700"
    BgBlue800 -> "bg-blue-800"
    BgBlue900 -> "bg-blue-900"
    BgIndigo100 -> "bg-indigo-100"
    BgIndigo200 -> "bg-indigo-200"
    BgIndigo300 -> "bg-indigo-300"
    BgIndigo400 -> "bg-indigo-400"
    BgIndigo500 -> "bg-indigo-500"
    BgIndigo600 -> "bg-indigo-600"
    BgIndigo700 -> "bg-indigo-700"
    BgIndigo800 -> "bg-indigo-800"
    BgIndigo900 -> "bg-indigo-900"
    BgPurple100 -> "bg-purple-100"
    BgPurple200 -> "bg-purple-200"
    BgPurple300 -> "bg-purple-300"
    BgPurple400 -> "bg-purple-400"
    BgPurple500 -> "bg-purple-500"
    BgPurple600 -> "bg-purple-600"
    BgPurple700 -> "bg-purple-700"
    BgPurple800 -> "bg-purple-800"
    BgPurple900 -> "bg-purple-900"
    BgPink100 -> "bg-pink-100"
    BgPink200 -> "bg-pink-200"
    BgPink300 -> "bg-pink-300"
    BgPink400 -> "bg-pink-400"
    BgPink500 -> "bg-pink-500"
    BgPink600 -> "bg-pink-600"
    BgPink700 -> "bg-pink-700"
    BgPink800 -> "bg-pink-800"
    BgPink900 -> "bg-pink-900"
    BgBottom -> "bg-bottom"
    BgCenter -> "bg-center"
    BgLeft -> "bg-left"
    BgLeftBottom -> "bg-left-bottom"
    BgLeftTop -> "bg-left-top"
    BgRight -> "bg-right"
    BgRightBottom -> "bg-right-bottom"
    BgRightTop -> "bg-right-top"
    BgTop -> "bg-top"
    BgAuto -> "bg-auto"
    BgCover -> "bg-cover"
    BgContain -> "bg-contain"
    BgNone -> "bg-none"
    BgGradientToT -> "bg-gradient-to-t"
    BgGradientToTr -> "bg-gradient-to-tr"
    BgGradientToR -> "bg-gradient-to-r"
    BgGradientToBr -> "bg-gradient-to-br"
    BgGradientToB -> "bg-gradient-to-b"
    BgGradientToBl -> "bg-gradient-to-bl"
    BgGradientToL -> "bg-gradient-to-l"
    BgGradientToTl -> "bg-gradient-to-tl"
    FromTransparent -> "from-transparent"
    ViaTransparent -> "via-transparent"
    ToTransparent -> "to-transparent"
    FromCurrent -> "from-current"
    ViaCurrent -> "via-current"
    ToCurrent -> "to-current"
    FromBlack -> "from-black"
    ViaBlack -> "via-black"
    ToBlack -> "to-black"
    FromWhite -> "from-white"
    ViaWhite -> "via-white"
    ToWhite -> "to-white"
    FromGray100 -> "from-gray-100"
    ViaGray100 -> "via-gray-100"
    ToGray100 -> "to-gray-100"
    FromGray200 -> "from-gray-200"
    ViaGray200 -> "via-gray-200"
    ToGray200 -> "to-gray-200"
    FromGray300 -> "from-gray-300"
    ViaGray300 -> "via-gray-300"
    ToGray300 -> "to-gray-300"
    FromGray400 -> "from-gray-400"
    ViaGray400 -> "via-gray-400"
    ToGray400 -> "to-gray-400"
    FromGray500 -> "from-gray-500"
    ViaGray500 -> "via-gray-500"
    ToGray500 -> "to-gray-500"
    FromGray600 -> "from-gray-600"
    ViaGray600 -> "via-gray-600"
    ToGray600 -> "to-gray-600"
    FromGray700 -> "from-gray-700"
    ViaGray700 -> "via-gray-700"
    ToGray700 -> "to-gray-700"
    FromGray800 -> "from-gray-800"
    ViaGray800 -> "via-gray-800"
    ToGray800 -> "to-gray-800"
    FromGray900 -> "from-gray-900"
    ViaGray900 -> "via-gray-900"
    ToGray900 -> "to-gray-900"
    FromRed100 -> "from-red-100"
    ViaRed100 -> "via-red-100"
    ToRed100 -> "to-red-100"
    FromRed200 -> "from-red-200"
    ViaRed200 -> "via-red-200"
    ToRed200 -> "to-red-200"
    FromRed300 -> "from-red-300"
    ViaRed300 -> "via-red-300"
    ToRed300 -> "to-red-300"
    FromRed400 -> "from-red-400"
    ViaRed400 -> "via-red-400"
    ToRed400 -> "to-red-400"
    FromRed500 -> "from-red-500"
    ViaRed500 -> "via-red-500"
    ToRed500 -> "to-red-500"
    FromRed600 -> "from-red-600"
    ViaRed600 -> "via-red-600"
    ToRed600 -> "to-red-600"
    FromRed700 -> "from-red-700"
    ViaRed700 -> "via-red-700"
    ToRed700 -> "to-red-700"
    FromRed800 -> "from-red-800"
    ViaRed800 -> "via-red-800"
    ToRed800 -> "to-red-800"
    FromRed900 -> "from-red-900"
    ViaRed900 -> "via-red-900"
    ToRed900 -> "to-red-900"
    FromOrange100 -> "from-orange-100"
    ViaOrange100 -> "via-orange-100"
    ToOrange100 -> "to-orange-100"
    FromOrange200 -> "from-orange-200"
    ViaOrange200 -> "via-orange-200"
    ToOrange200 -> "to-orange-200"
    FromOrange300 -> "from-orange-300"
    ViaOrange300 -> "via-orange-300"
    ToOrange300 -> "to-orange-300"
    FromOrange400 -> "from-orange-400"
    ViaOrange400 -> "via-orange-400"
    ToOrange400 -> "to-orange-400"
    FromOrange500 -> "from-orange-500"
    ViaOrange500 -> "via-orange-500"
    ToOrange500 -> "to-orange-500"
    FromOrange600 -> "from-orange-600"
    ViaOrange600 -> "via-orange-600"
    ToOrange600 -> "to-orange-600"
    FromOrange700 -> "from-orange-700"
    ViaOrange700 -> "via-orange-700"
    ToOrange700 -> "to-orange-700"
    FromOrange800 -> "from-orange-800"
    ViaOrange800 -> "via-orange-800"
    ToOrange800 -> "to-orange-800"
    FromOrange900 -> "from-orange-900"
    ViaOrange900 -> "via-orange-900"
    ToOrange900 -> "to-orange-900"
    FromYellow100 -> "from-yellow-100"
    ViaYellow100 -> "via-yellow-100"
    ToYellow100 -> "to-yellow-100"
    FromYellow200 -> "from-yellow-200"
    ViaYellow200 -> "via-yellow-200"
    ToYellow200 -> "to-yellow-200"
    FromYellow300 -> "from-yellow-300"
    ViaYellow300 -> "via-yellow-300"
    ToYellow300 -> "to-yellow-300"
    FromYellow400 -> "from-yellow-400"
    ViaYellow400 -> "via-yellow-400"
    ToYellow400 -> "to-yellow-400"
    FromYellow500 -> "from-yellow-500"
    ViaYellow500 -> "via-yellow-500"
    ToYellow500 -> "to-yellow-500"
    FromYellow600 -> "from-yellow-600"
    ViaYellow600 -> "via-yellow-600"
    ToYellow600 -> "to-yellow-600"
    FromYellow700 -> "from-yellow-700"
    ViaYellow700 -> "via-yellow-700"
    ToYellow700 -> "to-yellow-700"
    FromYellow800 -> "from-yellow-800"
    ViaYellow800 -> "via-yellow-800"
    ToYellow800 -> "to-yellow-800"
    FromYellow900 -> "from-yellow-900"
    ViaYellow900 -> "via-yellow-900"
    ToYellow900 -> "to-yellow-900"
    FromGreen100 -> "from-green-100"
    ViaGreen100 -> "via-green-100"
    ToGreen100 -> "to-green-100"
    FromGreen200 -> "from-green-200"
    ViaGreen200 -> "via-green-200"
    ToGreen200 -> "to-green-200"
    FromGreen300 -> "from-green-300"
    ViaGreen300 -> "via-green-300"
    ToGreen300 -> "to-green-300"
    FromGreen400 -> "from-green-400"
    ViaGreen400 -> "via-green-400"
    ToGreen400 -> "to-green-400"
    FromGreen500 -> "from-green-500"
    ViaGreen500 -> "via-green-500"
    ToGreen500 -> "to-green-500"
    FromGreen600 -> "from-green-600"
    ViaGreen600 -> "via-green-600"
    ToGreen600 -> "to-green-600"
    FromGreen700 -> "from-green-700"
    ViaGreen700 -> "via-green-700"
    ToGreen700 -> "to-green-700"
    FromGreen800 -> "from-green-800"
    ViaGreen800 -> "via-green-800"
    ToGreen800 -> "to-green-800"
    FromGreen900 -> "from-green-900"
    ViaGreen900 -> "via-green-900"
    ToGreen900 -> "to-green-900"
    FromTeal100 -> "from-teal-100"
    ViaTeal100 -> "via-teal-100"
    ToTeal100 -> "to-teal-100"
    FromTeal200 -> "from-teal-200"
    ViaTeal200 -> "via-teal-200"
    ToTeal200 -> "to-teal-200"
    FromTeal300 -> "from-teal-300"
    ViaTeal300 -> "via-teal-300"
    ToTeal300 -> "to-teal-300"
    FromTeal400 -> "from-teal-400"
    ViaTeal400 -> "via-teal-400"
    ToTeal400 -> "to-teal-400"
    FromTeal500 -> "from-teal-500"
    ViaTeal500 -> "via-teal-500"
    ToTeal500 -> "to-teal-500"
    FromTeal600 -> "from-teal-600"
    ViaTeal600 -> "via-teal-600"
    ToTeal600 -> "to-teal-600"
    FromTeal700 -> "from-teal-700"
    ViaTeal700 -> "via-teal-700"
    ToTeal700 -> "to-teal-700"
    FromTeal800 -> "from-teal-800"
    ViaTeal800 -> "via-teal-800"
    ToTeal800 -> "to-teal-800"
    FromTeal900 -> "from-teal-900"
    ViaTeal900 -> "via-teal-900"
    ToTeal900 -> "to-teal-900"
    FromBlue100 -> "from-blue-100"
    ViaBlue100 -> "via-blue-100"
    ToBlue100 -> "to-blue-100"
    FromBlue200 -> "from-blue-200"
    ViaBlue200 -> "via-blue-200"
    ToBlue200 -> "to-blue-200"
    FromBlue300 -> "from-blue-300"
    ViaBlue300 -> "via-blue-300"
    ToBlue300 -> "to-blue-300"
    FromBlue400 -> "from-blue-400"
    ViaBlue400 -> "via-blue-400"
    ToBlue400 -> "to-blue-400"
    FromBlue500 -> "from-blue-500"
    ViaBlue500 -> "via-blue-500"
    ToBlue500 -> "to-blue-500"
    FromBlue600 -> "from-blue-600"
    ViaBlue600 -> "via-blue-600"
    ToBlue600 -> "to-blue-600"
    FromBlue700 -> "from-blue-700"
    ViaBlue700 -> "via-blue-700"
    ToBlue700 -> "to-blue-700"
    FromBlue800 -> "from-blue-800"
    ViaBlue800 -> "via-blue-800"
    ToBlue800 -> "to-blue-800"
    FromBlue900 -> "from-blue-900"
    ViaBlue900 -> "via-blue-900"
    ToBlue900 -> "to-blue-900"
    FromIndigo100 -> "from-indigo-100"
    ViaIndigo100 -> "via-indigo-100"
    ToIndigo100 -> "to-indigo-100"
    FromIndigo200 -> "from-indigo-200"
    ViaIndigo200 -> "via-indigo-200"
    ToIndigo200 -> "to-indigo-200"
    FromIndigo300 -> "from-indigo-300"
    ViaIndigo300 -> "via-indigo-300"
    ToIndigo300 -> "to-indigo-300"
    FromIndigo400 -> "from-indigo-400"
    ViaIndigo400 -> "via-indigo-400"
    ToIndigo400 -> "to-indigo-400"
    FromIndigo500 -> "from-indigo-500"
    ViaIndigo500 -> "via-indigo-500"
    ToIndigo500 -> "to-indigo-500"
    FromIndigo600 -> "from-indigo-600"
    ViaIndigo600 -> "via-indigo-600"
    ToIndigo600 -> "to-indigo-600"
    FromIndigo700 -> "from-indigo-700"
    ViaIndigo700 -> "via-indigo-700"
    ToIndigo700 -> "to-indigo-700"
    FromIndigo800 -> "from-indigo-800"
    ViaIndigo800 -> "via-indigo-800"
    ToIndigo800 -> "to-indigo-800"
    FromIndigo900 -> "from-indigo-900"
    ViaIndigo900 -> "via-indigo-900"
    ToIndigo900 -> "to-indigo-900"
    FromPurple100 -> "from-purple-100"
    ViaPurple100 -> "via-purple-100"
    ToPurple100 -> "to-purple-100"
    FromPurple200 -> "from-purple-200"
    ViaPurple200 -> "via-purple-200"
    ToPurple200 -> "to-purple-200"
    FromPurple300 -> "from-purple-300"
    ViaPurple300 -> "via-purple-300"
    ToPurple300 -> "to-purple-300"
    FromPurple400 -> "from-purple-400"
    ViaPurple400 -> "via-purple-400"
    ToPurple400 -> "to-purple-400"
    FromPurple500 -> "from-purple-500"
    ViaPurple500 -> "via-purple-500"
    ToPurple500 -> "to-purple-500"
    FromPurple600 -> "from-purple-600"
    ViaPurple600 -> "via-purple-600"
    ToPurple600 -> "to-purple-600"
    FromPurple700 -> "from-purple-700"
    ViaPurple700 -> "via-purple-700"
    ToPurple700 -> "to-purple-700"
    FromPurple800 -> "from-purple-800"
    ViaPurple800 -> "via-purple-800"
    ToPurple800 -> "to-purple-800"
    FromPurple900 -> "from-purple-900"
    ViaPurple900 -> "via-purple-900"
    ToPurple900 -> "to-purple-900"
    FromPink100 -> "from-pink-100"
    ViaPink100 -> "via-pink-100"
    ToPink100 -> "to-pink-100"
    FromPink200 -> "from-pink-200"
    ViaPink200 -> "via-pink-200"
    ToPink200 -> "to-pink-200"
    FromPink300 -> "from-pink-300"
    ViaPink300 -> "via-pink-300"
    ToPink300 -> "to-pink-300"
    FromPink400 -> "from-pink-400"
    ViaPink400 -> "via-pink-400"
    ToPink400 -> "to-pink-400"
    FromPink500 -> "from-pink-500"
    ViaPink500 -> "via-pink-500"
    ToPink500 -> "to-pink-500"
    FromPink600 -> "from-pink-600"
    ViaPink600 -> "via-pink-600"
    ToPink600 -> "to-pink-600"
    FromPink700 -> "from-pink-700"
    ViaPink700 -> "via-pink-700"
    ToPink700 -> "to-pink-700"
    FromPink800 -> "from-pink-800"
    ViaPink800 -> "via-pink-800"
    ToPink800 -> "to-pink-800"
    FromPink900 -> "from-pink-900"
    ViaPink900 -> "via-pink-900"
    ToPink900 -> "to-pink-900"
    BorderSolid -> "border-solid"
    BorderDashed -> "border-dashed"
    BorderDotted -> "border-dotted"
    BorderDouble -> "border-double"
    BorderNone -> "border-none"
    DivideSolid -> "divide-solid"
    DivideDashed -> "divide-dashed"
    DivideDotted -> "divide-dotted"
    DivideDouble -> "divide-double"
    DivideNone -> "divide-none"
    BorderTransparent -> "border-transparent"
    BorderCurrent -> "border-current"
    BorderBlack -> "border-black"
    BorderWhite -> "border-white"
    BorderGray100 -> "border-gray-100"
    BorderGray200 -> "border-gray-200"
    BorderGray300 -> "border-gray-300"
    BorderGray400 -> "border-gray-400"
    BorderGray500 -> "border-gray-500"
    BorderGray600 -> "border-gray-600"
    BorderGray700 -> "border-gray-700"
    BorderGray800 -> "border-gray-800"
    BorderGray900 -> "border-gray-900"
    BorderRed100 -> "border-red-100"
    BorderRed200 -> "border-red-200"
    BorderRed300 -> "border-red-300"
    BorderRed400 -> "border-red-400"
    BorderRed500 -> "border-red-500"
    BorderRed600 -> "border-red-600"
    BorderRed700 -> "border-red-700"
    BorderRed800 -> "border-red-800"
    BorderRed900 -> "border-red-900"
    BorderOrange100 -> "border-orange-100"
    BorderOrange200 -> "border-orange-200"
    BorderOrange300 -> "border-orange-300"
    BorderOrange400 -> "border-orange-400"
    BorderOrange500 -> "border-orange-500"
    BorderOrange600 -> "border-orange-600"
    BorderOrange700 -> "border-orange-700"
    BorderOrange800 -> "border-orange-800"
    BorderOrange900 -> "border-orange-900"
    BorderYellow100 -> "border-yellow-100"
    BorderYellow200 -> "border-yellow-200"
    BorderYellow300 -> "border-yellow-300"
    BorderYellow400 -> "border-yellow-400"
    BorderYellow500 -> "border-yellow-500"
    BorderYellow600 -> "border-yellow-600"
    BorderYellow700 -> "border-yellow-700"
    BorderYellow800 -> "border-yellow-800"
    BorderYellow900 -> "border-yellow-900"
    BorderGreen100 -> "border-green-100"
    BorderGreen200 -> "border-green-200"
    BorderGreen300 -> "border-green-300"
    BorderGreen400 -> "border-green-400"
    BorderGreen500 -> "border-green-500"
    BorderGreen600 -> "border-green-600"
    BorderGreen700 -> "border-green-700"
    BorderGreen800 -> "border-green-800"
    BorderGreen900 -> "border-green-900"
    BorderTeal100 -> "border-teal-100"
    BorderTeal200 -> "border-teal-200"
    BorderTeal300 -> "border-teal-300"
    BorderTeal400 -> "border-teal-400"
    BorderTeal500 -> "border-teal-500"
    BorderTeal600 -> "border-teal-600"
    BorderTeal700 -> "border-teal-700"
    BorderTeal800 -> "border-teal-800"
    BorderTeal900 -> "border-teal-900"
    BorderBlue100 -> "border-blue-100"
    BorderBlue200 -> "border-blue-200"
    BorderBlue300 -> "border-blue-300"
    BorderBlue400 -> "border-blue-400"
    BorderBlue500 -> "border-blue-500"
    BorderBlue600 -> "border-blue-600"
    BorderBlue700 -> "border-blue-700"
    BorderBlue800 -> "border-blue-800"
    BorderBlue900 -> "border-blue-900"
    BorderIndigo100 -> "border-indigo-100"
    BorderIndigo200 -> "border-indigo-200"
    BorderIndigo300 -> "border-indigo-300"
    BorderIndigo400 -> "border-indigo-400"
    BorderIndigo500 -> "border-indigo-500"
    BorderIndigo600 -> "border-indigo-600"
    BorderIndigo700 -> "border-indigo-700"
    BorderIndigo800 -> "border-indigo-800"
    BorderIndigo900 -> "border-indigo-900"
    BorderPurple100 -> "border-purple-100"
    BorderPurple200 -> "border-purple-200"
    BorderPurple300 -> "border-purple-300"
    BorderPurple400 -> "border-purple-400"
    BorderPurple500 -> "border-purple-500"
    BorderPurple600 -> "border-purple-600"
    BorderPurple700 -> "border-purple-700"
    BorderPurple800 -> "border-purple-800"
    BorderPurple900 -> "border-purple-900"
    BorderPink100 -> "border-pink-100"
    BorderPink200 -> "border-pink-200"
    BorderPink300 -> "border-pink-300"
    BorderPink400 -> "border-pink-400"
    BorderPink500 -> "border-pink-500"
    BorderPink600 -> "border-pink-600"
    BorderPink700 -> "border-pink-700"
    BorderPink800 -> "border-pink-800"
    BorderPink900 -> "border-pink-900"
    BorderOpacity0 -> "border-opacity-0"
    BorderOpacity25 -> "border-opacity-25"
    BorderOpacity50 -> "border-opacity-50"
    BorderOpacity75 -> "border-opacity-75"
    BorderOpacity100 -> "border-opacity-100"
    RoundedTNone -> "rounded-t-none"
    RoundedRNone -> "rounded-r-none"
    RoundedBNone -> "rounded-b-none"
    RoundedLNone -> "rounded-l-none"
    RoundedTrNone -> "rounded-tr-none"
    RoundedTlNone -> "rounded-tl-none"
    RoundedBrNone -> "rounded-br-none"
    RoundedBlNone -> "rounded-bl-none"
    RoundedNone -> "rounded-none"
    RoundedTSm -> "rounded-t-sm"
    RoundedRSm -> "rounded-r-sm"
    RoundedBSm -> "rounded-b-sm"
    RoundedLSm -> "rounded-l-sm"
    RoundedTrSm -> "rounded-tr-sm"
    RoundedTlSm -> "rounded-tl-sm"
    RoundedBrSm -> "rounded-br-sm"
    RoundedBlSm -> "rounded-bl-sm"
    RoundedSm -> "rounded-sm"
    RoundedT -> "rounded-t"
    RoundedR -> "rounded-r"
    RoundedB -> "rounded-b"
    RoundedL -> "rounded-l"
    RoundedTr -> "rounded-tr"
    RoundedTl -> "rounded-tl"
    RoundedBr -> "rounded-br"
    RoundedBl -> "rounded-bl"
    Rounded -> "rounded"
    RoundedTMd -> "rounded-t-md"
    RoundedRMd -> "rounded-r-md"
    RoundedBMd -> "rounded-b-md"
    RoundedLMd -> "rounded-l-md"
    RoundedTrMd -> "rounded-tr-md"
    RoundedTlMd -> "rounded-tl-md"
    RoundedBrMd -> "rounded-br-md"
    RoundedBlMd -> "rounded-bl-md"
    RoundedMd -> "rounded-md"
    RoundedTLg -> "rounded-t-lg"
    RoundedRLg -> "rounded-r-lg"
    RoundedBLg -> "rounded-b-lg"
    RoundedLLg -> "rounded-l-lg"
    RoundedTrLg -> "rounded-tr-lg"
    RoundedTlLg -> "rounded-tl-lg"
    RoundedBrLg -> "rounded-br-lg"
    RoundedBlLg -> "rounded-bl-lg"
    RoundedLg -> "rounded-lg"
    RoundedTXl -> "rounded-t-xl"
    RoundedRXl -> "rounded-r-xl"
    RoundedBXl -> "rounded-b-xl"
    RoundedLXl -> "rounded-l-xl"
    RoundedTrXl -> "rounded-tr-xl"
    RoundedTlXl -> "rounded-tl-xl"
    RoundedBrXl -> "rounded-br-xl"
    RoundedBlXl -> "rounded-bl-xl"
    RoundedXl -> "rounded-xl"
    RoundedT2xl -> "rounded-t-2xl"
    RoundedR2xl -> "rounded-r-2xl"
    RoundedB2xl -> "rounded-b-2xl"
    RoundedL2xl -> "rounded-l-2xl"
    RoundedTr2xl -> "rounded-tr-2xl"
    RoundedTl2xl -> "rounded-tl-2xl"
    RoundedBr2xl -> "rounded-br-2xl"
    RoundedBl2xl -> "rounded-bl-2xl"
    Rounded2xl -> "rounded-2xl"
    RoundedT3xl -> "rounded-t-3xl"
    RoundedR3xl -> "rounded-r-3xl"
    RoundedB3xl -> "rounded-b-3xl"
    RoundedL3xl -> "rounded-l-3xl"
    RoundedTr3xl -> "rounded-tr-3xl"
    RoundedTl3xl -> "rounded-tl-3xl"
    RoundedBr3xl -> "rounded-br-3xl"
    RoundedBl3xl -> "rounded-bl-3xl"
    Rounded3xl -> "rounded-3xl"
    RoundedTFull -> "rounded-t-full"
    RoundedRFull -> "rounded-r-full"
    RoundedBFull -> "rounded-b-full"
    RoundedLFull -> "rounded-l-full"
    RoundedTrFull -> "rounded-tr-full"
    RoundedTlFull -> "rounded-tl-full"
    RoundedBrFull -> "rounded-br-full"
    RoundedBlFull -> "rounded-bl-full"
    RoundedFull -> "rounded-full"
    BorderT0 -> "border-t-0"
    BorderR0 -> "border-r-0"
    BorderB0 -> "border-b-0"
    BorderL0 -> "border-l-0"
    Border0 -> "border-0"
    BorderT2 -> "border-t-2"
    BorderR2 -> "border-r-2"
    BorderB2 -> "border-b-2"
    BorderL2 -> "border-l-2"
    Border2 -> "border-2"
    BorderT4 -> "border-t-4"
    BorderR4 -> "border-r-4"
    BorderB4 -> "border-b-4"
    BorderL4 -> "border-l-4"
    Border4 -> "border-4"
    BorderT8 -> "border-t-8"
    BorderR8 -> "border-r-8"
    BorderB8 -> "border-b-8"
    BorderL8 -> "border-l-8"
    Border8 -> "border-8"
    BorderT -> "border-t"
    BorderR -> "border-r"
    BorderB -> "border-b"
    BorderL -> "border-l"
    Border -> "border"
    DivideTransparent -> "divide-transparent"
    DivideCurrent -> "divide-current"
    DivideBlack -> "divide-black"
    DivideWhite -> "divide-white"
    DivideGray100 -> "divide-gray-100"
    DivideGray200 -> "divide-gray-200"
    DivideGray300 -> "divide-gray-300"
    DivideGray400 -> "divide-gray-400"
    DivideGray500 -> "divide-gray-500"
    DivideGray600 -> "divide-gray-600"
    DivideGray700 -> "divide-gray-700"
    DivideGray800 -> "divide-gray-800"
    DivideGray900 -> "divide-gray-900"
    DivideRed100 -> "divide-red-100"
    DivideRed200 -> "divide-red-200"
    DivideRed300 -> "divide-red-300"
    DivideRed400 -> "divide-red-400"
    DivideRed500 -> "divide-red-500"
    DivideRed600 -> "divide-red-600"
    DivideRed700 -> "divide-red-700"
    DivideRed800 -> "divide-red-800"
    DivideRed900 -> "divide-red-900"
    DivideOrange100 -> "divide-orange-100"
    DivideOrange200 -> "divide-orange-200"
    DivideOrange300 -> "divide-orange-300"
    DivideOrange400 -> "divide-orange-400"
    DivideOrange500 -> "divide-orange-500"
    DivideOrange600 -> "divide-orange-600"
    DivideOrange700 -> "divide-orange-700"
    DivideOrange800 -> "divide-orange-800"
    DivideOrange900 -> "divide-orange-900"
    DivideYellow100 -> "divide-yellow-100"
    DivideYellow200 -> "divide-yellow-200"
    DivideYellow300 -> "divide-yellow-300"
    DivideYellow400 -> "divide-yellow-400"
    DivideYellow500 -> "divide-yellow-500"
    DivideYellow600 -> "divide-yellow-600"
    DivideYellow700 -> "divide-yellow-700"
    DivideYellow800 -> "divide-yellow-800"
    DivideYellow900 -> "divide-yellow-900"
    DivideGreen100 -> "divide-green-100"
    DivideGreen200 -> "divide-green-200"
    DivideGreen300 -> "divide-green-300"
    DivideGreen400 -> "divide-green-400"
    DivideGreen500 -> "divide-green-500"
    DivideGreen600 -> "divide-green-600"
    DivideGreen700 -> "divide-green-700"
    DivideGreen800 -> "divide-green-800"
    DivideGreen900 -> "divide-green-900"
    DivideTeal100 -> "divide-teal-100"
    DivideTeal200 -> "divide-teal-200"
    DivideTeal300 -> "divide-teal-300"
    DivideTeal400 -> "divide-teal-400"
    DivideTeal500 -> "divide-teal-500"
    DivideTeal600 -> "divide-teal-600"
    DivideTeal700 -> "divide-teal-700"
    DivideTeal800 -> "divide-teal-800"
    DivideTeal900 -> "divide-teal-900"
    DivideBlue100 -> "divide-blue-100"
    DivideBlue200 -> "divide-blue-200"
    DivideBlue300 -> "divide-blue-300"
    DivideBlue400 -> "divide-blue-400"
    DivideBlue500 -> "divide-blue-500"
    DivideBlue600 -> "divide-blue-600"
    DivideBlue700 -> "divide-blue-700"
    DivideBlue800 -> "divide-blue-800"
    DivideBlue900 -> "divide-blue-900"
    DivideIndigo100 -> "divide-indigo-100"
    DivideIndigo200 -> "divide-indigo-200"
    DivideIndigo300 -> "divide-indigo-300"
    DivideIndigo400 -> "divide-indigo-400"
    DivideIndigo500 -> "divide-indigo-500"
    DivideIndigo600 -> "divide-indigo-600"
    DivideIndigo700 -> "divide-indigo-700"
    DivideIndigo800 -> "divide-indigo-800"
    DivideIndigo900 -> "divide-indigo-900"
    DividePurple100 -> "divide-purple-100"
    DividePurple200 -> "divide-purple-200"
    DividePurple300 -> "divide-purple-300"
    DividePurple400 -> "divide-purple-400"
    DividePurple500 -> "divide-purple-500"
    DividePurple600 -> "divide-purple-600"
    DividePurple700 -> "divide-purple-700"
    DividePurple800 -> "divide-purple-800"
    DividePurple900 -> "divide-purple-900"
    DividePink100 -> "divide-pink-100"
    DividePink200 -> "divide-pink-200"
    DividePink300 -> "divide-pink-300"
    DividePink400 -> "divide-pink-400"
    DividePink500 -> "divide-pink-500"
    DividePink600 -> "divide-pink-600"
    DividePink700 -> "divide-pink-700"
    DividePink800 -> "divide-pink-800"
    DividePink900 -> "divide-pink-900"
    DivideOpacity0 -> "divide-opacity-0"
    DivideOpacity25 -> "divide-opacity-25"
    DivideOpacity50 -> "divide-opacity-50"
    DivideOpacity75 -> "divide-opacity-75"
    DivideOpacity100 -> "divide-opacity-100"
    DivideX0 -> "divide-x-0"
    DivideY0 -> "divide-y-0"
    DivideX2 -> "divide-x-2"
    DivideY2 -> "divide-y-2"
    DivideX4 -> "divide-x-4"
    DivideY4 -> "divide-y-4"
    DivideX8 -> "divide-x-8"
    DivideY8 -> "divide-y-8"
    DivideX -> "divide-x"
    DivideY -> "divide-y"
    DivideXReverse -> "divide-x-reverse"
    DivideYReverse -> "divide-y-reverse"
    BorderCollapse -> "border-collapse"
    BorderSeparate -> "border-separate"
    TableAuto -> "table-auto"
    TableFixed -> "table-fixed"
    ShadowXs -> "shadow-xs"
    ShadowSm -> "shadow-sm"
    Shadow -> "shadow"
    ShadowMd -> "shadow-md"
    ShadowLg -> "shadow-lg"
    ShadowXl -> "shadow-xl"
    Shadow2xl -> "shadow-2xl"
    ShadowInner -> "shadow-inner"
    ShadowOutline -> "shadow-outline"
    ShadowNone -> "shadow-none"
    Opacity0 -> "opacity-0"
    Opacity25 -> "opacity-25"
    Opacity50 -> "opacity-50"
    Opacity75 -> "opacity-75"
    Opacity100 -> "opacity-100"
    TransitionNone -> "transition-none"
    TransitionAll -> "transition-all"
    Transition -> "transition"
    TransitionColors -> "transition-colors"
    TransitionOpacity -> "transition-opacity"
    TransitionShadow -> "transition-shadow"
    TransitionTransform -> "transition-transform"
    Duration75 -> "duration-75"
    Duration100 -> "duration-100"
    Duration150 -> "duration-150"
    Duration200 -> "duration-200"
    Duration300 -> "duration-300"
    Duration500 -> "duration-500"
    Duration700 -> "duration-700"
    Duration1000 -> "duration-1000"
    EaseLinear -> "ease-linear"
    EaseIn -> "ease-in"
    EaseOut -> "ease-out"
    EaseInOut -> "ease-in-out"
    Delay75 -> "delay-75"
    Delay100 -> "delay-100"
    Delay150 -> "delay-150"
    Delay200 -> "delay-200"
    Delay300 -> "delay-300"
    Delay500 -> "delay-500"
    Delay700 -> "delay-700"
    Delay1000 -> "delay-1000"
    AnimateNone -> "animate-none"
    AnimateSpin -> "animate-spin"
    AnimatePing -> "animate-ping"
    AnimatePulse -> "animate-pulse"
    AnimateBounce -> "animate-bounce"
    FlexRow -> "flex-row"
    FlexRowReverse -> "flex-row-reverse"
    FlexCol -> "flex-col"
    FlexColReverse -> "flex-col-reverse"
    FlexNoWrap -> "flex-no-wrap"
    FlexWrap -> "flex-wrap"
    FlexWrapReverse -> "flex-wrap-reverse"
    ItemsStretch -> "items-stretch"
    ItemsStart -> "items-start"
    ItemsCenter -> "items-center"
    ItemsEnd -> "items-end"
    ItemsBaseline -> "items-baseline"
    ContentStart -> "content-start"
    ContentCenter -> "content-center"
    ContentEnd -> "content-end"
    ContentBetween -> "content-between"
    ContentAround -> "content-around"
    SelfAuto -> "self-auto"
    SelfStart -> "self-start"
    SelfCenter -> "self-center"
    SelfEnd -> "self-end"
    SelfStretch -> "self-stretch"
    PlaceContentStart -> "place-content-start"
    PlaceContentCenter -> "place-content-center"
    PlaceContentEnd -> "place-content-end"
    PlaceContentBetween -> "place-content-between"
    PlaceContentAround -> "place-content-around"
    PlaceContentEvenly -> "place-content-evenly"
    PlaceContentStretch -> "place-content-stretch"
    PlaceItemsAuto -> "place-items-auto"
    PlaceItemsStart -> "place-items-start"
    PlaceItemsCenter -> "place-items-center"
    PlaceItemsEnd -> "place-items-end"
    PlaceItemsStretch -> "place-items-stretch"
    PlaceSelfAuto -> "place-self-auto"
    PlaceSelfStart -> "place-self-start"
    PlaceSelfCenter -> "place-self-center"
    PlaceSelfEnd -> "place-self-end"
    PlaceSelfStretch -> "place-self-stretch"
    JustifyStart -> "justify-start"
    JustifyCenter -> "justify-center"
    JustifyEnd -> "justify-end"
    JustifyBetween -> "justify-between"
    JustifyAround -> "justify-around"
    JustifyItemsAuto -> "justify-items-auto"
    JustifyItemsStart -> "justify-items-start"
    JustifyItemsCenter -> "justify-items-center"
    JustifyItemsEnd -> "justify-items-end"
    JustifyItemsStretch -> "justify-items-stretch"
    JustifySelfAuto -> "justify-self-auto"
    JustifySelfStart -> "justify-self-start"
    JustifySelfCenter -> "justify-self-center"
    JustifySelfEnd -> "justify-self-end"
    JustifySelfStretch -> "justify-self-stretch"
    FlexInitial -> "flex-initial"
    Flex1 -> "flex-1"
    FlexAuto -> "flex-auto"
    FlexNone -> "flex-none"
    FlexGrow0 -> "flex-grow-0"
    FlexGrow -> "flex-grow"
    FlexShrink0 -> "flex-shrink-0"
    FlexShrink -> "flex-shrink"
    Order1 -> "order-1"
    Order2 -> "order-2"
    Order3 -> "order-3"
    Order4 -> "order-4"
    Order5 -> "order-5"
    Order6 -> "order-6"
    Order7 -> "order-7"
    Order8 -> "order-8"
    Order9 -> "order-9"
    Order10 -> "order-10"
    Order11 -> "order-11"
    Order12 -> "order-12"
    OrderFirst -> "order-first"
    OrderLast -> "order-last"
    OrderNone -> "order-none"
    GridFlowRow -> "grid-flow-row"
    GridFlowCol -> "grid-flow-col"
    GridFlowRowDense -> "grid-flow-row-dense"
    GridFlowColDense -> "grid-flow-col-dense"
    GridCols1 -> "grid-cols-1"
    GridCols2 -> "grid-cols-2"
    GridCols3 -> "grid-cols-3"
    GridCols4 -> "grid-cols-4"
    GridCols5 -> "grid-cols-5"
    GridCols6 -> "grid-cols-6"
    GridCols7 -> "grid-cols-7"
    GridCols8 -> "grid-cols-8"
    GridCols9 -> "grid-cols-9"
    GridCols10 -> "grid-cols-10"
    GridCols11 -> "grid-cols-11"
    GridCols12 -> "grid-cols-12"
    GridColsNone -> "grid-cols-none"
    AutoColsAuto -> "auto-cols-auto"
    AutoColsMin -> "auto-cols-min"
    AutoColsMax -> "auto-cols-max"
    AutoColsFr -> "auto-cols-fr"
    ColAuto -> "col-auto"
    ColSpan1 -> "col-span-1"
    ColSpan2 -> "col-span-2"
    ColSpan3 -> "col-span-3"
    ColSpan4 -> "col-span-4"
    ColSpan5 -> "col-span-5"
    ColSpan6 -> "col-span-6"
    ColSpan7 -> "col-span-7"
    ColSpan8 -> "col-span-8"
    ColSpan9 -> "col-span-9"
    ColSpan10 -> "col-span-10"
    ColSpan11 -> "col-span-11"
    ColSpan12 -> "col-span-12"
    ColSpanFull -> "col-span-full"
    ColStart1 -> "col-start-1"
    ColStart2 -> "col-start-2"
    ColStart3 -> "col-start-3"
    ColStart4 -> "col-start-4"
    ColStart5 -> "col-start-5"
    ColStart6 -> "col-start-6"
    ColStart7 -> "col-start-7"
    ColStart8 -> "col-start-8"
    ColStart9 -> "col-start-9"
    ColStart10 -> "col-start-10"
    ColStart11 -> "col-start-11"
    ColStart12 -> "col-start-12"
    ColStart13 -> "col-start-13"
    ColStartAuto -> "col-start-auto"
    ColEnd1 -> "col-end-1"
    ColEnd2 -> "col-end-2"
    ColEnd3 -> "col-end-3"
    ColEnd4 -> "col-end-4"
    ColEnd5 -> "col-end-5"
    ColEnd6 -> "col-end-6"
    ColEnd7 -> "col-end-7"
    ColEnd8 -> "col-end-8"
    ColEnd9 -> "col-end-9"
    ColEnd10 -> "col-end-10"
    ColEnd11 -> "col-end-11"
    ColEnd12 -> "col-end-12"
    ColEnd13 -> "col-end-13"
    ColEndAuto -> "col-end-auto"
    GridRows1 -> "grid-rows-1"
    GridRows2 -> "grid-rows-2"
    GridRows3 -> "grid-rows-3"
    GridRows4 -> "grid-rows-4"
    GridRows5 -> "grid-rows-5"
    GridRows6 -> "grid-rows-6"
    GridRowsNone -> "grid-rows-none"
    AutoRowsAuto -> "auto-rows-auto"
    AutoRowsMin -> "auto-rows-min"
    AutoRowsMax -> "auto-rows-max"
    AutoRowsFr -> "auto-rows-fr"
    RowAuto -> "row-auto"
    RowSpan1 -> "row-span-1"
    RowSpan2 -> "row-span-2"
    RowSpan3 -> "row-span-3"
    RowSpan4 -> "row-span-4"
    RowSpan5 -> "row-span-5"
    RowSpan6 -> "row-span-6"
    RowSpanFull -> "row-span-full"
    RowStart1 -> "row-start-1"
    RowStart2 -> "row-start-2"
    RowStart3 -> "row-start-3"
    RowStart4 -> "row-start-4"
    RowStart5 -> "row-start-5"
    RowStart6 -> "row-start-6"
    RowStart7 -> "row-start-7"
    RowStartAuto -> "row-start-auto"
    RowEnd1 -> "row-end-1"
    RowEnd2 -> "row-end-2"
    RowEnd3 -> "row-end-3"
    RowEnd4 -> "row-end-4"
    RowEnd5 -> "row-end-5"
    RowEnd6 -> "row-end-6"
    RowEnd7 -> "row-end-7"
    RowEndAuto -> "row-end-auto"
    Gap0 -> "gap-0"
    Gap1 -> "gap-1"
    Gap2 -> "gap-2"
    Gap3 -> "gap-3"
    Gap4 -> "gap-4"
    Gap5 -> "gap-5"
    Gap6 -> "gap-6"
    Gap8 -> "gap-8"
    Gap10 -> "gap-10"
    Gap12 -> "gap-12"
    Gap16 -> "gap-16"
    Gap20 -> "gap-20"
    Gap24 -> "gap-24"
    Gap32 -> "gap-32"
    Gap40 -> "gap-40"
    Gap48 -> "gap-48"
    Gap56 -> "gap-56"
    Gap64 -> "gap-64"
    GapPx -> "gap-px"
    GapY0 -> "gap-y-0"
    GapY1 -> "gap-y-1"
    GapY2 -> "gap-y-2"
    GapY3 -> "gap-y-3"
    GapY4 -> "gap-y-4"
    GapY5 -> "gap-y-5"
    GapY6 -> "gap-y-6"
    GapY8 -> "gap-y-8"
    GapY10 -> "gap-y-10"
    GapY12 -> "gap-y-12"
    GapY16 -> "gap-y-16"
    GapY20 -> "gap-y-20"
    GapY24 -> "gap-y-24"
    GapY32 -> "gap-y-32"
    GapY40 -> "gap-y-40"
    GapY48 -> "gap-y-48"
    GapY56 -> "gap-y-56"
    GapY64 -> "gap-y-64"
    GapYPx -> "gap-y-px"
    GapX0 -> "gap-x-0"
    GapX1 -> "gap-x-1"
    GapX2 -> "gap-x-2"
    GapX3 -> "gap-x-3"
    GapX4 -> "gap-x-4"
    GapX5 -> "gap-x-5"
    GapX6 -> "gap-x-6"
    GapX8 -> "gap-x-8"
    GapX10 -> "gap-x-10"
    GapX12 -> "gap-x-12"
    GapX16 -> "gap-x-16"
    GapX20 -> "gap-x-20"
    GapX24 -> "gap-x-24"
    GapX32 -> "gap-x-32"
    GapX40 -> "gap-x-40"
    GapX48 -> "gap-x-48"
    GapX56 -> "gap-x-56"
    GapX64 -> "gap-x-64"
    GapXPx -> "gap-x-px"
    RowGap0 -> "row-gap-0"
    RowGap1 -> "row-gap-1"
    RowGap2 -> "row-gap-2"
    RowGap3 -> "row-gap-3"
    RowGap4 -> "row-gap-4"
    RowGap5 -> "row-gap-5"
    RowGap6 -> "row-gap-6"
    RowGap8 -> "row-gap-8"
    RowGap10 -> "row-gap-10"
    RowGap12 -> "row-gap-12"
    RowGap16 -> "row-gap-16"
    RowGap20 -> "row-gap-20"
    RowGap24 -> "row-gap-24"
    RowGap32 -> "row-gap-32"
    RowGap40 -> "row-gap-40"
    RowGap48 -> "row-gap-48"
    RowGap56 -> "row-gap-56"
    RowGap64 -> "row-gap-64"
    RowGapPx -> "row-gap-px"
    ColGap0 -> "col-gap-0"
    ColGap1 -> "col-gap-1"
    ColGap2 -> "col-gap-2"
    ColGap3 -> "col-gap-3"
    ColGap4 -> "col-gap-4"
    ColGap5 -> "col-gap-5"
    ColGap6 -> "col-gap-6"
    ColGap8 -> "col-gap-8"
    ColGap10 -> "col-gap-10"
    ColGap12 -> "col-gap-12"
    ColGap16 -> "col-gap-16"
    ColGap20 -> "col-gap-20"
    ColGap24 -> "col-gap-24"
    ColGap32 -> "col-gap-32"
    ColGap40 -> "col-gap-40"
    ColGap48 -> "col-gap-48"
    ColGap56 -> "col-gap-56"
    ColGap64 -> "col-gap-64"
    ColGapPx -> "col-gap-px"
    P0 -> "p-0"
    P1 -> "p-1"
    P2 -> "p-2"
    P3 -> "p-3"
    P4 -> "p-4"
    P5 -> "p-5"
    P6 -> "p-6"
    P8 -> "p-8"
    P10 -> "p-10"
    P12 -> "p-12"
    P16 -> "p-16"
    P20 -> "p-20"
    P24 -> "p-24"
    P32 -> "p-32"
    P40 -> "p-40"
    P48 -> "p-48"
    P56 -> "p-56"
    P64 -> "p-64"
    PPx -> "p-px"
    Py0 -> "py-0"
    Py1 -> "py-1"
    Py2 -> "py-2"
    Py3 -> "py-3"
    Py4 -> "py-4"
    Py5 -> "py-5"
    Py6 -> "py-6"
    Py8 -> "py-8"
    Py10 -> "py-10"
    Py12 -> "py-12"
    Py16 -> "py-16"
    Py20 -> "py-20"
    Py24 -> "py-24"
    Py32 -> "py-32"
    Py40 -> "py-40"
    Py48 -> "py-48"
    Py56 -> "py-56"
    Py64 -> "py-64"
    PyPx -> "py-px"
    Px0 -> "px-0"
    Px1 -> "px-1"
    Px2 -> "px-2"
    Px3 -> "px-3"
    Px4 -> "px-4"
    Px5 -> "px-5"
    Px6 -> "px-6"
    Px8 -> "px-8"
    Px10 -> "px-10"
    Px12 -> "px-12"
    Px16 -> "px-16"
    Px20 -> "px-20"
    Px24 -> "px-24"
    Px32 -> "px-32"
    Px40 -> "px-40"
    Px48 -> "px-48"
    Px56 -> "px-56"
    Px64 -> "px-64"
    PxPx -> "px-px"
    Pt0 -> "pt-0"
    Pt1 -> "pt-1"
    Pt2 -> "pt-2"
    Pt3 -> "pt-3"
    Pt4 -> "pt-4"
    Pt5 -> "pt-5"
    Pt6 -> "pt-6"
    Pt8 -> "pt-8"
    Pt10 -> "pt-10"
    Pt12 -> "pt-12"
    Pt16 -> "pt-16"
    Pt20 -> "pt-20"
    Pt24 -> "pt-24"
    Pt32 -> "pt-32"
    Pt40 -> "pt-40"
    Pt48 -> "pt-48"
    Pt56 -> "pt-56"
    Pt64 -> "pt-64"
    PtPx -> "pt-px"
    Pr0 -> "pr-0"
    Pr1 -> "pr-1"
    Pr2 -> "pr-2"
    Pr3 -> "pr-3"
    Pr4 -> "pr-4"
    Pr5 -> "pr-5"
    Pr6 -> "pr-6"
    Pr8 -> "pr-8"
    Pr10 -> "pr-10"
    Pr12 -> "pr-12"
    Pr16 -> "pr-16"
    Pr20 -> "pr-20"
    Pr24 -> "pr-24"
    Pr32 -> "pr-32"
    Pr40 -> "pr-40"
    Pr48 -> "pr-48"
    Pr56 -> "pr-56"
    Pr64 -> "pr-64"
    PrPx -> "pr-px"
    Pb0 -> "pb-0"
    Pb1 -> "pb-1"
    Pb2 -> "pb-2"
    Pb3 -> "pb-3"
    Pb4 -> "pb-4"
    Pb5 -> "pb-5"
    Pb6 -> "pb-6"
    Pb8 -> "pb-8"
    Pb10 -> "pb-10"
    Pb12 -> "pb-12"
    Pb16 -> "pb-16"
    Pb20 -> "pb-20"
    Pb24 -> "pb-24"
    Pb32 -> "pb-32"
    Pb40 -> "pb-40"
    Pb48 -> "pb-48"
    Pb56 -> "pb-56"
    Pb64 -> "pb-64"
    PbPx -> "pb-px"
    Pl0 -> "pl-0"
    Pl1 -> "pl-1"
    Pl2 -> "pl-2"
    Pl3 -> "pl-3"
    Pl4 -> "pl-4"
    Pl5 -> "pl-5"
    Pl6 -> "pl-6"
    Pl8 -> "pl-8"
    Pl10 -> "pl-10"
    Pl12 -> "pl-12"
    Pl16 -> "pl-16"
    Pl20 -> "pl-20"
    Pl24 -> "pl-24"
    Pl32 -> "pl-32"
    Pl40 -> "pl-40"
    Pl48 -> "pl-48"
    Pl56 -> "pl-56"
    Pl64 -> "pl-64"
    PlPx -> "pl-px"
    M0 -> "m-0"
    M1 -> "m-1"
    M2 -> "m-2"
    M3 -> "m-3"
    M4 -> "m-4"
    M5 -> "m-5"
    M6 -> "m-6"
    M8 -> "m-8"
    M10 -> "m-10"
    M12 -> "m-12"
    M16 -> "m-16"
    M20 -> "m-20"
    M24 -> "m-24"
    M32 -> "m-32"
    M40 -> "m-40"
    M48 -> "m-48"
    M56 -> "m-56"
    M64 -> "m-64"
    MAuto -> "m-auto"
    MPx -> "m-px"
    M0_ -> "-m-0"
    M1_ -> "-m-1"
    M2_ -> "-m-2"
    M3_ -> "-m-3"
    M4_ -> "-m-4"
    M5_ -> "-m-5"
    M6_ -> "-m-6"
    M8_ -> "-m-8"
    M10_ -> "-m-10"
    M12_ -> "-m-12"
    M16_ -> "-m-16"
    M20_ -> "-m-20"
    M24_ -> "-m-24"
    M32_ -> "-m-32"
    M40_ -> "-m-40"
    M48_ -> "-m-48"
    M56_ -> "-m-56"
    M64_ -> "-m-64"
    MPx_ -> "-m-px"
    My0 -> "my-0"
    My1 -> "my-1"
    My2 -> "my-2"
    My3 -> "my-3"
    My4 -> "my-4"
    My5 -> "my-5"
    My6 -> "my-6"
    My8 -> "my-8"
    My10 -> "my-10"
    My12 -> "my-12"
    My16 -> "my-16"
    My20 -> "my-20"
    My24 -> "my-24"
    My32 -> "my-32"
    My40 -> "my-40"
    My48 -> "my-48"
    My56 -> "my-56"
    My64 -> "my-64"
    MyAuto -> "my-auto"
    MyPx -> "my-px"
    My0_ -> "-my-0"
    My1_ -> "-my-1"
    My2_ -> "-my-2"
    My3_ -> "-my-3"
    My4_ -> "-my-4"
    My5_ -> "-my-5"
    My6_ -> "-my-6"
    My8_ -> "-my-8"
    My10_ -> "-my-10"
    My12_ -> "-my-12"
    My16_ -> "-my-16"
    My20_ -> "-my-20"
    My24_ -> "-my-24"
    My32_ -> "-my-32"
    My40_ -> "-my-40"
    My48_ -> "-my-48"
    My56_ -> "-my-56"
    My64_ -> "-my-64"
    MyPx_ -> "-my-px"
    Mx0 -> "mx-0"
    Mx1 -> "mx-1"
    Mx2 -> "mx-2"
    Mx3 -> "mx-3"
    Mx4 -> "mx-4"
    Mx5 -> "mx-5"
    Mx6 -> "mx-6"
    Mx8 -> "mx-8"
    Mx10 -> "mx-10"
    Mx12 -> "mx-12"
    Mx16 -> "mx-16"
    Mx20 -> "mx-20"
    Mx24 -> "mx-24"
    Mx32 -> "mx-32"
    Mx40 -> "mx-40"
    Mx48 -> "mx-48"
    Mx56 -> "mx-56"
    Mx64 -> "mx-64"
    MxAuto -> "mx-auto"
    MxPx -> "mx-px"
    Mx0_ -> "-mx-0"
    Mx1_ -> "-mx-1"
    Mx2_ -> "-mx-2"
    Mx3_ -> "-mx-3"
    Mx4_ -> "-mx-4"
    Mx5_ -> "-mx-5"
    Mx6_ -> "-mx-6"
    Mx8_ -> "-mx-8"
    Mx10_ -> "-mx-10"
    Mx12_ -> "-mx-12"
    Mx16_ -> "-mx-16"
    Mx20_ -> "-mx-20"
    Mx24_ -> "-mx-24"
    Mx32_ -> "-mx-32"
    Mx40_ -> "-mx-40"
    Mx48_ -> "-mx-48"
    Mx56_ -> "-mx-56"
    Mx64_ -> "-mx-64"
    MxPx_ -> "-mx-px"
    Mt0 -> "mt-0"
    Mt1 -> "mt-1"
    Mt2 -> "mt-2"
    Mt3 -> "mt-3"
    Mt4 -> "mt-4"
    Mt5 -> "mt-5"
    Mt6 -> "mt-6"
    Mt8 -> "mt-8"
    Mt10 -> "mt-10"
    Mt12 -> "mt-12"
    Mt16 -> "mt-16"
    Mt20 -> "mt-20"
    Mt24 -> "mt-24"
    Mt32 -> "mt-32"
    Mt40 -> "mt-40"
    Mt48 -> "mt-48"
    Mt56 -> "mt-56"
    Mt64 -> "mt-64"
    MtAuto -> "mt-auto"
    MtPx -> "mt-px"
    Mt0_ -> "-mt-0"
    Mt1_ -> "-mt-1"
    Mt2_ -> "-mt-2"
    Mt3_ -> "-mt-3"
    Mt4_ -> "-mt-4"
    Mt5_ -> "-mt-5"
    Mt6_ -> "-mt-6"
    Mt8_ -> "-mt-8"
    Mt10_ -> "-mt-10"
    Mt12_ -> "-mt-12"
    Mt16_ -> "-mt-16"
    Mt20_ -> "-mt-20"
    Mt24_ -> "-mt-24"
    Mt32_ -> "-mt-32"
    Mt40_ -> "-mt-40"
    Mt48_ -> "-mt-48"
    Mt56_ -> "-mt-56"
    Mt64_ -> "-mt-64"
    MtPx_ -> "-mt-px"
    Mr0 -> "mr-0"
    Mr1 -> "mr-1"
    Mr2 -> "mr-2"
    Mr3 -> "mr-3"
    Mr4 -> "mr-4"
    Mr5 -> "mr-5"
    Mr6 -> "mr-6"
    Mr8 -> "mr-8"
    Mr10 -> "mr-10"
    Mr12 -> "mr-12"
    Mr16 -> "mr-16"
    Mr20 -> "mr-20"
    Mr24 -> "mr-24"
    Mr32 -> "mr-32"
    Mr40 -> "mr-40"
    Mr48 -> "mr-48"
    Mr56 -> "mr-56"
    Mr64 -> "mr-64"
    MrAuto -> "mr-auto"
    MrPx -> "mr-px"
    Mr0_ -> "-mr-0"
    Mr1_ -> "-mr-1"
    Mr2_ -> "-mr-2"
    Mr3_ -> "-mr-3"
    Mr4_ -> "-mr-4"
    Mr5_ -> "-mr-5"
    Mr6_ -> "-mr-6"
    Mr8_ -> "-mr-8"
    Mr10_ -> "-mr-10"
    Mr12_ -> "-mr-12"
    Mr16_ -> "-mr-16"
    Mr20_ -> "-mr-20"
    Mr24_ -> "-mr-24"
    Mr32_ -> "-mr-32"
    Mr40_ -> "-mr-40"
    Mr48_ -> "-mr-48"
    Mr56_ -> "-mr-56"
    Mr64_ -> "-mr-64"
    MrPx_ -> "-mr-px"
    Mb0 -> "mb-0"
    Mb1 -> "mb-1"
    Mb2 -> "mb-2"
    Mb3 -> "mb-3"
    Mb4 -> "mb-4"
    Mb5 -> "mb-5"
    Mb6 -> "mb-6"
    Mb8 -> "mb-8"
    Mb10 -> "mb-10"
    Mb12 -> "mb-12"
    Mb16 -> "mb-16"
    Mb20 -> "mb-20"
    Mb24 -> "mb-24"
    Mb32 -> "mb-32"
    Mb40 -> "mb-40"
    Mb48 -> "mb-48"
    Mb56 -> "mb-56"
    Mb64 -> "mb-64"
    MbAuto -> "mb-auto"
    MbPx -> "mb-px"
    Mb0_ -> "-mb-0"
    Mb1_ -> "-mb-1"
    Mb2_ -> "-mb-2"
    Mb3_ -> "-mb-3"
    Mb4_ -> "-mb-4"
    Mb5_ -> "-mb-5"
    Mb6_ -> "-mb-6"
    Mb8_ -> "-mb-8"
    Mb10_ -> "-mb-10"
    Mb12_ -> "-mb-12"
    Mb16_ -> "-mb-16"
    Mb20_ -> "-mb-20"
    Mb24_ -> "-mb-24"
    Mb32_ -> "-mb-32"
    Mb40_ -> "-mb-40"
    Mb48_ -> "-mb-48"
    Mb56_ -> "-mb-56"
    Mb64_ -> "-mb-64"
    MbPx_ -> "-mb-px"
    Ml0 -> "ml-0"
    Ml1 -> "ml-1"
    Ml2 -> "ml-2"
    Ml3 -> "ml-3"
    Ml4 -> "ml-4"
    Ml5 -> "ml-5"
    Ml6 -> "ml-6"
    Ml8 -> "ml-8"
    Ml10 -> "ml-10"
    Ml12 -> "ml-12"
    Ml16 -> "ml-16"
    Ml20 -> "ml-20"
    Ml24 -> "ml-24"
    Ml32 -> "ml-32"
    Ml40 -> "ml-40"
    Ml48 -> "ml-48"
    Ml56 -> "ml-56"
    Ml64 -> "ml-64"
    MlAuto -> "ml-auto"
    MlPx -> "ml-px"
    Ml0_ -> "-ml-0"
    Ml1_ -> "-ml-1"
    Ml2_ -> "-ml-2"
    Ml3_ -> "-ml-3"
    Ml4_ -> "-ml-4"
    Ml5_ -> "-ml-5"
    Ml6_ -> "-ml-6"
    Ml8_ -> "-ml-8"
    Ml10_ -> "-ml-10"
    Ml12_ -> "-ml-12"
    Ml16_ -> "-ml-16"
    Ml20_ -> "-ml-20"
    Ml24_ -> "-ml-24"
    Ml32_ -> "-ml-32"
    Ml40_ -> "-ml-40"
    Ml48_ -> "-ml-48"
    Ml56_ -> "-ml-56"
    Ml64_ -> "-ml-64"
    MlPx_ -> "-ml-px"
    SpaceX0 -> "space-x-0"
    SpaceX1 -> "space-x-1"
    SpaceX2 -> "space-x-2"
    SpaceX3 -> "space-x-3"
    SpaceX4 -> "space-x-4"
    SpaceX5 -> "space-x-5"
    SpaceX6 -> "space-x-6"
    SpaceX8 -> "space-x-8"
    SpaceX10 -> "space-x-10"
    SpaceX12 -> "space-x-12"
    SpaceX16 -> "space-x-16"
    SpaceX20 -> "space-x-20"
    SpaceX24 -> "space-x-24"
    SpaceX32 -> "space-x-32"
    SpaceX40 -> "space-x-40"
    SpaceX48 -> "space-x-48"
    SpaceX56 -> "space-x-56"
    SpaceX64 -> "space-x-64"
    SpaceXPx -> "space-x-px"
    SpaceX0_ -> "-space-x-0"
    SpaceX1_ -> "-space-x-1"
    SpaceX2_ -> "-space-x-2"
    SpaceX3_ -> "-space-x-3"
    SpaceX4_ -> "-space-x-4"
    SpaceX5_ -> "-space-x-5"
    SpaceX6_ -> "-space-x-6"
    SpaceX8_ -> "-space-x-8"
    SpaceX10_ -> "-space-x-10"
    SpaceX12_ -> "-space-x-12"
    SpaceX16_ -> "-space-x-16"
    SpaceX20_ -> "-space-x-20"
    SpaceX24_ -> "-space-x-24"
    SpaceX32_ -> "-space-x-32"
    SpaceX40_ -> "-space-x-40"
    SpaceX48_ -> "-space-x-48"
    SpaceX56_ -> "-space-x-56"
    SpaceX64_ -> "-space-x-64"
    SpaceXPx_ -> "-space-x-px"
    SpaceXReverse -> "space-x-reverse"
    SpaceY0 -> "space-y-0"
    SpaceY1 -> "space-y-1"
    SpaceY2 -> "space-y-2"
    SpaceY3 -> "space-y-3"
    SpaceY4 -> "space-y-4"
    SpaceY5 -> "space-y-5"
    SpaceY6 -> "space-y-6"
    SpaceY8 -> "space-y-8"
    SpaceY10 -> "space-y-10"
    SpaceY12 -> "space-y-12"
    SpaceY16 -> "space-y-16"
    SpaceY20 -> "space-y-20"
    SpaceY24 -> "space-y-24"
    SpaceY32 -> "space-y-32"
    SpaceY40 -> "space-y-40"
    SpaceY48 -> "space-y-48"
    SpaceY56 -> "space-y-56"
    SpaceY64 -> "space-y-64"
    SpaceYPx -> "space-y-px"
    SpaceY0_ -> "-space-y-0"
    SpaceY1_ -> "-space-y-1"
    SpaceY2_ -> "-space-y-2"
    SpaceY3_ -> "-space-y-3"
    SpaceY4_ -> "-space-y-4"
    SpaceY5_ -> "-space-y-5"
    SpaceY6_ -> "-space-y-6"
    SpaceY8_ -> "-space-y-8"
    SpaceY10_ -> "-space-y-10"
    SpaceY12_ -> "-space-y-12"
    SpaceY16_ -> "-space-y-16"
    SpaceY20_ -> "-space-y-20"
    SpaceY24_ -> "-space-y-24"
    SpaceY32_ -> "-space-y-32"
    SpaceY40_ -> "-space-y-40"
    SpaceY48_ -> "-space-y-48"
    SpaceY56_ -> "-space-y-56"
    SpaceY64_ -> "-space-y-64"
    SpaceYPx_ -> "-space-y-px"
    SpaceYReverse -> "space-y-reverse"
    AppearanceNone -> "appearance-none"
    PointerEventsNone -> "pointer-events-none"
    PointerEventsAuto -> "pointer-events-auto"
    ResizeNone -> "resize-none"
    Resize -> "resize"
    ResizeY -> "resize-y"
    ResizeX -> "resize-x"
    SelectNone -> "select-none"
    SelectText -> "select-text"
    SelectAll -> "select-all"
    SelectAuto -> "select-auto"
    CursorAuto -> "cursor-auto"
    CursorDefault -> "cursor-default"
    CursorPointer -> "cursor-pointer"
    CursorWait -> "cursor-wait"
    CursorText -> "cursor-text"
    CursorMove -> "cursor-move"
    CursorNotAllowed -> "cursor-not-allowed"
    OutlineNone -> "outline-none"
    OutlineWhite -> "outline-white"
    OutlineBlack -> "outline-black"
    Block -> "block"
    InlineBlock -> "inline-block"
    Inline -> "inline"
    Flex -> "flex"
    InlineFlex -> "inline-flex"
    Grid -> "grid"
    InlineGrid -> "inline-grid"
    Table -> "table"
    TableRow -> "table-row"
    TableCell -> "table-cell"
    Contents -> "contents"
    Hidden -> "hidden"
    BoxBorder -> "box-border"
    BoxContent -> "box-content"
    Container -> "container"
    FloatRight -> "float-right"
    FloatLeft -> "float-left"
    FloatNone -> "float-none"
    Clearfix -> "clearfix"
    ClearLeft -> "clear-left"
    ClearRight -> "clear-right"
    ClearBoth -> "clear-both"
    ClearNone -> "clear-none"
    ObjectContain -> "object-contain"
    ObjectCover -> "object-cover"
    ObjectFill -> "object-fill"
    ObjectNone -> "object-none"
    ObjectScaleDown -> "object-scale-down"
    OverflowAuto -> "overflow-auto"
    OverflowHidden -> "overflow-hidden"
    OverflowVisible -> "overflow-visible"
    OverflowScroll -> "overflow-scroll"
    OverflowXAuto -> "overflow-x-auto"
    OverflowYAuto -> "overflow-y-auto"
    OverflowXHidden -> "overflow-x-hidden"
    OverflowYHidden -> "overflow-y-hidden"
    OverflowXVisible -> "overflow-x-visible"
    OverflowYVisible -> "overflow-y-visible"
    OverflowXScroll -> "overflow-x-scroll"
    OverflowYScroll -> "overflow-y-scroll"
    ScrollingTouch -> "scrolling-touch"
    ScrollingAuto -> "scrolling-auto"
    OverscrollAuto -> "overscroll-auto"
    OverscrollContain -> "overscroll-contain"
    OverscrollNone -> "overscroll-none"
    OverscrollYAuto -> "overscroll-y-auto"
    OverscrollYContain -> "overscroll-y-contain"
    OverscrollYNone -> "overscroll-y-none"
    OverscrollXAuto -> "overscroll-x-auto"
    OverscrollXContain -> "overscroll-x-contain"
    OverscrollXNone -> "overscroll-x-none"
    Static -> "static"
    Fixed -> "fixed"
    Absolute -> "absolute"
    Relative -> "relative"
    Sticky -> "sticky"
    Visible -> "visible"
    Invisible -> "invisible"
    ObjectBottom -> "object-bottom"
    ObjectCenter -> "object-center"
    ObjectLeft -> "object-left"
    ObjectLeftBottom -> "object-left-bottom"
    ObjectLeftTop -> "object-left-top"
    ObjectRight -> "object-right"
    ObjectRightBottom -> "object-right-bottom"
    ObjectRightTop -> "object-right-top"
    ObjectTop -> "object-top"
    Inset0 -> "inset-0"
    InsetX0 -> "inset-x-0"
    InsetY0 -> "inset-y-0"
    Top0 -> "top-0"
    Right0 -> "right-0"
    Bottom0 -> "bottom-0"
    Left0 -> "left-0"
    InsetAuto -> "inset-auto"
    InsetXAuto -> "inset-x-auto"
    InsetYAuto -> "inset-y-auto"
    TopAuto -> "top-auto"
    RightAuto -> "right-auto"
    BottomAuto -> "bottom-auto"
    LeftAuto -> "left-auto"
    Z0 -> "z-0"
    Z10 -> "z-10"
    Z20 -> "z-20"
    Z30 -> "z-30"
    Z40 -> "z-40"
    Z50 -> "z-50"
    ZAuto -> "z-auto"
    W0 -> "w-0"
    W1 -> "w-1"
    W2 -> "w-2"
    W3 -> "w-3"
    W4 -> "w-4"
    W5 -> "w-5"
    W6 -> "w-6"
    W8 -> "w-8"
    W10 -> "w-10"
    W12 -> "w-12"
    W16 -> "w-16"
    W20 -> "w-20"
    W24 -> "w-24"
    W32 -> "w-32"
    W40 -> "w-40"
    W48 -> "w-48"
    W56 -> "w-56"
    W64 -> "w-64"
    WAuto -> "w-auto"
    WPx -> "w-px"
    W1_2 -> "w-1/2"
    W1_3 -> "w-1/3"
    W2_3 -> "w-2/3"
    W1_4 -> "w-1/4"
    W2_4 -> "w-2/4"
    W3_4 -> "w-3/4"
    W1_5 -> "w-1/5"
    W2_5 -> "w-2/5"
    W3_5 -> "w-3/5"
    W4_5 -> "w-4/5"
    W1_6 -> "w-1/6"
    W2_6 -> "w-2/6"
    W3_6 -> "w-3/6"
    W4_6 -> "w-4/6"
    W5_6 -> "w-5/6"
    W1_12 -> "w-1/12"
    W2_12 -> "w-2/12"
    W3_12 -> "w-3/12"
    W4_12 -> "w-4/12"
    W5_12 -> "w-5/12"
    W6_12 -> "w-6/12"
    W7_12 -> "w-7/12"
    W8_12 -> "w-8/12"
    W9_12 -> "w-9/12"
    W10_12 -> "w-10/12"
    W11_12 -> "w-11/12"
    WFull -> "w-full"
    WScreen -> "w-screen"
    MinW0 -> "min-w-0"
    MinWFull -> "min-w-full"
    MaxWNone -> "max-w-none"
    MaxWXs -> "max-w-xs"
    MaxWSm -> "max-w-sm"
    MaxWMd -> "max-w-md"
    MaxWLg -> "max-w-lg"
    MaxWXl -> "max-w-xl"
    MaxW2xl -> "max-w-2xl"
    MaxW3xl -> "max-w-3xl"
    MaxW4xl -> "max-w-4xl"
    MaxW5xl -> "max-w-5xl"
    MaxW6xl -> "max-w-6xl"
    MaxWFull -> "max-w-full"
    MaxWScreenSm -> "max-w-screen-sm"
    MaxWScreenMd -> "max-w-screen-md"
    MaxWScreenLg -> "max-w-screen-lg"
    MaxWScreenXl -> "max-w-screen-xl"
    H0 -> "h-0"
    H1 -> "h-1"
    H2 -> "h-2"
    H3 -> "h-3"
    H4 -> "h-4"
    H5 -> "h-5"
    H6 -> "h-6"
    H8 -> "h-8"
    H10 -> "h-10"
    H12 -> "h-12"
    H16 -> "h-16"
    H20 -> "h-20"
    H24 -> "h-24"
    H32 -> "h-32"
    H40 -> "h-40"
    H48 -> "h-48"
    H56 -> "h-56"
    H64 -> "h-64"
    HAuto -> "h-auto"
    HPx -> "h-px"
    HFull -> "h-full"
    HScreen -> "h-screen"
    MinH0 -> "min-h-0"
    MinHFull -> "min-h-full"
    MinHScreen -> "min-h-screen"
    MaxHFull -> "max-h-full"
    MaxHScreen -> "max-h-screen"
    FillCurrent -> "fill-current"
    StrokeCurrent -> "stroke-current"
    Stroke0 -> "stroke-0"
    Stroke1 -> "stroke-1"
    Stroke2 -> "stroke-2"
    Scale0 -> "scale-0"
    Scale50 -> "scale-50"
    Scale75 -> "scale-75"
    Scale90 -> "scale-90"
    Scale95 -> "scale-95"
    Scale100 -> "scale-100"
    Scale105 -> "scale-105"
    Scale110 -> "scale-110"
    Scale125 -> "scale-125"
    Scale150 -> "scale-150"
    ScaleX0 -> "scale-x-0"
    ScaleX50 -> "scale-x-50"
    ScaleX75 -> "scale-x-75"
    ScaleX90 -> "scale-x-90"
    ScaleX95 -> "scale-x-95"
    ScaleX100 -> "scale-x-100"
    ScaleX105 -> "scale-x-105"
    ScaleX110 -> "scale-x-110"
    ScaleX125 -> "scale-x-125"
    ScaleX150 -> "scale-x-150"
    ScaleY0 -> "scale-y-0"
    ScaleY50 -> "scale-y-50"
    ScaleY75 -> "scale-y-75"
    ScaleY90 -> "scale-y-90"
    ScaleY95 -> "scale-y-95"
    ScaleY100 -> "scale-y-100"
    ScaleY105 -> "scale-y-105"
    ScaleY110 -> "scale-y-110"
    ScaleY125 -> "scale-y-125"
    ScaleY150 -> "scale-y-150"
    Rotate0 -> "rotate-0"
    Rotate1 -> "rotate-1"
    Rotate2 -> "rotate-2"
    Rotate3 -> "rotate-3"
    Rotate6 -> "rotate-6"
    Rotate12 -> "rotate-12"
    Rotate45 -> "rotate-45"
    Rotate90 -> "rotate-90"
    Rotate180 -> "rotate-180"
    Rotate180_ -> "-rotate-180"
    Rotate90_ -> "-rotate-90"
    Rotate45_ -> "-rotate-45"
    Rotate12_ -> "-rotate-12"
    Rotate6_ -> "-rotate-6"
    Rotate3_ -> "-rotate-3"
    Rotate2_ -> "-rotate-2"
    Rotate1_ -> "-rotate-1"
    TranslateX0 -> "translate-x-0"
    TranslateX1 -> "translate-x-1"
    TranslateX2 -> "translate-x-2"
    TranslateX3 -> "translate-x-3"
    TranslateX4 -> "translate-x-4"
    TranslateX5 -> "translate-x-5"
    TranslateX6 -> "translate-x-6"
    TranslateX8 -> "translate-x-8"
    TranslateX10 -> "translate-x-10"
    TranslateX12 -> "translate-x-12"
    TranslateX16 -> "translate-x-16"
    TranslateX20 -> "translate-x-20"
    TranslateX24 -> "translate-x-24"
    TranslateX32 -> "translate-x-32"
    TranslateX40 -> "translate-x-40"
    TranslateX48 -> "translate-x-48"
    TranslateX56 -> "translate-x-56"
    TranslateX64 -> "translate-x-64"
    TranslateXPx -> "translate-x-px"
    TranslateX0_ -> "-translate-x-0"
    TranslateX1_ -> "-translate-x-1"
    TranslateX2_ -> "-translate-x-2"
    TranslateX3_ -> "-translate-x-3"
    TranslateX4_ -> "-translate-x-4"
    TranslateX5_ -> "-translate-x-5"
    TranslateX6_ -> "-translate-x-6"
    TranslateX8_ -> "-translate-x-8"
    TranslateX10_ -> "-translate-x-10"
    TranslateX12_ -> "-translate-x-12"
    TranslateX16_ -> "-translate-x-16"
    TranslateX20_ -> "-translate-x-20"
    TranslateX24_ -> "-translate-x-24"
    TranslateX32_ -> "-translate-x-32"
    TranslateX40_ -> "-translate-x-40"
    TranslateX48_ -> "-translate-x-48"
    TranslateX56_ -> "-translate-x-56"
    TranslateX64_ -> "-translate-x-64"
    TranslateXPx_ -> "-translate-x-px"
    TranslateXFull_ -> "-translate-x-full"
    TranslateX1_2_ -> "-translate-x-1/2"
    TranslateX1_2 -> "translate-x-1/2"
    TranslateXFull -> "translate-x-full"
    TranslateY0 -> "translate-y-0"
    TranslateY1 -> "translate-y-1"
    TranslateY2 -> "translate-y-2"
    TranslateY3 -> "translate-y-3"
    TranslateY4 -> "translate-y-4"
    TranslateY5 -> "translate-y-5"
    TranslateY6 -> "translate-y-6"
    TranslateY8 -> "translate-y-8"
    TranslateY10 -> "translate-y-10"
    TranslateY12 -> "translate-y-12"
    TranslateY16 -> "translate-y-16"
    TranslateY20 -> "translate-y-20"
    TranslateY24 -> "translate-y-24"
    TranslateY32 -> "translate-y-32"
    TranslateY40 -> "translate-y-40"
    TranslateY48 -> "translate-y-48"
    TranslateY56 -> "translate-y-56"
    TranslateY64 -> "translate-y-64"
    TranslateYPx -> "translate-y-px"
    TranslateY0_ -> "-translate-y-0"
    TranslateY1_ -> "-translate-y-1"
    TranslateY2_ -> "-translate-y-2"
    TranslateY3_ -> "-translate-y-3"
    TranslateY4_ -> "-translate-y-4"
    TranslateY5_ -> "-translate-y-5"
    TranslateY6_ -> "-translate-y-6"
    TranslateY8_ -> "-translate-y-8"
    TranslateY10_ -> "-translate-y-10"
    TranslateY12_ -> "-translate-y-12"
    TranslateY16_ -> "-translate-y-16"
    TranslateY20_ -> "-translate-y-20"
    TranslateY24_ -> "-translate-y-24"
    TranslateY32_ -> "-translate-y-32"
    TranslateY40_ -> "-translate-y-40"
    TranslateY48_ -> "-translate-y-48"
    TranslateY56_ -> "-translate-y-56"
    TranslateY64_ -> "-translate-y-64"
    TranslateYPx_ -> "-translate-y-px"
    TranslateYFull_ -> "-translate-y-full"
    TranslateY1_2_ -> "-translate-y-1/2"
    TranslateY1_2 -> "translate-y-1/2"
    TranslateYFull -> "translate-y-full"
    SkewX0 -> "skew-x-0"
    SkewX1 -> "skew-x-1"
    SkewX2 -> "skew-x-2"
    SkewX3 -> "skew-x-3"
    SkewX6 -> "skew-x-6"
    SkewX12 -> "skew-x-12"
    SkewX12_ -> "-skew-x-12"
    SkewX6_ -> "-skew-x-6"
    SkewX3_ -> "-skew-x-3"
    SkewX2_ -> "-skew-x-2"
    SkewX1_ -> "-skew-x-1"
    SkewY0 -> "skew-y-0"
    SkewY1 -> "skew-y-1"
    SkewY2 -> "skew-y-2"
    SkewY3 -> "skew-y-3"
    SkewY6 -> "skew-y-6"
    SkewY12 -> "skew-y-12"
    SkewY12_ -> "-skew-y-12"
    SkewY6_ -> "-skew-y-6"
    SkewY3_ -> "-skew-y-3"
    SkewY2_ -> "-skew-y-2"
    SkewY1_ -> "-skew-y-1"
    OriginCenter -> "origin-center"
    OriginTop -> "origin-top"
    OriginTopRight -> "origin-top-right"
    OriginRight -> "origin-right"
    OriginBottomRight -> "origin-bottom-right"
    OriginBottom -> "origin-bottom"
    OriginBottomLeft -> "origin-bottom-left"
    OriginLeft -> "origin-left"
    OriginTopLeft -> "origin-top-left"
    Antialiased -> "antialiased"
    SubpixelAntialiased -> "subpixel-antialiased"
    Italic -> "italic"
    NonItalic -> "non-italic"
    NormalNums -> "normal-nums"
    Ordinal -> "ordinal"
    SlashedZero -> "slashed-zero"
    LiningNums -> "lining-nums"
    OldstyleNums -> "oldstyle-nums"
    ProportionalNums -> "proportional-nums"
    TabularNums -> "tabular-nums"
    DiagonalFractions -> "diagonal-fractions"
    StackedFractions -> "stacked-fractions"
    ListInside -> "list-inside"
    ListOutside -> "list-outside"
    TextLeft -> "text-left"
    TextCenter -> "text-center"
    TextRight -> "text-right"
    TextJustify -> "text-justify"
    Underline -> "underline"
    LineThrough -> "line-through"
    NoUnderline -> "no-underline"
    Uppercase -> "uppercase"
    Lowercase -> "lowercase"
    Capitalize -> "capitalize"
    NormalCase -> "normal-case"
    AlignBaseline -> "align-baseline"
    AlignTop -> "align-top"
    AlignMiddle -> "align-middle"
    AlignBottom -> "align-bottom"
    AlignTextTop -> "align-text-top"
    AlignTextBottom -> "align-text-bottom"
    WhitespaceNormal -> "whitespace-normal"
    WhitespaceNoWrap -> "whitespace-no-wrap"
    WhitespacePre -> "whitespace-pre"
    WhitespacePreLine -> "whitespace-pre-line"
    WhitespacePreWrap -> "whitespace-pre-wrap"
    BreakNormal -> "break-normal"
    BreakWords -> "break-words"
    BreakAll -> "break-all"
    Truncate -> "truncate"
    FontSans -> "font-sans"
    FontSerif -> "font-serif"
    FontMono -> "font-mono"
    TextXs -> "text-xs"
    TextSm -> "text-sm"
    TextBase -> "text-base"
    TextLg -> "text-lg"
    TextXl -> "text-xl"
    Text2xl -> "text-2xl"
    Text3xl -> "text-3xl"
    Text4xl -> "text-4xl"
    Text5xl -> "text-5xl"
    Text6xl -> "text-6xl"
    FontHairline -> "font-hairline"
    FontThin -> "font-thin"
    FontLight -> "font-light"
    FontNormal -> "font-normal"
    FontMedium -> "font-medium"
    FontSemibold -> "font-semibold"
    FontBold -> "font-bold"
    FontExtrabold -> "font-extrabold"
    FontBlack -> "font-black"
    TrackingTighter -> "tracking-tighter"
    TrackingTight -> "tracking-tight"
    TrackingNormal -> "tracking-normal"
    TrackingWide -> "tracking-wide"
    TrackingWider -> "tracking-wider"
    TrackingWidest -> "tracking-widest"
    Leading3 -> "leading-3"
    Leading4 -> "leading-4"
    Leading5 -> "leading-5"
    Leading6 -> "leading-6"
    Leading7 -> "leading-7"
    Leading8 -> "leading-8"
    Leading9 -> "leading-9"
    Leading10 -> "leading-10"
    LeadingNone -> "leading-none"
    LeadingTight -> "leading-tight"
    LeadingSnug -> "leading-snug"
    LeadingNormal -> "leading-normal"
    LeadingRelaxed -> "leading-relaxed"
    LeadingLoose -> "leading-loose"
    ListNone -> "list-none"
    ListDisc -> "list-disc"
    ListDecimal -> "list-decimal"
    PlaceholderTransparent -> "placeholder-transparent"
    PlaceholderCurrent -> "placeholder-current"
    PlaceholderBlack -> "placeholder-black"
    PlaceholderWhite -> "placeholder-white"
    PlaceholderGray100 -> "placeholder-gray-100"
    PlaceholderGray200 -> "placeholder-gray-200"
    PlaceholderGray300 -> "placeholder-gray-300"
    PlaceholderGray400 -> "placeholder-gray-400"
    PlaceholderGray500 -> "placeholder-gray-500"
    PlaceholderGray600 -> "placeholder-gray-600"
    PlaceholderGray700 -> "placeholder-gray-700"
    PlaceholderGray800 -> "placeholder-gray-800"
    PlaceholderGray900 -> "placeholder-gray-900"
    PlaceholderRed100 -> "placeholder-red-100"
    PlaceholderRed200 -> "placeholder-red-200"
    PlaceholderRed300 -> "placeholder-red-300"
    PlaceholderRed400 -> "placeholder-red-400"
    PlaceholderRed500 -> "placeholder-red-500"
    PlaceholderRed600 -> "placeholder-red-600"
    PlaceholderRed700 -> "placeholder-red-700"
    PlaceholderRed800 -> "placeholder-red-800"
    PlaceholderRed900 -> "placeholder-red-900"
    PlaceholderOrange100 -> "placeholder-orange-100"
    PlaceholderOrange200 -> "placeholder-orange-200"
    PlaceholderOrange300 -> "placeholder-orange-300"
    PlaceholderOrange400 -> "placeholder-orange-400"
    PlaceholderOrange500 -> "placeholder-orange-500"
    PlaceholderOrange600 -> "placeholder-orange-600"
    PlaceholderOrange700 -> "placeholder-orange-700"
    PlaceholderOrange800 -> "placeholder-orange-800"
    PlaceholderOrange900 -> "placeholder-orange-900"
    PlaceholderYellow100 -> "placeholder-yellow-100"
    PlaceholderYellow200 -> "placeholder-yellow-200"
    PlaceholderYellow300 -> "placeholder-yellow-300"
    PlaceholderYellow400 -> "placeholder-yellow-400"
    PlaceholderYellow500 -> "placeholder-yellow-500"
    PlaceholderYellow600 -> "placeholder-yellow-600"
    PlaceholderYellow700 -> "placeholder-yellow-700"
    PlaceholderYellow800 -> "placeholder-yellow-800"
    PlaceholderYellow900 -> "placeholder-yellow-900"
    PlaceholderGreen100 -> "placeholder-green-100"
    PlaceholderGreen200 -> "placeholder-green-200"
    PlaceholderGreen300 -> "placeholder-green-300"
    PlaceholderGreen400 -> "placeholder-green-400"
    PlaceholderGreen500 -> "placeholder-green-500"
    PlaceholderGreen600 -> "placeholder-green-600"
    PlaceholderGreen700 -> "placeholder-green-700"
    PlaceholderGreen800 -> "placeholder-green-800"
    PlaceholderGreen900 -> "placeholder-green-900"
    PlaceholderTeal100 -> "placeholder-teal-100"
    PlaceholderTeal200 -> "placeholder-teal-200"
    PlaceholderTeal300 -> "placeholder-teal-300"
    PlaceholderTeal400 -> "placeholder-teal-400"
    PlaceholderTeal500 -> "placeholder-teal-500"
    PlaceholderTeal600 -> "placeholder-teal-600"
    PlaceholderTeal700 -> "placeholder-teal-700"
    PlaceholderTeal800 -> "placeholder-teal-800"
    PlaceholderTeal900 -> "placeholder-teal-900"
    PlaceholderBlue100 -> "placeholder-blue-100"
    PlaceholderBlue200 -> "placeholder-blue-200"
    PlaceholderBlue300 -> "placeholder-blue-300"
    PlaceholderBlue400 -> "placeholder-blue-400"
    PlaceholderBlue500 -> "placeholder-blue-500"
    PlaceholderBlue600 -> "placeholder-blue-600"
    PlaceholderBlue700 -> "placeholder-blue-700"
    PlaceholderBlue800 -> "placeholder-blue-800"
    PlaceholderBlue900 -> "placeholder-blue-900"
    PlaceholderIndigo100 -> "placeholder-indigo-100"
    PlaceholderIndigo200 -> "placeholder-indigo-200"
    PlaceholderIndigo300 -> "placeholder-indigo-300"
    PlaceholderIndigo400 -> "placeholder-indigo-400"
    PlaceholderIndigo500 -> "placeholder-indigo-500"
    PlaceholderIndigo600 -> "placeholder-indigo-600"
    PlaceholderIndigo700 -> "placeholder-indigo-700"
    PlaceholderIndigo800 -> "placeholder-indigo-800"
    PlaceholderIndigo900 -> "placeholder-indigo-900"
    PlaceholderPurple100 -> "placeholder-purple-100"
    PlaceholderPurple200 -> "placeholder-purple-200"
    PlaceholderPurple300 -> "placeholder-purple-300"
    PlaceholderPurple400 -> "placeholder-purple-400"
    PlaceholderPurple500 -> "placeholder-purple-500"
    PlaceholderPurple600 -> "placeholder-purple-600"
    PlaceholderPurple700 -> "placeholder-purple-700"
    PlaceholderPurple800 -> "placeholder-purple-800"
    PlaceholderPurple900 -> "placeholder-purple-900"
    PlaceholderPink100 -> "placeholder-pink-100"
    PlaceholderPink200 -> "placeholder-pink-200"
    PlaceholderPink300 -> "placeholder-pink-300"
    PlaceholderPink400 -> "placeholder-pink-400"
    PlaceholderPink500 -> "placeholder-pink-500"
    PlaceholderPink600 -> "placeholder-pink-600"
    PlaceholderPink700 -> "placeholder-pink-700"
    PlaceholderPink800 -> "placeholder-pink-800"
    PlaceholderPink900 -> "placeholder-pink-900"
    PlaceholderOpacity0 -> "placeholder-opacity-0"
    PlaceholderOpacity25 -> "placeholder-opacity-25"
    PlaceholderOpacity50 -> "placeholder-opacity-50"
    PlaceholderOpacity75 -> "placeholder-opacity-75"
    PlaceholderOpacity100 -> "placeholder-opacity-100"
    TextTransparent -> "text-transparent"
    TextCurrent -> "text-current"
    TextBlack -> "text-black"
    TextWhite -> "text-white"
    TextGray100 -> "text-gray-100"
    TextGray200 -> "text-gray-200"
    TextGray300 -> "text-gray-300"
    TextGray400 -> "text-gray-400"
    TextGray500 -> "text-gray-500"
    TextGray600 -> "text-gray-600"
    TextGray700 -> "text-gray-700"
    TextGray800 -> "text-gray-800"
    TextGray900 -> "text-gray-900"
    TextRed100 -> "text-red-100"
    TextRed200 -> "text-red-200"
    TextRed300 -> "text-red-300"
    TextRed400 -> "text-red-400"
    TextRed500 -> "text-red-500"
    TextRed600 -> "text-red-600"
    TextRed700 -> "text-red-700"
    TextRed800 -> "text-red-800"
    TextRed900 -> "text-red-900"
    TextOrange100 -> "text-orange-100"
    TextOrange200 -> "text-orange-200"
    TextOrange300 -> "text-orange-300"
    TextOrange400 -> "text-orange-400"
    TextOrange500 -> "text-orange-500"
    TextOrange600 -> "text-orange-600"
    TextOrange700 -> "text-orange-700"
    TextOrange800 -> "text-orange-800"
    TextOrange900 -> "text-orange-900"
    TextYellow100 -> "text-yellow-100"
    TextYellow200 -> "text-yellow-200"
    TextYellow300 -> "text-yellow-300"
    TextYellow400 -> "text-yellow-400"
    TextYellow500 -> "text-yellow-500"
    TextYellow600 -> "text-yellow-600"
    TextYellow700 -> "text-yellow-700"
    TextYellow800 -> "text-yellow-800"
    TextYellow900 -> "text-yellow-900"
    TextGreen100 -> "text-green-100"
    TextGreen200 -> "text-green-200"
    TextGreen300 -> "text-green-300"
    TextGreen400 -> "text-green-400"
    TextGreen500 -> "text-green-500"
    TextGreen600 -> "text-green-600"
    TextGreen700 -> "text-green-700"
    TextGreen800 -> "text-green-800"
    TextGreen900 -> "text-green-900"
    TextTeal100 -> "text-teal-100"
    TextTeal200 -> "text-teal-200"
    TextTeal300 -> "text-teal-300"
    TextTeal400 -> "text-teal-400"
    TextTeal500 -> "text-teal-500"
    TextTeal600 -> "text-teal-600"
    TextTeal700 -> "text-teal-700"
    TextTeal800 -> "text-teal-800"
    TextTeal900 -> "text-teal-900"
    TextBlue100 -> "text-blue-100"
    TextBlue200 -> "text-blue-200"
    TextBlue300 -> "text-blue-300"
    TextBlue400 -> "text-blue-400"
    TextBlue500 -> "text-blue-500"
    TextBlue600 -> "text-blue-600"
    TextBlue700 -> "text-blue-700"
    TextBlue800 -> "text-blue-800"
    TextBlue900 -> "text-blue-900"
    TextIndigo100 -> "text-indigo-100"
    TextIndigo200 -> "text-indigo-200"
    TextIndigo300 -> "text-indigo-300"
    TextIndigo400 -> "text-indigo-400"
    TextIndigo500 -> "text-indigo-500"
    TextIndigo600 -> "text-indigo-600"
    TextIndigo700 -> "text-indigo-700"
    TextIndigo800 -> "text-indigo-800"
    TextIndigo900 -> "text-indigo-900"
    TextPurple100 -> "text-purple-100"
    TextPurple200 -> "text-purple-200"
    TextPurple300 -> "text-purple-300"
    TextPurple400 -> "text-purple-400"
    TextPurple500 -> "text-purple-500"
    TextPurple600 -> "text-purple-600"
    TextPurple700 -> "text-purple-700"
    TextPurple800 -> "text-purple-800"
    TextPurple900 -> "text-purple-900"
    TextPink100 -> "text-pink-100"
    TextPink200 -> "text-pink-200"
    TextPink300 -> "text-pink-300"
    TextPink400 -> "text-pink-400"
    TextPink500 -> "text-pink-500"
    TextPink600 -> "text-pink-600"
    TextPink700 -> "text-pink-700"
    TextPink800 -> "text-pink-800"
    TextPink900 -> "text-pink-900"
    TextOpacity0 -> "text-opacity-0"
    TextOpacity25 -> "text-opacity-25"
    TextOpacity50 -> "text-opacity-50"
    TextOpacity75 -> "text-opacity-75"
    TextOpacity100 -> "text-opacity-100"
    FormInput -> "form-input"
    FormTextarea -> "form-textarea"
    FormSelect -> "form-select"
    FormMultiselect -> "form-multiselect"
    FormCheckbox -> "form-checkbox"
    FormRadio -> "form-radio"
    Prose -> "prose"
    ProseSm -> "prose-sm"
    ProseLg -> "prose-lg"
    ProseXl -> "prose-xl"
    Prose2xl -> "prose-2xl"

{-| Type to represent Tailwind CSS classes.
First letter become uppercase. All alphabetic chars after hyphens become uppercase. Hyphens are removed.
Values like 1/2 become 1_2 with underscore instead of slash. Prefixed negation minus become postfix underscore.
Pseudo classes are wrapper types.

    BgYellow400 -- "bg-yellow-400"
    BorderOpacity75 -- "border-opacity-75"
    SkewX12_ -- "-skew-x-12"
    TranslateY1_2 -- "translate-y-1/2"

    SM W1_2 -- "sm:w-1/2"
    LG W1_4 -- "lg:w-1/4"
    HOVER BgTeal300 -- "hover:bg-teal-300"

-}
type TailwindCSS
    = SM TailwindCSS
    | MD TailwindCSS
    | LG TailwindCSS
    | XL TailwindCSS
    | FOCUS TailwindCSS
    | HOVER TailwindCSS

    | SrOnly
    | NotSrOnly
    | BgFixed
    | BgLocal
    | BgScroll
    | BgClipBorder
    | BgClipPadding
    | BgClipContent
    | BgClipText
    | BgRepeat
    | BgNoRepeat
    | BgRepeatX
    | BgRepeatY
    | BgRepeatRound
    | BgRepeatSpace
    | BgOpacity0
    | BgOpacity25
    | BgOpacity50
    | BgOpacity75
    | BgOpacity100
    | BgTransparent
    | BgCurrent
    | BgBlack
    | BgWhite
    | BgGray100
    | BgGray200
    | BgGray300
    | BgGray400
    | BgGray500
    | BgGray600
    | BgGray700
    | BgGray800
    | BgGray900
    | BgRed100
    | BgRed200
    | BgRed300
    | BgRed400
    | BgRed500
    | BgRed600
    | BgRed700
    | BgRed800
    | BgRed900
    | BgOrange100
    | BgOrange200
    | BgOrange300
    | BgOrange400
    | BgOrange500
    | BgOrange600
    | BgOrange700
    | BgOrange800
    | BgOrange900
    | BgYellow100
    | BgYellow200
    | BgYellow300
    | BgYellow400
    | BgYellow500
    | BgYellow600
    | BgYellow700
    | BgYellow800
    | BgYellow900
    | BgGreen100
    | BgGreen200
    | BgGreen300
    | BgGreen400
    | BgGreen500
    | BgGreen600
    | BgGreen700
    | BgGreen800
    | BgGreen900
    | BgTeal100
    | BgTeal200
    | BgTeal300
    | BgTeal400
    | BgTeal500
    | BgTeal600
    | BgTeal700
    | BgTeal800
    | BgTeal900
    | BgBlue100
    | BgBlue200
    | BgBlue300
    | BgBlue400
    | BgBlue500
    | BgBlue600
    | BgBlue700
    | BgBlue800
    | BgBlue900
    | BgIndigo100
    | BgIndigo200
    | BgIndigo300
    | BgIndigo400
    | BgIndigo500
    | BgIndigo600
    | BgIndigo700
    | BgIndigo800
    | BgIndigo900
    | BgPurple100
    | BgPurple200
    | BgPurple300
    | BgPurple400
    | BgPurple500
    | BgPurple600
    | BgPurple700
    | BgPurple800
    | BgPurple900
    | BgPink100
    | BgPink200
    | BgPink300
    | BgPink400
    | BgPink500
    | BgPink600
    | BgPink700
    | BgPink800
    | BgPink900
    | BgBottom
    | BgCenter
    | BgLeft
    | BgLeftBottom
    | BgLeftTop
    | BgRight
    | BgRightBottom
    | BgRightTop
    | BgTop
    | BgAuto
    | BgCover
    | BgContain
    | BgNone
    | BgGradientToT
    | BgGradientToTr
    | BgGradientToR
    | BgGradientToBr
    | BgGradientToB
    | BgGradientToBl
    | BgGradientToL
    | BgGradientToTl
    | FromTransparent
    | ViaTransparent
    | ToTransparent
    | FromCurrent
    | ViaCurrent
    | ToCurrent
    | FromBlack
    | ViaBlack
    | ToBlack
    | FromWhite
    | ViaWhite
    | ToWhite
    | FromGray100
    | ViaGray100
    | ToGray100
    | FromGray200
    | ViaGray200
    | ToGray200
    | FromGray300
    | ViaGray300
    | ToGray300
    | FromGray400
    | ViaGray400
    | ToGray400
    | FromGray500
    | ViaGray500
    | ToGray500
    | FromGray600
    | ViaGray600
    | ToGray600
    | FromGray700
    | ViaGray700
    | ToGray700
    | FromGray800
    | ViaGray800
    | ToGray800
    | FromGray900
    | ViaGray900
    | ToGray900
    | FromRed100
    | ViaRed100
    | ToRed100
    | FromRed200
    | ViaRed200
    | ToRed200
    | FromRed300
    | ViaRed300
    | ToRed300
    | FromRed400
    | ViaRed400
    | ToRed400
    | FromRed500
    | ViaRed500
    | ToRed500
    | FromRed600
    | ViaRed600
    | ToRed600
    | FromRed700
    | ViaRed700
    | ToRed700
    | FromRed800
    | ViaRed800
    | ToRed800
    | FromRed900
    | ViaRed900
    | ToRed900
    | FromOrange100
    | ViaOrange100
    | ToOrange100
    | FromOrange200
    | ViaOrange200
    | ToOrange200
    | FromOrange300
    | ViaOrange300
    | ToOrange300
    | FromOrange400
    | ViaOrange400
    | ToOrange400
    | FromOrange500
    | ViaOrange500
    | ToOrange500
    | FromOrange600
    | ViaOrange600
    | ToOrange600
    | FromOrange700
    | ViaOrange700
    | ToOrange700
    | FromOrange800
    | ViaOrange800
    | ToOrange800
    | FromOrange900
    | ViaOrange900
    | ToOrange900
    | FromYellow100
    | ViaYellow100
    | ToYellow100
    | FromYellow200
    | ViaYellow200
    | ToYellow200
    | FromYellow300
    | ViaYellow300
    | ToYellow300
    | FromYellow400
    | ViaYellow400
    | ToYellow400
    | FromYellow500
    | ViaYellow500
    | ToYellow500
    | FromYellow600
    | ViaYellow600
    | ToYellow600
    | FromYellow700
    | ViaYellow700
    | ToYellow700
    | FromYellow800
    | ViaYellow800
    | ToYellow800
    | FromYellow900
    | ViaYellow900
    | ToYellow900
    | FromGreen100
    | ViaGreen100
    | ToGreen100
    | FromGreen200
    | ViaGreen200
    | ToGreen200
    | FromGreen300
    | ViaGreen300
    | ToGreen300
    | FromGreen400
    | ViaGreen400
    | ToGreen400
    | FromGreen500
    | ViaGreen500
    | ToGreen500
    | FromGreen600
    | ViaGreen600
    | ToGreen600
    | FromGreen700
    | ViaGreen700
    | ToGreen700
    | FromGreen800
    | ViaGreen800
    | ToGreen800
    | FromGreen900
    | ViaGreen900
    | ToGreen900
    | FromTeal100
    | ViaTeal100
    | ToTeal100
    | FromTeal200
    | ViaTeal200
    | ToTeal200
    | FromTeal300
    | ViaTeal300
    | ToTeal300
    | FromTeal400
    | ViaTeal400
    | ToTeal400
    | FromTeal500
    | ViaTeal500
    | ToTeal500
    | FromTeal600
    | ViaTeal600
    | ToTeal600
    | FromTeal700
    | ViaTeal700
    | ToTeal700
    | FromTeal800
    | ViaTeal800
    | ToTeal800
    | FromTeal900
    | ViaTeal900
    | ToTeal900
    | FromBlue100
    | ViaBlue100
    | ToBlue100
    | FromBlue200
    | ViaBlue200
    | ToBlue200
    | FromBlue300
    | ViaBlue300
    | ToBlue300
    | FromBlue400
    | ViaBlue400
    | ToBlue400
    | FromBlue500
    | ViaBlue500
    | ToBlue500
    | FromBlue600
    | ViaBlue600
    | ToBlue600
    | FromBlue700
    | ViaBlue700
    | ToBlue700
    | FromBlue800
    | ViaBlue800
    | ToBlue800
    | FromBlue900
    | ViaBlue900
    | ToBlue900
    | FromIndigo100
    | ViaIndigo100
    | ToIndigo100
    | FromIndigo200
    | ViaIndigo200
    | ToIndigo200
    | FromIndigo300
    | ViaIndigo300
    | ToIndigo300
    | FromIndigo400
    | ViaIndigo400
    | ToIndigo400
    | FromIndigo500
    | ViaIndigo500
    | ToIndigo500
    | FromIndigo600
    | ViaIndigo600
    | ToIndigo600
    | FromIndigo700
    | ViaIndigo700
    | ToIndigo700
    | FromIndigo800
    | ViaIndigo800
    | ToIndigo800
    | FromIndigo900
    | ViaIndigo900
    | ToIndigo900
    | FromPurple100
    | ViaPurple100
    | ToPurple100
    | FromPurple200
    | ViaPurple200
    | ToPurple200
    | FromPurple300
    | ViaPurple300
    | ToPurple300
    | FromPurple400
    | ViaPurple400
    | ToPurple400
    | FromPurple500
    | ViaPurple500
    | ToPurple500
    | FromPurple600
    | ViaPurple600
    | ToPurple600
    | FromPurple700
    | ViaPurple700
    | ToPurple700
    | FromPurple800
    | ViaPurple800
    | ToPurple800
    | FromPurple900
    | ViaPurple900
    | ToPurple900
    | FromPink100
    | ViaPink100
    | ToPink100
    | FromPink200
    | ViaPink200
    | ToPink200
    | FromPink300
    | ViaPink300
    | ToPink300
    | FromPink400
    | ViaPink400
    | ToPink400
    | FromPink500
    | ViaPink500
    | ToPink500
    | FromPink600
    | ViaPink600
    | ToPink600
    | FromPink700
    | ViaPink700
    | ToPink700
    | FromPink800
    | ViaPink800
    | ToPink800
    | FromPink900
    | ViaPink900
    | ToPink900
    | BorderSolid
    | BorderDashed
    | BorderDotted
    | BorderDouble
    | BorderNone
    | DivideSolid
    | DivideDashed
    | DivideDotted
    | DivideDouble
    | DivideNone
    | BorderTransparent
    | BorderCurrent
    | BorderBlack
    | BorderWhite
    | BorderGray100
    | BorderGray200
    | BorderGray300
    | BorderGray400
    | BorderGray500
    | BorderGray600
    | BorderGray700
    | BorderGray800
    | BorderGray900
    | BorderRed100
    | BorderRed200
    | BorderRed300
    | BorderRed400
    | BorderRed500
    | BorderRed600
    | BorderRed700
    | BorderRed800
    | BorderRed900
    | BorderOrange100
    | BorderOrange200
    | BorderOrange300
    | BorderOrange400
    | BorderOrange500
    | BorderOrange600
    | BorderOrange700
    | BorderOrange800
    | BorderOrange900
    | BorderYellow100
    | BorderYellow200
    | BorderYellow300
    | BorderYellow400
    | BorderYellow500
    | BorderYellow600
    | BorderYellow700
    | BorderYellow800
    | BorderYellow900
    | BorderGreen100
    | BorderGreen200
    | BorderGreen300
    | BorderGreen400
    | BorderGreen500
    | BorderGreen600
    | BorderGreen700
    | BorderGreen800
    | BorderGreen900
    | BorderTeal100
    | BorderTeal200
    | BorderTeal300
    | BorderTeal400
    | BorderTeal500
    | BorderTeal600
    | BorderTeal700
    | BorderTeal800
    | BorderTeal900
    | BorderBlue100
    | BorderBlue200
    | BorderBlue300
    | BorderBlue400
    | BorderBlue500
    | BorderBlue600
    | BorderBlue700
    | BorderBlue800
    | BorderBlue900
    | BorderIndigo100
    | BorderIndigo200
    | BorderIndigo300
    | BorderIndigo400
    | BorderIndigo500
    | BorderIndigo600
    | BorderIndigo700
    | BorderIndigo800
    | BorderIndigo900
    | BorderPurple100
    | BorderPurple200
    | BorderPurple300
    | BorderPurple400
    | BorderPurple500
    | BorderPurple600
    | BorderPurple700
    | BorderPurple800
    | BorderPurple900
    | BorderPink100
    | BorderPink200
    | BorderPink300
    | BorderPink400
    | BorderPink500
    | BorderPink600
    | BorderPink700
    | BorderPink800
    | BorderPink900
    | BorderOpacity0
    | BorderOpacity25
    | BorderOpacity50
    | BorderOpacity75
    | BorderOpacity100
    | RoundedTNone
    | RoundedRNone
    | RoundedBNone
    | RoundedLNone
    | RoundedTrNone
    | RoundedTlNone
    | RoundedBrNone
    | RoundedBlNone
    | RoundedNone
    | RoundedTSm
    | RoundedRSm
    | RoundedBSm
    | RoundedLSm
    | RoundedTrSm
    | RoundedTlSm
    | RoundedBrSm
    | RoundedBlSm
    | RoundedSm
    | RoundedT
    | RoundedR
    | RoundedB
    | RoundedL
    | RoundedTr
    | RoundedTl
    | RoundedBr
    | RoundedBl
    | Rounded
    | RoundedTMd
    | RoundedRMd
    | RoundedBMd
    | RoundedLMd
    | RoundedTrMd
    | RoundedTlMd
    | RoundedBrMd
    | RoundedBlMd
    | RoundedMd
    | RoundedTLg
    | RoundedRLg
    | RoundedBLg
    | RoundedLLg
    | RoundedTrLg
    | RoundedTlLg
    | RoundedBrLg
    | RoundedBlLg
    | RoundedLg
    | RoundedTXl
    | RoundedRXl
    | RoundedBXl
    | RoundedLXl
    | RoundedTrXl
    | RoundedTlXl
    | RoundedBrXl
    | RoundedBlXl
    | RoundedXl
    | RoundedT2xl
    | RoundedR2xl
    | RoundedB2xl
    | RoundedL2xl
    | RoundedTr2xl
    | RoundedTl2xl
    | RoundedBr2xl
    | RoundedBl2xl
    | Rounded2xl
    | RoundedT3xl
    | RoundedR3xl
    | RoundedB3xl
    | RoundedL3xl
    | RoundedTr3xl
    | RoundedTl3xl
    | RoundedBr3xl
    | RoundedBl3xl
    | Rounded3xl
    | RoundedTFull
    | RoundedRFull
    | RoundedBFull
    | RoundedLFull
    | RoundedTrFull
    | RoundedTlFull
    | RoundedBrFull
    | RoundedBlFull
    | RoundedFull
    | BorderT0
    | BorderR0
    | BorderB0
    | BorderL0
    | Border0
    | BorderT2
    | BorderR2
    | BorderB2
    | BorderL2
    | Border2
    | BorderT4
    | BorderR4
    | BorderB4
    | BorderL4
    | Border4
    | BorderT8
    | BorderR8
    | BorderB8
    | BorderL8
    | Border8
    | BorderT
    | BorderR
    | BorderB
    | BorderL
    | Border
    | DivideTransparent
    | DivideCurrent
    | DivideBlack
    | DivideWhite
    | DivideGray100
    | DivideGray200
    | DivideGray300
    | DivideGray400
    | DivideGray500
    | DivideGray600
    | DivideGray700
    | DivideGray800
    | DivideGray900
    | DivideRed100
    | DivideRed200
    | DivideRed300
    | DivideRed400
    | DivideRed500
    | DivideRed600
    | DivideRed700
    | DivideRed800
    | DivideRed900
    | DivideOrange100
    | DivideOrange200
    | DivideOrange300
    | DivideOrange400
    | DivideOrange500
    | DivideOrange600
    | DivideOrange700
    | DivideOrange800
    | DivideOrange900
    | DivideYellow100
    | DivideYellow200
    | DivideYellow300
    | DivideYellow400
    | DivideYellow500
    | DivideYellow600
    | DivideYellow700
    | DivideYellow800
    | DivideYellow900
    | DivideGreen100
    | DivideGreen200
    | DivideGreen300
    | DivideGreen400
    | DivideGreen500
    | DivideGreen600
    | DivideGreen700
    | DivideGreen800
    | DivideGreen900
    | DivideTeal100
    | DivideTeal200
    | DivideTeal300
    | DivideTeal400
    | DivideTeal500
    | DivideTeal600
    | DivideTeal700
    | DivideTeal800
    | DivideTeal900
    | DivideBlue100
    | DivideBlue200
    | DivideBlue300
    | DivideBlue400
    | DivideBlue500
    | DivideBlue600
    | DivideBlue700
    | DivideBlue800
    | DivideBlue900
    | DivideIndigo100
    | DivideIndigo200
    | DivideIndigo300
    | DivideIndigo400
    | DivideIndigo500
    | DivideIndigo600
    | DivideIndigo700
    | DivideIndigo800
    | DivideIndigo900
    | DividePurple100
    | DividePurple200
    | DividePurple300
    | DividePurple400
    | DividePurple500
    | DividePurple600
    | DividePurple700
    | DividePurple800
    | DividePurple900
    | DividePink100
    | DividePink200
    | DividePink300
    | DividePink400
    | DividePink500
    | DividePink600
    | DividePink700
    | DividePink800
    | DividePink900
    | DivideOpacity0
    | DivideOpacity25
    | DivideOpacity50
    | DivideOpacity75
    | DivideOpacity100
    | DivideX0
    | DivideY0
    | DivideX2
    | DivideY2
    | DivideX4
    | DivideY4
    | DivideX8
    | DivideY8
    | DivideX
    | DivideY
    | DivideXReverse
    | DivideYReverse
    | BorderCollapse
    | BorderSeparate
    | TableAuto
    | TableFixed
    | ShadowXs
    | ShadowSm
    | Shadow
    | ShadowMd
    | ShadowLg
    | ShadowXl
    | Shadow2xl
    | ShadowInner
    | ShadowOutline
    | ShadowNone
    | Opacity0
    | Opacity25
    | Opacity50
    | Opacity75
    | Opacity100
    | TransitionNone
    | TransitionAll
    | Transition
    | TransitionColors
    | TransitionOpacity
    | TransitionShadow
    | TransitionTransform
    | Duration75
    | Duration100
    | Duration150
    | Duration200
    | Duration300
    | Duration500
    | Duration700
    | Duration1000
    | EaseLinear
    | EaseIn
    | EaseOut
    | EaseInOut
    | Delay75
    | Delay100
    | Delay150
    | Delay200
    | Delay300
    | Delay500
    | Delay700
    | Delay1000
    | AnimateNone
    | AnimateSpin
    | AnimatePing
    | AnimatePulse
    | AnimateBounce
    | FlexRow
    | FlexRowReverse
    | FlexCol
    | FlexColReverse
    | FlexNoWrap
    | FlexWrap
    | FlexWrapReverse
    | ItemsStretch
    | ItemsStart
    | ItemsCenter
    | ItemsEnd
    | ItemsBaseline
    | ContentStart
    | ContentCenter
    | ContentEnd
    | ContentBetween
    | ContentAround
    | SelfAuto
    | SelfStart
    | SelfCenter
    | SelfEnd
    | SelfStretch
    | PlaceContentStart
    | PlaceContentCenter
    | PlaceContentEnd
    | PlaceContentBetween
    | PlaceContentAround
    | PlaceContentEvenly
    | PlaceContentStretch
    | PlaceItemsAuto
    | PlaceItemsStart
    | PlaceItemsCenter
    | PlaceItemsEnd
    | PlaceItemsStretch
    | PlaceSelfAuto
    | PlaceSelfStart
    | PlaceSelfCenter
    | PlaceSelfEnd
    | PlaceSelfStretch
    | JustifyStart
    | JustifyCenter
    | JustifyEnd
    | JustifyBetween
    | JustifyAround
    | JustifyItemsAuto
    | JustifyItemsStart
    | JustifyItemsCenter
    | JustifyItemsEnd
    | JustifyItemsStretch
    | JustifySelfAuto
    | JustifySelfStart
    | JustifySelfCenter
    | JustifySelfEnd
    | JustifySelfStretch
    | FlexInitial
    | Flex1
    | FlexAuto
    | FlexNone
    | FlexGrow0
    | FlexGrow
    | FlexShrink0
    | FlexShrink
    | Order1
    | Order2
    | Order3
    | Order4
    | Order5
    | Order6
    | Order7
    | Order8
    | Order9
    | Order10
    | Order11
    | Order12
    | OrderFirst
    | OrderLast
    | OrderNone
    | GridFlowRow
    | GridFlowCol
    | GridFlowRowDense
    | GridFlowColDense
    | GridCols1
    | GridCols2
    | GridCols3
    | GridCols4
    | GridCols5
    | GridCols6
    | GridCols7
    | GridCols8
    | GridCols9
    | GridCols10
    | GridCols11
    | GridCols12
    | GridColsNone
    | AutoColsAuto
    | AutoColsMin
    | AutoColsMax
    | AutoColsFr
    | ColAuto
    | ColSpan1
    | ColSpan2
    | ColSpan3
    | ColSpan4
    | ColSpan5
    | ColSpan6
    | ColSpan7
    | ColSpan8
    | ColSpan9
    | ColSpan10
    | ColSpan11
    | ColSpan12
    | ColSpanFull
    | ColStart1
    | ColStart2
    | ColStart3
    | ColStart4
    | ColStart5
    | ColStart6
    | ColStart7
    | ColStart8
    | ColStart9
    | ColStart10
    | ColStart11
    | ColStart12
    | ColStart13
    | ColStartAuto
    | ColEnd1
    | ColEnd2
    | ColEnd3
    | ColEnd4
    | ColEnd5
    | ColEnd6
    | ColEnd7
    | ColEnd8
    | ColEnd9
    | ColEnd10
    | ColEnd11
    | ColEnd12
    | ColEnd13
    | ColEndAuto
    | GridRows1
    | GridRows2
    | GridRows3
    | GridRows4
    | GridRows5
    | GridRows6
    | GridRowsNone
    | AutoRowsAuto
    | AutoRowsMin
    | AutoRowsMax
    | AutoRowsFr
    | RowAuto
    | RowSpan1
    | RowSpan2
    | RowSpan3
    | RowSpan4
    | RowSpan5
    | RowSpan6
    | RowSpanFull
    | RowStart1
    | RowStart2
    | RowStart3
    | RowStart4
    | RowStart5
    | RowStart6
    | RowStart7
    | RowStartAuto
    | RowEnd1
    | RowEnd2
    | RowEnd3
    | RowEnd4
    | RowEnd5
    | RowEnd6
    | RowEnd7
    | RowEndAuto
    | Gap0
    | Gap1
    | Gap2
    | Gap3
    | Gap4
    | Gap5
    | Gap6
    | Gap8
    | Gap10
    | Gap12
    | Gap16
    | Gap20
    | Gap24
    | Gap32
    | Gap40
    | Gap48
    | Gap56
    | Gap64
    | GapPx
    | GapY0
    | GapY1
    | GapY2
    | GapY3
    | GapY4
    | GapY5
    | GapY6
    | GapY8
    | GapY10
    | GapY12
    | GapY16
    | GapY20
    | GapY24
    | GapY32
    | GapY40
    | GapY48
    | GapY56
    | GapY64
    | GapYPx
    | GapX0
    | GapX1
    | GapX2
    | GapX3
    | GapX4
    | GapX5
    | GapX6
    | GapX8
    | GapX10
    | GapX12
    | GapX16
    | GapX20
    | GapX24
    | GapX32
    | GapX40
    | GapX48
    | GapX56
    | GapX64
    | GapXPx
    | RowGap0
    | RowGap1
    | RowGap2
    | RowGap3
    | RowGap4
    | RowGap5
    | RowGap6
    | RowGap8
    | RowGap10
    | RowGap12
    | RowGap16
    | RowGap20
    | RowGap24
    | RowGap32
    | RowGap40
    | RowGap48
    | RowGap56
    | RowGap64
    | RowGapPx
    | ColGap0
    | ColGap1
    | ColGap2
    | ColGap3
    | ColGap4
    | ColGap5
    | ColGap6
    | ColGap8
    | ColGap10
    | ColGap12
    | ColGap16
    | ColGap20
    | ColGap24
    | ColGap32
    | ColGap40
    | ColGap48
    | ColGap56
    | ColGap64
    | ColGapPx
    | P0
    | P1
    | P2
    | P3
    | P4
    | P5
    | P6
    | P8
    | P10
    | P12
    | P16
    | P20
    | P24
    | P32
    | P40
    | P48
    | P56
    | P64
    | PPx
    | Py0
    | Py1
    | Py2
    | Py3
    | Py4
    | Py5
    | Py6
    | Py8
    | Py10
    | Py12
    | Py16
    | Py20
    | Py24
    | Py32
    | Py40
    | Py48
    | Py56
    | Py64
    | PyPx
    | Px0
    | Px1
    | Px2
    | Px3
    | Px4
    | Px5
    | Px6
    | Px8
    | Px10
    | Px12
    | Px16
    | Px20
    | Px24
    | Px32
    | Px40
    | Px48
    | Px56
    | Px64
    | PxPx
    | Pt0
    | Pt1
    | Pt2
    | Pt3
    | Pt4
    | Pt5
    | Pt6
    | Pt8
    | Pt10
    | Pt12
    | Pt16
    | Pt20
    | Pt24
    | Pt32
    | Pt40
    | Pt48
    | Pt56
    | Pt64
    | PtPx
    | Pr0
    | Pr1
    | Pr2
    | Pr3
    | Pr4
    | Pr5
    | Pr6
    | Pr8
    | Pr10
    | Pr12
    | Pr16
    | Pr20
    | Pr24
    | Pr32
    | Pr40
    | Pr48
    | Pr56
    | Pr64
    | PrPx
    | Pb0
    | Pb1
    | Pb2
    | Pb3
    | Pb4
    | Pb5
    | Pb6
    | Pb8
    | Pb10
    | Pb12
    | Pb16
    | Pb20
    | Pb24
    | Pb32
    | Pb40
    | Pb48
    | Pb56
    | Pb64
    | PbPx
    | Pl0
    | Pl1
    | Pl2
    | Pl3
    | Pl4
    | Pl5
    | Pl6
    | Pl8
    | Pl10
    | Pl12
    | Pl16
    | Pl20
    | Pl24
    | Pl32
    | Pl40
    | Pl48
    | Pl56
    | Pl64
    | PlPx
    | M0
    | M1
    | M2
    | M3
    | M4
    | M5
    | M6
    | M8
    | M10
    | M12
    | M16
    | M20
    | M24
    | M32
    | M40
    | M48
    | M56
    | M64
    | MAuto
    | MPx
    | M0_
    | M1_
    | M2_
    | M3_
    | M4_
    | M5_
    | M6_
    | M8_
    | M10_
    | M12_
    | M16_
    | M20_
    | M24_
    | M32_
    | M40_
    | M48_
    | M56_
    | M64_
    | MPx_
    | My0
    | My1
    | My2
    | My3
    | My4
    | My5
    | My6
    | My8
    | My10
    | My12
    | My16
    | My20
    | My24
    | My32
    | My40
    | My48
    | My56
    | My64
    | MyAuto
    | MyPx
    | My0_
    | My1_
    | My2_
    | My3_
    | My4_
    | My5_
    | My6_
    | My8_
    | My10_
    | My12_
    | My16_
    | My20_
    | My24_
    | My32_
    | My40_
    | My48_
    | My56_
    | My64_
    | MyPx_
    | Mx0
    | Mx1
    | Mx2
    | Mx3
    | Mx4
    | Mx5
    | Mx6
    | Mx8
    | Mx10
    | Mx12
    | Mx16
    | Mx20
    | Mx24
    | Mx32
    | Mx40
    | Mx48
    | Mx56
    | Mx64
    | MxAuto
    | MxPx
    | Mx0_
    | Mx1_
    | Mx2_
    | Mx3_
    | Mx4_
    | Mx5_
    | Mx6_
    | Mx8_
    | Mx10_
    | Mx12_
    | Mx16_
    | Mx20_
    | Mx24_
    | Mx32_
    | Mx40_
    | Mx48_
    | Mx56_
    | Mx64_
    | MxPx_
    | Mt0
    | Mt1
    | Mt2
    | Mt3
    | Mt4
    | Mt5
    | Mt6
    | Mt8
    | Mt10
    | Mt12
    | Mt16
    | Mt20
    | Mt24
    | Mt32
    | Mt40
    | Mt48
    | Mt56
    | Mt64
    | MtAuto
    | MtPx
    | Mt0_
    | Mt1_
    | Mt2_
    | Mt3_
    | Mt4_
    | Mt5_
    | Mt6_
    | Mt8_
    | Mt10_
    | Mt12_
    | Mt16_
    | Mt20_
    | Mt24_
    | Mt32_
    | Mt40_
    | Mt48_
    | Mt56_
    | Mt64_
    | MtPx_
    | Mr0
    | Mr1
    | Mr2
    | Mr3
    | Mr4
    | Mr5
    | Mr6
    | Mr8
    | Mr10
    | Mr12
    | Mr16
    | Mr20
    | Mr24
    | Mr32
    | Mr40
    | Mr48
    | Mr56
    | Mr64
    | MrAuto
    | MrPx
    | Mr0_
    | Mr1_
    | Mr2_
    | Mr3_
    | Mr4_
    | Mr5_
    | Mr6_
    | Mr8_
    | Mr10_
    | Mr12_
    | Mr16_
    | Mr20_
    | Mr24_
    | Mr32_
    | Mr40_
    | Mr48_
    | Mr56_
    | Mr64_
    | MrPx_
    | Mb0
    | Mb1
    | Mb2
    | Mb3
    | Mb4
    | Mb5
    | Mb6
    | Mb8
    | Mb10
    | Mb12
    | Mb16
    | Mb20
    | Mb24
    | Mb32
    | Mb40
    | Mb48
    | Mb56
    | Mb64
    | MbAuto
    | MbPx
    | Mb0_
    | Mb1_
    | Mb2_
    | Mb3_
    | Mb4_
    | Mb5_
    | Mb6_
    | Mb8_
    | Mb10_
    | Mb12_
    | Mb16_
    | Mb20_
    | Mb24_
    | Mb32_
    | Mb40_
    | Mb48_
    | Mb56_
    | Mb64_
    | MbPx_
    | Ml0
    | Ml1
    | Ml2
    | Ml3
    | Ml4
    | Ml5
    | Ml6
    | Ml8
    | Ml10
    | Ml12
    | Ml16
    | Ml20
    | Ml24
    | Ml32
    | Ml40
    | Ml48
    | Ml56
    | Ml64
    | MlAuto
    | MlPx
    | Ml0_
    | Ml1_
    | Ml2_
    | Ml3_
    | Ml4_
    | Ml5_
    | Ml6_
    | Ml8_
    | Ml10_
    | Ml12_
    | Ml16_
    | Ml20_
    | Ml24_
    | Ml32_
    | Ml40_
    | Ml48_
    | Ml56_
    | Ml64_
    | MlPx_
    | SpaceX0
    | SpaceX1
    | SpaceX2
    | SpaceX3
    | SpaceX4
    | SpaceX5
    | SpaceX6
    | SpaceX8
    | SpaceX10
    | SpaceX12
    | SpaceX16
    | SpaceX20
    | SpaceX24
    | SpaceX32
    | SpaceX40
    | SpaceX48
    | SpaceX56
    | SpaceX64
    | SpaceXPx
    | SpaceX0_
    | SpaceX1_
    | SpaceX2_
    | SpaceX3_
    | SpaceX4_
    | SpaceX5_
    | SpaceX6_
    | SpaceX8_
    | SpaceX10_
    | SpaceX12_
    | SpaceX16_
    | SpaceX20_
    | SpaceX24_
    | SpaceX32_
    | SpaceX40_
    | SpaceX48_
    | SpaceX56_
    | SpaceX64_
    | SpaceXPx_
    | SpaceXReverse
    | SpaceY0
    | SpaceY1
    | SpaceY2
    | SpaceY3
    | SpaceY4
    | SpaceY5
    | SpaceY6
    | SpaceY8
    | SpaceY10
    | SpaceY12
    | SpaceY16
    | SpaceY20
    | SpaceY24
    | SpaceY32
    | SpaceY40
    | SpaceY48
    | SpaceY56
    | SpaceY64
    | SpaceYPx
    | SpaceY0_
    | SpaceY1_
    | SpaceY2_
    | SpaceY3_
    | SpaceY4_
    | SpaceY5_
    | SpaceY6_
    | SpaceY8_
    | SpaceY10_
    | SpaceY12_
    | SpaceY16_
    | SpaceY20_
    | SpaceY24_
    | SpaceY32_
    | SpaceY40_
    | SpaceY48_
    | SpaceY56_
    | SpaceY64_
    | SpaceYPx_
    | SpaceYReverse
    | AppearanceNone
    | PointerEventsNone
    | PointerEventsAuto
    | ResizeNone
    | Resize
    | ResizeY
    | ResizeX
    | SelectNone
    | SelectText
    | SelectAll
    | SelectAuto
    | CursorAuto
    | CursorDefault
    | CursorPointer
    | CursorWait
    | CursorText
    | CursorMove
    | CursorNotAllowed
    | OutlineNone
    | OutlineWhite
    | OutlineBlack
    | Block
    | InlineBlock
    | Inline
    | Flex
    | InlineFlex
    | Grid
    | InlineGrid
    | Table
    | TableRow
    | TableCell
    | Contents
    | Hidden
    | BoxBorder
    | BoxContent
    | Container
    | FloatRight
    | FloatLeft
    | FloatNone
    | Clearfix
    | ClearLeft
    | ClearRight
    | ClearBoth
    | ClearNone
    | ObjectContain
    | ObjectCover
    | ObjectFill
    | ObjectNone
    | ObjectScaleDown
    | OverflowAuto
    | OverflowHidden
    | OverflowVisible
    | OverflowScroll
    | OverflowXAuto
    | OverflowYAuto
    | OverflowXHidden
    | OverflowYHidden
    | OverflowXVisible
    | OverflowYVisible
    | OverflowXScroll
    | OverflowYScroll
    | ScrollingTouch
    | ScrollingAuto
    | OverscrollAuto
    | OverscrollContain
    | OverscrollNone
    | OverscrollYAuto
    | OverscrollYContain
    | OverscrollYNone
    | OverscrollXAuto
    | OverscrollXContain
    | OverscrollXNone
    | Static
    | Fixed
    | Absolute
    | Relative
    | Sticky
    | Visible
    | Invisible
    | ObjectBottom
    | ObjectCenter
    | ObjectLeft
    | ObjectLeftBottom
    | ObjectLeftTop
    | ObjectRight
    | ObjectRightBottom
    | ObjectRightTop
    | ObjectTop
    | Inset0
    | InsetX0
    | InsetY0
    | Top0
    | Right0
    | Bottom0
    | Left0
    | InsetAuto
    | InsetXAuto
    | InsetYAuto
    | TopAuto
    | RightAuto
    | BottomAuto
    | LeftAuto
    | Z0
    | Z10
    | Z20
    | Z30
    | Z40
    | Z50
    | ZAuto
    | W0
    | W1
    | W2
    | W3
    | W4
    | W5
    | W6
    | W8
    | W10
    | W12
    | W16
    | W20
    | W24
    | W32
    | W40
    | W48
    | W56
    | W64
    | WAuto
    | WPx
    | W1_2
    | W1_3
    | W2_3
    | W1_4
    | W2_4
    | W3_4
    | W1_5
    | W2_5
    | W3_5
    | W4_5
    | W1_6
    | W2_6
    | W3_6
    | W4_6
    | W5_6
    | W1_12
    | W2_12
    | W3_12
    | W4_12
    | W5_12
    | W6_12
    | W7_12
    | W8_12
    | W9_12
    | W10_12
    | W11_12
    | WFull
    | WScreen
    | MinW0
    | MinWFull
    | MaxWNone
    | MaxWXs
    | MaxWSm
    | MaxWMd
    | MaxWLg
    | MaxWXl
    | MaxW2xl
    | MaxW3xl
    | MaxW4xl
    | MaxW5xl
    | MaxW6xl
    | MaxWFull
    | MaxWScreenSm
    | MaxWScreenMd
    | MaxWScreenLg
    | MaxWScreenXl
    | H0
    | H1
    | H2
    | H3
    | H4
    | H5
    | H6
    | H8
    | H10
    | H12
    | H16
    | H20
    | H24
    | H32
    | H40
    | H48
    | H56
    | H64
    | HAuto
    | HPx
    | HFull
    | HScreen
    | MinH0
    | MinHFull
    | MinHScreen
    | MaxHFull
    | MaxHScreen
    | FillCurrent
    | StrokeCurrent
    | Stroke0
    | Stroke1
    | Stroke2
    | Scale0
    | Scale50
    | Scale75
    | Scale90
    | Scale95
    | Scale100
    | Scale105
    | Scale110
    | Scale125
    | Scale150
    | ScaleX0
    | ScaleX50
    | ScaleX75
    | ScaleX90
    | ScaleX95
    | ScaleX100
    | ScaleX105
    | ScaleX110
    | ScaleX125
    | ScaleX150
    | ScaleY0
    | ScaleY50
    | ScaleY75
    | ScaleY90
    | ScaleY95
    | ScaleY100
    | ScaleY105
    | ScaleY110
    | ScaleY125
    | ScaleY150
    | Rotate0
    | Rotate1
    | Rotate2
    | Rotate3
    | Rotate6
    | Rotate12
    | Rotate45
    | Rotate90
    | Rotate180
    | Rotate180_
    | Rotate90_
    | Rotate45_
    | Rotate12_
    | Rotate6_
    | Rotate3_
    | Rotate2_
    | Rotate1_
    | TranslateX0
    | TranslateX1
    | TranslateX2
    | TranslateX3
    | TranslateX4
    | TranslateX5
    | TranslateX6
    | TranslateX8
    | TranslateX10
    | TranslateX12
    | TranslateX16
    | TranslateX20
    | TranslateX24
    | TranslateX32
    | TranslateX40
    | TranslateX48
    | TranslateX56
    | TranslateX64
    | TranslateXPx
    | TranslateX0_
    | TranslateX1_
    | TranslateX2_
    | TranslateX3_
    | TranslateX4_
    | TranslateX5_
    | TranslateX6_
    | TranslateX8_
    | TranslateX10_
    | TranslateX12_
    | TranslateX16_
    | TranslateX20_
    | TranslateX24_
    | TranslateX32_
    | TranslateX40_
    | TranslateX48_
    | TranslateX56_
    | TranslateX64_
    | TranslateXPx_
    | TranslateXFull_
    | TranslateX1_2_
    | TranslateX1_2
    | TranslateXFull
    | TranslateY0
    | TranslateY1
    | TranslateY2
    | TranslateY3
    | TranslateY4
    | TranslateY5
    | TranslateY6
    | TranslateY8
    | TranslateY10
    | TranslateY12
    | TranslateY16
    | TranslateY20
    | TranslateY24
    | TranslateY32
    | TranslateY40
    | TranslateY48
    | TranslateY56
    | TranslateY64
    | TranslateYPx
    | TranslateY0_
    | TranslateY1_
    | TranslateY2_
    | TranslateY3_
    | TranslateY4_
    | TranslateY5_
    | TranslateY6_
    | TranslateY8_
    | TranslateY10_
    | TranslateY12_
    | TranslateY16_
    | TranslateY20_
    | TranslateY24_
    | TranslateY32_
    | TranslateY40_
    | TranslateY48_
    | TranslateY56_
    | TranslateY64_
    | TranslateYPx_
    | TranslateYFull_
    | TranslateY1_2_
    | TranslateY1_2
    | TranslateYFull
    | SkewX0
    | SkewX1
    | SkewX2
    | SkewX3
    | SkewX6
    | SkewX12
    | SkewX12_
    | SkewX6_
    | SkewX3_
    | SkewX2_
    | SkewX1_
    | SkewY0
    | SkewY1
    | SkewY2
    | SkewY3
    | SkewY6
    | SkewY12
    | SkewY12_
    | SkewY6_
    | SkewY3_
    | SkewY2_
    | SkewY1_
    | OriginCenter
    | OriginTop
    | OriginTopRight
    | OriginRight
    | OriginBottomRight
    | OriginBottom
    | OriginBottomLeft
    | OriginLeft
    | OriginTopLeft
    | Antialiased
    | SubpixelAntialiased
    | Italic
    | NonItalic
    | NormalNums
    | Ordinal
    | SlashedZero
    | LiningNums
    | OldstyleNums
    | ProportionalNums
    | TabularNums
    | DiagonalFractions
    | StackedFractions
    | ListInside
    | ListOutside
    | TextLeft
    | TextCenter
    | TextRight
    | TextJustify
    | Underline
    | LineThrough
    | NoUnderline
    | Uppercase
    | Lowercase
    | Capitalize
    | NormalCase
    | AlignBaseline
    | AlignTop
    | AlignMiddle
    | AlignBottom
    | AlignTextTop
    | AlignTextBottom
    | WhitespaceNormal
    | WhitespaceNoWrap
    | WhitespacePre
    | WhitespacePreLine
    | WhitespacePreWrap
    | BreakNormal
    | BreakWords
    | BreakAll
    | Truncate
    | FontSans
    | FontSerif
    | FontMono
    | TextXs
    | TextSm
    | TextBase
    | TextLg
    | TextXl
    | Text2xl
    | Text3xl
    | Text4xl
    | Text5xl
    | Text6xl
    | FontHairline
    | FontThin
    | FontLight
    | FontNormal
    | FontMedium
    | FontSemibold
    | FontBold
    | FontExtrabold
    | FontBlack
    | TrackingTighter
    | TrackingTight
    | TrackingNormal
    | TrackingWide
    | TrackingWider
    | TrackingWidest
    | Leading3
    | Leading4
    | Leading5
    | Leading6
    | Leading7
    | Leading8
    | Leading9
    | Leading10
    | LeadingNone
    | LeadingTight
    | LeadingSnug
    | LeadingNormal
    | LeadingRelaxed
    | LeadingLoose
    | ListNone
    | ListDisc
    | ListDecimal
    | PlaceholderTransparent
    | PlaceholderCurrent
    | PlaceholderBlack
    | PlaceholderWhite
    | PlaceholderGray100
    | PlaceholderGray200
    | PlaceholderGray300
    | PlaceholderGray400
    | PlaceholderGray500
    | PlaceholderGray600
    | PlaceholderGray700
    | PlaceholderGray800
    | PlaceholderGray900
    | PlaceholderRed100
    | PlaceholderRed200
    | PlaceholderRed300
    | PlaceholderRed400
    | PlaceholderRed500
    | PlaceholderRed600
    | PlaceholderRed700
    | PlaceholderRed800
    | PlaceholderRed900
    | PlaceholderOrange100
    | PlaceholderOrange200
    | PlaceholderOrange300
    | PlaceholderOrange400
    | PlaceholderOrange500
    | PlaceholderOrange600
    | PlaceholderOrange700
    | PlaceholderOrange800
    | PlaceholderOrange900
    | PlaceholderYellow100
    | PlaceholderYellow200
    | PlaceholderYellow300
    | PlaceholderYellow400
    | PlaceholderYellow500
    | PlaceholderYellow600
    | PlaceholderYellow700
    | PlaceholderYellow800
    | PlaceholderYellow900
    | PlaceholderGreen100
    | PlaceholderGreen200
    | PlaceholderGreen300
    | PlaceholderGreen400
    | PlaceholderGreen500
    | PlaceholderGreen600
    | PlaceholderGreen700
    | PlaceholderGreen800
    | PlaceholderGreen900
    | PlaceholderTeal100
    | PlaceholderTeal200
    | PlaceholderTeal300
    | PlaceholderTeal400
    | PlaceholderTeal500
    | PlaceholderTeal600
    | PlaceholderTeal700
    | PlaceholderTeal800
    | PlaceholderTeal900
    | PlaceholderBlue100
    | PlaceholderBlue200
    | PlaceholderBlue300
    | PlaceholderBlue400
    | PlaceholderBlue500
    | PlaceholderBlue600
    | PlaceholderBlue700
    | PlaceholderBlue800
    | PlaceholderBlue900
    | PlaceholderIndigo100
    | PlaceholderIndigo200
    | PlaceholderIndigo300
    | PlaceholderIndigo400
    | PlaceholderIndigo500
    | PlaceholderIndigo600
    | PlaceholderIndigo700
    | PlaceholderIndigo800
    | PlaceholderIndigo900
    | PlaceholderPurple100
    | PlaceholderPurple200
    | PlaceholderPurple300
    | PlaceholderPurple400
    | PlaceholderPurple500
    | PlaceholderPurple600
    | PlaceholderPurple700
    | PlaceholderPurple800
    | PlaceholderPurple900
    | PlaceholderPink100
    | PlaceholderPink200
    | PlaceholderPink300
    | PlaceholderPink400
    | PlaceholderPink500
    | PlaceholderPink600
    | PlaceholderPink700
    | PlaceholderPink800
    | PlaceholderPink900
    | PlaceholderOpacity0
    | PlaceholderOpacity25
    | PlaceholderOpacity50
    | PlaceholderOpacity75
    | PlaceholderOpacity100
    | TextTransparent
    | TextCurrent
    | TextBlack
    | TextWhite
    | TextGray100
    | TextGray200
    | TextGray300
    | TextGray400
    | TextGray500
    | TextGray600
    | TextGray700
    | TextGray800
    | TextGray900
    | TextRed100
    | TextRed200
    | TextRed300
    | TextRed400
    | TextRed500
    | TextRed600
    | TextRed700
    | TextRed800
    | TextRed900
    | TextOrange100
    | TextOrange200
    | TextOrange300
    | TextOrange400
    | TextOrange500
    | TextOrange600
    | TextOrange700
    | TextOrange800
    | TextOrange900
    | TextYellow100
    | TextYellow200
    | TextYellow300
    | TextYellow400
    | TextYellow500
    | TextYellow600
    | TextYellow700
    | TextYellow800
    | TextYellow900
    | TextGreen100
    | TextGreen200
    | TextGreen300
    | TextGreen400
    | TextGreen500
    | TextGreen600
    | TextGreen700
    | TextGreen800
    | TextGreen900
    | TextTeal100
    | TextTeal200
    | TextTeal300
    | TextTeal400
    | TextTeal500
    | TextTeal600
    | TextTeal700
    | TextTeal800
    | TextTeal900
    | TextBlue100
    | TextBlue200
    | TextBlue300
    | TextBlue400
    | TextBlue500
    | TextBlue600
    | TextBlue700
    | TextBlue800
    | TextBlue900
    | TextIndigo100
    | TextIndigo200
    | TextIndigo300
    | TextIndigo400
    | TextIndigo500
    | TextIndigo600
    | TextIndigo700
    | TextIndigo800
    | TextIndigo900
    | TextPurple100
    | TextPurple200
    | TextPurple300
    | TextPurple400
    | TextPurple500
    | TextPurple600
    | TextPurple700
    | TextPurple800
    | TextPurple900
    | TextPink100
    | TextPink200
    | TextPink300
    | TextPink400
    | TextPink500
    | TextPink600
    | TextPink700
    | TextPink800
    | TextPink900
    | TextOpacity0
    | TextOpacity25
    | TextOpacity50
    | TextOpacity75
    | TextOpacity100
    | FormInput
    | FormTextarea
    | FormSelect
    | FormMultiselect
    | FormCheckbox
    | FormRadio
    | Prose
    | ProseSm
    | ProseLg
    | ProseXl
    | Prose2xl



