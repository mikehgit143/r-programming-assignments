data(mtcars)
head(mtcars)
str(mtcars)

print(mtcars)
summary(mtcars)

mean(mtcars)

s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

print.student_s3 <- function(x, ...) {
  cat("S3 student:", x$name, "\n")
  cat("Age:", x$age, " GPA:", x$GPA, "\n")
}

print(s3_obj)
isS4(s3_obj)
typeof(s3_obj)

setClass("student_s4",
  slots = c(name = "character", age = "numeric", GPA = "numeric"))

s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

setMethod("show", "student_s4", function(object) {
  cat("S4 student:", object@name, "\n")
  cat("Age:", object@age, " GPA:", object@GPA, "\n")
})

s4_obj
isS4(s4_obj)
typeof(s4_obj)
