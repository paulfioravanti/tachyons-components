module Layout.FullBleedSquare.Styles exposing
    ( aspectRatio
    , formatting
    , image
    , main_
    )


aspectRatio : String
aspectRatio =
    """
    aspect-ratio
    aspect-ratio--1x1
    """


formatting : String
formatting =
    """
    fl
    w-50 w-third-m w-25-ns
    """


image : String
image =
    """
    aspect-ratio--object
    bg-center
    cover
    """


main_ : String
main_ =
    """
    cf
    w-100
    """
