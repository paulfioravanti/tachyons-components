module Footer.SocialSimpleText.View exposing (view)

import Footer.Logo as Logo exposing (Logo)
import Footer.SocialSimpleText.Styles as Styles
import Html exposing (Html, a, div, footer, span, text)
import Html.Attributes exposing (attribute, class, href, style, title)
import Svg exposing (svg)
import Svg.Attributes
    exposing
        ( clipRule
        , fillRule
        , strokeLinejoin
        , strokeMiterlimit
        , viewBox
        )


view : Html msg
view =
    let
        logos =
            Logo.list
    in
        div [ attribute "data-name" "component" ]
            [ footer [ class Styles.footer ]
                (List.foldr iconLinks [] logos)
            ]


iconLinks : Logo msg -> List (Html msg) -> List (Html msg)
iconLinks { path, name, url } acc =
    let
        link =
            a [ class Styles.link, href url, title name ]
                [ svg
                    [ attribute "data-icon" name
                    , viewBox "0 0 16 16"
                    , style [ ( "fill", "currentcolor" ) ]
                    , fillRule "evenodd"
                    , clipRule "evenodd"
                    , strokeLinejoin "round"
                    , strokeMiterlimit "1.414"
                    , Svg.Attributes.class Styles.svg
                    ]
                    [ path ]
                , span [ class Styles.title ]
                    [ text name ]
                ]
    in
        link :: acc
