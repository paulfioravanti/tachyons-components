module Layout.HorizontalAspectRatios.View exposing (view)

import Html exposing (Html, article, div, h4, text)
import Html.Attributes exposing (attribute, class, style)
import Layout.HorizontalAspectRatios.Styles as Styles


view : Html msg
view =
    let
        aspectRatios =
            [ ( "16", "9" )
            , ( "8", "5" )
            , ( "7", "5" )
            , ( "6", "4" )
            , ( "4", "3" )
            , ( "1", "1" )
            ]
    in
        div [ attribute "data-name" "component" ]
            [ article [ class Styles.article ]
                (List.foldr aspectRatio [] aspectRatios)
            ]


aspectRatio : ( String, String ) -> List (Html msg) -> List (Html msg)
aspectRatio ( width, height ) acc =
    let
        title =
            h4 [ class Styles.title ]
                [ text (width ++ ":" ++ height) ]

        image =
            div [ class (Styles.imageType width height) ]
                [ div
                    [ class Styles.image
                    , style
                        [ ( "backgroundImage"
                          , "url(http://mrmrs.github.io/photos/001.jpg)"
                          )
                        ]
                    ]
                    []
                ]
    in
        title :: image :: acc
