import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import RomanNumeralCalculator exposing (AddRomanNumerals)

main = Html.beginnerProgram { model = 0, view = view, update = update }

type Msg = Increment | Decrement

update msg model =
    case msg of
        Increment -> model + 1
        Decrement -> model - 1

view model =
    div []
        [
            button [ onClick Decrement ] [ text "-" ],
            div [] [ text (toString model) ],
            button [ onClick Increment ] [ text "+" ]
        ]
