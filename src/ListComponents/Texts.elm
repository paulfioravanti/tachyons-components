module ListComponents.Texts exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route
import Text


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Text"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "text/large-paragraph/"
                    "Large Paragraph"
                    (Route.Texts Text.largeParagraphRoute)
                , Utils.component
                    "text/narrow-paragraph/"
                    "Narrow Paragraph"
                    (Route.Texts Text.narrowParagraphRoute)
                , Utils.component
                    "text/paragraph/"
                    "Paragraph"
                    (Route.Texts Text.paragraphRoute)
                , Utils.component
                    "text/small-narrow-paragraph/"
                    "Small Narrow Paragraph"
                    (Route.Texts Text.smallNarrowParagraphRoute)
                , Utils.component
                    "text/small-paragraph/"
                    "Small Paragraph"
                    (Route.Texts Text.smallParagraphRoute)
                , Utils.component
                    "text/title-subtitle-centered/"
                    "Title Subtitle Centered"
                    (Route.Texts Text.titleSubtitleCenteredRoute)
                , Utils.component
                    "text/wide-paragraph/"
                    "Wide Paragraph"
                    (Route.Texts Text.wideParagraphRoute)
                ]
            ]
        ]
