module ListComponents.Cards exposing (view)

import Card
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Cards))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Cards"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "cards/album-centered/"
                    "Album Centered"
                    changeLocationMsg
                    (Cards Card.albumCenteredRoute)
                ]
            ]
        ]
