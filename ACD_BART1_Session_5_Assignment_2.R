vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))
# Problem 1 
unionVec12 <- union(vec1, vec2)
unionVec12
# Problem 2
intersectVec12 <- intersect(vec1, vec2)
intersectVec12
# Problem 3
diffVec12 <- setdiff(vec1,vec2)
diffVec12
diffVec21 <- setdiff(vec2,vec1)
diffVec21
# Problem 4
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[11:25,]))

# vec1 and vec2 are vectors extracted from mtcars dataframe column 1 index 1:15 and 11:25
str(vec1)
#chr [1:15] "Mazda RX4" "Mazda RX4 Wag" "Datsun 710" "Hornet 4 Drive" ...
str(vec2)
#chr [1:15] "Merc 280C" "Merc 450SE" "Merc 450SL" "Merc 450SLC" ...
#str() function compactly displays structure of an R Object abowe outputs clarifies that
#both vec1 and vec2 are Character vectors of length 15.

is.na(vec1)
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[13] FALSE FALSE FALSE
is.na(vec2)
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[13] FALSE FALSE FALSE

#is.na() functions returns true in the index position if an NA value present in the Vector.
#vec1 and vec2 does not contain any NA Values.

is.character(vec1)
#[1] TRUE
is.character(vec2)
#[1] TRUE
# is.character() function returns TRUE if elements of the vector is character.
# We can conclude that vec1 and vec2 are perfect character vectors.

is.unsorted(vec1)
#[1] TRUE
is.unsorted(vec2)
#[1] TRUE
#is.unsorted() returns true if a vector is not sorted.
#In case of data analysis a sorted data will be more useful in some scenarios depending on business requirement.
#vec1 and vec2 are unsorted vectors.

#for finding integration between data we can use functions like union(),intersect(),setdiff() etc.
# %in% also gives insights about data integration.
vec1 %in% vec2
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#this operator returns TRUE in case any of the elements in first vector(vec1) is present in second vector.
# last 5 elements in vec1 is present in vec2
vec2 %in% vec1
# [1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#in other words first 5 elements in vec2 is present in vec1
