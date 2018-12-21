module Layout.FourColumnCollapseTwo.View exposing (view)

import Html exposing (Html, div, img, section)
import Html.Attributes exposing (alt, attribute, class, src)
import Layout.FourColumnCollapseTwo.Styles as Styles


view : Html msg
view =
    let
        images =
            [ ( "http://tachyons.io/img/5.jpg", "night sky over house" )
            , ( "http://tachyons.io/img/6.jpg", "night sky over water" )
            , ( "http://tachyons.io/img/3.jpg", "bay bridge at night" )
            , ( "http://tachyons.io/img/4.jpg", "night sky over land" )
            ]
    in
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            (List.map image images)
        ]


image : ( String, String ) -> Html msg
image ( url, altText ) =
    div [ class Styles.imageWrapper ]
        [ img [ class Styles.image, src url, alt altText ] [] ]
