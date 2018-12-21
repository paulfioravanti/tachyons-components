module ListComponents.Links exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Link
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Links"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "links/animate-background-color/"
                    "Animate Background Color"
                    (Route.Links Link.animateBackgroundColorRoute)
                , Utils.component
                    "links/animate-color/"
                    "Animate Color"
                    (Route.Links Link.animateColorRoute)
                , Utils.component
                    "links/dim-no-underline/"
                    "Dim No Underline"
                    (Route.Links Link.dimNoUnderlineRoute)
                , Utils.component
                    "links/underline-on-hover/"
                    "Underline On Hover"
                    (Route.Links Link.underlineOnHoverRoute)
                ]
            ]
        ]
