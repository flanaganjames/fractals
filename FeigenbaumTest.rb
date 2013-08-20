require 'rubygems'
require 'fractals'
include Fractals
require 'RMagick'

    # Here I'm creating an animated fractal using RMagick and the RMagickRenderer's
    # to_blob method.  This is both CPU and memory intensive so act accordingly.
    # This is about as complicated as it gets.
    feigenbaum = Mandelbrot.new(Complex(-0.1560, 1.0397))
    feigenbaum.max_iterations = 100
    feigenbaum.renderer = Renderers::RMagickRenderer
    feigenbaum.width = 150
    feigenbaum.height = 150
    feigenbaum.magnification = 25
    feigenbaum.algorithm = Algorithms::NormalizedIterationCount
    feigenbaum.theme = Themes::Water
    
    image_list = Magick::ImageList.new
    image_list.delay = 100
    image_list.iterations = 1
    
    (0...50).each { |i|
        feigenbaum.magnification += (i**2)
    image_list << Magick::Image.from_blob(feigenbaum.to_blob('gif'))[0]
    }
    image_list.write('feigenbaum-0.1560, 1.0397.gif')



