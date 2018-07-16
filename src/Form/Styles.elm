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
