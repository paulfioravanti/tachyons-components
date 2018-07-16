module Form.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CheckboxList
    | InputTextLabel
    | NewsletterSubscription
    | Password
    | SignIn
    | SignUp


matchers : Parser (Route -> a) a
matchers =
    [ CheckboxList
    , InputTextLabel
    , NewsletterSubscription
    , Password
    , SignIn
    , SignUp
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
