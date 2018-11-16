#! /bin/sh -xe

projectPath=$(pwd)/$1
logFile=$(pwd)/$1_test.log
testResults=$(pwd)/$1_test_result.xml

UnityPath="/Applications/Unity/Unity.app/Contents/MacOS/Unity"

$UnityPath -batchmode -nographics -silent-crashes \
-logFile $logFile \
-projectPath "$projectPath" \
-runTests -testPlatform playmode \
-testResults $testResults

node travis/verifyResult.js $testResults