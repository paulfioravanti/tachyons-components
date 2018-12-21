module ListComponents.Tables exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route
import Table


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Tables"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "tables/basic/"
                    "Basic"
                    (Route.Tables Table.basicRoute)
                , Utils.component
                    "tables/striped-dark/"
                    "Striped Dark"
                    (Route.Tables Table.stripedDarkRoute)
                ]
            ]
        ]
