module ListComponents.Banners exposing (view)

import Banner
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Banners"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "banners/basic/"
                    "Basic"
                    (Route.Banners Banner.basicRoute)
                , Utils.component
                    "banners/info/"
                    "Info"
                    (Route.Banners Banner.infoRoute)
                , Utils.component
                    "banners/single-cta/"
                    "Single Cta"
                    (Route.Banners Banner.singleCtaRoute)
                ]
            ]
        ]
