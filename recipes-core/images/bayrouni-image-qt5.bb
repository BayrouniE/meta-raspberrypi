include recipes-core/images/core-image-base.bb

IMAGE_INSTALL:append = " \ 
		qtbase \
        	qt5-demo-extrafiles \
		cinematicexperience \
		openssh \
		kmscube \
		vim \
		unzip \
		sudo \
		git \
		dpkg  \
		apt \
		evtest \
		udev-extraconf \
		tcpdump \
		memtester \
		valgrind \
		binutils \
		ltrace \
		gdb \
		v4l-utils \ 
		qtwayland \
		wayland \
		weston \
		rsync gdbserver \
		gstreamer1.0-plugins-good \
		gstreamer1.0-plugins-bad \
		gstreamer1.0-rtsp-server \
		gstreamer1.0-libav \
		gstreamer1.0-plugins-ugly \
		ffmpeg \
		qtwebview \
		qtmultimedia \
		qtmultimedia-plugins \
		qtmultimedia-qmlplugins \
		qtwebengine-mkspecs \
		qtwebengine-dev \
		qtcharts \
		qtcharts-mkspecs \
		qtcharts-dev \
		"
