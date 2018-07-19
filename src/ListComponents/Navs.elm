module ListComponents.Navs exposing (view)

import Nav
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Navs))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Nav"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "nav/fixed-semi-transparent/"
                    "Fixed Semi Transparent"
                    changeLocationMsg
                    (Navs Nav.fixedSemiTransparentRoute)
                , Utils.component
                    "nav/large-title-link-list/"
                    "Large Title Link List"
                    changeLocationMsg
                    (Navs Nav.largeTitleLinkListRoute)
                ]
            ]
        ]
