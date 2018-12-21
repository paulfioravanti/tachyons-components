module ListComponents.Footers exposing (view)

import Footer
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Footers"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "footers/centered-icons-hover-glow/"
                    "Centered Icons Hover Glow"
                    (Route.Footers Footer.centeredIconsHoverGlowRoute)
                , Utils.component
                    "footers/inline-text/"
                    "Inline Text"
                    (Route.Footers Footer.inlineTextRoute)
                , Utils.component
                    "footers/simple-large-type/"
                    "Simple Large Type"
                    (Route.Footers Footer.simpleLargeTypeRoute)
                , Utils.component
                    "footers/small-print/"
                    "Small Print"
                    (Route.Footers Footer.smallPrintRoute)
                , Utils.component
                    "footers/social-circles/"
                    "Social Circles"
                    (Route.Footers Footer.socialCirclesRoute)
                , Utils.component
                    "footers/social-simple-text/"
                    "Social Simple Text"
                    (Route.Footers Footer.socialSimpleTextRoute)
                , Utils.component
                    "footers/social-simple/"
                    "Social Simple"
                    (Route.Footers Footer.socialSimpleRoute)
                , Utils.component
                    "footers/social-text/"
                    "Social Text"
                    (Route.Footers Footer.socialTextRoute)
                , Utils.component
                    "footers/social/"
                    "Social"
                    (Route.Footers Footer.socialRoute)
                , Utils.component
                    "footers/studios/"
                    "Studios"
                    (Route.Footers Footer.studiosRoute)
                ]
            ]
        ]
