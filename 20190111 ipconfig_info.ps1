#Returns relevant network config data

#Obtiene data relevante de configuracion de la red

ipconfig /all > "C:\Users\Nicolas\Desktop\PS Scripts\tshoot.txt"; 
route print >> "C:\Users\Nicolas\Desktop\PS Scripts\tshoot.txt"; 
hostname >> "C:\Users\Nicolas\Desktop\PS Scripts\tshoot.txt"; 
net statistics workstation >> "C:\Users\Nicolas\Desktop\PS Scripts\tshoot.txt"