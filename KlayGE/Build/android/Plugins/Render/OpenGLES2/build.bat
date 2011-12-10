REM Workaround for NDK r7
mkdir obj
mkdir obj\local
mkdir obj\local\armeabi
mkdir obj\local\armeabi-v7a
mkdir obj\local\x86
copy "%ANDROID_NDK%\sources\cxx-stl\gnu-libstdc++\libs\armeabi\libgnustl_static.a" obj\local\armeabi\
copy "%ANDROID_NDK%\sources\cxx-stl\gnu-libstdc++\libs\armeabi-v7a\libgnustl_static.a" obj\local\armeabi-v7a\
copy "%ANDROID_NDK%\sources\cxx-stl\gnu-libstdc++\libs\x86\libgnustl_static.a" obj\local\x86\

%ANDROID_NDK%\ndk-build

copy /Y libs\armeabi\libKlayGE_RenderEngine_OpenGLES2_gcc.so ..\..\..\..\..\bin\android_armeabi\Render\
copy /Y libs\armeabi-v7a\libKlayGE_RenderEngine_OpenGLES2_gcc.so ..\..\..\..\..\bin\android_armeabi-v7a\Render\
copy /Y libs\x86\libKlayGE_RenderEngine_OpenGLES2_gcc.so ..\..\..\..\..\bin\android_x86\Render\