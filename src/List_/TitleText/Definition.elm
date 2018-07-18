module List_.TitleText.Definition exposing (Definition, list)


type alias Definition =
    { term : String
    , meaning : String
    }


list : List Definition
list =
    [ alignment
    , ascender
    , baseline
    , bodyText
    , boldface
    , bullet
    , capHeight
    , centered
    ]


alignment : Definition
alignment =
    let
        meaning =
            """
            The positioning of text within the page margins. Alignment can be
            flush left, flush right, justified, or centered. Flush left and
            flush right are sometimes referred to as left justified and right
            justified.
            """
    in
        { term = "alignment"
        , meaning = meaning
        }


ascender : Definition
ascender =
    let
        meaning =
            """
            The part of lowercase letters (such as k, b, and d) that ascends
            above the x-height of the other lowercase letters in a face.
            """
    in
        { term = "ascender"
        , meaning = meaning
        }


baseline : Definition
baseline =
    let
        meaning =
            """
            The imaginary line on which the majority of the characters in
            a typeface rest.
            """
    in
        { term = "baseline"
        , meaning = meaning
        }


bodyText : Definition
bodyText =
    let
        meaning =
            """
            The paragraphs in a document that make up the bulk of its content.
            The body text should be set in an appropriate and easy-to-read face,
            typically at 10- or 12-point size.
            """
    in
        { term = "body text"
        , meaning = meaning
        }


boldface : Definition
boldface =
    let
        meaning =
            """
            A typeface that has been enhanced by rendering it in darker,
            thicker strokes so that it will stand out on the page. Headlines
            that need emphasis should be boldface. Italics are preferable for
            emphasis in body text.
            """
    in
        { term = "boldface"
        , meaning = meaning
        }


bullet : Definition
bullet =
    let
        meaning =
            """
            A dot or other special character placed at the left of items in a
            list to show that they are individual, but related, points.
            """
    in
        { term = "bullet"
        , meaning = meaning
        }


capHeight : Definition
capHeight =
    let
        meaning =
            """
            The height from the baseline to the top of the uppercase letters
            in a font. This may or may not be the same as the height of
            ascenders. Cap height is used in some systems to measure the
            type size.
            """
    in
        { term = "cap height"
        , meaning = meaning
        }


centered : Definition
centered =
    let
        meaning =
            """
            Text placed at an equal distance from the left and right margins.
            Headlines are often centered. It is generally not good to mix
            centered text with flush left or flush right text.
            """
    in
        { term = "centered"
        , meaning = meaning
        }
