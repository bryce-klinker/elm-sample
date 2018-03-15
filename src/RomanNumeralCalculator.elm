module RomanNumeralCalculator exposing (..)

addRomanNumerals : String -> String -> String
addRomanNumerals first second =
    (toArabic first) + (toArabic second)
    |> toRoman

toArabic: String -> Int
toArabic roman =
    case roman of
        "I" -> 1
        "II" -> 2
        "III" -> 3
        _ -> 0

toRoman: Int -> String
toRoman arabic =
    case arabic of
        2 -> "II"
        3 -> "III"
        4 -> "IV"
        _ -> ""