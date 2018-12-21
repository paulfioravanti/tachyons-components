module Article.LeftTitleTopBorder.Article exposing (Article, example)


type alias Article =
    { heading : String
    , subHeading : String
    , date : String
    , paragraph1 : String
    , paragraph2 : String
    }


example : Article
example =
    let
        paragraph1 =
            """
            TYPOGRAPHY, even when poorly executed, can never be taken for
            granted; nor is it ever accidental. Indeed, beauti- fully typeset
            pages are always the result of long experience. Now and then they
            even attain the rank of great artistic achievement. But the art of
            typesetting stands apart from ex- pressive artwork, because the
            appeal is not limited to a small circle. It is open to everyone's
            critical judgment, and nowhere does this judgment carry more weight.
            Typography that can- not be read by everybody is useless. Even for
            someone who constantly ponders matters of readability and
            legibility, it is difficult to determine whether something can be
            read with ease, but the average reader will rebel at once when the
            type is too small or otherwise irritates the eye; both are signs of
            a certain illegibility already.
            """

        paragraph2 =
            """
            All typography consists of letters. These appear either in the form
            of a smoothly running sentence or as an assembly of lines, which may
            even have contrasting shapes. Good typog- raphy begins, and this is
            no minor matter, with the typeset- ting of a single line of text in
            a book or a newspaper. Using exactly the same typeface, it is
            possible to create either a pleasant line, easily read, or an
            onerous one. Spacing, if it is too wide or too compressed, will
            spoil almost any typeface.
            """
    in
    { heading = "On Typography"
    , subHeading = "An excerpt from the Form of the Book by Jan Tschichold"
    , date = "Sometime before 1967"
    , paragraph1 = paragraph1
    , paragraph2 = paragraph2
    }
