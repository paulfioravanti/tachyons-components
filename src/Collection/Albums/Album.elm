module Collection.Albums.Album exposing (Album, list)


type alias Album =
    { iTunesLink : String
    , imageLink : String
    , imageAltText : String
    , title : String
    , artist : String
    }


list : List Album
list =
    [ album1
    , album2
    , album3
    , album4
    , album5
    , album6
    , album7
    , album8
    , album9
    , album10
    ]


album1 : Album
album1 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/blonde/"
                ++ "id1146195596?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is4.mzstatic.com/image/thumb/Music62/v4/93/8f/75/"
                ++ "938f7536-0188-f9ba-4585-0a77ceaebf0a/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Frank Ocean Blonde Album Cover"
        , title = "Blonde"
        , artist = "Frank Ocean"
        }


album2 : Album
album2 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/jeffery/"
                ++ "id1146718343?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is1.mzstatic.com/image/thumb/Music71/v4/c8/2d/b1/"
                ++ "c82db1cd-9dc5-d7cb-2a34-735cf47bb809/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Young Thug - Jeffery Album Cover"
        , title = "JEFFERY"
        , artist = "Young Thug"
        }


album3 : Album
album3 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/untitled-unmastered./"
                ++ "id1089846273?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is5.mzstatic.com/image/thumb/Music49/v4/1b/36/43/"
                ++ "1b3643c6-e6a3-41bc-7f6d-7c2b64b5d60b/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Kendrick Lamar untitled unmastered. Album Cover"
        , title = "untitled umastered."
        , artist = "Kendrick Lamar"
        }


album4 : Album
album4 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/99.9/"
                ++ "id1092026376?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is4.mzstatic.com/image/thumb/Music49/v4/e9/4c/2d/"
                ++ "e94c2d5f-bdb0-c565-4cc2-f9dfcf7f0b87/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Kaytranada 99%"
        , title = "99%"
        , artist = "Kaytranada"
        }


album5 : Album
album5 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/aa/"
                ++ "id1067924003?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is3.mzstatic.com/image/thumb/Music49/v4/b6/b0/a1/"
                ++ "b6b0a1dd-998d-9786-ca2f-87470be15250/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Baauer Aa - Album Cover"
        , title = "Aa"
        , artist = "Baauer"
        }


album6 : Album
album6 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/99-cents/"
                ++ "id1054734475?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is3.mzstatic.com/image/thumb/Music62/v4/fa/ae/a6/"
                ++ "faaea65f-0819-bb5d-afaa-4f5e84015204/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Santigold 99 cents - Album cover"
        , title = "99 Cents"
        , artist = "Santigold"
        }


album7 : Album
album7 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/a-moon-shaped-pool/"
                ++ "id1111577743?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is2.mzstatic.com/image/thumb/Music18/v4/34/03/34/"
                ++ "34033451-12e2-2d0b-c100-11a390922a01/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "A Moon Shaped Pool - Album cover"
        , title = "A Moon Shaped Pool"
        , artist = "Radiohead"
        }


album8 : Album
album8 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/the-life-of-pablo/"
                ++ "id1123231885?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is3.mzstatic.com/image/thumb/Music20/v4/c0/98/d0/"
                ++ "c098d05b-7bcc-0ea3-0213-0f69992fda65/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "The Life of Pablo - Album Cover"
        , title = "The Life of Pablo"
        , artist = "Kanye West"
        }


album9 : Album
album9 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/coloring-book/"
                ++ "id1113239004?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is2.mzstatic.com/image/thumb/Music18/v4/5a/42/0f/"
                ++ "5a420f73-6490-abc9-bdcc-3001d5c4e9fc/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Coloring Book - Album cover"
        , title = "Coloring Book"
        , artist = "Chance the Rapper"
        }


album10 : Album
album10 =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/everybody-looking/"
                ++ "id1135576036?at=1l3vqFJ&mt=1&app=music"

        imageLink =
            "http://is4.mzstatic.com/image/thumb/Music30/v4/9b/2e/e1/"
                ++ "9b2ee13e-35fd-0cc1-d203-e65b4beafc7f/source/400x40000bb.png"
    in
        { iTunesLink = iTunesLink
        , imageLink = imageLink
        , imageAltText = "Everybody Looking - Album Cover"
        , title = "Everybody Looking"
        , artist = "Gucci Mane"
        }
