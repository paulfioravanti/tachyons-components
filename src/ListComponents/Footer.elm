module ListComponents.Footer exposing (view)

import Html exposing (Html, a, article, div, footer, iframe, text)
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
import ListComponents.Utils as Utils
import Msg exposing (Msg)


view : Html Msg
view =
    footer [ class Styles.footer ]
        [ div [ class Styles.centerContent ]
            [ links
            , badges
            ]
        ]


links : Html Msg
links =
    div [ class Styles.footerLinks ]
        [ link "http://tachyons.io/" "Home" "Home"
        , link "http://tachyons.io/docs" "Docs" "Docs"
        , Utils.componentsLink Styles.footerLink
        , link
            "http://tachyons.io/gallery"
            "Gallery of Sites built with Tachyons"
            "Gallery"
        , link
            "http://tachyons.io/resources"
            "Resources related to Tachyons"
            "Resources"
        , link
            "http://tachyons.io/xray"
            "The X-Ray chrome extension for aligning things to a grid."
            "X-Ray"
        , link "http://opencollective.com/tachyons"
            "Support Tachyons Development"
            "Supporting Tachyons"
        ]


link : String -> String -> String -> Html Msg
link url linkTitle linkText =
    a [ class Styles.footerLink, href url, title linkTitle ]
        [ text linkText ]


badges : Html Msg
badges =
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
            []
