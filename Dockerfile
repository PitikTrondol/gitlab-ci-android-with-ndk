FROM afriandi/gitlab-ci-android

ENV ANDROID_NDK_VERSION "21.0.6113669"
ENV CMAKE_VERSION "3.10.2.4988404"
ENV ANDROID_NDK_HOME "${ANDROID_HOME}/ndk"
ENV PATH="$PATH:${ANDROID_NDK_HOME}:${ANDROID_HOME}/cmake/${CMAKE_VERSION}/bin"

RUN echo yes | sdkmanager --licenses
RUN sdkmanager "ndk;${ANDROID_NDK_VERSION}"
RUN sdkmanager "cmake;${CMAKE_VERSION}"
