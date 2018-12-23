module Form.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = CheckboxList
    | InputTextLabel
    | NewsletterSubscription
    | Password
    | SignIn
    | SignUp
    | TextareaLabel


matchers : Parser (Route -> a) a
matchers =
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ CheckboxList
    , InputTextLabel
    , NewsletterSubscription
    , Password
    , SignIn
    , SignUp
    , TextareaLabel
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        CheckboxList ->
            "checkbox-list"

        InputTextLabel ->
            "input-text-label"

        NewsletterSubscription ->
            "newsletter-subscription"

        Password ->
            "password"

        SignIn ->
            "sign-in"

        SignUp ->
            "sign-up"

        TextareaLabel ->
            "textarea-label"
