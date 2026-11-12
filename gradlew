#!/bin/sh
if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    exec java -classpath gradle/wrapper/gradle-wrapper.jar org.gradle.wrapper.GradleWrapperMain "$@"
else
    echo "Gradle wrapper jar not found"
    exit 1
fi
