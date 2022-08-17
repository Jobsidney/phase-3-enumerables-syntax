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

#Enumerating with HASHES

book = {
    title: "The Hobbit",
    author: "J. R. R. Tolkien",
    published: 1937 
}


p book.map{
    |b|
    b
}
book.each{
    |bookk|
    bookk
    p(bookk)
}

users = [{ name: "Duane", phone: "555-555-5555"}, { name: "Liza", phone: "555-555-5556" }]

newUsers=users.map{
    |user|
    {Name:user[:name],phone:user[:phone]}
}
pp(newUsers)

#collect also works the same as Map
newUser2=users.collect{
    |user|
    {Name:user[:name],phone:user[:phone]}
}
pp(newUser2)



##FIlter, Select, Find_all workthe same

nums=[1, 2, 3, 4, 5,7]
p(nums.find_all{
    |num| num>4
})

## find & detect  works the same to find 1st item that matches condition
##returns only one word
words = ["give", "it", nil, "your", nil, "best", "shot"]
p(words.find{
    |word| word=="your" 
})


#sort
nums2= [1, 5, 3,6,2]
sorted=nums2.sort
p(sorted)

users = [
  { name: "Liza", phone: "555-555-5556" },
  { name: "Duane", phone: "555-555-5555"},
  { name: "Cara", phone: "555-555-5556"},
]

#sorting hashes(spaceship operator)
sortedUsers=users.sort{
    |user1,user2|
    user1[:name] <=>user2[:name]
}
p sortedUsers

#instead you can use sort_by
newest=users.sort_by{
    |user1|
    user1[:name]
}
p(newest)