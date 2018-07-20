module ListComponents.Tables exposing (view)

import Table
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Tables))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Tables"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "tables/basic/"
                    "Basic"
                    changeLocationMsg
                    (Tables Table.basicRoute)
                , Utils.component
                    "tables/striped-dark/"
                    "Striped Dark"
                    changeLocationMsg
                    (Tables Table.stripedDarkRoute)
                ]
            ]
        ]
