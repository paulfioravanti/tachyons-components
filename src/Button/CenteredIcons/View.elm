module Button.CenteredIcons.View exposing (view)

import Button.CenteredIcons.Styles as Styles
import SvgLogo
import Html exposing (Html, a, div, footer, span, text)
import Html.Attributes exposing (attribute, class, href, title)
import Svg exposing (path, svg)
import Svg.Attributes
    exposing
        ( clipRule
        , d
        , fill
        , fillRule
        , strokeLinejoin
        , strokeMiterlimit
        , viewBox
        )


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ footer [ class Styles.footer ]
            (List.map link links)
        ]


link : ( String, String, String ) -> Html msg
link ( name, icon, url ) =
    a [ class Styles.link, href url, title name ]
        [ svg
            [ Svg.Attributes.class Styles.icon
            , fill "currentColor"
            , viewBox "0 0 16 16"
            , fillRule "evenodd"
            , clipRule "evenodd"
            , strokeLinejoin "round"
            , strokeMiterlimit "1.414"
            ]
            [ path [ d icon ] [] ]
        , span [ class Styles.caption ]
            [ text name ]
        ]


links : List ( String, String, String )
links =
    [ ( "Facebook", SvgLogo.facebook, "https://facebook.com" )
    , ( "GitHub", SvgLogo.github, "https://github.com/mrmrs" )
    , ( "Instagram", SvgLogo.instagram, "https://instagram.com/mrmrs_" )
    , ( "Youtube", SvgLogo.youtube, "https://youtube.com" )
    , ( "SoundCloud", SvgLogo.soundCloud, "https://soundcloud.com/mrsjxn" )
    , ( "Medium", SvgLogo.medium, "https://medium.com/@mrmrs_/" )
    , ( "LinkedIn", SvgLogo.linkedIn, "https://linkedin.com" )
    , ( "Twitter", SvgLogo.twitter, "https://twitter.com/mrmrs_" )
    , ( "Code Pen", SvgLogo.codePen, "http://codepen.io" )
    ]
