%Se crea el eje horizontal, en este caso con valores desde -6*pi hasta 6*pi separados 0.1 
x = -6*pi:0.1:6*pi;

%Función seno en términos de x
y = sin(x);

%Gráfica continua en 2D con título y etiquetas de eje
plot(x,y); grid on; title('sin(x)'); xlabel('Tiempo'); ylabel('Amplitud')
