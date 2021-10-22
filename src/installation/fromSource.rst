.. _installation_fromSource:

==========================
 Installation from source
==========================

C++
---

To build and install the C++ version of libOpenCOR from source, enter the following on the command line:

.. code-block:: bash

    git clone --depth 1 https://github.com/opencor/libopencor.git libOpenCOR
    cd libOpenCOR
    cmake -S . -B build
    cmake --build build
    cmake --install build

| **Note #1:** on Windows, ``cmake --build build`` must be replaced with ``cmake --build build --config Release``.
| **Note #2:** this will generate a shared version of libOpenCOR. To generate a static version, ``cmake -S . -B build`` must be replaced with ``cmake -S . -B build -DSHARED_LIBS=OFF``.

To test the installation, download and unzip `this file <../res/installation/cpptest.zip>`__, and then enter the following on the command line:

.. code-block:: bash

    cd cpptest
    cmake -S . -B build
    cmake --build build

| **Note #1:** on Windows, ``cmake -S . -B build`` must be replaced with ``cmake -S . -B build -DCMAKE_PREFIX_PATH="C:\\Program Files (x86)\\libOpenCOR\\cmake"``.
| **Note #2:** on Windows, ``cmake --build build`` must be replaced with ``cmake --build build --config Release``.

This will result in a file called ``build\Release\cpptest.exe`` on Windows and ``build\cpptest`` on Linux and macOS.
To run that file will output:

.. code-block:: bash

    Hello libOpenCOR 0.1.0!

**Note:** on Windows and with a shared version of libOpenCOR, the system ``PATH`` must contain the directory where ``libOpenCOR.dll`` is located, i.e. ``C:\Program Files (x86)\libOpenCOR\bin``.
Alternatively, ``libOpenCOR.dll`` can be copied to the directory where ``cpptest.exe`` is located, i.e. ``build\Release``.

To uninstall libOpenCOR, enter the following on the command line:

.. code-block:: bash

    cmake --build build --target uninstall
