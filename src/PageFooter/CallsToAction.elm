module PageFooter.CallsToAction exposing (view)

import PageFooter.Styles as Styles
import PageFooter.SvgPath as SvgPath
import Html exposing (Html, a, div, span, text)
import Html.Attributes
    exposing
        ( class
        , href
        , title
        )
import Svg exposing (Svg, g, path, svg)
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
    div [ class Styles.callsToAction ]
        [ twitter
        , slack
        , gitHub
        ]


twitter : Html msg
twitter =
    let
        logo =
            path [ d SvgPath.twitterCtaLogo, fillRule "nonzero" ] []
    in
        callToAction
            "https://twitter.com/tachyons_css"
            "Follow us on Twitter"
            logo
            "Follow @tachyons_css"


slack : Html msg
slack =
    let
        logo =
            g [ fillRule "nonzero" ]
                [ path [ d SvgPath.slackLogoMiddleSquare ] []
                , path [ d SvgPath.slackLogo ] []
                ]
    in
        callToAction
            "http://tachyons-slack-invite.herokuapp.com"
            "Join our Slack Channel"
            logo
            "Need Help? Join our Slack Channel"


gitHub : Html msg
gitHub =
    let
        logo =
            path [ d SvgPath.gitHubLogo ] []
    in
        callToAction
            "https://github.com/tachyons-css/tachyons/issues"
            "File a bug, request a feature, ask a question!"
            logo
            "Open an Issue on GitHub"


callToAction : String -> String -> Svg msg -> String -> Html msg
callToAction url ctaTitle logoPath ctaText =
    a
        [ class Styles.callToAction
        , href url
        , title ctaTitle
        ]
        [ div [ class Styles.callToActionSvg ]
            [ svg
                [ clipRule "evenodd"
                , fill "currentColor"
                , fillRule "evenodd"
                , strokeLinejoin "round"
                , strokeMiterlimit "1.414"
                , viewBox "0 0 16 16"
                ]
                [ logoPath ]
            ]
        , span [] [ text ctaText ]
        ]
