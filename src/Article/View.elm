module Article.View exposing (view)

import Article.Route
    exposing
        ( Route
            ( Feature
            , FullBleedBackground
            , HeadlineTitleText
            , LargeTitleText
            )
        )
import Article.Feature.View as Feature
import Article.FullBleedBackground.View as FullBleedBackground
import Article.HeadlineTitleText.View as HeadlineTitleText
import Article.LargeTitleText.View as LargeTitleText
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Feature ->
            Feature.view footer

        FullBleedBackground ->
            FullBleedBackground.view footer

        HeadlineTitleText ->
            HeadlineTitleText.view footer

        LargeTitleText ->
            LargeTitleText.view footer
