module Collection.SquareTitleSubtitle.View exposing (view)

import Collection.SquareTitleSubtitle.Styles as Styles
import Collection.SquareTitleSubtitle.Image as Image
import Html exposing (Html, a, article, div, h3, img, section, text)
import Html.Attributes exposing (attribute, class, href, style)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            (List.map square Image.ids)
        ]


square : String -> Html msg
square id =
    article [ class Styles.article ]
        [ div [ class Styles.imageWrapper ]
            [ img
                [ class Styles.image
                , style
                    [ ( "backgroundImage"
                      , "url(http://mrmrs.github.io/images/00" ++ id ++ ".jpg)"
                      )
                    ]
                ]
                []
            ]
        , a [ class Styles.link, href "#" ]
            [ h3 [ class Styles.title ]
                [ text "Title of piece" ]
            , h3 [ class Styles.subtitle ]
                [ text "Subtitle of piece" ]
            ]
        ]
