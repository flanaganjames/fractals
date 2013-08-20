require 'rubygems'
require 'sinatra'



get '/' do
    $fractalgifs = []
    Dir.foreach("public/feigenbaums/" + "/") {|aFile|
        $fractalgifs.push(aFile) if (aFile != "." && aFile != ".." && aFile != ".DS_Store")
    }    

    erb:showmultiple
end



