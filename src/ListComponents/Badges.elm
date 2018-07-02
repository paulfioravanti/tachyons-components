module ListComponents.Badges exposing (view)

import Html exposing (Html, a, article, div, footer, iframe, span, text)
import Html.Attributes
    exposing
        ( attribute
        , class
        , height
        , href
        , src
        , style
        , title
        , width
        )
import ListComponents.Styles as Styles
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

        -- https://github.com/jxnblk/geomicons-open/blob/master/src/twitter.js
        twitterLogoPath =
            "M2 4 C6 8 10 12 15 11 A6 6 0 0 1 22 4 A6 6 0 0 1 26 6 A8 8 "
                ++ "0 0 0 31 4 A8 8 0 0 1 28 8 A8 8 0 0 0 32 7 A8 8 0 0 "
                ++ "1 28 11 A18 18 0 0 1 10 30 A18 18 0 0 1 0 27 A12 12 "
                ++ "0 0 0 8 24 A8 8 0 0 1 3 20 A8 8 0 0 0 6 19.5 A8 8 0 "
                ++ "0 1 0 12 A8 8 0 0 0 3 13 A8 8 0 0 1 2 4"
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
                [ path [ d twitterLogoPath ] [] ]
            , span
                [ class Styles.twitterText
                , style [ ( "font-size", "12px" ) ]
                ]
                [ text "Tweet" ]
            ]
