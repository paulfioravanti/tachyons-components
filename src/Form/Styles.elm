module Form.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Form.Route
    exposing
        ( Route
            ( CheckboxList
            , InputTextLabel
            , NewsletterSubscription
            , Password
            , SignIn
            , SignUp
            , TextareaLabel
            )
        )


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
        CheckboxList ->
            [ "bg-center" ]

        InputTextLabel ->
            [ "bg-left" ]

        NewsletterSubscription ->
            [ "bg-center"
            , "contain"
            ]

        Password ->
            [ "bg-center"
            , "contain"
            ]

        SignIn ->
            [ "bg-center"
            , "contain"
            ]

        SignUp ->
            [ "bg-center"
            , "contain"
            ]

        TextareaLabel ->
            [ "bg-center"
            , "contain"
            ]
