module Main exposing (..)

import Html exposing (..)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid

main =
    Grid.container []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row []
            [ Grid.col []
                [ text "Some content for my view here... 1-1"]
            , Grid.col []
                [ text "Some content for my view here... 1-2"]
            ]
        , Grid.row []
            [ Grid.col []
                [ text "Some content for my view here... 2-1"]
            , Grid.col []
                [ text "Some content for my view here... 2-2"]
            ]
        ]

-- import Html exposing (program)
-- import Msgs exposing (Msg)
-- import Models exposing (Model, initialModel)
-- import Update exposing (update)
-- import View exposing (view)
-- import Commands exposing (fetchRecipes)

-- init : ( Model, Cmd Msg )
-- init =
--     ( initialModel, fetchRecipes )
--
-- subscriptions : Model -> Sub Msg
-- subscriptions model =
--     Sub.none
--
-- -- MAIN
--
-- main : Program Never Model Msg
-- main =
--     program
--         { init = init
--         , view = view
--         , update = update
--         , subscriptions = subscriptions
--         }
