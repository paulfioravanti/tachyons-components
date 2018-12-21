module Collection.SquareTitleSubtitle.Styles exposing
    ( article
    , image
    , imageWrapper
    , link
    , section
    , subtitle
    , title
    )


article : String
article =
    """
    fl
    pa2-ns
    w-100 w-50-m w-25-ns
    """


image : String
image =
    """
    aspect-ratio--object
    bg-center
    cover
    db
    """


imageWrapper : String
imageWrapper =
    """
    aspect-ratio
    aspect-ratio--1x1
    """


link : String
link =
    """
    db
    link
    pb3
    ph2 ph0-ns
    """


section : String
section =
    """
    cf
    pa2-ns
    w-100
    """


title : String
title =
    """
    black-90
    f5 f4-ns
    mb0
    """


subtitle : String
subtitle =
    """
    black-60
    f5 f6-ns
    fw4
    mt2
    """
