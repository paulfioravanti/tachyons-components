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
                , Utils.component
                    "cards/album-left/"
                    "Album Left"
                    changeLocationMsg
                    (Cards Card.albumLeftRoute)
                , Utils.component
                    "cards/basic-text-card/"
                    "Basic Text Card"
                    changeLocationMsg
                    (Cards Card.basicTextCardRoute)
                , Utils.component
                    "cards/news-card/"
                    "News Card"
                    changeLocationMsg
                    (Cards Card.newsCardRoute)
                , Utils.component
                    "cards/product-card/"
                    "Product Card"
                    changeLocationMsg
                    (Cards Card.productCardRoute)
                , Utils.component
                    "cards/profile-card-title-subtitle/"
                    "Profile Card Title Subtitle"
                    changeLocationMsg
                    (Cards Card.profileCardTitleSubtitleRoute)
                , Utils.component
                    "cards/profile-card/"
                    "Profile Card"
                    changeLocationMsg
                    (Cards Card.profileCardRoute)
                ]
            ]
        ]
