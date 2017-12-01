module Update exposing (..)

import Msgs exposing (Msg)
import Models exposing (Model)

-- type alias Mdl =
--     Material.Model

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.OnFetchRecipes response ->
            ( { model | recipes = response }, Cmd.none )
        -- Msgs.Mdl msg_ ->
        --     Material.update Msgs.Mdl msg_ model
