module Marketing.IPhoneApp.View exposing (view)

import Html exposing (Html, div, h1, h2, img, section, text)
import Html.Attributes exposing (attribute, class, src)
import Marketing.IPhoneApp.Logo as Logo
import Marketing.IPhoneApp.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            [ div [ class Styles.image ]
                [ img [ src "http://tachyons.io/img/iPhone7Vertical.jpg" ] [] ]
            , div [ class Styles.copy ]
                [ h1 [ class Styles.heading ]
                    [ text "Connect in a whole new way." ]
                , h2 [ class Styles.subheading ]
                    [ text "Rated the #1 app for communicating with customers."
                    ]
                , Logo.iTunesStore
                ]
            ]
        ]
