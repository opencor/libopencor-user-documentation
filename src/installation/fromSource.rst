.. _installation_fromSource:

==========================
 Installation from source
==========================

libOpenCOR can be installed from source for use from:

- :ref:`C++ <installation_fromSource_cpp>`; and
- :ref:`Python <installation_fromSource_python>`.

.. _installation_fromSource_cpp:

C++
---

To build and install the C++ version of libOpenCOR from source, enter the following on the command line:

.. tab:: Windows

    .. code-block:: bash

        git clone --depth 1 https://github.com/opencor/libopencor.git libOpenCOR
        cd libOpenCOR
        cmake -S . -B build -A x64
        cmake --build build --config Release
        cmake --install build

    **Note:** this will generate a shared version of libOpenCOR. To generate a static version, ``cmake -S . -B build -A x64`` must be replaced with ``cmake -S . -B build -A x64 -DSHARED_LIBS=OFF``.

.. tab:: Linux / macOS

    .. code-block:: bash

        git clone --depth 1 https://github.com/opencor/libopencor.git libOpenCOR
        cd libOpenCOR
        cmake -S . -B build
        cmake --build build
        cmake --install build

    **Note:** this will generate a shared version of libOpenCOR. To generate a static version, ``cmake -S . -B build`` must be replaced with ``cmake -S . -B build -DSHARED_LIBS=OFF``.

To test the installation, download and unzip `this file <../res/installation/cpptest.zip>`__, and then enter the following on the command line:

.. tab:: Windows

    .. code-block:: bash

        cd cpptest
        cmake -S . -B build -A x64 -DCMAKE_PREFIX_PATH="C:\Program Files\libOpenCOR\cmake"
        cmake --build build --config Release

    This will result in a file called ``build\Release\cpptest.exe``.
    To run this file will output:

    .. code-block::

        Hello libOpenCOR 0.1.0!

    **Note:** with a shared version of libOpenCOR, the system ``PATH`` must contain the directory where ``libOpenCOR.dll`` is located, i.e. ``C:\Program Files\libOpenCOR\bin``.
    Alternatively, ``libOpenCOR.dll`` can be copied to the directory where ``cpptest.exe`` is located, i.e. ``build\Release``.

.. tab:: Linux / macOS

    .. code-block:: bash

        cd cpptest
        cmake -S . -B build
        cmake --build build

    This will result in a file called ``build/cpptest``.
    To run this file will output:

    .. code-block::

        Hello libOpenCOR 0.1.0!

To uninstall libOpenCOR, enter the following on the command line:

.. code-block:: bash

    cmake --build build --target uninstall

.. _installation_fromSource_python:

Python
------

To build and install the Python version of libOpenCOR from source, enter the following on the command line:

.. code-block:: bash

    pip install git+https://github.com/opencor/libopencor.git

or:

.. code-block:: bash

    git clone --depth 1 https://github.com/opencor/libopencor.git libOpenCOR
    cd libOpenCOR
    pip install .

To test the installation, download `this file <../res/installation/test_install.py>`__, and then enter the following on the command line:

.. code-block:: bash

    python test_install.py

To run that Python script will output:

.. code-block:: bash

    Hello libOpenCOR 0.1.0!

To uninstall libOpenCOR, enter the following on the command line:

.. code-block:: bash

    pip uninstall -y libopencor
