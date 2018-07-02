module Footer.Badges exposing (view)

import Footer.Styles as Styles
import Footer.SvgPath as SvgPath
import Html exposing (Html, a, article, iframe, span, text)
import Html.Attributes
    exposing
        ( attribute
        , class
        , height
        , href
        , src
        , style
        , width
        )
import Msg exposing (Msg)
import Svg exposing (path, svg)
import Svg.Attributes exposing (d, fill, viewBox)


view : Html Msg
view =
    article [ class Styles.badges ]
        [ githubButton "star"
        , githubButton "fork"
        , twitterBadge
        ]


githubButton : String -> Html Msg
githubButton badgeType =
    let
        url =
            "https://ghbtns.com/github-btn.html"
                ++ "?user=tachyons-css"
                ++ "&repo=tachyons"
                ++ "&type="
                ++ badgeType
                ++ "&count=true"
    in
        iframe
            [ attribute "frameborder" "0"
            , attribute "scrolling" "0"
            , height 20
            , src url
            , width 100
            ]
            []


twitterBadge : Html Msg
twitterBadge =
    let
        link =
            "https://twitter.com/intent/tweet"
                ++ "?text=Tachyons: A functional css toolkit for "
                ++ "designing in the browser."
                ++ "&url=http://tachyons.io"
    in
        a
            [ href link
            , class Styles.twitterBadge
            , style [ ( "background-color", "#55acee" ) ]
            ]
            [ svg
                [ Svg.Attributes.class Styles.twitterSvg
                , Svg.Attributes.height "16"
                , Svg.Attributes.width "16"
                , fill "#fff"
                , viewBox "0 0 32 32"
                ]
                [ path [ d SvgPath.twitterLogo ] [] ]
            , span
                [ class Styles.twitterText
                , style [ ( "font-size", "12px" ) ]
                ]
                [ text "Tweet" ]
            ]
