port module Main exposing (..)

import Html exposing (Html, a, div, header, nav, small, text)
import Html.Attributes exposing (class, href, title)
import Styles


port setBodyClasses : String -> Cmd msg



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, setBodyClasses Styles.body )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    header [ class Styles.header ]
        [ div [ class Styles.headerContent ]
            [ div [ class Styles.title ]
                [ a
                    [ class Styles.titleLink
                    , href "http://tachyons.io/"
                    , title "Home"
                    ]
                    [ text "Tachyons "
                    , div [ class Styles.versionNumberWrapper ]
                        [ small [ class Styles.versionNumber ]
                            [ text "v4.9.1" ]
                        ]
                    ]
                ]
            , nav [ class Styles.nav ]
                [ a
                    [ class Styles.navLink
                    , href "http://tachyons.io/docs"
                    , title "Documentation"
                    ]
                    [ text "Docs" ]
                , a
                    [ class Styles.navLink
                    , href "#"
                    , title "Components"
                    ]
                    [ text "Components" ]
                , a
                    [ class Styles.navLink
                    , href "http://tachyons.io/gallery"
                    , title "Gallery of sites built with Tachyons"
                    ]
                    [ text "Gallery" ]
                , a
                    [ class Styles.navLink
                    , href "http://tachyons.io/resources"
                    , title "Resources"
                    ]
                    [ text "Resources" ]
                , a
                    [ class Styles.navLink
                    , href "http://github.com/tachyons-css/tachyons"
                    , title "Tachyons on Github"
                    ]
                    [ text "Github" ]
                ]
            ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
