module Article.View exposing (view)

import Article.Route
    exposing
        ( Route
            ( Feature
            , FullBleedBackground
            )
        )
import Article.Feature.View as Feature
import Article.FullBleedBackground.View as FullBleedBackground
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Feature ->
            Feature.view footer

        FullBleedBackground ->
            FullBleedBackground.view footer
