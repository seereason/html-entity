{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures#-}
module Text.HTMLEntity.Table where
import Data.HashMap.Strict (fromList, HashMap)
import Data.Text (pack, Text)
import Text.HTMLEntity.TH (litFile)
names :: HashMap Text Text
names
  = fromList (read [litFile|names|] :: [(Text, Text)])

{-# NOINLINE names #-}

entitiesMulti :: HashMap Text Text
entitiesMulti
  = fromList (read [litFile|entitiesMulti|] :: [(Text, Text)])

{-# NOINLINE entitiesMulti #-}

entitiesSingle :: HashMap Char Text
entitiesSingle
  = fromList (read [litFile|entitiesSingle|] :: [(Char, Text)])

{-# NOINLINE entitiesSingle #-}
