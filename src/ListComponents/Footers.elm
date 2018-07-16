module ListComponents.Footers exposing (view)

import Footer
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Footers))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Footers"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "footers/centered-icons-hover-glow/"
                    "Centered Icons Hover Glow"
                    changeLocationMsg
                    (Footers Footer.centeredIconsHoverGlowRoute)
                , Utils.component
                    "footers/inline-text/"
                    "Inline Text"
                    changeLocationMsg
                    (Footers Footer.inlineTextRoute)
                , Utils.component
                    "footers/simple-large-type/"
                    "Simple Large Type"
                    changeLocationMsg
                    (Footers Footer.simpleLargeTypeRoute)
                , Utils.component
                    "footers/small-print/"
                    "Small Print"
                    changeLocationMsg
                    (Footers Footer.smallPrintRoute)
                , Utils.component
                    "footers/social-circles/"
                    "Social Circles"
                    changeLocationMsg
                    (Footers Footer.socialCirclesRoute)
                , Utils.component
                    "footers/social-simple-text/"
                    "Social Simple Text"
                    changeLocationMsg
                    (Footers Footer.socialSimpleTextRoute)
                , Utils.component
                    "footers/social-simple/"
                    "Social Simple"
                    changeLocationMsg
                    (Footers Footer.socialSimpleRoute)
                , Utils.component
                    "footers/social-text/"
                    "Social Text"
                    changeLocationMsg
                    (Footers Footer.socialTextRoute)
                ]
            ]
        ]
