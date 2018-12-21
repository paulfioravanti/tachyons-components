module Nav.LogoTitlesLinksCentered.Styles exposing
    ( header
    , heading
    , image
    , imageLink
    , navLink
    , navLinks
    , subheading
    )


header : String
header =
    """
    avenir
    bg-white
    black-80
    pv4
    tc
    """


heading : String
heading =
    """
    baskerville
    f1
    fw1
    i
    mb0
    mt2
    """


image : String
image =
    "white"


imageLink : String
imageLink =
    """
    b--black
    ba
    bg-black-80
    br-100
    dib
    h2
    pa2
    w2
    """


navLink : String -> String
navLink colour =
    [ "bg-animate"
    , "black-80"
    , "dib"
    , "f6 f5-l"
    , "hover-bg-" ++ colour
    , "link"
    , "pa3 ph4-l"
    ]
        |> String.join " "


navLinks : String
navLinks =
    """
    bb
    bt
    center
    mt4
    mw7
    tc
    """


subheading : String
subheading =
    """
    f6
    fw4
    mb0
    mt2
    tracked
    ttu
    """
