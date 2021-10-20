.. _installation_fromSource:

=============
 From source
=============

C++
---

To build and install the C++ version of libOpenCOR, enter the following from a command prompt / terminal:

.. code-block:: bash

    git clone --depth 1 https://github.com/opencor/libopencor.git libOpenCOR
    cd libOpenCOR
    mkdir build
    cd build
    cmake ..
    cmake --build .
    cmake --install .

| **Note #1:** on Windows, ``cmake --build .`` must be replaced with ``cmake --build . --config Release``.
| **Note #2:** this will generate a shared version of libOpenCOR. To generate a static version, ``cmake ..`` must be replaced with ``cmake -DSHARED_LIBS=OFF ..``.

To test the installation, download and unzip `this file <../res/installation/cpptest.zip>`__, and then enter the following from a command prompt / terminal:

.. code-block:: bash

    cd cpptest
    mkdir build
    cd build
    cmake ..
    cmake --build .

| **Note #1:** on Windows, ``cmake ..`` must be replaced with ``cmake -DCMAKE_PREFIX_PATH="C:\\Program Files (x86)\\libOpenCOR\\cmake" ..``.
| **Note #2:** on Windows, ``cmake --build .`` must be replaced with ``cmake --build . --config Release``.

This will result in a file called ``Release\cpptest.exe`` on Windows and ``cpptest`` on Linux and macOS.
To run that file will output:

.. code-block:: bash

    Hello libOpenCOR 0.1.0!

**Note:** on Windows and with a shared version of libOpenCOR, the system ``PATH`` must contain the directory where ``libOpenCOR.dll`` is located, i.e. ``C:\Program Files (x86)\libOpenCOR\bin``.
Alternatively, ``libOpenCOR.dll`` can be copied to the directory where ``cpptest.exe`` is located, i.e. ``build\Release``.
