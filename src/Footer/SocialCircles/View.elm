module Footer.SocialCircles.View exposing (view)

import Footer.SocialCircles.Styles as Styles
import Html exposing (Html, a, div, footer, text)
import Html.Attributes exposing (attribute, class, href, style, title)
import Svg exposing (path, svg)
import Svg.Attributes exposing (d, viewBox)
import SvgLogo


view : Html msg
view =
    let
        logos =
            [ ( SvgLogo.facebook2, "facebook" )
            , ( SvgLogo.twitter2, "twitter" )
            , ( SvgLogo.github2, "github" )
            , ( SvgLogo.dribble, "dribble" )
            ]
    in
    div [ attribute "data-name" "component" ]
        [ footer [ class Styles.footer ]
            (List.map iconLink logos)
        ]


iconLink : ( String, String ) -> Html msg
iconLink ( iconPath, iconName ) =
    a [ class Styles.link, href "#", title "" ]
        [ svg
            [ attribute "data-icon" iconName
            , viewBox "0 0 32 32"
            , style "fill" "currentcolor"
            ]
            [ Svg.title []
                [ text (iconName ++ " icon") ]
            , path [ d iconPath ]
                []
            ]
        ]
