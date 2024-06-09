from turtle import*

hideturtle()
speed(4)
color('pink','pink')

penup()
y = -50*1.414
goto(0,y)
pendown()

begin_fill()
left(135)
forward(100)
circle(-50,180)
left(90)
circle(-50,180)
forward(100)
end_fill()

pencolor('black')
penup()
goto(-34,15)
pendown()
write("✿✿✿✿✿✿")

done()