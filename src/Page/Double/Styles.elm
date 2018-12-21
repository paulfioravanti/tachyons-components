module Page.Double.Styles exposing
    ( articlePhotos
    , clearfix
    , copy
    , copyWrapper
    , image
    , image6
    , image9
    , inset
    , insetContentWrapper
    , insetDescription
    , insetHeading
    , insetParagraph
    , insetQuote
    , insetQuoteHeading
    , leadingSentence
    , main_
    , photo1
    , photo2
    , photo3
    , photo4
    , photo5
    , photo6
    , photo7
    , photo8
    , photo9
    )


articlePhotos : String
articlePhotos =
    """
    fl
    mv0
    pv0
    w-100 w-75-l
    """


clearfix : String
clearfix =
    "cf"


copy : String
copy =
    """
    center
    f6
    lh-copy
    mb3 mb4-l
    measure
    mt0
    pt3 pt0-l
    """


copyWrapper : String
copyWrapper =
    """
    fl
    pr3-l
    w-100 w-25-l
    """


main_ : String
main_ =
    """
    bg-white
    center
    cf
    dark-gray
    helvetica
    mw9
    pa3 pa4-m pa5-l
    w-100
    """


image : String -> String
image positioning =
    """
    cover
    pv5 pv6-m pv7-l
    """
        ++ ("bg-" ++ positioning)


image6 : String
image6 =
    """
    bg-center
    cover
    pv5 pv6-l
    """


image9 : String
image9 =
    """
    cover
    pv5 pv6-ns
    """


inset : String
inset =
    """
    fl
    mb4 mb0-l
    outline
    pl2-ns
    pr2-l
    w-100 w-50-l
    """


insetContentWrapper : String
insetContentWrapper =
    "pa4"


insetDescription : String
insetDescription =
    """
    db-l
    measure-wide
    """


insetHeading : String
insetHeading =
    """
    bb--black
    bb-l
    f4 f2-l
    fw7
    mt0
    pv3-l
    """


insetParagraph : String
insetParagraph =
    """
    f6
    lh-copy
    mt2 mt3-m mt5-l
    """


insetQuote : String
insetQuote =
    """
    db
    f6 f1-l
    fw9
    lh-title
    mb3 mb4-l
    """


insetQuoteHeading : String
insetQuoteHeading =
    """
    db-ns
    f6
    fw7
    lh-solid
    mb3 mb0-m mb4-l
    """


leadingSentence : String
leadingSentence =
    "fw6"


photo1 : String
photo1 =
    """
    fl
    mb3 mb4-l
    pr2 pr3-l
    w-50
    """


photo2 : String
photo2 =
    """
    fl
    pl2
    pr2-m
    ph2-l
    mb3 mb4-l
    w-50 w-25-l
    """


photo3 : String
photo3 =
    """
    fl
    mb3 mb4-l
    pl3-l
    pr2 pr0-l
    w-50 w-25-l
    """


photo4 : String
photo4 =
    """
    fl
    mb3 mb4-l
    pl2 pl0-l
    pr2-m pr4-l
    w-50 w-25-l
    """


photo5 : String
photo5 =
    """
    fl
    mb3 mb4-l
    pl3-l
    w-100 w-25-l
    """


photo6 : String
photo6 =
    """
    fl
    mb2 mb4-l
    w-100
    """


photo7 : String
photo7 =
    """
    fl
    mb2 mb4-l
    w-25
    """


photo8 : String
photo8 =
    """
    fl
    mb2 mb4-l
    pl2 pl4-l
    w-75
    """


photo9 : String
photo9 =
    """
    fl
    mb2 mb4-l
    w-100
    """
