module Quote.PullQuote.View exposing (view)

import Html exposing (Html, article, blockquote, div, p, text)
import Html.Attributes exposing (attribute, class)
import Quote.PullQuote.Styles as Styles


view : Html msg
view =
    let
        paragraph1 =
            """
            The form of our letters, the older handwriting and inscriptions as
            much as the cuttings in use today, reflects a convention that has
            slowly solidified, an agreement hardened in many battles. Even
            after the Renaissance several European countries retained broken,
            blackletter national scripts in opposition to roman, the obligatory
            type for all Latin material; yet even today, I hope, the last word
            about Fraktur has not been spoken.
            """

        blockquoteParagraph =
            """
            The punches of Claude Garamond, cut around 1530 in Paris, are
            simply unsurpassed in their clarity, readability and beauty.
            """

        paragraph2 =
            """
            Apart from that, the roman minuscule has been our way of writing
            for hundreds of years. What followed were merely fashionable
            variations, here and there even deformations, of the noble basic
            form, but no improvement whatever. The punches of Claude Garamond,
            cut around 1530 in Paris, are simply unsurpassed in their clarity,
            readability and beauty. Garamond appeared on the scene at a time
            when the occidental book, as an object, cast off its medieval
            ponderousness and took up the form which today is still the best:
            the slender and upright rectangular body, comprising folded sheets
            stitched or sewn at the back, in a cover whose protruding edges
            protect the trimmed pages.
            """
    in
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ p [ class Styles.paragraph ]
                [ text paragraph1 ]
            , blockquote [ class Styles.blockquote ]
                [ p [ class Styles.blockquoteParagraph ]
                    [ text blockquoteParagraph ]
                ]
            , p [ class Styles.paragraph ]
                [ text paragraph2 ]
            ]
        ]
