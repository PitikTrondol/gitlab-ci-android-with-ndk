# ANDROID DOCKERFILE
FROM afriandi/gitlab-ci-android

ENV ANDROID_NDK_TOOLS "21.0.6113669"
ENV CMAKE "3.10.2.4988404"

RUN apt-get -q update
RUN apt-get install -qqy --no-install-recommends g++
RUN echo y | ${ANDROID_HOME}/bin/sdkmanager --sdk_root=${ANDROID_HOME} "ndk;${ANDROID_NDK_TOOLS}"
RUN echo y | ${ANDROID_HOME}/bin/sdkmanager --sdk_root=${ANDROID_HOME} "cmake;${CMAKE}"
RUN export PATH=$PATH:${ANDROID_HOME}/cmake:${ANDROID_HOME}/ndk
