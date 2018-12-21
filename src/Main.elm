module Main exposing (main)

import Browser
import Browser.Navigation as Navigation exposing (Key)
import Model exposing (Model)
import Msg exposing (Msg)
import Ports
import Route
import Styles
import Update
import Url exposing (Url)
import View


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , update = Update.update
        , view = View.view
        , subscriptions = always Sub.none
        , onUrlChange = Msg.UrlChanged
        , onUrlRequest = Msg.LinkClicked
        }


init : () -> Url -> Key -> ( Model, Cmd Msg )
init () url navKey =
    let
        route =
            Route.fromLocation url

        setBodyClasses =
            route
                |> Styles.bodyClasses
                |> Ports.setBodyClasses

        setUrl =
            route
                |> Route.toPath
                |> Navigation.pushUrl navKey
    in
    ( { route = route, navKey = navKey }
    , Cmd.batch [ setBodyClasses, setUrl ]
    )
