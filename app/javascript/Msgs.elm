module Msgs exposing (..)

import Models exposing (Recipe)
import RemoteData exposing (WebData)

type Msg
    = OnFetchRecipes (WebData (List Recipe))
    -- | Mdl (Material.Msg Msg)
