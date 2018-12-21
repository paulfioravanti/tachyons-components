module Page.SwissCoverFiveColumns.View exposing (view)

import Html exposing (Html, br, div, h1, img, main_, p, small, text)
import Html.Attributes exposing (alt, attribute, class, src)
import Page.SwissCoverFiveColumns.Styles as Styles


view : Html msg
view =
    let
        columnTexts =
            [ [ text "Jahrbuch "
              , small [ class Styles.small ] [ text "1968/69" ]
              ]
            , [ text "Institut suisse pour l'étude de l'art" ]
            , [ text "Schweizerisches"
              , br [ class Styles.br ] []
              , text "Institut für Kunstwissenschaft"
              ]
            , [ text "Istituto svizzero di studi d'arte" ]
            , [ text "Swiss Institute for Art Research" ]
            ]
    in
    div [ attribute "data-name" "component" ]
        [ main_ [ class Styles.main_ ]
            [ header
            , div [ class Styles.columns ]
                (List.map column columnTexts)
            , image
            ]
        ]


header : Html msg
header =
    div [ class Styles.header ]
        [ p [ class Styles.preHeading ]
            [ text "Beitrage zut" ]
        , h1 [ class Styles.heading ]
            [ text "Kunst"
            , br [ class Styles.br ] []
            , text "des 19. und 20.Jahrhunderts"
            ]
        ]


column : List (Html msg) -> Html msg
column paragraphContent =
    div [ class Styles.column ]
        [ p [] paragraphContent ]


image : Html msg
image =
    img
        [ class Styles.image
        , src "http://mrmrs.github.io/photos/u/007.jpg"
        , alt "iceland"
        ]
        []
