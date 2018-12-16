module Frame where

import Data.Binary.Get
import Data.Word

deserialiseFrame :: Get (Word32, Word32, Word32, Word32)
deserialiseFrame = do
  ident <- getWord32be
  flag <- getWord32be
  offset <- getWord32be
  len <- getWord32be
  return (ident, flag, offset, len)
