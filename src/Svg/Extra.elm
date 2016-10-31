module Svg.Extra
    exposing
        ( static
        )

{-| Convenience functionality on
[`Svg`](http://package.elm-lang.org/packages/elm-lang/svg/latest/Svg#Svg)

@docs static
-}

import Svg exposing (Svg)


{-| Embedding static svg.

The type argument
[`Never`](http://package.elm-lang.org/packages/elm-lang/core/latest/Basics#Never)
in `Svg Never` tells us that the svg has no event handlers attached,
it will not generate any messages. We may want such static svg to be
embedded into or combined with arbitrary other svg, while using types
to enforce the staticness. That is what this function provides.

*Note:* To call this function, the argument need not be literally of type
`Svg Never`. It suffices if it is a fully polymorphic (in the message type)
`Svg` value. For example, this works: `static (Svg.text "abcdef")`.
-}
static : Svg Never -> Svg msg
static =
    Svg.map never
