module Collection.Vinyl.View exposing (view)

import Collection.Vinyl.Styles as Styles
import Collection.Vinyl.Album as Album exposing (Album)
import Html exposing (Html, a, article, div, span)
import Html.Attributes exposing (attribute, class, href, style)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.section ]
            [ div [ class Styles.imageWrapper ]
                [ albumLink Album.beyonce ]
            , div [ class Styles.imageWrapper ]
                [ albumLink Album.kaytranada ]
            , div [ class Styles.imageWrapper ]
                [ albumLink Album.justice ]
            , div [ class Styles.imageWrapper ]
                [ albumLink Album.flume ]
            , div [ class Styles.bigImageWrapper ]
                [ albumLink Album.solange ]
            , div [ class Styles.imageWrapper ]
                [ albumLink Album.untitledunmastered ]
            , div [ class "fl w-100 w-25-ns" ]
                [ albumLink Album.moonshapedpool ]
            , div [ class Styles.imageWrapper ]
                [ albumLink Album.coloranything ]
            , div [ class Styles.imageWrapper ]
                [ albumLink Album.goldpanda ]
            , div [ class "fl w-100 w-50-m w-25-ns" ]
                [ albumLink Album.clamscasino
                , albumLink Album.dannybrown
                ]
            , div [ class "fl w-100 w-50-m w-25-l" ]
                [ div [ class "fl w-100" ]
                    [ albumLink Album.humanenergy ]
                , div [ class "fl w-100" ]
                    [ div [ class Styles.smallImageWrapper ]
                        [ albumLink Album.moodyman ]
                    , div [ class Styles.smallImageWrapper ]
                        [ albumLink Album.strangerthings ]
                    , div [ class Styles.smallImageWrapper ]
                        [ albumLink Album.glassanimals ]
                    , div [ class Styles.smallImageWrapper ]
                        [ albumLink Album.boniver ]
                    ]
                ]
            , div [ class "fl w-100 w-50-l" ]
                [ albumLink Album.paak ]
            ]
        ]


albumLink : Album -> Html msg
albumLink { amazonUrl, imageUrl, label } =
    a [ href amazonUrl, class Styles.link ]
        [ span
            [ class Styles.image
            , attribute "role" "img"
            , attribute "aria-label" label
            , style
                [ ( "backgroundImage"
                  , "url(" ++ imageUrl ++ ")"
                  )
                ]
            ]
            []
        ]
