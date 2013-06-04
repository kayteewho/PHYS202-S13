import numpy as np

def LinearLeastSquaresFit(x,y):
	n = float(len(x))
	x= np.mean(x)
	y=np.mean(y)
	x2=np.mean(x*x)
	xy=np.mean(x*y)
	m= (xy - x*y)/((x2) -(x*x))
	b= ((x2)*y - x*xy)/((x2)-(x*x))
	s=np.mean(y-(m*x + b))
	s_m= sqrt((1/(n-2))*((s*s)/((x2)-(x*x))))
	s_b=sqrt((1/(n-2))*((s^2)(x2)/((x2)-(x*x))))

