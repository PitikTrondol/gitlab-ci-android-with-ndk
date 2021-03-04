FROM afriandi/gitlab-ci-android

ENV ANDROID_NDK_VERSION "21.0.6113669"
ENV CMAKE_VERSION "3.10.2.4988404"
ENV PATH=$PATH:${ANDROID_HOME}/cmake/${CMAKE_VERSION}/bin:${ANDROID_HOME}/ndk

RUN apt-get -q update
RUN apt-get install -qqy --no-install-recommends g++
RUN echo y | ${ANDROID_HOME}/bin/sdkmanager --sdk_root=${ANDROID_HOME} "ndk;${ANDROID_NDK_VERSION}"
RUN echo y | ${ANDROID_HOME}/bin/sdkmanager --sdk_root=${ANDROID_HOME} "cmake;${CMAKE_VERSION}"
