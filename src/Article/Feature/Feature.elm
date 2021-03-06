module Article.Feature.Feature exposing (Feature, example)


type alias Feature =
    { backgroundImageUrl : String
    , issue : String
    , edition : String
    , title : String
    , slogan : String
    , author : String
    , headline : String
    , paragraph1 : String
    , paragraph2 : String
    , paragraph3 : String
    , paragraph4 : String
    , paragraph5 : String
    }


example : Feature
example =
    let
        paragraph1 =
            """
            The choice of paper size is one of the  first of any given work to
            be printed. There are two basic paper size systems in the world: the
            international A sizes, and the American sizes.
            """

        paragraph2 =
            """
            The international Standard paper sizes, called the A series, is
            based on a golden rectangle, the divine proportion. It is extremely
            handsome and practical as well. It is adopted by many countries
            around the world and is based on the German DIN metric Standards.
            The United States uses a basic letter size (8 1/2 x 11") of ugly
            proportions, and results in complete chaos with an endless amount
            of paper sizes. It is a by-product of the culture of free
            enterprise, competition and waste. Just another example of the
            misinterpretations of freedom.
            """

        paragraph3 =
            """
            These are the basic DIN sizes in mm. for : A0, 841x1189 - A1,
            594x841 - A2, 420x594 - A3, 297x420 - A4, 210x297 - A5,
            148x210 - A6, 105 x148 - A7, 74x 105 - A8, 52x74 - A9,
            37x52 - A10, 26x37.
            """

        paragraph4 =
            """
            The A4 is the basic size for stationary. Two thirds of it is a
            square, a nice economical happenstance resulting from the golden
            rectangle. It is one of the reasons we tend to use as much as
            possible the DIN sizes: proportions are always leading to other
            nice proportions.
            """

        paragraph5 =
            """
            This does not happen with the American basic size which leads to
            nothing. I counted 28 different standard sizes in USA!. The only
            reason we use it is because everybody in USA uses it, all
            stationary in USA is that size, so are manilla folders, les and
            of ce equipment! The repercussion of ugliness is endless.
            """
    in
    { backgroundImageUrl = "https://mrmrs.github.io/photos/u/009.jpg"
    , issue = "Issue Six"
    , edition = "Summer MMXVI"
    , title = "The Chronicles"
    , slogan =
        "It's the space you put between the notes that make the music."
    , author = "Massimo Vignelli"
    , headline = "The repercussion of ugliness is endless"
    , paragraph1 = paragraph1
    , paragraph2 = paragraph2
    , paragraph3 = paragraph3
    , paragraph4 = paragraph4
    , paragraph5 = paragraph5
    }
