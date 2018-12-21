module ListComponents.Cards exposing (view)

import Card
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Cards"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "cards/album-centered/"
                    "Album Centered"
                    (Route.Cards Card.albumCenteredRoute)
                , Utils.component
                    "cards/album-left/"
                    "Album Left"
                    (Route.Cards Card.albumLeftRoute)
                , Utils.component
                    "cards/basic-text-card/"
                    "Basic Text Card"
                    (Route.Cards Card.basicTextCardRoute)
                , Utils.component
                    "cards/news-card/"
                    "News Card"
                    (Route.Cards Card.newsCardRoute)
                , Utils.component
                    "cards/product-card/"
                    "Product Card"
                    (Route.Cards Card.productCardRoute)
                , Utils.component
                    "cards/profile-card-title-subtitle/"
                    "Profile Card Title Subtitle"
                    (Route.Cards Card.profileCardTitleSubtitleRoute)
                , Utils.component
                    "cards/profile-card/"
                    "Profile Card"
                    (Route.Cards Card.profileCardRoute)
                , Utils.component
                    "cards/suggested-profile/"
                    "Suggested Profile"
                    (Route.Cards Card.suggestedProfileRoute)
                , Utils.component
                    "cards/text-card/"
                    "Text Card"
                    (Route.Cards Card.textCardRoute)
                ]
            ]
        ]
