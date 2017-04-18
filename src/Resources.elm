module Resources exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Resource =
    { url : String, dsc : String }


resources : List Resource
resources =
    [ { url = "https://dennisreimann.de/articles/elm-data-structures-record-tuple.html"
      , dsc = "Elm Data Structures (2) - Records and Tuples"
      }
    , { url = "https://stackoverflow.com"
      , dsc = "Another real gem."
      }
    , { url = "https://dennisreimann.de/articles/elm.html"
      , dsc = "Elm Articles by Dennis Reimann. λλλλ"
      }
    ]


resourceList : List Resource -> Html msg
resourceList resources =
    resources
        |> List.map (\l -> li [] [ a [ href l.url ] [ text l.url ], text (" - " ++ l.dsc) ])
        |> ul []
