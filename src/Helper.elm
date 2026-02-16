module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op =
    op x y


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List Language
languages =
    [ { name = "elm", releaseYear = 2002, currentVersion = "1.9.5" }
    , { name = "javascript", releaseYear = 2004, currentVersion = "Python 2025" }
    ]


languageNames : List Language -> List String
languageNames list =
    List.map .name list


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Estudiante" }
    , { name = "Mitsiu", uType = "Profesor" }
    ]


onlyStudents : List User -> List String
onlyStudents e =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        e


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 5000000
      , genres = [ "Acción", "Disparos" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = True
      , downloads = 8000000
      , genres = [ "Acción", "Aventura" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres g =
    List.map .genres g


type alias Computadora =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computadora
myLaptop =
    { ram = "16GB"
    , model = "XPS 13"
    , brand = "Dell"
    , screenSize = "13.4"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
