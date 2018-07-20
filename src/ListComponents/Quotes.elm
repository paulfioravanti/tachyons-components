module ListComponents.Quotes exposing (view)

import Quote
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Quotes))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Quotes"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "quotes/left-border/"
                    "Left Border"
                    changeLocationMsg
                    (Quotes Quote.leftBorderRoute)
                , Utils.component
                    "quotes/pull-quote/"
                    "Pull Quote"
                    changeLocationMsg
                    (Quotes Quote.pullQuoteRoute)
                ]
            ]
        ]
