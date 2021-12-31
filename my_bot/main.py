import turtle

t = turtle.Turtle()
s = turtle.Screen()

s.bgcolor('black')
t.width(6)
t.speed(500)

col=('red','yellow')

for i in range (200):
     t.pencolor(col[i%2])
     t.forward(i*4)
     t.right(200)


    

t1 = turtle.Turtle()
s1 = turtle.Screen()

s1.bgcolor('black')
t1.width(6)
t1.speed(500)

col=('blue','green')

for i in range (200):
     t1.pencolor(col[i%2])
     t1.forward(i*4)
     t1.left(200)

   

t12 = turtle.Turtle()
s12 = turtle.Screen()

s12.bgcolor('black')
t12.width(6)
t12.speed(500)

col=("white")

for i in range (200):
     t12.pencolor(col[i%])
     t12.forward(i*4)
     t12.circle(200)


    
    