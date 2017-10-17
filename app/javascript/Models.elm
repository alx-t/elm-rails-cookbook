module Models exposing (..)

type alias RecipeId =
    Int

type alias Recipe =
    { id : RecipeId
    , title : String
    , description : String
    }

type alias Model =
    { recipes : List Recipe
    }

initialModel : Model
initialModel =
    { recipes = [ Recipe 1 "Test 1" "Test 1 desc" ]}
