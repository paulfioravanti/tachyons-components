module Page.PortfolioProject.Styles exposing
    ( article
    , blockquote
    , blockquoteImage
    , copy
    , description
    , header
    , headerImage
    , headerImage1
    , headerImage2
    , headerImage3
    , headerImages
    , image1
    , otherProjects
    , otherProjectsFirstRowImage
    , otherProjectsFirstRowImageWrapper
    , otherProjectsHeading
    , otherProjectsLastRowImage
    , otherProjectsLastRowImageWrapper
    , otherProjectsMiddleRowImage
    , otherProjectsMiddleRowImageWrapper
    , projectContent
    , projectPart1
    , projectPart2
    , quote
    , quoteAttribution
    , subtitle
    , title
    , video
    , videoEmbed
    )


article : String
article =
    "bg-white"


blockquote : String
blockquote =
    """
    mh0
    pr0
    mt5
    """


blockquoteImage : String
blockquoteImage =
    """
    db
    w-100
    """


copy : String
copy =
    """
    baskerville
    black-70
    f4 f3-ns
    lh-copy
    measure
    """


description : String
description =
    """
    baskerville
    black-70
    db
    f4 f3-m f2-l
    fw1
    lh-copy
    measure
    mv0
    serif
    """


header : String
header =
    """
    center
    f4 f2-ns
    measure
    pv5
    """


headerImage : String
headerImage =
    """
    bg-center
    cover
    pv6
    """


headerImage1 : String
headerImage1 =
    """
    fl
    pr2 pr2-l
    w-33 w-50-m w-33-l
    """


headerImage2 : String
headerImage2 =
    """
    fl
    ph3
    pr0-m ph3-l
    w-33 w-50-m w-33-l
    """


headerImage3 : String
headerImage3 =
    """
    fl
    mt4-m
    pl2 pl0-m pl2-l
    w-33 w-50-m w-33-l
    """


headerImages : String
headerImages =
    """
    center
    cf
    mw8
    """


image1 : String
image1 =
    """
    bg-center
    cover
    vh-75
    """


otherProjects : String
otherProjects =
    """
    b--black-05
    bt
    cf
    mt5
    ph6-l
    pv5
    """


otherProjectsHeading : String
otherProjectsHeading =
    """
    avenir
    f5
    fw6
    mb4
    tc
    tracked
    ttu
    """


otherProjectsFirstRowImage : String -> String
otherProjectsFirstRowImage positioning =
    """
    grow
    cover
    pv5 pv6-l
    """
        ++ ("bg-" ++ positioning)


otherProjectsFirstRowImageWrapper : String
otherProjectsFirstRowImageWrapper =
    """
    ba
    border-box
    bw2
    fl
    overflow-hidden
    w-third w-25-ns
    white
    """


otherProjectsLastRowImage : String
otherProjectsLastRowImage =
    """
    bg-center
    cover
    grow
    pv5 pv7-l
    """


otherProjectsLastRowImageWrapper : String
otherProjectsLastRowImageWrapper =
    """
    ba
    border-box
    bw2
    fl
    overflow-hidden
    w-50
    white
    """


otherProjectsMiddleRowImage : String
otherProjectsMiddleRowImage =
    otherProjectsFirstRowImage "top"


otherProjectsMiddleRowImageWrapper : String
otherProjectsMiddleRowImageWrapper =
    """
    ba
    border-box
    bw2
    fl
    overflow-hidden
    w-100 w-25-ns
    white
    """


projectContent : String
projectContent =
    "ph4 ph5-m ph6-l"


projectPart1 : String
projectPart1 =
    """
    black-70
    center
    f3
    measure
    mv5
    """


projectPart2 : String
projectPart2 =
    """
    black-70
    center
    f4 f3-ns
    measure
    mv5
    """


quote : String
quote =
    """
    baskerville
    f2 f1-l
    fw1
    lh-title
    mv0
    tc
    """


quoteAttribution : String
quoteAttribution =
    """
    f6
    gray
    tc
    """


subtitle : String
subtitle =
    """
    avenir
    f3
    fw6
    """


title : String
title =
    """
    avenir
    black-70
    f1
    fl
    fw6
    mb3
    mt0
    w-100
    """


video : String
video =
    """
    aspect-ratio
    aspect-ratio--16x9
    mv5
    """


videoEmbed : String
videoEmbed =
    "aspect-ratio--object"
