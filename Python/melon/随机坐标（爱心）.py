from turtle import*
from random import choice as c,uniform as u

colorList = ['cyan','spring green','pink1','purple','red2','LightYellow2','plum1','LightCyan2']
a = c(colorList)

setup(width=1.0,height=1.0)
hideturtle()
speed(0)

for i in range(200):
    b = c(colorList)
    x = u(-950,950)
    y = u(-450,450)
    r = u(3,33)
    color(b,b)
    penup()
    goto(x,y)
    pendown()
    begin_fill()
    left(45)
    forward(r)
    circle(r/2,180)
    right(90)
    circle(r/2,180)
    forward(r)
    end_fill()

done()
