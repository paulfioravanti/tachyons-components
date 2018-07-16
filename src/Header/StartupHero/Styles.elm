module Header.StartupHero.Styles
    exposing
        ( aboutLink
        , backgroundImage
        , careersLink
        , content
        , header
        , heading
        , hero
        , howItWorksLink
        , logo
        , logoLink
        , nav
        , navLinks
        , pricingLink
        , primaryCta
        , secondaryCta
        , signUpLink
        , span
        , subheading
        , svg
        )


aboutLink : String
aboutLink =
    """
    dib-l
    dn
    """
        ++ navLink


backgroundImage : String
backgroundImage =
    """
    bg-center-l
    bg-left
    cover
    """


careersLink : String
careersLink =
    """
    dib-l
    dn
    """
        ++ navLink


content : String
content =
    """
    bg-black-80
    pb5 pb6-m pb7-l
    """


header : String
header =
    "sans-serif"


heading : String
heading =
    """
    f2 f1-l
    fw2
    lh-title
    mb0
    white-90
    """


hero : String
hero =
    """
    mt4 mt5-m mt6-l
    ph3
    tc-l
    """


howItWorksLink : String
howItWorksLink =
    """
    dib-ns
    dn
    """
        ++ navLink


logo : String
logo =
    """
    dtc
    pa3
    v-mid
    w2
    """


logoLink : String
logoLink =
    """
    b--white-90
    ba
    border-box
    dib
    grow-large
    h2
    pa1
    w2
    """


nav : String
nav =
    """
    center
    dt
    mw8
    w-100
    """


navLinks : String
navLinks =
    """
    dtc
    pa3
    tr
    v-mid
    """


pricingLink : String
pricingLink =
    """
    dib-ns
    dn
    """
        ++ navLink


primaryCta : String
primaryCta =
    """
    b--blue
    ba
    bg-blue
    dib
    f6
    grow
    mb3
    no-underline
    ph3
    pv2
    v-mid
    white
    """


secondaryCta : String
secondaryCta =
    """
    b--white
    ba
    dib
    f6
    grow
    mb3
    no-underline
    ph3
    pv2
    v-mid
    white
    """


signUpLink : String
signUpLink =
    """
    ba
    dib
    ml2
    """
        ++ navLink


span : String
span =
    """
    dib
    mb3
    ph3
    v-mid
    white-70
    """


subheading : String
subheading =
    """
    f3
    fw1
    mb4
    mt3
    white-80
    """


svg : String
svg =
    """
    hover-white
    link
    white-90
    """


navLink : String
navLink =
    """
    f6
    fw4
    hover-white
    no-underline
    ph3
    pv2
    white-70
    """
