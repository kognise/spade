cd ~/jerryscript_build
rm -rf example-*

  # --debug \
python3 jerryscript/tools/build.py \
  --builddir=$(pwd)/example_build \
  --cmake-param="-DCMAKE_INSTALL_PREFIX=$(pwd)/example_install/" \
  --mem-heap=100 \
  --clean \
  --error-messages=ON \
  --mem-stats=ON \
  --line-info=ON \
  --jerry-cmdline=OFF
make -C $(pwd)/example_build install\

cd ~/spade/pc/jerry
cp ~/jerryscript_build/example_build/lib/* lib/
# cp ~/jerryscript_build/example_install/include
rm -rf include
# cp ~/jerryscript_build/example_install/include ./
cp -r ~/jerryscript_build/example_install/include ./
