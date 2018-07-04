module Article.HeadlineTitleText.View exposing (view)

import Article.HeadlineTitleText.Styles as Styles
import Html
    exposing
        ( Html
        , article
        , div
        , header
        , h1
        , h4
        , p
        , section
        , text
        )
import Html.Attributes exposing (attribute, class, style)


view : Html msg -> Html msg
view footer =
    div []
        [ article [ class Styles.article ]
            (heading :: List.map paragraph paragraphs)
        , footer
        ]


heading : Html msg
heading =
    h1 [ class Styles.heading ]
        [ text "Title" ]


paragraph : String -> Html msg
paragraph copy =
    p [ class Styles.copy ] [ text copy ]


paragraphs : List String
paragraphs =
    [ loremIpsum, loremIpsum ]


loremIpsum : String
loremIpsum =
    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam "
        ++ "nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam "
        ++ "erat, sed diam voluptua. At vero eos et accusam et justo duo "
        ++ "dolores et ea rebum. Stet clita kasd gubergren, no sea takimata "
        ++ "sanctus est Lorem ipsum dolor sit amet."
