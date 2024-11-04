%Programa que grafica una señal senoidal de acuerdo a los datos que ingresa el usuario

%Pide al usuario el valor de la frecuencia, amplitud y fase de la señal de la señal. 
%Así como el número de ciclos que se van a mostrar en la gráfica
f = input("Ingrese la frecuencia de la señal: ");
A = input("Ingrese la amplitud de la señal: ");
fase_grad = input("Ingrese la fase de la señal en grados: ");
Nc = input("Ingrese el número de ciclos que se mostrarán en la gráfica: ");
fase_rad = fase_grad*pi/180; %Se convierte el valor a radianes

%Se calcula la frecuencia de muestreo como 10 veces el valor de la frecuencia de la señal 
fs = 50*f;

%Crea el eje del tiempo utilizando los valores ingresados
%El limite superior del eje horizontal se guarda en una variable para evitar errores
xlim_sup = Nc/f;
t = 0:1/fs:xlim_sup;

%Función seno Asin(ft+?)
y = A*sin(2*pi*f*t+fase_rad);

%Gráfica continua con título, etiquetas de eje y límites de los ejes
set(gcf, 'Position',  [0, 200, 1600, 800])
plot(t,y); grid on; 
title('sin(x)'); xlabel('Tiempo'); ylabel('Amplitud'); 
xlim([0 xlim_sup]); ylim([-A A]);

%Crea y muestra un texto que resume los datos de la gráfica
X = sprintf('\nSEÑAL SENOIDAL\nFrecuencia: %d [Hz]\nAmplitud: %d [V]\nFase: %d°\nCiclos mostrados: %d\n',f,A,fase_grad,Nc);
disp(X)

%Crea y muestra un texto que resume los datos de la gráfica
X = sprintf('\nSEÑAL SENOIDAL\nFrecuencia: %d [Hz]\nAmplitud: %d [V]\nFase: %d°\nCiclos mostrados: %d\n',f,A,fase_grad,Nc);
disp(X)
