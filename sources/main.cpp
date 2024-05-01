/*
 * This is the main file of the project.
 * - It contains the main function.
 * - It is the entry point of the program.
 * - It is responsible for reading a WAV file and playing it.
 */

#include <iostream>
#include <string>

#include <kfr/all.hpp>


int main(int argc, char* argv[])
{
    // Check if the user provided a file name
    if (argc < 2)
    {
        std::cerr << "Usage: " << argv[0] << " <file.wav>" << std::endl;
        return 1;
    }

    // Get the file name
    std::string file_name = argv[1];

    // Print the file namec
    std::cout << "File name given: " << file_name << std::endl;

    kfr::audio_reader_wav<float> reader(kfr::open_file_for_reading(file_name));
    kfr::println("Sample Rate  = ", reader.format().samplerate);
    kfr::println("Channels     = ", reader.format().channels);
    kfr::println("Length       = ", reader.format().length);
    kfr::println("Duration (s) = ", reader.format().length / reader.format().samplerate);
    kfr::println("Bit depth    = ", audio_sample_bit_depth(reader.format().type));
}