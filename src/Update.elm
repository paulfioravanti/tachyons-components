module Update exposing (update)

import Browser
import Browser.Navigation as Navigation
import Model exposing (Model)
import Msg exposing (Msg)
import Ports
import Route
import Styles
import Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg.LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    let
                        setBodyClasses =
                            url
                                |> Route.fromUrl
                                |> Styles.bodyClasses
                                |> Ports.setBodyClasses

                        urlString =
                            Url.toString url

                        navigation =
                            -- Open issue with regard to fragments in Internal
                            -- urls: https://github.com/elm/browser/issues/39
                            case url.fragment of
                                Nothing ->
                                    Navigation.pushUrl model.navKey urlString

                                Just _ ->
                                    Navigation.load urlString
                    in
                    ( model
                    , Cmd.batch [ navigation, setBodyClasses ]
                    )

                Browser.External url ->
                    ( model, Navigation.load url )

        Msg.UrlChanged url ->
            let
                route =
                    Route.fromUrl url
            in
            ( { model | route = route }, Cmd.none )
