# ANDROID DOCKERFILE
FROM afriandi/gitlab-ci-android

ENV ANDROID_NDK_TOOLS "21.0.6113669"
ENV CMAKE "3.10.2.4988404"
ENV PATH "$PATH:${ANDROID_HOME}/cmake:${ANDROID_HOME}/ndk"

RUN echo y | ${ANDROID_HOME}/bin/sdkmanager --sdk_root=${ANDROID_HOME} "ndk;${ANDROID_NDK_TOOLS}"
RUN echo y | ${ANDROID_HOME}/bin/sdkmanager --sdk_root=${ANDROID_HOME} "cmake;${CMAKE}"
RUN echo y | ${ANDROID_HOME}/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses
