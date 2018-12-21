module Page.FourByFourMixedGrid.View exposing (view)

import Html exposing (Html, article, div, h2, header, p, section, span, text)
import Html.Attributes exposing (attribute, class, style)
import Page.FourByFourMixedGrid.Article as Article
import Page.FourByFourMixedGrid.Styles as Styles


view : Html msg
view =
    let
        exampleArticle =
            Article.example

        imageIds =
            [ "08"
            , "12"
            , "09"
            , "10"
            , "18"
            , "19"
            , "14"
            , "11"
            , "04"
            , "02"
            , "20"
            , "13"
            ]
    in
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ header [ class Styles.header ]
                [ h2 [ class Styles.heading ]
                    [ text exampleArticle.heading ]
                ]
            , section [ class Styles.section ]
                (List.map paragraph exampleArticle.paragraphs)
            , section [ class Styles.section ]
                (List.map image imageIds)
            ]
        ]


paragraph : String -> Html msg
paragraph copy =
    div [ class Styles.content ]
        [ p [ class Styles.copy ]
            [ text copy ]
        ]


image : String -> Html msg
image id =
    let
        backgroundImage =
            style
                "backgroundImage"
                ("url(http://mrmrs.github.io/images/00" ++ id ++ ".jpg)")
    in
    div [ class Styles.content ]
        [ div [ class Styles.imageWrapper ]
            [ span [ class Styles.image, backgroundImage ] [] ]
        ]
