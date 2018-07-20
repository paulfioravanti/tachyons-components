module ListComponents.Texts exposing (view)

import Text
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Texts))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Text"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "text/large-paragraph/"
                    "Large Paragraph"
                    changeLocationMsg
                    (Texts Text.largeParagraphRoute)
                , Utils.component
                    "text/narrow-paragraph/"
                    "Narrow Paragraph"
                    changeLocationMsg
                    (Texts Text.narrowParagraphRoute)
                , Utils.component
                    "text/paragraph/"
                    "Paragraph"
                    changeLocationMsg
                    (Texts Text.paragraphRoute)
                , Utils.component
                    "text/small-narrow-paragraph/"
                    "Small Narrow Paragraph"
                    changeLocationMsg
                    (Texts Text.smallNarrowParagraphRoute)
                , Utils.component
                    "text/small-paragraph/"
                    "Small Paragraph"
                    changeLocationMsg
                    (Texts Text.smallParagraphRoute)
                , Utils.component
                    "text/title-subtitle-centered/"
                    "Title Subtitle Centered"
                    changeLocationMsg
                    (Texts Text.titleSubtitleCenteredRoute)
                ]
            ]
        ]
