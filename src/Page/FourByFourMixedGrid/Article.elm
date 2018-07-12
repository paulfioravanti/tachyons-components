module Page.FourByFourMixedGrid.Article exposing (Article, example)


type alias Article =
    { heading : String
    , paragraphs : List String
    }


example : Article
example =
    let
        heading =
            """
            Beginners and amateurs alike overestimate the importance of the
            so-called brain wave, the sudden brilliant idea.
            """

        p1 =
            """
            Perfect typography depends on perfect harmony between all of its
            elements. Harmony is determined by relationships or proportions.
            Proportions are hidden everywhere. words themselves.
            """

        p2 =
            """
            True book design, therefore, is a matter of tact (tempo, rhythm,
            touch) alone. It flows from something rarely appreciated today:
            good taste. The book designer strives for perfection; yet every
            perfect thing lives somewhere in the neighborhood of dullness and
            is frequently mistaken for it by the insensitive. In a time that
            hungers for tangible novelties, dull perfection holds no
            advertising value at all.
            """

        p3 =
            """
            In a masterpiece of typography, the artist's signature has been
            eliminated. What some may praise as personal styles are in reality
            small and empty peculiarities, frequently damaging, that masquerade
            as innovations.
            """

        p4 =
            """
            Only through constant practice and strictest self-criticism may we
            develop a sense for a perfect piece of work. Unfortunately, most
            seem content with a middling performance. Careful spacing of words
            and the correct spacing of capital letters appear to be unknown or
            unimportant to some typesetters, yet for him who investigates, the
            correct rules are not difficult to discover.
            """
    in
        { heading = heading
        , paragraphs = [ p1, p2, p3, p4 ]
        }
