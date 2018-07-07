module Banner.Basic.View exposing (view)

import Banner.Basic.Styles as Styles
import Html
    exposing
        ( Html
        , a
        , article
        , div
        , h1
        , h2
        , img
        , p
        , section
        , text
        )
import Html.Attributes exposing (alt, class, href, src)


view : Html msg -> Html msg
view footer =
    div []
        [ section [ class Styles.article ]
            []
        , footer
        ]
