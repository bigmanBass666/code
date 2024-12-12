from math import sqrt
a,b,c = map(float,input().split())

if a != 0:
    delta = b*b - 4*a*c

    if delta == 0:
        root = -b / 2*a
        print(f'x1=x2={root:.2f}')

    elif delta > 0:
        x1 = (-b - sqrt(delta)) / (2*a)  # 
        x2 = (-b + sqrt(delta)) / (2*a)  # 
        print(f'x1={x1:.2f};x2={x2:.2f}')
    
    else:
        real_part= -b / (2*a),
        imaginary_part = sqrt(-delta) / (2*a)
        print(f'x1={real_part:.2f}-{imaginary_part:.2f}i;x2={real_part:.2f}+{imaginary_part:.2f}i')

else:
    print('Not quadratic equation')