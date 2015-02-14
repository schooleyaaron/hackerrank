require_relative 'build_string_list'

#requirements state input will be of form:
#2
#2
#ab
#3
#xyz

build = BuildStringList.new
#get number of tests cases and iterate over each
t = gets.to_i
(0...t).each do |i|
    #we don't care about the string length
    waste = gets

    #get test string
    build.string = gets.strip

    #will build the string and sort them in lexicographic order
    res = build.get_string_list()

    puts res.sort
end
