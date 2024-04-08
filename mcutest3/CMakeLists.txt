cmake_minimum_required (VERSION 3.21.1)

project(mcutest3 VERSION 0.0.1 LANGUAGES C CXX ASM)

find_package(Qul)

qul_add_target(mcutest3 QML_PROJECT mcutest3.qmlproject GENERATE_ENTRYPOINT)
app_target_setup_os(mcutest3)
