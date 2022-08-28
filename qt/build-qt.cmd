..\configure.bat -prefix %CD%\output -debug-and-release -opensource -opengl desktop -mp -ltcg ^
        -nomake examples -nomake tests ^
        -skip qt3d -skip qtactiveqt -skip qtandroidextras -skip qtcharts -skip qtconnectivity -skip qtdatavis3d ^
        -skip qtdoc -skip qtgamepad -skip qtgraphicaleffects -skip qtlocation -skip qtlottie -skip qtmacextras ^
        -skip qtnetworkauth -skip qtpurchasing -skip qtquick3d -skip qtquickcontrols -skip qtquicktimeline ^
        -skip qtremoteobjects -skip qtscript -skip qtscxml -skip qtsensors -skip qtserialbus -skip qtserialport ^
        -skip qtspeech -skip qtsvg -skip qtwayland -skip qtwebchannel -skip qtwebengine -skip qtwebsockets -skip qtwebview ^
        -skip qtx11extras -skip qtxmlpatterns -skip qtvirtualkeyboard -skip qttools -skip qtquickcontrols2 -skip qtdeclarative ^
        -skip qtnetworkauth -skip qtwinextras -skip qtimageformats

nmake
nmake install

cd output
del *.pdb /a /s
del *.pdb /a /s
rmdir /s /q doc
