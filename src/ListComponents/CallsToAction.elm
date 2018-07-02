module ListComponents.CallsToAction exposing (view)

import Html exposing (Html, a, div, span, text)
import Html.Attributes
    exposing
        ( class
        , href
        , title
        )
import ListComponents.Styles as Styles
import ListComponents.SvgPath as SvgPath
import Msg exposing (Msg)
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


view : Html Msg
view =
    div [ class Styles.callsToAction ]
        [ twitter
        , slack
        , gitHub
        ]


twitter : Html Msg
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


slack : Html Msg
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


gitHub : Html Msg
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
