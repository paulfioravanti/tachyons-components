module Form.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


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
    [ CheckboxList
    , InputTextLabel
    , NewsletterSubscription
    , Password
    , SignIn
    , SignUp
    , TextareaLabel
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
