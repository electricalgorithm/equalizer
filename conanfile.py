from dataclasses import dataclass
from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout, CMakeDeps


@dataclass
class ExternalLibraries:
    KFR: str = "libraries/kfr/lib/cmake"


class EqualizerRecipe(ConanFile):
    name = "equalizer"
    version = "1.0"
    package_type = "application"

    license = "GNU v3"
    author = "Gökhan Koçmarlı gokhan.kocmarli@gmail.com"
    url = "https://github.com/electricalgorithm/equalizer"
    description = ""
    topics = ("signal processing", "audio")

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"

    # Sources are located in the same place as this recipe, copy them to the recipe.
    exports_sources = "CMakeLists.txt", "sources/*", "includes/*"

    def layout(self):
        cmake_layout(self)

    def generate(self):
        deps = CMakeDeps(self)
        deps.generate()
        tc = CMakeToolchain(self)
        tc.generate()

    def build(self):
        cmake = CMake(self)
        cmake.definitions["CMAKE_PREFIX_PATH"] = ExternalLibraries.KFR
        cmake.configure()
        cmake.build()

    def package(self):
        cmake = CMake(self)
        cmake.install()
