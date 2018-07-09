module ListComponents.DefinitionLists exposing (view)

import DefinitionList
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(DefinitionLists))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Definition Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "definition-lists/inline/"
                    "Inline"
                    changeLocationMsg
                    (DefinitionLists DefinitionList.inlineRoute)
                ]
            ]
        ]
