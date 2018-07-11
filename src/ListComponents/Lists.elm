module ListComponents.Lists exposing (view)

import List_
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Lists))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "lists/block-item-dotted-border/"
                    "Block Item Dotted Border"
                    changeLocationMsg
                    (Lists List_.blockItemDottedBorderRoute)
                ]
            ]
        ]