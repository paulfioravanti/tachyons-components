module Collection.Movies.Movie exposing (Movie, list)


type alias Movie =
    { imageUrl : String
    , iTunesUrl : String
    , label : String
    }


list : List Movie
list =
    [ primer
    , theBigShort
    , bottleRocket
    , exMachina
    , district9
    , watchmen
    , sunshine
    , madMaxFuryRoad
    , drive
    , killBillVol1
    , killBillVol2
    , fromDuskTillDawn
    , jurassicPark
    , thePlaceBeyondThePines
    , childrenOfMen
    , prometheus
    , inglouriousBasterds
    , moon
    , lockStock
    , interstellar
    , twelveMonkeys
    , leon
    , theDeparted
    , batmanBegins
    ]


batmanBegins : Movie
batmanBegins =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/batman-begins/"
                ++ "id271469254?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/batman-begins.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Batman Begins movie"
        }


theDeparted : Movie
theDeparted =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/the-departed/"
                ++ "id284563157?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/departed.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "The Departed movie"
        }


leon : Movie
leon =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/the-professional/"
                ++ "id270815716?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/leon.png"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Leon: The Professional movie"
        }


twelveMonkeys : Movie
twelveMonkeys =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/12-monkeys/"
                ++ "id280241027?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/12monkeys.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "12 Monkeys movie"
        }


interstellar : Movie
interstellar =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/interstellar/"
                ++ "id960891136?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/interstellar.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Interstellar movie"
        }


lockStock : Movie
lockStock =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/"
                ++ "lock-stock-two-smoking-barrels/id281827014?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/lockstock.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Lock, Stock & Two Smoking Barrels movie"
        }


moon : Movie
moon =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/moon/"
                ++ "id331842140?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/moon.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Moon movie"
        }


inglouriousBasterds : Movie
inglouriousBasterds =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/inglourious-basterds/"
                ++ "id333325378?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/"
                ++ "inglourious_basterds.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Inglourious Basterds movie"
        }


prometheus : Movie
prometheus =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/prometheus/"
                ++ "id547496947?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/prometheus.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Prometheus movie"
        }


childrenOfMen : Movie
childrenOfMen =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/children-of-men/"
                ++ "id299968409?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/children.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Children of Men movie"
        }


thePlaceBeyondThePines : Movie
thePlaceBeyondThePines =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/the-place-beyond-the-pines/"
                ++ "id641999831?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/"
                ++ "place-beyond-pines.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "The Place Beyond the Pines movie"
        }


jurassicPark : Movie
jurassicPark =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/jurassic-park/"
                ++ "id452283395?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/jurassicpark.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Jurassic Park movie"
        }


fromDuskTillDawn : Movie
fromDuskTillDawn =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/from-dusk-till-dawn/"
                ++ "id461537388?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/dusktilldawn.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "From Dusk Till Dawn movie"
        }


killBillVol2 : Movie
killBillVol2 =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/kill-bill-volume-2/"
                ++ "id432516575?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/kill-bill2.png"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Kill Bill: Volume 2 movie"
        }


killBillVol1 : Movie
killBillVol1 =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/kill-bill-volume-1/"
                ++ "id432516627?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/kill-bill.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Kill Bill: Volume 1 movie"
        }


drive : Movie
drive =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/drive/"
                ++ "id492170756?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/neon-drive.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Drive movie"
        }


madMaxFuryRoad : Movie
madMaxFuryRoad =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/mad-max-fury-road/"
                ++ "id990549112?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/mad-max-2.png"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Mad Max: Fury Road movie"
        }


sunshine : Movie
sunshine =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/sunshine/"
                ++ "id272508664?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/sunshine.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Sunshine movie"
        }


watchmen : Movie
watchmen =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/watchmen-directors-cut/"
                ++ "id321123507?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/watchmen.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Watchmen movie"
        }


district9 : Movie
district9 =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/district-9/"
                ++ "id331251689?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/district9.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "District 9 movie"
        }


exMachina : Movie
exMachina =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/ex-machina/"
                ++ "id983488795?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/ex-machina.png"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Ex Machina movie"
        }


bottleRocket : Movie
bottleRocket =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/bottle-rocket/"
                ++ "id315360821?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/bottlerocket.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Bottle Rocket movie"
        }


theBigShort : Movie
theBigShort =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/the-big-short/"
                ++ "id1061320456?at=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/"
                ++ "the-big-short.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "The Big Short movie"
        }


primer : Movie
primer =
    let
        iTunesUrl =
            "https://geo.itunes.apple.com/us/movie/primer/"
                ++ "id536457427?at=1l3vqFJ&ct=1l3vqFJ&mt=6"

        imageUrl =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/primer.jpg"
    in
        { imageUrl = imageUrl
        , iTunesUrl = iTunesUrl
        , label = "Primer movie"
        }
