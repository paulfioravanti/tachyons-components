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
                ]
            ]
        ]