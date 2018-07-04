module Article.View exposing (view)

import Article.Route
    exposing
        ( Route
            ( Feature
            , FullBleedBackground
            , HeadlineTitleText
            , LargeTitleText
            , TitleText
            )
        )
import Article.Feature.View as Feature
import Article.FullBleedBackground.View as FullBleedBackground
import Article.HeadlineTitleText.View as HeadlineTitleText
import Article.LargeTitleText.View as LargeTitleText
import Article.TitleText.View as TitleText
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

        TitleText ->
            TitleText.view footer
