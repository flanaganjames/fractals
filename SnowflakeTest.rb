require 'rubygems'
require 'fractals'
include Fractals
require 'RMagick'

# Every property has a default value.  In this example I've chosen to override
# quite a few of them.  The result produces an image that looks similar to a
# snowflake.
snowflakes = Julia.new(Complex(-0.3007, 0.6601))
snowflakes.bailout = 5
snowflakes.max_iterations = 100
snowflakes.algorithm = Algorithms::NormalizedIterationCount
snowflakes.theme = Themes::Winter
snowflakes.set_color = [255, 255, 255]
snowflakes.write('snowflakes1.png')



