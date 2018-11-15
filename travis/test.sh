#! /bin/sh

projectPath=$(pwd)/$1
logFile=$(pwd)/$1_test.log
testResults=$(pwd)/$1_test_result.log

ERROR_CODE=0

echo "running test for"

UnityPath="/Applications/Unity/Unity.app/Contents/MacOS/Unity"

$UnityPath -batchmode -silent-crashes \
-logFile $logFile \
-projectPath "$projectPath" \
-runTests -testPlatform playmode \
-testResults $testResults

# add code to understand what build means ?

echo "Finishing with code $ERROR_CODE"
exit $ERROR_CODE