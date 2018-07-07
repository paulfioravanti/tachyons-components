module ListComponents.Banners exposing (view)

import Banner
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Banners))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Banners"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "banners/basic/"
                    "Basic"
                    changeLocationMsg
                    (Banners Banner.basicRoute)
                ]
            ]
        ]
