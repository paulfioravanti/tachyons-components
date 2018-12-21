module Link.UnderlineOnHover.View exposing (view)

import Html exposing (Html, a, div, text)
import Html.Attributes exposing (attribute, class, href)
import Link.UnderlineOnHover.Styles as Styles


view : Html msg
view =
    let
        linkColours =
            [ "black"
            , "near-black"
            , "dark-gray"
            , "mid-gray"
            , "gray"
            , "dark-red"
            , "red"
            , "purple"
            , "light-purple"
            , "dark-pink"
            , "light-pink"
            , "dark-green"
            , "green"
            , "navy"
            , "dark-blue"
            , "blue"
            ]
    in
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.links ]
            (List.map link linkColours)
        ]


link : String -> Html msg
link colour =
    a [ class (Styles.link colour), href "#0" ]
        [ text "underline-hover on hover" ]
