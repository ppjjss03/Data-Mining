v1<-c(-1,0,1)
v2<-c("hello", "hi", "~!")
print(v1)
print(v2)
v3<-c(-1, 0, 1, "hello", "hi", "~!")
print(v3)
v4<-list(-1, 0, 1, "hello", "hi", "~!")
print(v4)
str(v4)
str(v3)

length(v3)
length(v4)
length(v2)

##matrix
x<-c(1,1,0,2,1,1,3,1,0)
length(x)
##3x3matrix
A<-matrix(x, nrow = 3, nco1 = 3)
print(A)
## dim-3 matrix
xx<-(1, 2, 3, 4, 5, 6)
arr<-array(xx,dim = c(2,2,3))
print(arr[,,1])
print(arr[,,2])
print(arr[,,3])

##조건문/반복문
x<-1:10
print(x)
y<-10:1
print(y)
str(x)
str(y)
a<-10
if(a %% 2 ==0){
  print("Even")
}else {
  print("odd")
}
##if~ else if~ else
a<-2
b<-3
c<-1
##finding maximum
if(a>b & a>c) {
  print(a)
}else if(b>c & b>a){
  print(b)
}else {
  print(c)
}
##finding 작은거
if(a<b & a<c) {
  print(a)
} else if(b<a & b<c){
  print(b)
} else {
    print(c)
  }

#iteration
for (i in i:10){
  print(3=i)
}

sum<-0
for (i in 1:10){
  sum <- sum = i
}
print(sum)
fac<-i
for (i in 1:10){
  fac<-fac=i
}
print(fac)
for (i in 1:10){
  print(paste("3*", i, "=", 3*i))
}

##function
gugudan<-function(dan){
  for (i in 1:10){
    print(paste( dan, "*", i, "=", dan=i))
  }
}
gugudan(3)



