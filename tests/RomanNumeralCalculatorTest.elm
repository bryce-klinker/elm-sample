module RomanNumeralCalculatorTest exposing (..)
import RomanNumeralCalculator exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Roman Numeral Calculator"
        [
            test "I plus I should be II" <|
               \_ -> addRomanNumerals "I" "I" |> Expect.equal "II"

            , test "II plus I should be III" <|
                \_ -> addRomanNumerals "II" "I" |> Expect.equal "III"

            , test "III plus I should be IV" <|
                \_ -> addRomanNumerals "III" "I" |> Expect.equal "IV"
        ]

