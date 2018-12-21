module Collection.Vinyl.Styles exposing
    ( article
    , bigImageWrapper
    , image
    , imageWrapper
    , link
    , section
    , smallImageWrapper
    , subtitle
    , title
    )


article : String
article =
    """
    cf
    """


bigImageWrapper : String
bigImageWrapper =
    """
    fl
    w-50
    """


image : String
image =
    """
    aspect-ratio--object
    bg-center
    cover
    """


imageWrapper : String
imageWrapper =
    """
    fl
    w-50 w-25-ns
    """


link : String
link =
    """
    aspect-ratio
    aspect-ratio--1x1
    db
    dim
    """


section : String
section =
    """
    cf
    pa2-ns
    w-100
    """


smallImageWrapper : String
smallImageWrapper =
    """
    fl
    w-50
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
