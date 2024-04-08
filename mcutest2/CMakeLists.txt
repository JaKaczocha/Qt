cmake_minimum_required (VERSION 3.21.1)

project(mcutest2 VERSION 0.0.1 LANGUAGES C CXX ASM)

find_package(Qul)

qul_add_target(mcutest2 QML_PROJECT mcutest2.qmlproject GENERATE_ENTRYPOINT)
app_target_setup_os(mcutest2)
