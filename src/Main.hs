module Main where

import Frame
import qualified Data.ByteString.Lazy as BL
import Data.Binary.Get


main :: IO ()
main = do
  input <- BL.getContents
  print $ runGet Frame.deserialiseFrame input
