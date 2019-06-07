function mywell 
    switch $argv[1]
        case cleanup-prisma create-chef 
          bass ~/code/mywell/monorepo/scripts/$argv[1].js $argv[2]
        case -b --bar
        case \*
          bash ~/code/mywell/monorepo/scripts/$argv[1].sh $argv[2]
    end
end
