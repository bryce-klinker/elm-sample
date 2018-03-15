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
        ]

