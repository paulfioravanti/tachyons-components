module ListComponents.Footer exposing (view)

import Html exposing (Html, a, div, footer, text)
import Html.Attributes
    exposing
        ( class
        , href
        , title
        )
import ListComponents.Badges as Badges
import ListComponents.CallsToAction as CallsToAction
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Msg exposing (Msg)


view : Html Msg
view =
    footer [ class Styles.footer ]
        [ div [ class Styles.centerContent ]
            [ links
            , Badges.view
            , CallsToAction.view
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
