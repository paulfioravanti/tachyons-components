module ListComponents.Quotes exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Quote
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Quotes"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "quotes/left-border/"
                    "Left Border"
                    (Route.Quotes Quote.leftBorderRoute)
                , Utils.component
                    "quotes/pull-quote/"
                    "Pull Quote"
                    (Route.Quotes Quote.pullQuoteRoute)
                ]
            ]
        ]
