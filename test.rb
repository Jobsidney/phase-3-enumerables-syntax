array=["this", "is", "Ruby"]
newArr=array.map{|word| word.upcase}
p(newArr)


#using map and chaniningn it with with_index to see each index
array.map.with_index{
    |word,index|
    puts("word is #{word.upcase} and index is #{index}")
}

p array.map(&:upcase)


p(array.map{
    |word|
    word+"!"
})