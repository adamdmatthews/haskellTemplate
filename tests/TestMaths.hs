module TestMaths where
import           Maths
import           System.Exit
import           Test.HUnit

-- this test should pass
factorialTest1 :: Test
factorialTest1 = TestCase (assertEqual "for (factorial 5)," (factorial 5) 120)

-- this test should fail
factorialTest2 :: Test
factorialTest2 = TestCase (assertEqual "for (factorial 5)," (factorial 5) 121)

tests = TestList [factorialTest1, factorialTest2]

runTestMaths = do
  results <- runTestTT tests
  if errors results + failures results == 0
  then
    exitSuccess
  else
    exitFailure
