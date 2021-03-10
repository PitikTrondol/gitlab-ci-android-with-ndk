FROM afriandi/gitlab-ci-android

ENV ANDROID_NDK_VERSION "21.0.6113669"
ENV CMAKE_VERSION "3.10.2.4988404"

RUN echo ${PATH}
RUN echo y | sdkmanager --install "ndk;${ANDROID_NDK_VERSION}"
RUN echo y | sdkmanager --install "cmake;${CMAKE_VERSION}"

