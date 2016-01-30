module Game where

import Set exposing (..)

board : List String
board =
  []

place board coords =
  if List.member coords board then board else coords :: board

isOver board =
  List.length board > 2
