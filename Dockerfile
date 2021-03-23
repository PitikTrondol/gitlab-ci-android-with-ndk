FROM afriandi/gitlab-ci-android

ENV ANDROID_NDK_VERSION "21.0.6113669"
ENV CMAKE_VERSION "3.10.2.4988404"
ENV PATH "$PATH:${ANDROID_SDK_ROOT}/ndk/${ANDROID_NDK_VERSION}:${ANDROID_SDK_ROOT}/cmake/${CMAKE_VERSION}}:${ANDROID_SDK_ROOT}/platform-tools"

RUN echo ${PATH}
RUN echo y | sdkmanager --install "ndk;${ANDROID_NDK_VERSION}"
RUN echo y | sdkmanager --install "cmake;${CMAKE_VERSION}"

