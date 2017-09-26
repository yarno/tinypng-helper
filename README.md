# TinyPNG Helper Script

This script allows you to convert a folder of images through TinyPNG super quickly.

Usage:

1. Download this script
2. Run `bundle` from within the directory that you just downloaded this to to install Tinify
3. Put all images you want to run through TinyPNG into the source directory.
4. Run the following command:

```
TINYPNG_KEY="YOUR_ACTUAL_KEY" ruby compress_images.rb
```

This will convert each image in the source folder and output the converted image into the build
folder with an identical name.