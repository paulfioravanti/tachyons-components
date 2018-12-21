module Form.Styles exposing
    ( bodyClasses
    , sectionContentLinkImageFormatting
    )

import Form.Route as Route exposing (Route)


bodyClasses : Route -> List String
bodyClasses route =
    let
        defaultFormatting =
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]
    in
    case route of
        _ ->
            defaultFormatting


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    case route of
        Route.CheckboxList ->
            [ "bg-center" ]

        Route.InputTextLabel ->
            [ "bg-left" ]

        Route.NewsletterSubscription ->
            [ "bg-center"
            , "contain"
            ]

        Route.Password ->
            [ "bg-center"
            , "contain"
            ]

        Route.SignIn ->
            [ "bg-center"
            , "contain"
            ]

        Route.SignUp ->
            [ "bg-center"
            , "contain"
            ]

        Route.TextareaLabel ->
            [ "bg-center"
            , "contain"
            ]
