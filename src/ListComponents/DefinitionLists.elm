module ListComponents.DefinitionLists exposing (view)

import DefinitionList
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Definition Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "definition-lists/inline/"
                    "Inline"
                    (Route.DefinitionLists DefinitionList.inlineRoute)
                , Utils.component
                    "definition-lists/simple/"
                    "Simple"
                    (Route.DefinitionLists DefinitionList.simpleRoute)
                ]
            ]
        ]
