module Article.LeftTitle.Article exposing (Article, example)


type alias Article =
    { heading : String
    , author : String
    , paragraph1 : String
    , paragraph2 : String
    }


example : Article
example =
    let
        paragraph1 =
            """
            PERFECT typography is more a science than an art. Mastery of the
            trade is indispensable, but it isn't everything. Unerring taste,
            the hallmark of perfection, rests also upon a clear understanding
            of the laws of harmonious design. As a rule, impeccable taste
            springs partly from inborn sensitivity: from feeling. But feelings
            remain rather unproductive unless they can inspire a secure
            judgment. Feelings have to mature into knowledge about the
            consequences of formal decisions. For this reason, there are no
            born masters of typography, but self- education may lead in time
            to mastery.
            """

        paragraph2 =
            """
            It is wrong to say that there is no arguing about taste when it is
            good taste that is in question. We are not born with good taste,
            nor do we come into this world equipped with a real understanding
            of art. Merely to recognize who or what is represented in a picture
            has little to do with a real under- standing of art. Neither has
            an uninformed opinion about the proportions of Roman letters. In
            any case, arguing is senseless. He who wants to convince has to do
            a better job than others.
            """
    in
    { heading = "Clay in a Potter's Hand"
    , author = "Jan Tschichold"
    , paragraph1 = paragraph1
    , paragraph2 = paragraph2
    }
