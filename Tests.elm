module Tests where

import Game exposing (..)
import ElmTest exposing (..)

import String


all : Test
all =
    suite "Tic-tac-toe"
        [
            test "Starts with empty board" (assertEqual [] (board)),
            test "Adding move to board" (assertEqual ["a3"] (place board "a3")),
            test "Can't add existing move to board" (assertEqual ["a3"] (place (place board "a3") "a3")),
            test "Game is not over after 1 move" (assertEqual False (isOver (place board "a3"))),
            test "Game is over after three good horizontal things" (assert (isOver (place (place (place board "a3") "a2") "a1"))),
            test "Game is NOT over after three bad things" (assertEqual False (isOver (place (place (place board "a3") "b2") "a1")))
        ]
